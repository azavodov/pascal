{Вывести индексы пар равных элементов,
произвольно расположенных в массиве,
и посчитать количество таких пар.  }

Uses CRT;
Var i,j,i1,j1,c:integer;
 x:array [1..9,1..9] of integer;
 
  Begin
  
   For i:=1 to 9 do
    For j:=1 to 9 do
     Begin
      x[i,j]:=random (90)+10;
      write (x[i,j]:3);
      If j=9 then writeln;
     End;
     
    Writeln;
    writeln;
     
    For i:=1 to 9 do
     For j:=1 to 9 do
      For i1:=i to 8 do
       For j1:=j+1 to 9 do
        Begin
          If x[i,j]=x[i1,j1] then
           Begin
            write ('(',j,' ',i,') и (',j1,' ',i1,')','     ');
            inc (c);
            If (c mod 4)=0 then writeln;
           End;
        End;
     Writeln;
     Writeln (c,' - колличество пар');
     
  End.
