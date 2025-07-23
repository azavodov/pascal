Uses CRT;
 Var i,a:integer;
  s,s1:string;
   Begin
    Readln (s);
     s1:='Єуеыаоэ€ию .,!?1234567890+-*/;}{][=_';
      for i:=1 to length (s) do
       If (pos(s[i],s1))=0 then inc (a);
     Writeln (a,' - согласных букв');
   End.
