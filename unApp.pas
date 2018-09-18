{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE ON}
{$WARN UNSAFE_CODE ON}
{$WARN UNSAFE_CAST ON}
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
