Uses crt, graphABC;
 Var n,i,j,n1,n2,t: integer;
     r,r1: real;
     x,y,ur,ur2,p: array [1..1000] of integer;
     d: array [0..1000] of real;
 Begin
 
  n:=50;           // колличество городов
  r1:=150;         // макс. расст. для вертолета (между городами)
  
  
   for i:=1 to n do
    begin
     x[i]:=random (600);
     y[i]:=random (300);
     circle (x[i],y[i],2);                             // рисуем рандомно точки
     textout (x[i]+3,y[i]-2,inttostr(i));              // нумеруем их
    end;
   circle(x[1],y[1],5);                                // выделяем начало
   circle(x[n],y[n],5);                                // выделяем конец
  
  
    
  //ищем кратчайшее расстояние
  
  n1:=1;               // кол-во точек на 1-м уровне
  ur[1]:=1;            // номера точек 1-го уровня
  

  for t:=1 to n do       //кол-во уровней
   begin
    n2:=0;               //кол-во точек на уровне

    for i:=1 to n1 do
       for j:=2 to n do    //перебор точек кроме первой
         begin
          r:=sqrt(sqr(x[ur[i]]-x[j])+sqr(y[ur[i]]-y[j]));
           if (r<=r1) and (d[j]=0) or (d[j]>d[ur[i]]+r) then
             begin
              d[j]:=d[ur[i]]+r;
              line(x[ur[i]],y[ur[i]],x[j],y[j]);
              p[j]:=ur[i];    //откуда пришли
              n2:=n2+1;       //точки след. уровня
              ur2[n2]:=j;     //промеж.массив
             end;
         end;
         
     n1:=n2;
     for i:=1 to n1 do        //перенос данных
      ur[i]:=ur2[i];
      
   end;




   setpencolor(rgb(255,0,0));
   if d[n]>0 then
    begin
     writeln(d[n]);
     i:=n;
     writeln(n);
      while i>1 do
       begin
        i:=p[i];
        writeln(i);
      //  line(x[i],y[i],x[n],y[n]);
       end;
    end else writeln('NO');

    
End.
