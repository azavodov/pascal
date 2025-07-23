Uses GraphABC;
 Var x,y: array [1 .. 1000] of integer;
     i,j,n,nm,ni,nj,nk,k : integer;
     r,max,a,b,c,p,s : real;
  Begin
   n:=50;
    For i:=1 to n do
     Begin
      x[i]:=random (600);
      y[i]:=random (400);
      circle (x[i],y[i],2);
     End;
     
    //Самая удалённая точка
    max:=0;
     For i:=1 to n do
      Begin
       r:=sqrt(sqr(x[i])+sqr(y[i]));
        If r>max then Begin max:=r; nm:=i; End;
      End;
     Line (0,0,x[nm],y[nm]);
     
    // Самый длинный отрезок
     max:=0;
     For i:=1 to n-1 do
      For j:=i+1 to n do
       Begin
        r:=sqrt(sqr(x[i]-x[j])+sqr(y[i]-y[j]));
         If r>max then Begin max:=r; ni:=i; nj:=j; End;
       End;
     Line (x[ni],y[ni],x[nj],y[nj]);
     
    // Наибольший треугольник
     max:=0;
     For i:=1 to n-2 do
      For j:=i+1 to n-1 do
       For k:=j+1 to  n  do
       Begin
         a:=sqrt(sqr(x[i]-x[j])+sqr(y[i]-y[j]));
         b:=sqrt(sqr(x[i]-x[k])+sqr(y[i]-y[k]));
         c:=sqrt(sqr(x[k]-x[j])+sqr(y[k]-y[j]));
         p:=(a+b+c)/2;
         s:=p*(p-a)*(p-b)*(p-c);
         If s>max then Begin max:=s; ni:=i; nj:=j; nk:=k End;
       End;
     Line (x[ni],y[ni],x[nj],y[nj]);
     Lineto (x[nk],y[nk]);
     Lineto (x[ni],y[ni]);
    
  End.
