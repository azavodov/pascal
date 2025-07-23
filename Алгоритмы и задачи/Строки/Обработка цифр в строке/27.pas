Uses CRT;
 Var i,sum:integer;
  s,s1,s2:string;
   Begin
    Readln (s);
    s1:='1234567890';
      for i:=1 to length (s) do
       If (pos(s[i],s1)>0) and (pos(s[i+1],s1)>0) then
        s2:=s2+s[i] else If (pos(s[i],s1)>0) then
          Begin
           s2:=s2+s[i];
           sum:=sum+strtoint(s2);
           s2:='';
          End;
     writeln (sum);
   End.
