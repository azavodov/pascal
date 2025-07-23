{Задача: Ввести массив из N целых чисел. (Пример: А={1,2,1,2,2,1,2,2,1,2,2,1,2,2,2,1,2,1,2,1.)
а) Найти две одинаковые непересекающиеся поcледовательности элементов максимальной длины.
(Ответ для примера: "1,2,2,1,2,2" с 3 элемента и с 9-го элемента массива.  }

Uses CRT;
Var a,b,c,i,j,n,q,w,max:integer;
    x: array [1..10000] of integer;
    s,s1,s2,s3:string;
 Begin

  Write ('Введите число эллементов массива:  ');
  Readln (n);
  Write ('Исходная последовательность:  ');
  
   For i:=1 to n do
    Begin
     x[i]:=random (2)+1;
     s:=s+inttostr(x[i]);
     Write (x[i]);
    End;
     Writeln ();

     max:=0;
    For i:=1 to n-3 do
     For j:=i+1 to n-2 do
      For q:=j to n-1 do
       For w:=q to n do
        Begin
         s1:=copy (s,i,j-i);
         s2:=copy (s,q,w-q);
         If s1=s2 then
          If length (s1)>max then
           Begin max:=length (s1); s3:=s1; End;
        End;

     Writeln ('Максимальная последовательность:  ',s3);
 End.
