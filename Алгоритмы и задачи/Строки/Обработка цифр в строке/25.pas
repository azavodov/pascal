Uses CRT;
 Var i,max,b:integer;
  s,s1:string;
   Begin
    Readln (s);
    s1:='1234567890';
    b:=0; max:=0;
      for i:=1 to length (s) do
        If (pos(s[i],s1)>0) and (pos(s[i+1],s1)>0)
        then inc (b) else
        Begin If b>max then max:=b+1; b:=0; End;
     Writeln (max);
   End.
