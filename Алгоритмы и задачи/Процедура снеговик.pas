Uses GraphABC;
Var i,i1,a,s:integer;
Procedure snegovik (x,y,r:integer);
 Var r1,r2:integer;
 Begin
  circle (x,y,r);                   // голова
  FloodFill(x,y,clAqua);
  r1:=r*2 div 3;
  circle (x,y-r-r1,r1);           // туловище
  FloodFill(x,y-r-r1,clAqua);
  r2:=r1*2 div 3;
  circle (x,y-r-r1*2-r2,r2);      // нижний круг
  FloodFill(x,y-r-r1*2-r2,clAqua);
  circle (x+r,y+r1,r div 3);      // нога 1
  FloodFill(x+r,y+r1,clAqua);
  circle (x-r,y+r1,r div 3);      // нога 2
  FloodFill(x-r,y+r1,clAqua);
  circle (x-r1,y-r-r,r div 4);    // рука 1
  FloodFill(x-r1,y-r-r,clAqua);
  circle (x+r1,y-r-r,r div 4);    // рука 2
  FloodFill(x+r1,y-r-r,clAqua);
  arc (x,y-r-r1*2-r2,r2 div 2,220,320);
  pie (x,y-r-r1*2-r2,r2 div 4,220,320);
  FloodFill(x,y-r-r1*2-r2+1,clBrown);
  circle (x,y-r-r1,r1 div 10);
  FloodFill(x,y-r-r1,clRed);
  circle (x,y-r-r1-r2 div 2,r1 div 10);
  FloodFill(x,y-r-r1-r2 div 2,clRed);
  circle (x,y-r-r1-r2,r1 div 10);
  FloodFill(x,y-r-r1-r2,clRed);
  circle (x-r2 div 2,y-r2*7+r2 div 3,r2 div 8);
  FloodFill(x-r2 div 2,y-r2*7+r2 div 3,clYellow);
  circle (x+r2 div 2,y-r2*7+r2 div 3,r2 div 8);
  FloodFill(x+r2 div 2,y-r2*7+r2 div 3,clYellow);
 End;
Begin
  snegovik (800,600,150);
End.

