program DelphiArb;

uses
  System.SysUtils, System.StrUtils;

function Arb(const Text: string): string;
const
  Input = 'BDFGHJKLMNPRSTVZbdfghjklmnprstvz';
  Output = 'ZVTSRPNMLKJHGFDBzvtsrpnmlkjhgfdb';
var
  CharMap: array [Char] of Char;
  Index: Integer;
begin
  for Index := Low(Input) to High(Input) do
    CharMap[Input[Index]] := Output[Index];

  Result := Text;
  for Index := 1 to Length(Result) do
    if CharMap[Result[Index]] <> #0 then
      Result[Index] := CharMap[Result[Index]];
end;

var
  StrIn: string;

begin
  StrIn := 'LIAHARAZA AKAHEO HEREFHA FHAFHY KY FAOKA E';

  Writeln('Teny adika  <<<: ', StrIn);
  Writeln('>>> Dika mazava: ', Arb(StrIn));

  Readln;

end.
