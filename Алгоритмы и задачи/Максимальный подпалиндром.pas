Uses CRT;
Var d, i, j, max, m1, m2, m10, m20 :integer;
    s,s1:string;
    a : array [1..256] of integer;
label 1;
 Begin
 
  Write ('Введите исходную строку : ');
  Readln (s);
  Write ('Максимальный подпалиндром :');
 // s:='ABCFGHTHCBA';
  
  
  
  d:=length (s);
   For i:=1 to d-1 do                                       // перебор с начала строки
    Begin
    max:=0;
    
     For j:=d downto i+1 do                                 // перебор с конца строки
      Begin
       If a[j]>max then max:=a[j];
       If (s[i]=s[j]) and (a[j]=0) then                     // формируем массив в который записываем размер
        Begin a[i]:=max+1; a[j]:=max+1; Break; End;         // максимального палиндрома для каждой буквы
      End;
      
    End;
     
     
{   Writeln (s);
    For i:=1 to d do                                        // промежуточный вывод массива
     write (a[i]);
   Writeln;  }
   
   m1:=1;
   For i:=1 to d do                                         // находим максимум для 1 половины палиндрома
    If a[i]>a[m1] then m1:=i;
1: For i:=m1+1 to d do                                      // находим максимум для 2 половины палиндрома
    If (a[i]=a[m1]) and (s[i]=s[m1]) then
     Begin m2:=i; Break End;
   If m1-m2=1 then                                          // проверяем правильные ли максимумы
    For i:=m1+2 to d do
     If a[i]=a[m1] then
      Begin m1:=i; goto 1; End;                             // есди нет, тогда меняем
    

   If m2-m1>1 then s1:=s[m1]+s[m1+1]+s[m2]                  // проверяем есть ли между максимумами символы (если есть, то добавляем)
    else s1:=s[m1]+s[m2];                                   // если нет, тогда просто добавляем 2 максимальных
    For i:=m1-1 downto 1 do                                 // идем из центра (от первого максимума)
     Begin
      If a[m1]-a[i]=1 then                                  // если ровно на один меньше (число в массиве)
       For j:=m2+1 to d do
        If s[i]=s[j] then                                   // и символы одинаковые
         Begin s1:=s[i]+s1+s[j]; m1:=m1-1; Break; End;      // тогда формируем палиндром
     End;
     
   Write (s1);                                              // выводим палиндром (итоговый!)

 End.
 
