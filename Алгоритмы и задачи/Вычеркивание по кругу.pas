Uses CRT;
 Var kg,n,m,i,j,k:integer;
  x:array [1..10000] of integer;

  Begin
   Writeln ('ввести колличество цифр и номер вычеркивыемой цифры');
   Readln (n,m);

    For i:= 1 to n do
     x[i]:=i;
     
    i:=0;
     while 1<2 do
      Begin
      
       inc (i);
       If i>n then i:=1;
       
        If x[i]>0 then
         Begin
          inc (kg);
          If kg=m then Begin kg:=0; x[i]:=0; inc (k); end;
          If k=n then Begin writeln (i); break; End;
         End;
         
      End;
        
  End.
