Uses CRT;
Label 1;
 Var i,dl,k,j:integer;
     sum:real;
     s,s1:string;
     c: array [1..260] of string;
     
  Begin
 //s:='5*2*4*5/2*8';
   Readln (s);
   dl:=length (s);

   For i:= 1 to dl do
     Begin
      s1:=s1+s[i];
      If (pos(s[i],'+-*/')>0) or (pos(s[i+1],'+-*/')>0) or (i=dl) then
       Begin
        inc (j);
        c[j]:=s1;
        s1:='';
        If (i=1) and (s[1]='-') then begin j:=j-1; s1:='-' end;
       End;
     End;

 1:
   For i:= 1 to j do
   Write (c[i]);
   Readln;
   
    For i:=1 to j do
     If (c[i]='*') or (c[i]='/') then
      Begin
      If c[i]='*' then
        c[i-1]:=floattostr(strtofloat(c[i-1])*strtofloat(c[i+1]));
      If c[i]='/' then
        c[i-1]:=floattostr(strtofloat(c[i-1])/strtofloat(c[i+1]));
        j:=j-2;
         For k:=i to j do
          c[k]:=c[k+2];
         goto 1;
      End;

   For i:=1 to j do
     If (c[i]='+') or (c[i]='-') then
      Begin
      If c[i]='+' then
        c[i-1]:=floattostr(strtofloat(c[i-1])+strtofloat(c[i+1]));
      If c[i]='-' then
        c[i-1]:=floattostr(strtofloat(c[i-1])-strtofloat(c[i+1]));
        j:=j-2;
         For k:=i to j do
          c[k]:=c[k+2];
         goto 1;
      End;
   Writeln (c[1]);

  End.
