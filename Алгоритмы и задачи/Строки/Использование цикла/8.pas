Uses CRT;
 Var i:integer;
  s,s1:string;
   Begin
    Readln (s);
     For i:=1 to length (s) do
       If i=length(s) then s1:=s1+s[i]
                      else s1:=s1+s[i]+'*';
    writeln (s1);
   End.
