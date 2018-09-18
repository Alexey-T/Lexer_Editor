program lexer_editor;

uses
  Forms,
  unApp in 'unApp.pas' {Form1},
  unLexerLib in 'unLexerLib.pas' {fmLexerLibrary};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfmLexerLibrary, fmLexerLibrary);
  Application.Run;
end.
