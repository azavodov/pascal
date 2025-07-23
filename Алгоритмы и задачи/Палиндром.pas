Uses CRT;
 Var s:string;
     i:integer;
 Begin
  write ('¬ведите строку:  ');
  Readln (s);

    for i:= 1 to length (s) do
     If s[i]<>s[length(s)-i+1] then
      Begin
       Writeln ('false');
       break;
      End
      else If i=length(s) then writeln ('true');
      

 End.
