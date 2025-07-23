Uses CRT;
 Var kol,i:integer;
 s,s2:string;
  Begin
   Readln (s);
     For i:=1 to length (s) do
      Begin
       If (pos(s[i],s2))=0 then
        Begin
         inc (kol);
         s2:=s2+s[i];
        End;
      End;
    Writeln (kol);
  End.
