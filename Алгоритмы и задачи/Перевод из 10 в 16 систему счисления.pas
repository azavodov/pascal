
 Var x,x2,ost,n:integer;
  s2,c:string;
  f,g:text;
 Begin
  Assign (f,'input.txt');
  Assign (g,'output.txt');
  Reset (f);
  Readln (f,x);
  Close (f);
  n:=16;
   While x>0 do
    Begin
     ost:=x mod n;
     {If ost=10 then c:='A';
     If ost=11 then c:='B';
     If ost=12 then c:='C';
     If ost=13 then c:='D';
     If ost=14 then c:='E';
     If ost=15 then c:='F'; }
     If ost>9 then c:= copy('ABCDEF',ost-9,1);
     If ost<10 then c:=IntToStr(ost);
     s2:=c+s2;
     x:=x div n;
    End;
   Rewrite (g);
   Writeln (g,s2);
   Close (g);

 End.
