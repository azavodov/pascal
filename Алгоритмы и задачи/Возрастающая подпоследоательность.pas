Uses CRT;
 Var max,i,j,n,nm,k:integer;
  x,a,b,y:array [1..1000] of integer;
  
  Begin
  
  Writeln ('введите размер массива');
  Readln (n);
  
   For i:= 1 to n do
     Begin
      x[i]:=random (10);
      write (x[i]:3);
     End;
    writeln;
    
    For i:= 1 to n do
     Begin
      a[i]:=1;
       For j:=1 to i-1 do
        If (x[j]<x[i]) and (a[j]>a[i]-1) then a[i]:=a[j]+1;
      write (a[i]:3);
     End;
    writeln;
    
    max:=0;
    for i:=1 to n do
     If a[i]>max then Begin max:=a[i]; nm:=i; End;
     
    b[max]:=x[nm];
    k:=max;
    For i:=nm-1 downto 1 do
     If (a[nm]-1=a[i]) and (x[i]<x[nm]) then
      Begin
       nm:=i;
       k:=k-1;
       b[k]:=x[i];
      End;
      
     writeln;
    For i:=1 to max do
     write (b[i]:3);
    Writeln (' - возрастающая последовательность');

  End.
