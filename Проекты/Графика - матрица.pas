Uses Crt,Graphabc;
 Var i,a,j:integer;
 
 Begin
  ClrScr;
  HideCursor;
  
  for i:= 1 to 43 do
   Begin
    line (a,0,a,500);
    line (0,a,650,a);
    a:=a+15;
   End;

  While 1>0 do
   Begin
    i:=random (43);
    j:=random (30);
    Floodfill (i*15+1,j*15+1, RGB(random(255),random(255),random(255)));
   End;
   
 End.
