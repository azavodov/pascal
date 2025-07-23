Uses CRT;
 Var kg,n,m,i,j,k:integer;
  s,s1,s2,s3,s4:string;
   Begin
   
   // Readln (s);
    s:='111 aaa x and y bbb 222';
   
      for i:=1 to length (s)-2 do
       If (s[i]='a') and (s[i+1]='n') and (s[i+2]='d') then
        Begin
        
         For j:=i-2 downto 1 do
          If s[j]<>' ' then s1:=s1+s[j] else break;
         For k:=i+4 to length (s) do
          If s[k]<>' ' then s2:=s2+s[k] else break;
          
         s3:=copy (s,1,i);
         s4:=copy (s,i,);
          
        End;

      Writeln (s3,' ',s2,' and ',s1,' ',s4);
   End.
   
