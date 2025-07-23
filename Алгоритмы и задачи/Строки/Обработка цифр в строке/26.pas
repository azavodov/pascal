Uses CRT;
 Var i:integer;
  s,s1,s2:string;
   Begin
    Readln (s);
    s1:='1234567890';
      for i:=1 to length (s) do
        If (pos(s[i],s1)>0) then
        s2:=s2+s[i];
     Writeln (s2);
   End.
