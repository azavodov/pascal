//Последовательность Фибоначчи 1,1,2,3,5,8.... Записать в массив 30 эл-тов
uses CRT;
Var	a: array [1..30] of integer;
    i,k1,k2: integer;
 begin
	a[1]:=1;
	a[2]:=1;
	
  For i:=3 to 30 do
		a[i]:=a[i-2]+a[i-1];//рекурентная формула
		
  For i:=1 to 30 do
      write (a[i],'  ');
  writeln;
  
// Посчитать кол-во четных и нечетных чисел в последовательности Фибоначчи
  k1:=0; k2:=0;
  For i:=1 to 30 do
   if a[i] mod 2=0 then k2:=k2+1
                   else k1:=k1+1;
   writeln (k1, ' нечетных ', k2,' четных ');

end.
