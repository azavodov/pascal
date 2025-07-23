Uses CRT;
 Var i,k:integer;
  s:string;
   Begin
    Readln (s);
     For i:=1 to length (s) do
      If (s[i]='.') or (s[i]='!') or
         (s[i]='?') then  k:=k+1;
     Writeln (k);
   End.
