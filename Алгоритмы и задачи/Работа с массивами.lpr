{$mode objfpc}{$H+}
uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };


Var a,b,c,n,i,j,min,max,k:integer;
    x: array [1..100,1..100] of integer;
begin

  Write ('vvedite razmer massiva - ');
  Readln (n);

   For i:=1 to n do
    For j:=1 to n do
      Begin
       x[i,j]:=random (10);                             // произвольная задача и
       If j=n then Writeln (x[i,j],' ') else            // вывод массива
                   write (x[i,j],' ');
      end;

   writeln ('povorot na 90 gradusov - ');
   For i:=1 to n do
    For j:=1 to n do
     Begin
      If j=n then Writeln (x[j,i],' ') else             // поворот массива на 90 градусов
                  write (x[j,i],' ');
     end;

    max:=0; min:=1000;
   for i:=1 to n do
    for j:=1 to n do                                    // нахождение минимального и
     Begin                                              // максимального эллементов
      If x[i,j]<=min then min:=x[i,j];
      If x[i,j]>=max then max:=x[i,j];
     end;
   Writeln ('minimalny element - ',min);
   Writeln ('maximalny element - ',max);

    min:=1000;
   Write ('min element na glavnoy diagonali - ');       // нахождение минимального эллемента
    For i:=1 to n do                                    // на главной диагонали
     If x[i,i]< min then min:=x[i,i];
    Writeln (min);

    Writeln ('massiv s posledoatelnymi elementami - ');
    k:=1;
    For i:=1 to n do
     For j:=1 to n do
      Begin
       x[i,j]:=k;                                       // последовательная задача и
       If j=n then Writeln (x[i,j],' ') else            // вывод массива
                   write (x[i,j],' ');
       inc (k);
      end;


   k:=1;
   writeln ('zapolnenie zmeykoi -  - ');
   For i:=1 to n do
    For j:=1 to n do
     Begin
      If (i mod 2)=0 then x[i,j]:=k else x[j,i]:=k;
      inc (k);
     end;
   For i:=1 to n do
    For j:=1 to n do
      Begin
       If j=n then Writeln (x[i,j],' ') else
                   write (x[i,j],' ');
      end;



  Readln ();
end.

