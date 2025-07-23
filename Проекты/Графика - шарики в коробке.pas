Uses graphABC, CRT;
var x,y,r,nx,ny: array [1..100] of integer;
       i,a,b:integer;
       
   Procedure kvadrat;
   Begin
    line (89,89,510,89);
    lineto (510,310);
    lineto (89,310);
    lineto (89,89);
   End;
   
 begin
 
   kvadrat;
 
  for i:=1 to 100 do
     begin
      x[i]:= random (200)+100;
      y[i]:= random (200)+100;
      r[i]:=random (4)+2;
      nx[i]:=1;
      ny[i]:=1;
      circle (x[i],y[i],r[i]);
     end;
     
     while  1<2 do
    begin
     setpencolor (rgb(255,0,0));
      for i:=1 to 100 do
        circle (x[i],y[i],r[i]);

        Delay (20);

        setpencolor (rgb(255,255,255));
      for i:=1 to 100 do circle (x[i],y[i],r[i]);


   for i:= 1 to 100 do begin
                         a:=random (5)-2;
                         x[i]:=x[i]+r[i]*nx[i];
                         y[i]:=y[i]+r[i]*ny[i];
                         if (x[i]>500) or (x[i]<100) then nx[i]:=-nx[i];
                         if (y[i]>300) or (y[i]<100) then ny[i]:=-ny[i];
                         
                        end;
   end;
 end.
