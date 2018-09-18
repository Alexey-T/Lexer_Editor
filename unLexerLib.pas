unit unLexerLib;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ActnList, ImgList, ToolWin,
  CheckLst, ComCtrls,
  ecSyntAnal;

type
  TfmLexerLibrary = class(TForm)
    ToolBar1: TToolBar;
    ImageList1: TImageList;
    ActionList1: TActionList;
    actLexerProps: TAction;
    actDeleteLexer: TAction;
    actNewLexer: TAction;
    btnNew: TToolButton;
    btnConf: TToolButton;
    ToolButtonSep2: TToolButton;
    btnDelete: TToolButton;
    btnCopy: TToolButton;
    ToolButtonSep1: TToolButton;
    actCopy: TAction;
    LV: TCheckListBox;
    procedure actLexerPropsUpdate(Sender: TObject);
    procedure actLexerPropsExecute(Sender: TObject);
    procedure actNewLexerExecute(Sender: TObject);
    procedure actDeleteLexerExecute(Sender: TObject);
    procedure actCopyExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LVClickCheck(Sender: TObject);
  private
    FLexLib: TSyntaxManager;
    FLexDir: string;
    FTreeImages: TImageList;
    procedure UpdateList;
  public
  end;

var
  fmLexerLibrary: TfmLexerLibrary;
    
procedure DoLexerLibraryDialog(ALexerLib: TSyntaxManager; ATreeImages: TImageList;
  const ALexerLibDir: string);

implementation

uses
  StrUtils,
  ATxSProc,
  unLexerProp,
  IniFiles;

{$R *.dfm}

function LexerFilename(const ALexName, ALexDir: string): string;
begin
  Result:= ALexDir+'\'+ALexName+'.lcf';
end;

function LexerFilenameLexmap(const ALexName, ALexDir: string): string;
begin
  Result:= ALexDir+'\'+ALexName+'.cuda-lexmap';
end;

procedure DoLexerSaveToFile(an: TSyntAnalyzer; const AFilename: string);
var
  fnLexmap: string;
  ini: TIniFile;
  i: integer;
begin
  an.SaveToFile(AFilename);

  fnLexmap:= ChangeFileExt(AFilename, '.cuda-lexmap');
  if an.SubAnalyzers.Count>0 then
  begin
    ini:= TIniFile.Create(fnLexmap);
    try
      for i:= 0 to an.SubAnalyzers.Count-1 do
        if Assigned(an.SubAnalyzers[i].SyntAnalyzer) then
          ini.WriteString('ref', IntToStr(i), an.SubAnalyzers[i].SyntAnalyzer.LexerName);
    finally
      FreeAndNil(ini);
    end;
  end;    
end;


function LexerNameWithLinks(an: TSyntAnalyzer): Widestring;
var
  sl: TStringList;
  i: integer;
begin
  Result:= an.LexerName;

  sl:= TStringList.Create;
  try
    sl.Duplicates:= dupIgnore;
    sl.Sorted:= true;
    
    for i:= 0 to an.SubAnalyzers.Count-1 do
    begin
      if an.SubAnalyzers[i].SyntAnalyzer=nil then
      begin
        Result:= an.LexerName + '   (link broken)';
        Exit
      end;
      sl.Add(an.SubAnalyzers[i].SyntAnalyzer.LexerName);
    end;

    for i:= 0 to sl.Count-1 do
    begin
      if i=0 then
        Result:= Result + '   (links: ';
      Result:= Result + sl[i] + IfThen(i<sl.Count-1, ', ', ')');
    end;
  finally
    FreeAndNil(sl);
  end;    
end;


procedure DoLexerLibraryDialog(ALexerLib: TSyntaxManager; ATreeImages: TImageList;
  const ALexerLibDir: string);
var
  PrevNames: TStringList;
  an: TSyntAnalyzer;
  i: integer;
begin
  PrevNames:= TStringList.Create;
  for i:= 0 to ALexerLib.AnalyzerCount-1 do
    PrevNames.Add(ALexerLib.Analyzers[i].LexerName);

  with TfmLexerLibrary.Create(nil) do
  try
    FLexDir:= ALexerLibDir;
    FLexLib:= ALexerLib;
    FTreeImages:= ATreeImages;
    ShowModal;
  finally
    Free;
  end;

  //find analizers which were deleted/renamed,
  //and del their old files
  for i:= 0 to PrevNames.Count-1 do
    if ALexerLib.FindAnalyzer(PrevNames[i])=nil then
      DeleteFile(LexerFilename(PrevNames[i], ALexerLibDir));

  //find modified analizers, and export to files
  for i:= 0 to ALexerLib.AnalyzerCount-1 do
  begin
    an:= ALexerLib.Analyzers[i];
    if an.Tag>0 then
    begin
      an.Tag:= 0;
      DoLexerSaveToFile(an, LexerFilename(an.LexerName, ALexerLibDir));
    end;
  end;

  FreeAndNil(PrevNames);
end;

procedure TfmLexerLibrary.FormShow(Sender: TObject);
begin
  UpdateList;
end;


procedure TfmLexerLibrary.actLexerPropsUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled:= LV.ItemIndex>=0;
end;

procedure TfmLexerLibrary.UpdateList;
var
  sl: TStringList;
  an: TSyntAnalyzer;
  i, cur: Integer;
begin
  sl:= TStringList.Create;
  try
    sl.Duplicates:= dupAccept;
    sl.Sorted:= true;
    for i:= 0 to FLexLib.AnalyzerCount-1 do
      sl.AddObject(FLexLib.Analyzers[i].LexerName, FLexLib.Analyzers[i]);

    LV.Items.BeginUpdate;
    try
      cur:= LV.ItemIndex;
      LV.Items.Clear;
      for i:= 0 to sl.Count-1 do
      begin
        an:= sl.Objects[i] as TSyntAnalyzer;
        LV.Items.AddObject(LexerNameWithLinks(an), an);
        LV.Checked[LV.Items.Count-1]:= not an.Internal;
      end;
      //restore ItemIndex
      if cur>=LV.Items.Count then
        cur:= LV.Items.Count-1;
      LV.ItemIndex:= cur;
    finally
      LV.Items.EndUpdate;
    end;
  finally
    FreeAndNil(sl);
  end;
end;


procedure TfmLexerLibrary.actLexerPropsExecute(Sender: TObject);
var
  An: TSyntAnalyzer;
begin
  if LV.ItemIndex>=0 then
  begin
    An:= LV.Items.Objects[LV.ItemIndex] as TSyntAnalyzer;
    if DoLexerPropDialog(An, FTreeImages,
      LexerFilenameLexmap(An.LexerName, FLexDir)) then
    begin
      LV.Items[LV.ItemIndex]:= LexerNameWithLinks(An);
      FLexLib.Modified:= True;
      An.Tag:= 1;
      UpdateList;
    end;
  end;
end;

procedure TfmLexerLibrary.actNewLexerExecute(Sender: TObject);
var
  An: TSyntAnalyzer;
begin
  An:= FLexLib.AddAnalyzer;
  if DoLexerPropDialog(An, FTreeImages,
    LexerFilenameLexmap(An.LexerName, FLexDir)) then
  begin
    FLexLib.Modified:= True;
    An.Tag:= 1;
    UpdateList;
  end
  else
    FreeAndNil(An);
end;

procedure TfmLexerLibrary.actDeleteLexerExecute(Sender: TObject);
var
  an: TSyntAnalyzer;
begin
  if (LV.ItemIndex>=0) then
    if Application.MessageBox('Delete selected lexer?', 'Lexer library',
      MB_OKCANCEL or MB_ICONQUESTION)=id_ok then
    begin
      an:= LV.Items.Objects[LV.ItemIndex] as TSyntAnalyzer;
      DeleteFile(LexerFilenameLexmap(an.LexerName, FLexDir));
      an.Free;
      FLexLib.Modified:= True;
      UpdateList;
    end;
end;

procedure TfmLexerLibrary.actCopyExecute(Sender: TObject);
var
  an, anPrev: TSyntAnalyzer;
begin
  if LV.ItemIndex>=0 then
  begin
    anPrev:= LV.Items.Objects[LV.ItemIndex] as TSyntAnalyzer;
    an:= FLexLib.AddAnalyzer;
    an.Assign(anPrev);
    an.LexerName:= anPrev.LexerName+' (copy)';
    an.Tag:= 1;
    LV.Items.AddObject(an.LexerName, an);
    LV.Checked[LV.Items.Count-1]:= not an.Internal;
    UpdateList;
  end;
end;

procedure TfmLexerLibrary.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=vk_delete) and (Shift=[]) then
    if LV.ItemIndex>=0 then
    begin
      actDeleteLexer.Execute;
      Key:= 0;
      Exit
    end;

  if (Key=vk_escape) and (Shift=[]) then
  begin
    Close;
    Key:= 0;
    Exit
  end;  
end;

procedure TfmLexerLibrary.LVClickCheck(Sender: TObject);
var
  an: TSyntAnalyzer;
begin
  if LV.ItemIndex>=0 then
  begin
    an:= LV.Items.Objects[LV.ItemIndex] as TSyntAnalyzer;
    an.Internal:= not LV.Checked[LV.ItemIndex];
    an.Tag:= 1;
    FLexLib.Modified:= True;
  end;
end;


end.

