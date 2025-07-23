Uses CRT,GraphABC;
 Var a,b,c,i,j,n:integer;
     x,y:array [1..1000] of integer;
     xmin,ymin,xmax,ymax,zi:integer;
      r,d,max1:real;
 Begin

  n:=5;
  xmin:=1; ymin:=1;
  xmax:=1; ymax:=1;

   For i:= 1 to 15 do
    Begin
      x[i]:= random (550);
      y[i]:= random (380);
      circle(x[i],y[i],2);
    End;

   for i:= 1 to n do
    Begin
     If x[i]<x[xmin] then xmin:=i;
     If x[i]<x[xmin] then xmin:=i;
     If x[i]>x[xmax] then xmax:=i;
     If x[i]>x[xmax] then xmax:=i;
    End;
   line (x[xmin],y[ymin],x[xmax],y[ymax]);

  While zi<>xmax do
   Begin
    For i:=1 to n do
     Begin
      If (x[i]>x[ymax]) and (y[i]>y[xmax]) then d:=(x[i]-x[ymax])/(y[i]-y[ymax]);
      If d>max1 then begin max1:=d; zi:=i End;
     End;
    lineto (x[zi],y[zi]);
    ymax:=zi;
   End;

 End.
