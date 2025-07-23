//Домашняя работа
Uses CRT;
Var a: array [1..90] of integer;
    i, k, s, r, min: integer;
    sr, p: real;
 begin
  writeln ('Задание 1-2');
  {1. Заполнить массив размерности 90 целыми числами от -24 до 69
   2. ВЫвести эл-ты массива на экран в строку}
  for i:=1 to 90 do
   begin
    a[i]:= random (95)-24;
     write (a[i],' ');
   end;
  writeln;
  writeln ('Задание 3');
  {3. Найти произведение эл-тов массива, не кратных 3}
  p:=1;
  for i:=1 to 90 do
   if a[i]mod 3<>0 then p:=p*a[i];
  writeln ('Произведение эл-тов массива, не кратных 3 - ', p);
  writeln;
  writeln ('Задание 4');
  {4. Проверить, есть ли в массиве числа, меньшие -22}
  for i:=1 to 90 do
   if a[i]<(-22) then r:=1;
  if r=1 then writeln ('В массиве есть эл-ты, меньшие -22') else writeln ('В массиве нет эл-тов, меньших -22');
  writeln;
  writeln ('Задание 5');
  {5. Найти среднее арифметическое отрицательных эл-тов массива}
  for i:=1 to 90 do
    if a[i]<0 then
      begin
       s:=s+a[i];
       k:=k+1;
      end;
  sr:=s/k;
  writeln ('Среднее арифметическое отрицательных эл-тов массива - ', sr);
  writeln;
  writeln ('Задание 6');
  {6. Эл-ты массива, кратные 7, увеличить в 2 раза}
  for i:=1 to 90 do
   begin
    if a[i]mod 7=0 then a[i]:=a[i]*2;
    write (a[i],' ');
   end;
  writeln;
  writeln ('Задание 7');
  {7. Вывести номера наименьших эл-тов массива}
  min:=a[1];
  for i:=2 to 90 do
   if a[i]<min then min:=a[i];
  for i:=1 to 90 do
   if a[i]=min then write (i,' ');
end.

