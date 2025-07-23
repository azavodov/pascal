  unit a1;
function gr(ng:integer; x:real):real;
begin
  case ng of
  1: gr:=sin(x);
  2: gr:=cos(x);
  3: gr:=x*x;
  4: gr:=x*x*x;
  5: gr:=x+1;
  end;
end;
end.
