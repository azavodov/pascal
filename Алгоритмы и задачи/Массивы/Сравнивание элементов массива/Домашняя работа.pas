Uses CRT;
Var a: array [1..100] of integer;
    i, p: integer;
  begin
    for i:=1 to 100 do
   begin
    a[i]:= random (19)-9;
     write (a[i],' ');
   end;
   writeln;
   writeln('Задача 1');
   p:=0;
  for i:=1 to 98 do
   if a[i]=a[i+1]-2 then
    begin
     writeln (i,' ',i+1);
     p:=1;
    end;
   if p=0 then writeln ('В массиве нет пар подряд идущих элементов, с увеличением в паре на две единицы');
   writeln;
   writeln('Задача 2');
   p:=0;
  for i:=1 to 98 do
   if (a[i]=a[i+1]) and (a[i+1]=a[i+2]) then p:=1;
  if p=0 then writeln ('Таких эл-тов нет')
         else writeln ('Такие эл-ты есть')
  end.
