Uses CRT;
 Var i,ds:integer;
  s,s1:string;
   Begin
    Readln (s);
      for i:=length (s) downto 1 do
        s1:=s1+s[i];
     writeln (s1);
   End.
