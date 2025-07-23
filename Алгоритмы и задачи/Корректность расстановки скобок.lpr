{$mode objfpc}{$H+}
uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };

 Var i,p: integer;
     s: string;
     x: array [0..10000] of integer;

begin

  Readln (s);

  x[0]:=1; p:=0;
   For i:=1 to length (s) do
     case (s[i]) of
      '(': begin x[x[0]]:=1; inc (x[0]); End;
      '{': begin x[x[0]]:=2; inc (x[0]); End;
      '[': begin x[x[0]]:=3; inc (x[0]); End;
      ')': If x[x[0]-1]=1 then x[0]:=x[0]-1 else p:=1;
      '}': If x[x[0]-1]=2 then x[0]:=x[0]-1 else p:=1;
      ']': If x[x[0]-1]=3 then x[0]:=x[0]-1 else p:=1;
     end;

   If (p=0) and (x[0]=1) then
   writeln ('YES') else writeln ('NO');

   Readln ();
end.

