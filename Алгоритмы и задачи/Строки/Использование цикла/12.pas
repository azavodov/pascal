Uses CRT;
 Var i:integer;
  s:string;
   Begin
    Readln (s);
     For i:=1 to length (s) do
      If (i mod 3)=0 then writeln (s[i]);
   End.
