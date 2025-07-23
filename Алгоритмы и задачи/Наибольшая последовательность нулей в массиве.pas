Uses CRT;
 Var kg,n,m,i,j,k,max,i1,i2,ip:integer;
  x:array [1..10000] of integer;
  
   Begin

   Writeln ('ввести размер массива');
   Readln (n);
   
    For i:= 1 to n do
      Begin
       x[i]:=random (2);
       write (x[i],' ');
      End;
      Writeln;
    x[n+1]:=1;
     
    For i:=1 to n+1 do
     If x[i]=0 then inc (m) else
       Begin
        If m>max then
          begin
           i2:=i-1;
           max:=m;
           i1:=i2-max+1;
          End;
        m:=0;
       End;
     
    Writeln (max,' - максимум');
    Writeln ('с ',i1,' по ',i2);
   
   End.
