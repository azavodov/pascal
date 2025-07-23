Uses CRT,GraphABC;
 Var a,b,c,i,j,k,x1,y1,t,x,y:integer;

 Procedure sneg(x,y,r:integer);
  Begin

   For i:=0 to 6 do
    begin
      x1:=x+trunc(r*cos(t*pi/3));
      y1:=y+trunc(r*sin(t*pi/3));
      line(x,y,x1,y1);
      ris(x1,y1,r div 2);
      delay(500);
   end;
  End;
  
 Begin
  x:=250; y:=200; r:=70;
  sneg(x,y,r);
  readln;
 End.
