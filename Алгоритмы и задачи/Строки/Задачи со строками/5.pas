Uses CRT;
 Var k,i:integer;
 s,s1,s2:string;
  Begin
   Readln (s);

    s1:=copy (s,1,3);
    s2:=copy (s,Length(s)-2,3);
     delete (s,1,3);
     delete (s,Length(s)-2,3);
    Writeln (s2,s,s1);

  End.
