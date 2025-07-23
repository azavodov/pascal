Uses CRT;
 Var
 s,s1,s2:string;
  Begin
   s:='ןנמדנאללא';

   s1:=copy(s,2,2)+copy(s,7,1);
   s2:=copy(s,5,3)+copy(s,1,1)+copy(s,9,1);

   Writeln (s1);
   Writeln (s2);

  End.
