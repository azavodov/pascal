Uses CRT;
Var x:array [1..600] of integer;
    i,j,k,um,pr:integer;
 Begin
  k:=1; x[1]:=3;

  for k:=1 to 1000 do
   Begin

    For i:= 1 to 600 do
     x[i]:=x[i]*3;

     um:=0;
    For i:= 1 to 600 do
      Begin
       pr:=(x[i]+um) mod 10;
       um:=(x[i]+um) div 10;
       x[i]:=pr;
      End;
      
   End;

    pr:=0;
   For i:=600 downto 1 do
    Begin
     If x[i]>0 then pr:=1;
     If pr>0 then write (x[i]);
    End;


 End.
