//Классная работа
Uses CRT;
Var a: array [1..100] of integer;
    i, k, s, r, max: integer;
    sr, p: real;
 begin
  writeln ('Задание 1-2');
  {1. Заполнить массив размерности 100 целыми числами от -33 до 55
   2. ВЫвести эл-ты массива на экран в строку}
  for i:=1 to 100 do
   begin
    a[i]:= random (89)-33;
     write (a[i],' ');
   end;
  writeln;
  writeln ('Задание 3');
  {3. Найти среднее арифметическое чисел, кратных 5}
  for i:=1 to 100 do
    if a[i] mod 5=0 then
      begin
       s:=s+a[i];
       k:=k+1;
      end;
  sr:=s/k;
  writeln ('Среднее арифметическое чисел, кратных 5 - ', sr);
  writeln;
  writeln ('Задание 4');
  {4. Найти произведение отрицательных эл-тов массива}
  p:=1;
  for i:=1 to 100 do
   if a[i]<0 then p:=p*a[i];
  writeln ('Произведение отрицательных эл-тов массива - ', p);
  writeln;
  writeln ('Задание 5');
  {5. Проверить, есть ли в массиве числа, большие 53}
  for i:=1 to 100 do
   if a[i]>53 then r:=1;
  if r=1 then writeln ('В массиве есть эл-ты, большие 53') else writeln ('В массиве нет эл-тов, больших 53');
  writeln;
  writeln ('Задание 6');
  {6. Положительные эл-ты массива уменьшить на 7}
  for i:=1 to 100 do
   begin
    if a[i]>0 then a[i]:=a[i]-7;
    write (a[i],' ');
   end;
  writeln;
  writeln ('Задание 7');
  {7. Вывести номера наибольших эл-тов массива}
  max:=a[1];
  for i:=2 to 100 do
   if a[i]>max then max:=a[i];
  for i:=1 to 100 do
   if a[i]=max then write (i,' ');
end.


