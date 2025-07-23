Uses CRT;
 Var a,b,c,i,j,n,q,kol,q1:integer;
     x: array [0..10000,0..100] of integer;
  Begin


  Write ('введите колличество символов - ');
  Readln (n);


   For i:=1 to n do                              // обнуляем первое число
    x[1,i]:=0;

   kol:=1;
   For i:=1 to n do                              // считаем колличество последовательностей
    kol:=kol*3;


  For i:=2 to kol do                             //цикл для перебора последовательностей
   For j:=n downto 1 do                          //цикл для перебора цифр в последовательностях
     Begin
                                                 // если можно,тогда увеличиваем и получаем новую последов.
      If x[i,j]<2 then
         x[i,j]:=x[i,j]+1
      else
         For q:=j-1 downto 1 do                  // иначе ищем цифру которую можно увеличить
          If x[i,q]<2 then
           Begin
             inc (x[i,q]);                       // увеличиваем
             For q1:=q+1 to n do                 // после неё все обнуляем
             x[i,q1]:=0;
             break;
           End;
      
       For q:=1 to n do                          // следующему эллементу массива
          x[i+1,q]:=x[i,q];                      // присваеваем текущую последовательность
       Break;
     end;

   For i:=1 to kol do                            // ВЫВОД!
    For j:=1 to n do
     Begin
      If j=1 then
       If i<10 then write ('0',i,') ')           // Формат вывода.
               else write (i,') ');
      write (x[i,j]);
      If j=n then Writeln();
     End;


  End.
