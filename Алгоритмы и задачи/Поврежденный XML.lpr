program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };

 Var d,i,p,n,kt:integer;
     s:string;
     f,f1:text;
     t: array [1..100] of string;
     m: array [1..100] of integer;
 label 1;

begin
  assign (f,'input.txt');
  assign (f1,'output.txt');
  Reset (f); Rewrite (f1);
  Readln (f,s);
  d:=length (s);

   FOr i:=1 to d do
    Begin
     If s[i]='<' then inc (p);
     If s[i]='>' then p:=p-1;
     If (p<0) or (p>1) then Begin writeln (f1,'error'); break; End;
    end;

  If p<>0 then writeln (f1,'error');
  If pos('<>',s)<>0 then writeln (f1,'error');
  Writeln (f1,'yes');

  n:=1;
   for i:=2 to d do
    Begin
     If s[i]<>'>' then t[n]:=t[n]+s[i];
     If s[i]='>' then inc (n);
    end;

   For i:=1 to n do
     Begin
       If (t[i][1]<>'<') then
       If (t[i][length(t[i])]<>'>') then
     End;

   kt:=1; m[1]:=1;
   For i:=2 to n do
     If t[i][2]<>'/' then
      Begin
       inc (kt);
       m[kt]:=i;
      End
     else
      Begin
       If delete(t[i],2,1)=m[kt] then kt:=kt-1;
      End;
   If kt=0 then writeln (f1,'verno');


  close (f); close (f1);
end.

