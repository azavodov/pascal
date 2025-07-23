Uses CRT;
 Var i,kol:integer;
  s,s1:string;
   Begin
    Readln (s);
    s1:='1234567890';
     for i:=1 to length (s) do
      If (pos(s[i],s1))=0 then Begin writeln ('нет'); break; End else
      If i=length (s) then writeln ('да');
   End.
