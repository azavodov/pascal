Uses graphABC, CRT;
var x,y,r,nx,ny: array [1..105] of integer;
       i,a,b,p:integer;


 begin
 HideCursor;
 // readln (p);
    p:=6;

  for i:=1 to p do
     begin
      x[i]:= random (200)+100;
      y[i]:= random (200)+100;
      r[i]:=random (5)+2;
      nx[i]:=1;
      ny[i]:=1;
      circle (x[i],y[i],1);
     end;

     while  1>0 do
    begin
      FloodFill (x[i+5],y[i+5],black);
      setpencolor (rgb(255,0,0));
      for i:=1 to p do
       Begin
       // setpencolor (rgb(i*8,i*i*2,i*34));
        circle (x[i],y[i],r[i]);
        line (x[i],y[i],x[i+1],y[i+1]);
       // If i=p then line (x[1],y[1],x[i],y[i])
       End;

        Delay (20);
       // setpenwidth (random (2));
        setpenwidth (4);
        setpencolor (rgb(255,255,255));
      for i:=1 to p do
       Begin
        circle (x[i],y[i],r[i]);
        line (x[i],y[i],x[i+1],y[i+1]);
       End;



   for i:= 1 to p do
    begin
         a:=random (5)-2;
         x[i]:=x[i]+r[i]*nx[i];
         y[i]:=y[i]+r[i]*ny[i];
         if (x[i]>640) or (x[i]<2) then nx[i]:=-nx[i];
         if (y[i]>400) or (y[i]<2) then ny[i]:=-ny[i];
    end;

   end;
 end.
