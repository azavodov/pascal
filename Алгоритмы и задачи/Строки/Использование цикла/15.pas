Uses CRT;
 Var i,max,b:integer;
  s:string;
   Begin
    Readln (s);
    b:=0; max:=0;
      for i:=1 to length (s) do
        If (s[i]=s[i+1]) and (s[i]=' ') then inc (b) else
         Begin If b>max then max:=b+1; b:=0; End;
     Writeln (max);
   End.
