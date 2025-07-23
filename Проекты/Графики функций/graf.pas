  unit a1;
function gr(ng:integer; x:real):real;
begin
  case ng of
  1: gr:=power(2,x);
  2: gr:=5;
  3: gr:=3*x;
  4: gr:=sin(x)*cos(x);
  5: gr:=ln(x);
  end;
end;
end.
