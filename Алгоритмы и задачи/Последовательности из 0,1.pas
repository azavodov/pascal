Uses CRT;
 Var a,b,c,i,j,n,q,kol:integer;
     x: array [1..10000,1..100] of integer;
  Begin
  
  
  Write ('введите колличество символов - ');
  Readln (n);

   
   For i:=1 to n do                           //присваивваем нули
    x[1,i]:=0;
   
   kol:=1;
   For i:=1 to n do                           // считаем сколько всего последовательностей
    kol:=kol*2;
    
    
  For i:=2 to kol do                          // цикл для перебора всех последовательностей
   For j:=n downto 1 do                       // цикл для перебора вариантов последовательностей
     Begin
     
      If x[i,j]=0 then                        // если встречам 0, тогда
       Begin
        x[i,j]:=1;                            // делаем его 1,
         For q:=j+1 to n do                   // все что стоит после - обнуляем
          x[i,q]:=0;
         For q:=1 to n do                     // так как все записываем в массив, присваиваем
          x[i+1,q]:=x[i,q];                   // следующему эллементу, нашу текущую последовательность
        break;
       End;

     end;

   For i:=1 to kol do                             //ВЫВОД!
    For j:=1 to n do
     Begin
      If j=1 then
       If i<10 then write ('0',i,') ')
               else write (i,') ');               // формат вывода
      write (x[i,j]);
      If j=n then Writeln();
     End;
    
  
  End.
