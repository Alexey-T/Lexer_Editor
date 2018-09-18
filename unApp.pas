unit unApp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,
  ecSyntAnal,
  unLexerLib, ImgList, XPMan;

type
  TForm1 = class(TForm)
    mmo1: TMemo;
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
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FLexDir:= ExtractFileDir(Application.ExeName)+'\data\lexlib';
  DoLog('App folder: '+ExtractFileDir(Application.ExeName));
  DoLog('Lexers folder: '+FLexDir);

  FLexLib:= TSyntaxManager.Create(Self);
  DoLog('Lexers found: '+IntToStr(FLexLib.AnalyzerCount));
end;

procedure TForm1.btnEditClick(Sender: TObject);
begin
  DoLexerLibraryDialog(FLexLib, ilImagesTree, FLexDir);
end;

procedure TForm1.DoLog(S: string);
begin
  mmo1.Lines.Add(S);
end;

end.
