// Вирусы
// Сколько нужно вирусов чтобы заразить прямоугольную область.
// Через преграды "Ж" вирус не проходит.

Uses CRT;
Var x: array [0..100,0..100] of integer;    // -1 = "Ж" преграда,   0 = свободное продвижение вируса
    i,j,m,n,k : integer;
    
Procedure virus(i1,j1:integer);           // Процедура заражения ВИРУСОМ
  begin
    x[i1,j1]:=k;
    
    delay(800);                           // Вывод на ЭКРАН
    gotoxy(j1*3,i1);
    write(x[i1,j1]);
    
    if (j1<m) and (x[i1,j1+1]=0) then virus(i1,j1+1);     // вправо
    if (i1<n) and (x[i1+1,j1]=0) then virus(i1+1,j1);     // вниз
    if (j1>1) and (x[i1,j1-1]=0) then virus(i1,j1-1);     // влево
    if (i1>1) and (x[i1-1,j1]=0) then virus(i1-1,j1);     // вверх
  end;
    
    
    
Begin

  m:=10; n:=7;                             // Размеры прямоугольной области
  
  For i:=1  to n do                        // Задать область
    For j:=1 to m do
      begin
        x[i,j]:=random(2)-1;
        gotoxy(j*3,i);
        if x[i,j]<0 then write('Ж') else write(x[i,j]);
      end;
      
      
                                            // Решение задачи - ЗАПОЛНЕНИЕ ТАБЛИЦЫ ВИРУСАМИ(номером вируса)
  For i:=1  to n do
    For j:=1 to m do
     begin
       if x[i,j]=0 then begin k:=k+1; virus(i,j); end;
     end;
     
     
  gotoxy(5,n+1);                               //  Ответ:
  Writeln ('нужно вирусов - ',k);

end.
