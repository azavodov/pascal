  unit a1;
function gr(ng:integer; x:real):real;
begin
  case ng of
  1: gr:=sin(x)*cos(x);
  2: gr:=sqrt(abs(x+5));
  3: gr:=x*x-2*x+1;
  4: gr:=x*x*x;
  5: gr:=x+1;
  end;
end;
end.
