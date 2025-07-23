Uses CRT,GraphABC;
 Var a,b,c,i,j,m,n:integer;
     r:real;
     x,y: array [1..100] of integer;
     
 Begin

  n:=40;     // колличество городов
  m:=150;    // макс. расстояниие для вертолета (между городами)

  For i:=1 to n do
   Begin
    x[i]:=random(600);
    y[i]:=random(400);
    circle (x[i],y[i],2);
    textout (x[i]+2,y[i]+2,inttostr(i));
   End;
   
  For i:=1 to n-1 do
   For j:=i+1 to n do
    Begin
     r:=sqrt(sqr(x[i]-x[j])+sqr(y[i]-y[j]));
     If r<m then line (x[i],y[i],x[j],y[j]);
     sleep (1);
    End;
    
    
 End.
