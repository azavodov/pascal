Var n,kol,q,i,j:integer;
    x: array [1..1000] of integer;

begin

  write ('kol simvolov - ');
  Readln (n);

   For i:=1 to n do
    Begin x[i]:=0; write (x[i]) End;
    writeln ();

   kol:=1;
   for i:=1 to n do
     kol:=kol*2;

   For i:=1 to kol-1 do
    For j:=n downto 1 do
      Begin

       If x[j]=0 then
        Begin
         x[j]:=1;
         For q:=j+1 to n do
          x[q]:=0;
         For q:=1 to n do
          write (x[q]);  writeln();
           break;
        end;

      end;

   writeln (kol, ' - perestanovok');
   Readln();

end.

