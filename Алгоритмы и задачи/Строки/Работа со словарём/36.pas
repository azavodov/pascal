Uses CRT;
Var kol,b,i,j:integer;
    sl: array [1..1000] of string;
    tx,tx2,a:string;
 Begin
  Writeln ('введите колличество слов в тексте');
   Readln (kol);
  Writeln ('введите слова, которые встречаются в тексте');
   For i:=1 to kol do
     Readln (sl[i]);
  Writeln ('введите текст');
   Readln (tx);

   b:=1;
    For i:= 1 to length (tx) do
      Begin
       a:=copy(tx,b,i);
        For j:=1 to kol do
         If a=sl[j] then
          Begin
           tx2:=tx2+sl[j]+' ';
           b:=i+1;
           i:=1;
           break;
          End;
      End;
      
    Writeln (tx2);
 End.
