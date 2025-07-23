Uses GraphABC;
 Var x,y: array [1 .. 1000] of integer;
     i,j,n,nm,ni,nj,nk,k : integer;
     r,min,a,b,c,p,s : real;
     
  Begin
  n:=50;
   For i:=1 to n do
     Begin
      x[i]:=random (600);
      y[i]:=random (400);
      circle (x[i],y[i],2);
     End;

   For i:= 1 to n-1 do
   Begin
   min:=100000;
    For j:=i+1 to n do
     Begin
      r:=sqrt(sqr(x[i])+sqr(y[i]));
      If r<min then Begin min:=r; nm:=j; End;
     end;
    nm:=x[i+1]; x[i+1]:=x[nj]; x[nj]:=nm;
    nm:=y[i+1]; y[i+1]:=y[nj]; y[nj]:=nm;
    line (x[i],y[i],x[i+1],y[i+1]);
   End;
    
  End.
