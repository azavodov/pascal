Uses CRT;
Var kol,b,i,j:integer;
    sl: array [1..1000] of string;
    tx,tx2,a:string;
 Begin
  Writeln ('������� ����������� ���� � ������');
   Readln (kol);
  Writeln ('������� �����, ������� ����������� � ������');
   For i:=1 to kol do
     Readln (sl[i]);
  Writeln ('������� �����');
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
