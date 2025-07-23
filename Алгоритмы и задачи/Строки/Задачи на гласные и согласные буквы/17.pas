Uses CRT;
 Var i,a:integer;
  s,s1:string;
   Begin
    Readln (s);
     s1:='Єуеыаоэ€ию';
      for i:=1 to length (s) do
       If (pos(s[i],s1))>0 then inc (a);
     Writeln (a,' - гласных букв');
   End.
