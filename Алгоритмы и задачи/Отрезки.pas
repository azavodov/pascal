// input
// 5
// 10 50
// 20 80
// 100 150
// 50 120
// 30 60

Uses CRT,GraphABC;
  Var a,b,c,min,max,k,i,j,z2:integer;
    x,y:array [1..100] of integer;
    f:text;
 Begin
 
  Assign (f,'input.txt');
  Reset (f);
  Readln (f,k);
    For i:= 1 to k do
     Begin
      Read (f,x[i]);
      Readln (f,y[i]);
      Line (x[i],i*10,y[i],i*10);
     End;
  close (f);
  gotoxy (5,k*10);

  min:=1000;
  For i:= 1 to k do
   Begin
    If x[i]>max then max:=x[i];
    If y[i]<min then min:=y[i];
   End;
   If min-max>0 then writeln (min-max,' - площадь на которой пересекаются все отрезки')
                else writeln ('нет общей части');
                

   
 End.
