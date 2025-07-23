program project1;

{Из шахматной доски по границам клеток выпилили связную (не распадающуюся на части) фигуру без дыр. Требуется определить ее периметр.

Входные данные

Во входном файле INPUT.TXT сначала записано число N (1 ≤ N ≤ 64) – количество выпиленных клеток. В следующих N строках указаны координаты выпиленных клеток, разделенные пробелом (номер строки и столбца – числа от 1 до 8). Каждая выпиленная клетка указывается один раз.

Выходные данные

В выходной файл OUTPUT.TXT выведите одно число – периметр выпиленной фигуры (сторона клетки равна единице).}

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };

 Var i,j,k,s:integer;
     f,f1:text;
     x: array [1..65,1..65] of integer;
     x1,y1: array [1..65] of integer;

begin
  assign (f,'input.txt');
  assign (f1,'output.txt');
  Reset (f); Rewrite (f1);

  Readln (f,k);
   For i:=1 to k do
     Begin
      Read (f,x1[i]);
      Readln (f,y1[i]);
      x[x1[i],y1[i]]:=1;
     end;
  close (f);

   For i:=1 to 8 do
    For j:=1 to 8 do
      Begin
       If x[i,j]<>0 then
        Begin
         If x[i+1,j]=0 then inc (s);
         If x[i,j+1]=0 then inc (s);
         If x[i-1,j]=0 then inc (s);
         If x[i,j-1]=0 then inc (s);
        End;
      end;

  Writeln (f1,s);
  close (f1);
end.
