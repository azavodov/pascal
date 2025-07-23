Uses CRT;
Var a: array [1..100] of integer;
    i, k, p: integer;
    begin
    for i:=1 to 100 do
   begin
    a[i]:= random (19)-9;
     write (a[i],' ');
   end;
  writeln;
  writeln ('Задача №1');
  k:=0;
  for i:=1 to 99  do
   if a[i]=a[i+1] then begin k:=k+1; writeln (i,' ',i+1); end;
  writeln (k,' - количество');
  writeln;
  writeln ('Задача №2');
  p:=0;
  for i:=1 to 98 do
   if (a[i]=a[i+1]-1) and (a[i]=a[i+2]-2) then
    begin
     writeln (i,' ',i+1, ' ',i+2,' ');
     p:=1;
    end;
   if p=0 then writeln ('В массиве нет троек последовательных чисел');
   writeln;
   writeln('Задача №3');
   p:=0;
   For i:=1 to 97 do
    if a[i]+a[i+1]+a[i+2]+a[i+3]=0 then
     begin
      writeln (i);
      p:=1;
     end;
   if p=1 then writeln ('Yes') else writeln ('No');
end.

