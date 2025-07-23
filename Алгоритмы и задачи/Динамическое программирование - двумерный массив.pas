// пройти по массиву и набрать максимальное число
Uses CRT;
Var i,j,N,p,p1,max:integer;
    a,b,c: array [0..100, 0..100] of integer;
 Begin
   N:=5;
//  Readln (N);

 Writeln ('исходный массив:');
   For i:=1 to N do
    For j:=1 to N do
    Begin
     a[i,j]:= random (18)-9;
     Write (a[i,j]:3);
     If j=N then Writeln;
    End;
    
    

  Writeln ('динамический массив:');
  b[1,1]:=a[1,1]; b[n,n]:=a[n,n];
  For i:=2 to n do
   Begin
    b[1,i]:=b[1,i-1]+a[1,i];
    b[i,1]:=b[i-1,1]+a[i,1];
   End;
   
   For i:=2 to N do
    For j:=2 to N do
     Begin
      p:=b[i-1,j]+a[i,j]; p1:=b[i,j-1]+a[i,j];
      If p>p1 then b[i,j]:=p else b[i,j]:=p1;
     End;
     
   For i:=1 to N do
    For j:=1 to N do
     Begin
      Write (b[i,j]:3);
      If j=N then Writeln;
     End;
     
   Writeln ('оптимальный путь:');
   c[1,1]:=1; c[N,N]:=1;
    For i:=N downto 1 do
     For j:=N downto 1 do
      Begin
        p:=b[i-1,j]; p1:=b[i,j-1];
        If p>p1 then Begin c[i-1,j]:=1; max:=max+p; i:=i-1; j:=j+1; End
                else Begin c[i,j-1]:=1; max:=max+p1;j:=j-1; {i:=i+1;} End;
      End;
     For i:=1 to N do
      For j:=1 to N do
       Begin
        If c[i,j]=1 then Write ('*':3)
        else write ('0':3);
        If j=N then WRiteln ();
       End;

    Writeln ('максимальное - ', max);
 
 End.
