program lexer_editor;

uses
  Forms,
  unApp in 'unApp.pas' {fmApp},
  unLexerLib in 'unLexerLib.pas' {fmLexerLibrary};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmApp, fmApp);
  Application.CreateForm(TfmLexerLibrary, fmLexerLibrary);
  Application.Run;
end.
