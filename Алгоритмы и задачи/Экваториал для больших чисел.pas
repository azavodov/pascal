// Ёкваториал числа

Uses CRT;
 Var c: array [1..10000] of integer;
     i,j,n,k,x:integer;
 Begin
 
   Write (' ¬ведите число - ');
   Readln (n);
   Writeln (' Ёкваториал числа : ');
   
  c[1]:=1; x:=1;
   For i:=1 to n do
    Begin
      For j:=1 to 10000 do
       c[j]:=c[j]*i;
      For j:=1 to 9999 do
       Begin
        c[j+1]:=c[j+1]+(c[j] div 10);
        c[j]:=c[j] mod 10;
       End;
       
    End;
 
  k:=0;
   For i:=1000 downto 1 do
    Begin
     If c[i]>0 then k:=1;
     If k>0 then write (c[i]);
    End;
   writeln ();
 
 End.
