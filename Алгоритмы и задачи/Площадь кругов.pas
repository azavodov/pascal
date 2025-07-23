Uses CRT;
Var r1,r2,d:integer;
    s:real;
    max,min:integer;
    s1,ss1,ss2,sin1,sin2,p,x:real;
    cos1,u1,cos2,u2,sec1,sec2:real;
 Begin
  r1:=10; r2:=20; d:=25;
  
  If r1<r2  then Begin min:=r1; max:=r2; end
            else Begin min:=r2; max:=r1; end;
            
  If max>=min+d then s:=pi*min*min else
  If r2+r1<=d then s:=0 else
   Begin
    p:=(r1+r2+d)/2;
    s1:=sqrt(p*(p-r1)*(p-r2)*(p-d));
    x:=2*s1/d;
    p:=(r1+r2+2*x)/2;
    ss1:=sqrt(p*(p-r1)*(p-r1)*(p-2*x));
    p:=(r2+r2+2*x)/2;
    ss2:=sqrt(p*(p-r2)*(p-r2)*(p-2*x));
    sin1:=ss1/sqr(r1);
    cos1:=sqrt(1-sqr(sin1));
    u1:=arctan(sin1/cos1);
    sin2:=ss2/(r2*r2);
    cos2:=sqrt(1-sin2*sin2);
    u2:=arctan(sin2/cos2);
    sec1:=pi*r1*r1*(u1/pi);
    sec2:=pi*r2*r2*(u2/pi);
    s:=sec1-ss1+sec2-ss2;
   End;

 Writeln (s);
 
 End.
