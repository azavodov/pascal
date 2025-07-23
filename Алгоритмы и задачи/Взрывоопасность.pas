Uses CRT;
 Var n,i,j,k:integer;
     a: array [0..10000] of integer;
label 1;
  Begin
   writeln ('введите N');
   Readln (n);
   k:=1;
   
    for i:=1 to n do
      a[i]:=0;

     1:
      For i:=n downto 1 do
       If (a[i]=0) and (a[i-1]=0) then
        Begin
          a[i]:=1;
          for j:=i+1 to n do a[j]:=0;
          inc (k);
          goto 1;
        End;

   writeln (k);
  End.
