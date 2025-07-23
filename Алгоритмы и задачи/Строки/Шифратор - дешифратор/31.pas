Uses CRT;
 Var i:integer;
  s,s2,s3:string;
   Begin
    Readln (s);
    
      for i:=length (s) downto 1 do
        s2:=s2+s[i];
      for i:=1 to length (s) do
        If (i mod 2)=0 then  s3:=s3+s2[i]+s2[i-1];
        
    writeln (s3);

   End.
