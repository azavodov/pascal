Uses CRT;
 Var k,i:integer;
 s,s2:string;
  Begin
   Readln (k);
   Readln (s);
   
    For i:=k+1 to length (s) do
     s2:=s2+s[i];
     
     delete (s,k+1,length (s)-k);
     
    Writeln (s2+s);

  End.
