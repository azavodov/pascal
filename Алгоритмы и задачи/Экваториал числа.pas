Uses CRT;
 Var i,j,f,um,n,p:integer;
  y:array [1..200] of integer;

  Begin

  Writeln ('введите число (экваториал которого нужно найти)');
  Readln (n);
  
  y[1]:=1;

   For i:=2 to n do
    Begin

       For j:=1 to 200 do
        y[j]:=y[j]*i;

        um:=0;

       For j:=1 to 200 do
        Begin
         f:=(y[j]+um) mod 10;
         um:=(y[j]+um) div 10;
         y[j]:=f;
        End;

    End;

   p:=0;
   For i:=200 downto 1 do
    Begin
     If y[i]>0 then p:=1;
     If p>0 then write (y[i]);
    End;


  End.
