Uses CRT,GraphABC;
const n=100;
Var x,y: array [1..n] of integer;
    x1,y1,x2,y2,v1,v2,xk,yk:integer;
    i,j : integer;
    r1, r2   : real;
    
 Begin
 
  For i:=1 to n do
   Begin
    x[i]:= random (600);
    y[i]:= random (400);                           // лодки разведчики
    circle (x[i],y[i],3);
   End;
   x1:= random (600);                              //лодка противник
   y1:= random (400);
   v1:=3;                                          //скорость торпеды противника
   circle (x1,y1,4);
   x2:= random (600);                              //лодка защитник
   y2:= random (400);
   v2:=1;                                          //скорость торпеды защитника
   circle (x2,y2,6);
   
   For i:=1 to n do                                  // перебираем всех разведчиков
    For j:= 1 to 10 do                               // берем контрольные точки
     Begin
        xk:=(x1*(10-j)+x[i]*j) div 10;               // координаты контрольных точек
        yk:=(y1*(10-j)+y[i]*j) div 10;

       
      r1:=sqrt(sqr(x1-xk)+sqr(y1-yk));               // вычисляем расстояния до контрольных точек
      r2:=sqrt(sqr(x2-xk)+sqr(y2-yk));
      
      If r1/v1>r2/v2 then                            // проверяем с учетом скорости
       Begin setpencolor (rgb(0,255,0)); circle (x[i],y[i],3);
       line (x2,y2,xk,yk); setpencolor (rgb(255,0,0)); line (x1,y1,xk,yk); break; End;  // показываем графически тех развеедчиков которых получилось спасти

   
     End;
   
 End.
