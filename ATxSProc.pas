unit ATxSProc;

interface

uses
  Windows, SysUtils;

type
  TSynSnippetInfo = record
    Filename,
    Name,
    Id,
    Lexers,
    Text: Widestring;
  end;
  TSynSnippetClass = class
    Info: TSynSnippetInfo;
  end;

procedure DoClearSnippet(var AInfo: TSynSnippetInfo);
function DoLoadSnippetFromFile(const fn: string; var Info: TSynSnippetInfo): boolean;
procedure DoSaveSnippetToFile(const fn: string; var Info: TSynSnippetInfo);

function SWrapText(const S, SInsertBreak, SSeparators, SEol: WideString;
  NTabSize, NMaxCol: Integer): WideString;
function SCountOccurrences(const Text, Substring: Widestring): integer;
function SWideStringToPythonString(const Str: Widestring): string;
function STruncateLong(const Str: Widestring; MaxLen: Integer; CutMiddle: boolean): Widestring;
procedure SReplaceAllPercentChars(var S: string);
function SReplaceAllEols(const S, SReplace: Widestring): Widestring;
function SStripFromTab(const S: Widestring): Widestring;

function SColorToHtmlCode(C: Integer): string;
function SHtmlCodeToColor(const s: string): Integer;
function IsHexColorString(const s: Widestring): boolean;

function IsTextUnicode(const S: Widestring): boolean;
function IsWordString(const S: Widestring; AllowDot: boolean): boolean;
function IsStringListed(const S, List: string): boolean;
function FTempDir: string;

type TSynCharArray = array[1..50] of Integer;
procedure SGetCharArray(S, Filter: Widestring; var Arr: TSynCharArray);
function SSubstringMatch(const Str, SFilter: Widestring): boolean;
function SFuzzyMatch(S, Filter: Widestring): boolean;

function SIndentOf(const s: Widestring): Widestring;
function SUntab(const S: Widestring; TabSize: Integer): Widestring;
function SDecodeSpecChars(const s: WideString): WideString;

function IsUpperChar(Ch: WideChar): boolean;
function IsQuoteChar(ch: WideChar): boolean;
function IsBracketChar(ch: WideChar): boolean;

procedure SGetKeyAndValues(const Str: Widestring; var Key, Val1, Val2, Val3: Widestring);
function SBufferToString(BufPtr: Pointer; BufSize: Integer): Widestring;

procedure SDeleteDupSpaces(var s: Widestring);
function SSpacesAtStart(const s: Widestring): Integer;
procedure SReplaceSpToTabLeading(var s: Widestring; const spaces: Widestring);
procedure SReplaceZeroesW(var S: Widestring);
function SBegin(const s, subs: Widestring): boolean;
function SEnd(const s, subs: Widestring): boolean;

function SEscapeEols(const s: Widestring): Widestring;
function SEscapeRegex(const s: Widestring): Widestring;
function SEscapeRegexAlt(const s: Widestring): Widestring;

function SCollapseFilenameWithDot(const fn, ref_dir: Widestring): Widestring;
function SCollapseFilenameDrive(const fn, ref_SynDir: Widestring): Widestring;
function SExpandFilenameDrive(const fn, ref_SynDir: Widestring): Widestring;

function SGetKeyValue(const s: string; var sKey, sVal: string): boolean;
function IsTempFN(const fn: Widestring): boolean;
function SNumLeadSpaces(const s: Widestring): integer;
function SFormatNum(N, Digits: Integer): string;
function SDelLastCR(const s: Widestring): Widestring;
function SDeleteTags(const s: Widestring): Widestring;
procedure SDeleteTo(var s: string; const sto: string);
procedure SDeleteToW(var s: Widestring; const sto: Widestring);
procedure SDeleteFrom(var S: string; const SubStr: string);
procedure SDeleteFromW(var S: Widestring; const SubStr: Widestring);
function SGetItem(var S: Widestring; const sep: Char = ','): Widestring;
function SExpandVars(const S: WideString): WideString;
function SExpanded(const S: WideString): Boolean;

procedure SReplace(var S: string; const SFrom, STo: string);
procedure SReplaceW(var S: WideString; const SFrom, STo: WideString);
procedure SReplaceAll(var S: string; const SFrom, STo: string);
procedure SReplaceAllW(var S: WideString; const SFrom, STo: WideString);
procedure SReplaceIAll(var S: string; const SFrom, STo: string);

type
  TStringDecodeRecW = record
    SFrom, STo: WideString;
  end;

  TStringTabOptions = record
    TabSize: Integer;
    TabPosition: Integer;
    FontMonospaced: Boolean;
    NonPrintableShow: Boolean;
    NonPrintableChar: WideChar;
  end;

function SDecodeW(const S: WideString; const Decode: array of TStringDecodeRecW): WideString;
procedure SReplaceZeros(var S: AnsiString);
procedure SReplaceZerosW(var S: WideString);
procedure SDelLastSpace(var S: AnsiString);
procedure SDelLastSpaceW(var S: WideString);
procedure SDelLastComma(var S: AnsiString);
function STabReplacement(const TabOptions: TStringTabOptions): WideString;
procedure SReplaceTabsW(var S: WideString; var TabOptions: TStringTabOptions);
function SCharCR(ch: WideChar): Boolean;
function SLastCharCR(const S: WideString): Boolean;

function SFormatW(const Msg: WideString; Params: array of WideString): WideString;
function SFormatWD(const Msg: WideString; Params: array of Integer): WideString;
function SCompareIW(const S1, S2: WideString): Integer;
function SetStringW(Buffer: PAnsiChar; BufSize: Integer; SwapBytes: Boolean): WideString;

procedure SDeleteFromStrA(var S: AnsiString; const SubStr: AnsiString);
procedure SDeleteFromStrW(var S: WideString; const SubStr: WideString);

function SExtractFileDir(const FileName: WideString): WideString;
function SExtractFilePath(const FileName: WideString): WideString;
function SExtractFileExt(const FileName: WideString): WideString;
function SExtractFileName(const FileName: WideString): WideString;

function SFindText(const F, S: AnsiString; fForward, fWholeWords, fCaseSens, fLastBlock: Boolean): Integer;
function SFindTextW(const F, S: WideString; fForward, fWholeWords, fCaseSens, fLastBlock: Boolean): Integer;

function IMin(N1, N2: Integer): Integer;
function IMax(N1, N2: Integer): Integer;
function WMin(N1, N2: Word): Word;
function WMax(N1, N2: Word): Word;
function I64Min(const N1, N2: Int64): Int64;
function I64Max(const N1, N2: Int64): Int64;

procedure ILimitMin(var N: Integer; Value: Integer);
procedure ILimitMax(var N: Integer; Value: Integer);
procedure I64LimitMin(var N: Int64; const Value: Int64);
procedure I64LimitMax(var N: Int64; const Value: Int64);

function SFileExtensionMatch(const FileName: WideString; const ExtList: AnsiString): Boolean;


implementation

uses
  Classes,
  StrUtils,
  TntWideStrUtils,
  ecStrUtils;

procedure SReplace(var S: string; const SFrom, STo: string);
var
  i: Integer;
begin
  i := Pos(SFrom, S);
  if i > 0 then
  begin
    Delete(S, i, Length(SFrom));
    Insert(STo, S, i);
  end;
end;

function SReplaceFunc(const S: string; const SFrom, STo: string): string;
begin
  Result := S;
  SReplace(Result, SFrom, STo);
end;

procedure SReplaceW(var S: WideString; const SFrom, STo: WideString);
var
  i: Integer;
begin
  i := Pos(SFrom, S);
  if i > 0 then
  begin
    Delete(S, i, Length(SFrom));
    Insert(STo, S, i);
  end;
end;

procedure SReplaceAll(var S: string; const SFrom, STo: string);
var
  i: Integer;
begin
  if SFrom <> STo then
  repeat
    i := Pos(SFrom, S);
    if i = 0 then Break;
    Delete(S, i, Length(SFrom));
    Insert(STo, S, i);
  until False;
end;

procedure SReplaceAllW(var S: WideString; const SFrom, STo: WideString);
var
  i: Integer;
begin
  if SFrom <> STo then
  repeat
    i := Pos(SFrom, S);
    if i = 0 then Break;
    Delete(S, i, Length(SFrom));
    Insert(STo, S, i);
  until False;
end;

procedure SReplaceIAll(var S: string; const SFrom, STo: string);
var
  i: Integer;
begin
  repeat
    i := Pos(LowerCase(SFrom), LowerCase(S));
    if i = 0 then Break;
    Delete(S, i, Length(SFrom));
    Insert(STo, S, i);
  until False;
end;

function SDecodeW(const S: WideString; const Decode: array of TStringDecodeRecW): WideString;
var
  i, j: Integer;
  DoDecode: Boolean;
begin
  Result := '';
  i := 1;
  repeat
    if i > Length(S) then Break;
    DoDecode := False;
    for j := Low(Decode) to High(Decode) do
      with Decode[j] do
        if (SFrom <> '') and (SFrom = Copy(S, i, Length(SFrom))) then
        begin
          DoDecode := True;
          Result := Result + STo;
          Inc(i, Length(SFrom));
          Break
        end;
    if DoDecode then Continue;
    Result := Result + S[i];
    Inc(i);
  until False;
end;


function SFormatW(const Msg: WideString; Params: array of WideString): WideString;
var
  i: Integer;
begin
  Result := Msg;
  for i := Low(Params) to High(Params) do
    SReplaceW(Result, '%s', Params[i]);
end;

function SFormatWD(const Msg: WideString; Params: array of Integer): WideString;
var
  i: Integer;
begin
  Result := Msg;
  for i := Low(Params) to High(Params) do
    SReplaceW(Result, '%d', IntToStr(Params[i]));
end;

function LastDelimiter(const Delimiters, S: WideString): Integer;
var
  i: Integer;
begin
  for i := Length(S) downto 1 do
    if Pos(S[i], Delimiters) > 0 then
      begin Result := i; Exit end;
  Result := 0;
end;

function SExtractFileDir(const FileName: WideString): WideString;
var
  I: Integer;
begin
  I := LastDelimiter('\:', FileName);
  if (I > 1) and (FileName[I] = '\')
    //and (not (AnsiChar(FileName[I - 1]) in ['\', ':'])) //was in SysUtils!
    then Dec(I);
  Result := Copy(FileName, 1, I);
end;

function SExtractFilePath(const FileName: WideString): WideString;
var
  I: Integer;
begin
  I := LastDelimiter('\:', FileName);
  Result := Copy(FileName, 1, I);
end;

function SExtractFileExt(const FileName: WideString): WideString;
var
  I: Integer;
begin
  I := LastDelimiter('.\:', FileName);
  if (I > 0) and (FileName[I] = '.') then
    Result := Copy(FileName, I, MaxInt) else
    Result := '';
end;

function SExtractFileName(const FileName: WideString): WideString;
var
  I: Integer;
begin
  I := LastDelimiter('\:', FileName);
  Result := Copy(FileName, I + 1, MaxInt);
end;

function SCompareIW(const S1, S2: WideString): Integer;
begin
  if Win32Platform = VER_PLATFORM_WIN32_NT then
    Result := lstrcmpiW(PWideChar(S1), PWideChar(S2))
  else
    Result := lstrcmpiA(PAnsiChar(AnsiString(S1)), PAnsiChar(AnsiString(S2)));
end;

function SDefaultDelimiters: AnsiString;
const
  Chars: PAnsiChar = ':;<=>?' + '@[\]^' + '`{|}~';
var
  i: Integer;
begin
  Result := '';
  for i := 0 to Ord('/') do
    Result := Result + AnsiChar(Chr(i));
  Result := Result + Chars;
end;

//--------------------------------------------------
function AnsiLowerCaseW(const S: WideString): WideString;
begin
  Result := S;
  if Result <> '' then
  begin
    if Win32Platform = VER_PLATFORM_WIN32_NT then
      CharLowerBuffW(@Result[1], Length(Result))
    else
      Result := AnsiLowerCase(S);
  end;
end;

//--------------------------------------------------
function SFindText(const F, S: AnsiString; fForward, fWholeWords, fCaseSens, fLastBlock: Boolean): Integer;
var
  SBuf, FBuf, Delimiters: AnsiString;
  Match: Boolean;
  LastPos, LengthF, i: Integer;
begin
  Result := 0;

  if (S = '') or (F = '') then Exit;

  Delimiters := SDefaultDelimiters;

  SBuf := S;
  FBuf := F;
  if not fCaseSens then
  begin
    SBuf := AnsiLowerCase(SBuf);
    FBuf := AnsiLowerCase(FBuf);
  end;

  LengthF := Length(F);
  LastPos := Length(S) - LengthF + 1;

  if fForward then
    //Search forward
    for i := 1 to LastPos do
    begin
      Match := CompareMem(@FBuf[1], @SBuf[i], LengthF);

      if fWholeWords then
        Match := Match
          and (fLastBlock or (i < LastPos))
          and ((i <= 1) or (Pos(S[i - 1], Delimiters) > 0))
          and ((i >= LastPos) or (Pos(S[i + LengthF], Delimiters) > 0));

      if Match then
      begin
        Result := i;
        Break
      end;
    end
    else
    //Search backward
    for i := LastPos downto 1 do
    begin
      Match := CompareMem(@FBuf[1], @SBuf[i], LengthF);

      if fWholeWords then
        Match := Match
          and (fLastBlock or (i > 1))
          and ((i <= 1) or (Pos(S[i - 1], Delimiters) > 0))
          and ((i >= LastPos) or (Pos(S[i + LengthF], Delimiters) > 0));

      if Match then
      begin
        Result := i;
        Break
      end;
    end;
end;

//--------------------------------------------------
function SFindTextW(const F, S: WideString; fForward, fWholeWords, fCaseSens, fLastBlock: Boolean): Integer;
var
  SBuf, FBuf, Delimiters: WideString;
  Match: Boolean;
  LastPos, LengthF, i: Integer;
begin
  Result := 0;

  if (S = '') or (F = '') then Exit;

  Delimiters := SDefaultDelimiters;

  SBuf := S;
  FBuf := F;
  if not fCaseSens then
  begin
    SBuf := AnsiLowerCaseW(SBuf);
    FBuf := AnsiLowerCaseW(FBuf);
  end;

  LengthF := Length(F);
  LastPos := Length(S) - LengthF + 1;

  if fForward then
    //Search forward
    for i := 1 to LastPos do
    begin
      Match := CompareMem(@FBuf[1], @SBuf[i], LengthF * 2);

      if fWholeWords then
        Match := Match
          and (fLastBlock or (i < LastPos))
          and ((i <= 1) or (Pos(S[i - 1], Delimiters) > 0))
          and ((i >= LastPos) or (Pos(S[i + LengthF], Delimiters) > 0));

      if Match then
      begin
        Result := i;
        Break
      end;
    end
    else
    //Search backward
    for i := LastPos downto 1 do
    begin
      Match := CompareMem(@FBuf[1], @SBuf[i], LengthF * 2);

      if fWholeWords then
        Match := Match
          and (fLastBlock or (i > 1))
          and ((i <= 1) or (Pos(S[i - 1], Delimiters) > 0))
          and ((i >= LastPos) or (Pos(S[i + LengthF], Delimiters) > 0));

      if Match then
      begin
        Result := i;
        Break
      end;
    end;
end;


function IMin(N1, N2: Integer): Integer;
begin
  if N1 < N2 then
    Result := N1
  else
    Result := N2;
end;

function IMax(N1, N2: Integer): Integer;
begin
  if N1 > N2 then
    Result := N1
  else
    Result := N2;
end;

function WMin(N1, N2: Word): Word;
begin
  if N1 < N2 then
    Result := N1
  else
    Result := N2;
end;

function WMax(N1, N2: Word): Word;
begin
  if N1 > N2 then
    Result := N1
  else
    Result := N2;
end;

function I64Min(const N1, N2: Int64): Int64;
begin
  if N1 < N2 then
    Result := N1
  else
    Result := N2;
end;

function I64Max(const N1, N2: Int64): Int64;
begin
  if N1 > N2 then
    Result := N1
  else
    Result := N2;
end;


procedure ILimitMin(var N: Integer; Value: Integer);
begin
  if N < Value then
    N := Value;
end;

procedure ILimitMax(var N: Integer; Value: Integer);
begin
  if N > Value then
    N := Value;
end;

{
procedure WLimitMin(var N: Word; Value: Word);
begin
  if N < Value then
    N := Value;
end;

procedure WLimitMax(var N: Word; Value: Word);
begin
  if N > Value then
    N := Value;
end;
}

procedure I64LimitMin(var N: Int64; const Value: Int64);
begin
  if N < Value then
    N := Value;
end;

procedure I64LimitMax(var N: Int64; const Value: Int64);
begin
  if N > Value then
    N := Value;
end;


procedure SReplaceZeros(var S: AnsiString);
var
  i: Integer;
begin
  for i := 1 to Length(S) do
    if S[i] = #0 then
      S[i] := ' ';
end;

procedure SReplaceZerosW(var S: WideString);
var
  i: Integer;
begin
  for i := 1 to Length(S) do
    if S[i] = #0 then
      S[i] := ' ';
end;

procedure SDelLastSpaceW(var S: WideString);
begin
  if (S <> '') and ((S[Length(S)] = ' ') or (S[Length(S)] = #9)) then
    SetLength(S, Length(S) - 1);
end;

procedure SDelLastSpace(var S: AnsiString);
begin
  if (S <> '') and (S[Length(S)] = ' ') then
    SetLength(S, Length(S) - 1);
end;

procedure SDelLastComma(var S: AnsiString);
begin
  if (S <> '') and (S[Length(S)] = ',') then
    SetLength(S, Length(S) - 1);
end;


function SFillW(ch: WideChar; Count: Integer): WideString;
var
  i: Integer;
begin
  SetLength(Result, Count);
  for i := 1 to Length(Result) do
    Result[i] := ch;
end;

function STabReplacement(const TabOptions: TStringTabOptions): WideString;
var
  ASize: Integer;
  APos: Integer;
begin
  with TabOptions do
  begin
    Assert(TabSize > 0, 'Tab size too small');
    if FontMonospaced then
      ASize := TabSize - (TabPosition - 1) mod TabSize
    else
      ASize := TabSize;
    Result := SFillW(' ', ASize);
    APos := Length(Result) div 2 + 1;
    if NonPrintableShow then
      Result[APos] := NonPrintableChar;
  end;
end;

procedure SReplaceTabsW(var S: WideString; var TabOptions: TStringTabOptions);
var
  N: Integer;
begin
  repeat
    N := Pos(#9, S);
    if N = 0 then Break;
    TabOptions.TabPosition := N;
    SReplaceW(S, #9, STabReplacement(TabOptions));
  until False;
end;


function SetStringW(Buffer: PAnsiChar; BufSize: Integer; SwapBytes: Boolean): WideString;
var
  P: PAnsiChar;
  i, j: Integer;
  ch: AnsiChar;
begin
  Result := '';
  if BufSize < 2 then Exit;

  SetLength(Result, BufSize div 2);
  Move(Buffer^, Result[1], Length(Result) * 2);

  if SwapBytes then
  begin
    P := @Result[1];
    for i := 1 to Length(Result) do
    begin
      j := (i - 1) * 2;
      ch := P[j];
      P[j] := P[j + 1];
      P[j + 1] := ch;
    end;
  end;
end;


function SFileExtensionMatch(const FileName: WideString; const ExtList: AnsiString): Boolean;
var
  Ext: AnsiString;
begin
  if (FileName = '') or (ExtList = '') then
    begin Result := False; Exit end;
  Ext := SExtractFileExt(FileName);
  if (Ext <> '') and (Ext[1] = '.') then
    Delete(Ext, 1, 1);
  Result := Pos(
    ',' + LowerCase(Ext) + ',',
    ',' + LowerCase(ExtList) + ',') > 0;
end;

procedure SDeleteFromStrA(var S: AnsiString; const SubStr: AnsiString);
var
  N: Integer;
begin
  N := Pos(SubStr, S);
  if N > 0 then
    SetLength(S, N - 1);
end;

procedure SDeleteFromStrW(var S: WideString; const SubStr: WideString);
var
  N: Integer;
begin
  N := Pos(SubStr, S);
  if N > 0 then
    SetLength(S, N - 1);
end;

function SCharCR(ch: WideChar): Boolean;
begin
  Result := (ch = #13) or (ch = #10);
end;

function SLastCharCR(const S: WideString): Boolean;
begin
  Result := (S <> '') and SCharCR(S[Length(S)]);
end;

//--------------------------------------------------------
function SExpandVars(const S: WideString): WideString;
const
  BufSize = 4 * 1024;
var
  BufferA: array[0 .. BufSize - 1] of AnsiChar;
  BufferW: array[0 .. BufSize - 1] of WideChar;
begin
  if Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
    FillChar(BufferW, SizeOf(BufferW), 0);
    ExpandEnvironmentStringsW(PWChar(S), BufferW, BufSize);
    Result := WideString(BufferW);
  end
  else
  begin
    FillChar(BufferA, SizeOf(BufferA), 0);
    ExpandEnvironmentStringsA(PAnsiChar(AnsiString(S)), BufferA, BufSize);
    Result := AnsiString(BufferA);
  end;
end;

function SExpanded(const S: WideString): Boolean;
begin
  Result := Pos('%', S) = 0;
end;

function SGetItem(var S: Widestring; const sep: Char = ','): Widestring;
var
  i: integer;
begin
  i:= Pos(sep, s);
  if i = 0 then i:= MaxInt;
  Result:= Copy(s, 1, i-1);
  Delete(s, 1, i);
end;

procedure SDeleteFrom(var S: string; const SubStr: string);
var
  N: Integer;
begin
  N := Pos(SubStr, S);
  if N > 0 then
    SetLength(S, N - 1);
end;

procedure SDeleteFromW(var S: Widestring; const SubStr: Widestring);
var
  N: Integer;
begin
  N := Pos(SubStr, S);
  if N > 0 then
    SetLength(S, N - 1);
end;

function SDeleteTags(const s:Widestring):Widestring;
var n,nn:Integer;
begin
  Result:= s;
  repeat
    n:= Pos('<', Result);
    if n=0 then Break;
    nn:= PosEx('>', Result, n+1);
    if nn=0 then Break;
    Delete(Result, n, nn-n+1);
  until false;
end;

procedure SDeleteTo(var s: string; const sto: string);
var
  i: integer;
begin
  i:= Pos(sto, s);
  if i>0 then Delete(s, 1, i+Length(sto)-1);
end;

procedure SDeleteToW(var s: Widestring; const sto: Widestring);
var
  i: integer;
begin
  i:= Pos(sto, s);
  if i>0 then Delete(s, 1, i+Length(sto)-1);
end;

function SFormatNum(N, Digits: Integer): string;
begin
  Result:= IntToStr(N);
  while Length(Result)<Digits do
    Insert('0', Result, 0);
end;

function SNumLeadSpaces(const s: Widestring): integer;
begin
  Result:= 0;
  while (Result+1<=Length(s)) and
    ((s[Result+1]=' ') or (s[Result+1]=#9)) do
    Inc(Result);
end;

function IsTempFN(const fn: Widestring): boolean;
var
  t: Widestring;
begin
  t:= FTempDir + '\';
  Result:= UpperCase(t) = UpperCase(Copy(fn, 1, Length(t)));
end;

function SGetKeyValue(const s: string; var sKey, sVal: string): boolean;
var n:Integer;
begin
  sKey:= '';
  sVal:= '';
  n:= Pos('=', s);
  Result:= n>0;
  if Result then
  begin
    sKey:= Copy(s, 1, n-1);
    sVal:= Copy(s, n+1, maxInt);
  end;
end;

//------------------------
type
  TEscapeRec = record
    sFrom: Widechar;
    sTo: Widestring;
  end;

const
  cRecodeEols: array[0..1] of TEscapeRec = (
     (sFrom: #13; sTo: '\r'),
     (sFrom: #10; sTo: '\n')
     );

  (*
  cRecodeSpec: array[0..3] of TEscapeRec = (
     (sFrom: #13; sTo: '\r'),
     (sFrom: #10; sTo: '\n'),
     (sFrom: #9; sTo: '\t'),
     (sFrom: '\'; sTo: '\\')
     );
   *)

  cRecodeRegex: array[0..15] of TEscapeRec = (
     (sFrom: #13; sTo: '\r'),
     (sFrom: #10; sTo: '\n'),
     (sFrom: #9; sTo: '\t'),
     (sFrom: '\'; sTo: '\\'),
     (sFrom: '|'; sTo: '\|'),
     (sFrom: '('; sTo: '\('),
     (sFrom: ')'; sTo: '\)'),
     (sFrom: '['; sTo: '\['),
     (sFrom: ']'; sTo: '\]'),
     (sFrom: '{'; sTo: '\{'),
     (sFrom: '}'; sTo: '\}'),
     (sFrom: '.'; sTo: '\.'),
     (sFrom: '+'; sTo: '\+'),
     (sFrom: '-'; sTo: '\-'),
     (sFrom: '*'; sTo: '\*'),
     (sFrom: '?'; sTo: '\?')
     );

  cRecodeRegexAlt: array[0..13] of TEscapeRec = (
     (sFrom: #13; sTo: '\r'),
     (sFrom: #10; sTo: '\n'),
     (sFrom: #9; sTo: '\t'),
     (sFrom: '\'; sTo: '\\'),
     (sFrom: '|'; sTo: '\|'),
     //(sFrom: '('; sTo: '\('),
     //(sFrom: ')'; sTo: '\)'),
     (sFrom: '['; sTo: '\['),
     (sFrom: ']'; sTo: '\]'),
     (sFrom: '{'; sTo: '\{'),
     (sFrom: '}'; sTo: '\}'),
     (sFrom: '.'; sTo: '\.'),
     (sFrom: '+'; sTo: '\+'),
     (sFrom: '-'; sTo: '\-'),
     (sFrom: '*'; sTo: '\*'),
     (sFrom: '?'; sTo: '\?')
     );


function SEscapeStr(const s: Widestring;
  const Rec: array of TEscapeRec): Widestring;
var
  i, j, r: Integer;
begin
  Result:= '';
  for i:= 1 to Length(s) do
  begin
    r:= -1;
    for j:= 0 to Length(Rec)-1 do
      if s[i]=Rec[j].sFrom then
        begin r:= j; Break end;
    if r>=0 then
      Result:= Result+Rec[r].sTo
    else
      Result:= Result+s[i];
  end;
end;

function SEscapeEols(const s: Widestring): Widestring;
begin
  Result:= SEscapeStr(s, cRecodeEols);
end;

(*
function SEscapeSpec(const s: Widestring): Widestring;
begin
  Result:= SEscapeStr(s, cRecodeSpec);
end;
*)

function SEscapeRegex(const s: Widestring): Widestring;
begin
  Result:= SEscapeStr(s, cRecodeRegex);
end;

function SEscapeRegexAlt(const s: Widestring): Widestring;
begin
  Result:= SEscapeStr(s, cRecodeRegexAlt);
end;


function SBegin(const s, subs: Widestring): boolean;
begin
  Result:=
    (s<>'') and (subs<>'') and
    (Copy(s, 1, Length(subs))=subs);
end;

function SEnd(const s, subs: Widestring): boolean;
begin
  Result:=
    (s<>'') and (subs<>'') and
    (Length(subs)<=Length(s)) and
    (Copy(s, Length(s)-Length(subs)+1, MaxInt)=subs);
end;


function SCollapseFilenameWithDot(const fn, ref_dir: Widestring): Widestring;
begin
  Result:= fn;
  if SBegin(Result, ref_dir+'\') then
    SReplaceW(Result, ref_dir, '.');
end;


const
  cMacroSynDrive = '{SynDrive}';

function SCollapseFilenameDrive(const fn, ref_SynDir: Widestring): Widestring;
var
  ref_drive: string;
begin
  Result:= fn;
  ref_drive:= ExtractFileDrive(ref_SynDir);
  if SBegin(Result, ref_drive+'\') then
    SReplaceW(Result, ref_drive, cMacroSynDrive);
end;

function SExpandFilenameDrive(const fn, ref_SynDir: Widestring): Widestring;
begin
  Result:= fn;
  if SBegin(Result, cMacroSynDrive) then
    SReplaceW(Result, cMacroSynDrive, ExtractFileDrive(ref_SynDir));
end;


procedure SReplaceZeroesW(var S: Widestring);
var i:Integer;
begin
  for i:= 1 to Length(S) do
    if S[i]=#0 then
      S[i]:= ' ';
end;

function SDelLastCR(const s: Widestring): Widestring;
begin
  Result:= s;
  if (Length(Result) >= 2) and
    (Copy(Result, Length(Result)-1, 2) = sLineBreak) then
    Delete(Result, Length(Result)-1, 2);
  //if more than 1 CR/LF exist in line, don't delete anything
  if Pos(sLineBreak, Result) > 0 then
    Result:= s;
end;

function IsUpperChar(Ch: WideChar): boolean;
begin
  Result:= Ch = WideUpperCase(Ch);
end;


procedure SGetKeyAndValues(const Str: Widestring; var Key, Val1, Val2, Val3: Widestring);
var
  n: Integer;
  Val: Widestring;
begin
  Key:= '';
  Val1:= '';
  Val2:= '';
  Val3:= '';

  n:= Pos('=', Str);
  if n=0 then Exit;

  Key:= UTF8Decode(Copy(Str, 1, n-1));
  Val:= Copy(Str, n+1, MaxInt);
  Val1:= SGetItem(Val, ';');
  Val2:= SGetItem(Val, ';');
  Val3:= SGetItem(Val, ';');
end;

function SBufferToString(BufPtr: Pointer; BufSize: Integer): Widestring;
begin
  Result:= '';
  if (BufPtr<>nil) and (BufSize>0) then
  begin
    SetLength(Result, BufSize);
    Move(BufPtr^, Result[1], BufSize*SizeOf(WideChar));
  end;
end;


function SDecodeSpecChars(const s: WideString): WideString;
const
  DecodeRec: array[0..4] of TStringDecodeRecW =
    ((SFrom: '\n'; STo: #10),
     (SFrom: '\r'; STo: #13),
     (SFrom: '\t'; STo: #9),
     (SFrom: '\\'; STo: '\'),
     (SFrom: '\0'; STo: #0));
begin
  Result:= SDecodeW(S, DecodeRec);
end;


procedure SDeleteDupSpaces(var s: Widestring);
begin
  SReplaceAllW(s, '  ', ' ');
  SReplaceAllW(s, #9#9, #9);
  SReplaceAllW(s, #9' ', #9);
  SReplaceAllW(s, ' '#9, ' ');
end;

function SSpacesAtStart(const s: Widestring): Integer;
var
  i: Integer;
begin
  Result:= Length(s);
  for i:= 1 to Length(s) do
    if (s[i]<>' ') and (s[i]<>#9) then
      begin Result:= i-1; Break end;
end;

procedure SReplaceSpToTabLeading(var s: Widestring; const spaces: Widestring);
var
  SpLen: Integer;
  sub: Widestring;
begin
  SpLen:= SSpacesAtStart(s);
  if SpLen > 0 then
  begin
    sub:= Copy(s, 1, SpLen);
    SReplaceAllW(sub, spaces, #9);
    s:= sub + Copy(s, SpLen+1, MaxInt);
  end;
end;

function SFuzzyMatch(S, Filter: Widestring): boolean;
var
  i, k, k1: Integer;
begin
  Result:= true;
  if Filter='' then Exit;

  S:= WideUpperCase(S);
  Filter:= WideUpperCase(Filter);

  k:= 0;
  for i:= 1 to Length(Filter) do
  begin
    k1:= ecPosEx(Filter[i], S, k + 1);
    if k < k1 then
      k:= k1
    else
      begin
        Result:= false;
        Break;
      end;
  end;
end;


function SSubstringMatch(const Str, SFilter: Widestring): boolean;
var
  S1, SWord: Widestring;
begin
  if SFilter='' then
    begin Result:= true; Exit end;
  S1:= SFilter;
  repeat
    S1:= Trim(S1);
    SWord:= SGetItem(S1, ' ');
    if SWord='' then Break;
    if Pos(WideUpperCase(SWord), WideUpperCase(Str))=0 then
      begin Result:= false; Exit end;
  until false;
  Result:= true;
end;


procedure SGetCharArray(S, Filter: Widestring; var Arr: TSynCharArray);
var
  i, k, k1: Integer;
begin
  FillChar(Arr, SizeOf(Arr), 0);
  if Filter='' then Exit;

  S:= WideUpperCase(S);
  Filter:= WideUpperCase(Filter);

  k:= 0;
  for i:= 1 to Length(Filter) do
  begin
    k1:= ecPosEx(Filter[i], S, k + 1);
    if k < k1 then
    begin
      k:= k1;
      if i<=High(Arr) then
        Arr[i]:= k;
    end
    else
      Break;
  end;
end;


function SUntab(const S: Widestring; TabSize: Integer): Widestring;
var
  i, NSize: Integer;
begin
  Result:= S;
  repeat
    i:= Pos(#9, Result);
    if i=0 then Break;

    NSize:= TabSize - ((i-1) mod TabSize);

    //don't do Delete, it's slower
    Result[i]:= ' ';
    Insert(StringOfChar(' ', NSize-1), Result, i);
  until false;
end;

function IsQuoteChar(ch: WideChar): boolean;
begin
  Result:= (ch = '''') or (ch = '"');
end;

function IsBracketChar(ch: WideChar): boolean;
begin
  Result:= Pos(ch, '()[]{}') > 0;
end;

function SIndentOf(const s: Widestring): Widestring;
var
  i: Integer;
begin
  Result:= '';
  for i:= 1 to Length(s) do
    if not IsSpaceChar(s[i]) then
      begin Result:= Copy(s, 1, i-1); Break end;
end;

function FTempDir: string;
begin
  Result:= SExpandVars('%temp%');
end;

function IsStringListed(const S, List: string): boolean;
begin
  Result:= (S <> '') and
    (Pos(','+S+',', ','+List+',') > 0);
end;


function SStripFromTab(const S: Widestring): Widestring;
begin
  Result:= S;
  SDeleteFromStrW(Result, #9);
end;


function DoLoadSnippetFromFile(const fn: string; var Info: TSynSnippetInfo): boolean;
var
  L: TStringList;
  S, SId: string;
  i: Integer;
  TrailEol: boolean;
begin
  Result:= false;
  DoClearSnippet(Info);
  if not FileExists(fn) then Exit;
  Info.Filename:= fn;

  L:= TStringList.Create;
  try
    L.LoadFromFile(fn);

    //delete trailing empty lines
    TrailEol:= (L.Count>0) and (L[L.Count-1]='');
    while (L.Count>0) and (L[L.Count-1]='') do
      L.Delete(L.Count-1);

    while L.Count>0 do
    begin
      S:= L[0];
      L.Delete(0);

      //not SGetItem to not use string->Widestring and speed-up
      i:= Pos('=', S);
      if i=0 then Continue;
      SId:= Copy(S, 1, i-1);
      Delete(S, 1, i);

      if SId='name' then
        Info.Name:= UTF8Decode(S)
      else
      if SId='id' then
        Info.Id:= UTF8Decode(S)
      else
      if SId='lex' then
        Info.Lexers:= UTF8Decode(S)
      else
      if SId='text' then
      begin
        //"text" field means rest of file is snippet text
        for i:= 0 to L.Count-1 do
          Info.Text:= Info.Text +
            UTF8Decode(L[i]) +
            IfThen((i < L.Count-1) or TrailEol, #13); //add EOL for non-last line
        L.Clear;
      end;
    end;
  finally
    FreeAndNil(L);
  end;

  Result:= (Info.Name<>'') and (Info.Text<>'');
end;

procedure DoSaveSnippetToFile(const fn: string; var Info: TSynSnippetInfo);
var
  L: TStringList;
begin
  L:= TStringList.Create;
  try
    L.Add('name=' + UTF8Encode(Info.Name));
    L.Add('id=' + UTF8Encode(Info.Id));
    L.Add('lex=' + UTF8Encode(Info.Lexers));
    L.Add('text=');
    L.Add(UTF8Encode(Info.Text));
    L.SaveToFile(fn);
  finally
    FreeAndNil(L)
  end;
end;

procedure DoClearSnippet(var AInfo: TSynSnippetInfo);
begin
  AInfo.Filename:= '';
  AInfo.Name:= '';
  AInfo.Id:= '';
  AInfo.Lexers:= '';
  AInfo.Text:= '';
end;

function IsWordString(const S: Widestring; AllowDot: boolean): boolean;
var
  i: Integer;
begin
  for i:= 1 to Length(S) do
    if not (IsWordChar(S[i]) or (S[i]='$') or (AllowDot and (S[i]='.'))) then
      begin Result:= false; Exit end;
  Result:= true;
end;

function SReplaceAllEols(const S, SReplace: Widestring): Widestring;
begin
  Result:= S;
  SReplaceAllW(Result, #13#10, SReplace);
  SReplaceAllW(Result, #10, SReplace);
  SReplaceAllW(Result, #13, SReplace);
end;

procedure SReplaceAllPercentChars(var S: string);
var
  i: Integer;
begin
  for i:= $20 to $2F do
    SReplaceAll(S, '%'+IntToHex(i, 2), Chr(i));

  i:= $7C;
  SReplaceAll(S, '%'+IntToHex(i, 2), Chr(i));
end;

function IsHexChar(Ch: WideChar): boolean;
begin
  Result:= Pos(Ch, '1234567890abcdefABCDEF') > 0;
end;

function IsHexColorString(const s: Widestring): boolean;
var
  i, Len: integer;
begin
  Result:= false;
  Len:= Length(s);
  if (Len<>3) and (Len<>6) and (Len<>8) then Exit;
  for i:= 1 to Len do
    if not IsHexChar(s[i]) then
      Exit;
  Result:= true;
end;


function SHexCharToInt(ch: char): integer;
begin
  ch:= UpCase(ch);
  if ch>'9' then
    Result:= Ord(ch)-Ord('A')+10
  else
    Result:= Ord(ch)-Ord('0');
end;

function SHexByteToInt(const s: string): integer;
begin
  if Length(s)<>2 then
    raise Exception.Create('Not 2-digit hex string: '+s);
  Result:=
    SHexCharToInt(s[1])*16 +
    SHexCharToInt(s[2]);
end;

function SHtmlCodeToColor(const s: string): Integer;
var
  n1, n2, n3: integer;
begin
  //"rrggbb" is the same as "rrggbbaa"
  if (Length(s)=6) or (Length(s)=8) then
  begin
    n1:= SHexByteToInt(s[1]+s[2]);
    n2:= SHexByteToInt(s[3]+s[4]);
    n3:= SHexByteToInt(s[5]+s[6]);
    Result:= RGB(n1, n2, n3);
  end
  else
  if Length(s)=3 then
  begin
    n1:= SHexByteToInt(s[1]+s[1]);
    n2:= SHexByteToInt(s[2]+s[2]);
    n3:= SHexByteToInt(s[3]+s[3]);
    Result:= RGB(n1, n2, n3);
  end
  else
    raise Exception.Create('Incorrect color string: '+s);
end;

function SColorToHtmlCode(C: Integer): string;
begin
  Result:= '#' +
    IntToHex(GetRValue(C), 2) +
    IntToHex(GetGValue(C), 2) +
    IntToHex(GetBValue(C), 2)
end;

function IsTextUnicode(const S: Widestring): boolean;
var
  i: integer;
begin
  for i:= 1 to Length(S) do
    if Ord(S[i]) > $FF then
    begin
      Result:= true;
      Exit;
    end;
  Result:= false;
end;


function STruncateLong(const Str: Widestring; MaxLen: Integer; CutMiddle: boolean): Widestring;
const
  cDots: Widestring = #$2026;
begin
  Result:= Str;
  if (MaxLen>0) and (Length(Str)>MaxLen) then
  begin
    if CutMiddle then
      Result:=
        Copy(Str, 1, MaxLen div 2) + cDots +
        Copy(Str, Length(Str)-(MaxLen - MaxLen div 2)+1, MaxInt)
    else
      Result:= Copy(Str, 1, MaxLen) + cDots;
  end;
end;

function SWideStringToPythonString(const Str: Widestring): string;
const
  Decode: array[0..0] of TStringDecodeRecW =
    ((SFrom: '"'; STo: '"+''"''+"'));
begin
  Result:= UTF8Encode(SDecodeW(Str, Decode));
  Result:= 'r"'+Result+'"';
end;


function SCountOccurrences(const Text, Substring: Widestring): integer;
var
  offset: Integer;
begin
  Result:= 0;
  offset:= PosEx(Substring, Text, 1);
  while offset<>0 do
  begin
    Inc(Result);
    offset:= PosEx(Substring, Text, offset + length(Substring));
  end;
end;


//modified function SysUtils.WrapText from Delphi, got it somewhere
function SWrapText(const S, SInsertBreak, SSeparators, SEol: WideString;
  NTabSize, NMaxCol: Integer): WideString;
var
  NCol, NPos: Integer;
  LinePos, LineLen: Integer;
  BreakLen, BreakPos: Integer;
  QuoteChar, CurChar: WideChar;
  ExistingBreak: Boolean;
begin
  NCol := 1;
  NPos := 1;
  LinePos := 1;
  BreakPos := 0;
  QuoteChar := #0;
  ExistingBreak := False;
  LineLen := Length(S);
  BreakLen := Length(SInsertBreak);
  Result := '';
  while NPos <= LineLen do
  begin
    CurChar := S[NPos];
    if CurChar = #9 then
      Inc(NCol, NTabSize - 1)
    else  
    begin
    if IsQuoteChar(CurChar) then
      if QuoteChar = #0 then
        QuoteChar := CurChar
      else if CurChar = QuoteChar then
        QuoteChar := #0;
    if QuoteChar = #0 then
    begin
      if CurChar = SInsertBreak[1] then
      begin
        ExistingBreak := WStrLComp(PWChar(SInsertBreak), PWChar(@S[NPos]), BreakLen) = 0;
        if ExistingBreak then
        begin
          Inc(NPos, BreakLen-1);
          BreakPos := NPos;
        end;
      end;

      if not ExistingBreak then
        if System.Pos(CurChar, SSeparators)>0 then
          BreakPos := NPos;
      end;
    end;

    Inc(NPos);
    Inc(NCol);

    if not (IsQuoteChar(QuoteChar)) and (ExistingBreak or
      ((NCol > NMaxCol) and (BreakPos > LinePos))) then
    begin
      NCol := 1;
      Result := Result + Copy(S, LinePos, BreakPos - LinePos + 1);
      if not IsQuoteChar(CurChar) then
      begin
        while NPos <= LineLen do
        begin
          if System.Pos(S[NPos], SSeparators)>0 then
          begin
            Inc(NPos);
            ExistingBreak := False;
          end
          else
          begin
            if WStrLComp(PWChar(@S[NPos]), PWChar(SEol), Length(SEol)) = 0 then
            begin
              Inc(NPos, Length(SEol));
              ExistingBreak := True;
            end
            else
              Break;
          end;
        end;
      end;
      if (NPos <= LineLen) and not ExistingBreak then
        Result := Result + SInsertBreak;

      Inc(BreakPos);
      LinePos := BreakPos;
      NPos := LinePos;
      ExistingBreak := False;
    end;
  end;
  Result := Result + Copy(S, LinePos, MaxInt);
end;


end.
