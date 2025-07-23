Uses CRT;
 Var
 s,s1,s2:string;
  Begin
   s:='вертикаль';
   
   s1:=copy(s,4,2)+copy(s,3,1);
   s2:=copy(s,1,2)+copy(s,4,1)+copy(s,6,2);

   Writeln (s1);
   Writeln (s2);

  End.
