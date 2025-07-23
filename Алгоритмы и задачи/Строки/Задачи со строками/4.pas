Uses CRT;
 Var
 s,s1,s2:string;
  Begin
   s:='клоун';

   s1:=copy(s,4,1)+s;
   delete (s1,5,1);
   s2:=copy(s,1,1)+copy(s,4,1)+s;
   delete (s2,3,1);
   delete (s2,5,1);

   Writeln (s1);
   Writeln (s2);

  End.
