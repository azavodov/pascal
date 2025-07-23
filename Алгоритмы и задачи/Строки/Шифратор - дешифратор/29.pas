Uses CRT;
 Var i:integer;
  s,s1:string;
   Begin
    Readln (s);
      for i:=1 to length (s) do
       If (i mod 2)=0 then  s1:=s1+s[i]+s[i-1];

     writeln (s1);
   End.
