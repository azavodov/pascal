Uses CRT;
Var a: array [1..100] of integer;
    i, k, j, c: integer;
  begin
    for i:=1 to 100 do
   begin
    a[i]:= random (19)-9;
     write (a[i],' ');
   end;
   writeln;
   // ”пор€дочить массив по убыванию
   For i:=1 to 99 do
    For j:=i+1 to 100 do
     if a[i]<a[j] then begin //вводим промежуточную переменную (с)
                         c:=a[j];
                         a[j]:=a[i];
                         a[i]:=c;
                       end;
    for i:=1 to 100 do
       write (a[i],' ');
   writeln;
end.
