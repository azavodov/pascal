Uses CRT;
 Var a,b,c,i,j,n,q,kol,q1,m:integer;
     x: array [1..100000,1..10] of integer;
  Begin

  Write ('введите колличество символов для перебора - ');
  Readln (m);
  Write ('введите колличество разрядов в числах - ');
  Readln (n);


   For i:=1 to n do                              // обнуляем первое число
    x[1,i]:=0;

   kol:=1;
   For i:=1 to n do                              // считаем количество последовательностей
    kol:=kol*m;


  For i:=2 to kol do                             //цикл для перебора последовательностей
   For j:=n downto 1 do                          //цикл для перебора цифр в последовательностях
     Begin
                                                 // если можно,тогда увеличиваем и получаем новую последов.
      If x[i,j]<(m-1) then
         x[i,j]:=x[i,j]+1
      else
         For q:=j-1 downto 1 do                  // иначе ищем цифру которую можно увеличить
          If x[i,q]<(m-1) then
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

     For i:=1 to kol do
      For j:=1 to n do
       Begin
       
        If j=1 then
       If i<10 then write ('0',i,') ')           // Формат вывода.
               else write (i,') ');
               
       If x[i,j]<10 then
        Write (x[i,j])
       else
        case (x[i,j]) of
         10: Write ('A');     23: Write ('N');
         11: Write ('B');     24: Write ('O');
         12: Write ('C');     25: Write ('P');
         13: Write ('D');     26: Write ('Q');
         14: Write ('E');     27: Write ('R');
         15: Write ('F');     28: Write ('S');
         16: Write ('G');     29: Write ('T');
         17: Write ('H');     30: Write ('U');
         18: Write ('I');     31: Write ('V');
         19: Write ('J');     32: Write ('W');
         20: Write ('K');     33: Write ('X');
         21: Write ('L');     34: Write ('Y');
         22: Write ('M');     35: Write ('Z');
        End;
        If j=n then Writeln();
      End;

  End.
