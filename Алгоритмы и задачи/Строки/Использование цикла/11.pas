Uses CRT;
 Var i:integer;
  s,s1:string;
   Begin
    Readln (s);
     For i:=1 to length (s) do
      s1:=s1+'*';
     Writeln (s1+s+s1);
   End.
