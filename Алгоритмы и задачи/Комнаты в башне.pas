// input
// 11 6 11 6 3 10 6
// 7 9 6 13 5 15 5
// 1 10 12 7 13 7 5
// 13 11 10 8 10 12 13


Uses CRT;
 Var a,b,c,i,j,n,m:integer;
   f:text;
   a,b: array [1..1000,1..1000] of integer;
   
 Procedure vvod;
  Begin
   assign (f,'input.txt');
   reset (f);
   For i:=1 to n do
    For j:=1 to m do
     Begin
      If i=m then readln (f,a[i,j])
       else Read (f,a[i,j])
     End;
    close (f);
  End;
  
 Begin
  n:=4; m:=7;
  vvod;
  


 End.
