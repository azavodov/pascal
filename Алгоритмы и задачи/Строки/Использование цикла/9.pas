Uses CRT;
 Var i:integer;
  s:string;
   Begin
    Readln (s);
     For i:=1 to length (s) do
      If (i mod 2)=0 then write (s[i]);
   End.
