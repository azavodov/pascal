
 Var x,x2,ost,n:integer;
  s2:string;
  f,g:text;
  a: array [1..100] of integer;
 Begin
  Assign (f,'input.txt');
  Assign (g,'output.txt');
  Reset (f);
  Readln (f,x);
  Readln (f,n);
  Close (f);
   While x>0 do
    Begin
     ost:=x mod n;
     s2:=IntToStr(ost)+s2;
     x:=x div n;
    End;
   Rewrite (g);
   Writeln (g,s2);
   Close (g);

 End.
