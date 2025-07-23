Uses CRT;
 Var i,sum:integer;
  s,s1:string;
   Begin
    Readln (s);
    s1:='1234567890';
    sum:=0;
     for i:=1 to length (s) do
      If (i mod 2)<>0 then
       sum:=sum+strtoint(s[i]);
     Writeln (sum);
   End.
