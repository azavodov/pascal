// вывести все перестановки из n цифр
Uses CRT;
Var n,i,t,r,j,q,p,k:integer;
 c: array [1..100] of integer;
 
 Begin
 
 Readln (n);
 //n:=3;
 k:=1;
  For i:=1 to n do
   Begin
    c[i]:=i;
    write (c[i]);
   End;
  writeln (' - 1');
  
while p=0 do
 Begin
   For i:=n-1 downto 1 do
      If c[i]<c[i+1] then
       Begin
        t:=i+1;
         For j:=i+2 to n do
          If (c[j]>c[i]) and (c[j]<c[t]) then t:=j;
          
         q:=c[i]; c[i]:=c[t]; c[t]:=q;
         
         for j:=i+1 to n-1 do
          for r:=j+1 to n do
           If c[j]>c[r] then Begin q:=c[j]; c[j]:=c[r]; c[r]:=q; end;

         p:=1;

         For j:=1 to n do
          Begin
           write (c[j]);
           If j<n then If c[j]<c[j+1] then p:=0;
          End;
         inc (k);
         writeln (' - ',k);
         Break;
       End;
 End;
 
writeln ('----------------');
Writeln (k,' - колличество');
    
 End.
