Uses crt;
label 1,2,3,4;
Var i,j,n,z : integer;
    a,b,c,d: array [0..100,0..100] of integer;    // преграда // направление // откуда пришел // длина пути
    
Procedure virus(i1,j1:integer);    // Вывод на экран с задержкой с миганием
  Label 1;
  begin
  b[i1,j1]:=n;
  
  delay(z);
  gotoxy(j1*2,i1);
  writeln(n);
  if i1*j1=n*n then goto 1; //writeln('yes');
  
  if (a[i1,j1+1]<0) and (j1<n) and (b[i1,j1+1]=0) then virus(i1,j1+1);
  if (a[i1+1,j1]<0) and (i1<n) and (b[i1+1,j1]=0) then virus(i1+1,j1);
  if (a[i1,j1-1]<0) and (j1>1) and (b[i1,j1-1]=0) then virus(i1,j1-1);
  if (a[i1-1,j1]<0) and (i1>1) and (b[i1-1,j1]=0) then virus(i1-1,j1);

 1: end;
  
    
Begin

  n:=8;                         // Размеры
  z:=100;                         // Задержка
  For i:=1 to n do
    for j:=1 to n do
     begin
      a[i,j]:=-random(3);                               //  a[i,j]<0 - путь свободный "."     a[i,j]=0 - Преграда "Ж"
      gotoxy(j*2,i);
      if a[i,j]=0 then writeln('Ж') else writeln('.');
     end;
  a[1,1]:=-1;    // начало
  a[n,n]:=-1;    // окончание пути
  
  virus(1,1);
      
  //  Ответ
1:  gotoxy(1,n+1);
  if b[n,n]=n then writeln('yes') else writeln('no');

end.
