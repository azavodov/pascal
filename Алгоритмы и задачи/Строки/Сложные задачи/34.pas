Uses CRT;
 Var a,b:integer;
 s,s1:string;
  Begin
    Readln (s);

      While s<>'' do
       Begin
        b:=pos('()',s);
        If b>0 then
         delete (s,b,2);
        inc (a);
        If a>50000 then break;
       End;

     If s='' then writeln ('Yes') else writeln ('No');

  End.


