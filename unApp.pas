unit unApp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,
  IniFiles,
  ecSyntAnal,
  unLexerLib,
  ATxFProc,
  ImgList,
  XPMan;

type
  TfmApp = class(TForm)
    mmoLog: TMemo;
    btnEdit: TButton;
    btnCancel: TButton;
    ilImagesTree: TImageList;
    XPManifest1: TXPManifest;
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FLexDir: string;
    FLexLib: TSyntaxManager;
    procedure DoLog(S: string);
  end;

var
  fmApp: TfmApp;

implementation

{$R *.dfm}


procedure LoadLexerLib(SyntaxManager: TSyntaxManager; ALexerDir: string);
var
  fn, lexname: string;
  L: TStringList;
  an: TSyntAnalyzer;
  ini: TIniFile;
  i, j: integer;
begin
  //dont load again (if Lister plg called before)
  if SyntaxManager.AnalyzerCount>0 then Exit;
  SyntaxManager.Clear;

  //load .lcf files to lib
  L:= TStringList.Create;
  try
    FFindToList(L, ALexerDir, '*.lcf', '', false, False, false, false);
    L.Sort;

    if L.Count=0 then
    begin
      //DoHint('Cannot find lexer files (data\lexlib\*.lcf)');
      exit
    end;

    for i:= 0 to L.Count-1 do
    begin
      an:= SyntaxManager.AddAnalyzer;
      an.LoadFromFile(L[i]);
    end;
  finally
    FreeAndNil(L);
  end;

  //correct sublexer links
  for i:= 0 to SyntaxManager.AnalyzerCount-1 do
  begin
    an:= SyntaxManager.Analyzers[i];
    fn:= ALexerDir+'\'+an.LexerName+'.cuda-lexmap';
    if FileExists(fn) then
    begin
      ini:= TIniFile.Create(fn);
      try
        for j:= 0 to an.SubAnalyzers.Count-1 do
        begin
          lexname:= ini.ReadString('ref', IntToStr(j), '');
          if lexname<>'' then
            an.SubAnalyzers[j].SyntAnalyzer:= SyntaxManager.FindAnalyzer(lexname);
        end;
      finally
        FreeAndNil(ini);
      end;
    end;
  end;
end;


procedure TfmApp.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfmApp.FormCreate(Sender: TObject);
begin
  FLexDir:= ExtractFileDir(Application.ExeName)+'\data\lexlib';
  DoLog('App folder: '+ExtractFileDir(Application.ExeName));
  DoLog('Lexers folder: '+FLexDir);

  FLexLib:= TSyntaxManager.Create(Self);
  LoadLexerLib(FLexLib, FLexDir);
  DoLog('Lexers found: '+IntToStr(FLexLib.AnalyzerCount));
  btnEdit.Enabled:= FLexLib.AnalyzerCount>0;
end;

procedure TfmApp.btnEditClick(Sender: TObject);
var
  NCnt: integer;
begin
  NCnt:= FLexLib.AnalyzerCount;
  DoLexerLibraryDialog(FLexLib, ilImagesTree, FLexDir);
  if NCnt<>FLexLib.AnalyzerCount then
    DoLog('Lexers count changed: '+IntToStr(FLexLib.AnalyzerCount));
end;

procedure TfmApp.DoLog(S: string);
begin
  mmoLog.Lines.Add(S);
end;

end.
