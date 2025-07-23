Uses CRT,GraphABC;
Var  x1,y1,x2,y2:array [1..100000] of integer;
     a,b,c,x,y,z,r,i,h1,h2,m:integer;
     n,ns:char;
     
    Procedure steny;
     Begin
      If x>580 then
      Begin
       If n='9' then n:='7';
       If n='6' then n:='4';
       If n='3' then n:='1';
      End;

    If x<60 then
      Begin
       If n='7' then n:='9';
       If n='4' then n:='6';
       If n='1' then n:='3';
      End;

    If y>340 then
      Begin
       If n='1' then n:='7';
       If n='2' then n:='8';
       If n='3' then n:='9';
      End;

    If y<60 then
      Begin
       If n='7' then n:='1';
       If n='8' then n:='2';
       If n='9' then n:='3';
      End;
     End;

     Procedure proris;
      Begin
       setpenwidth (4);
       setpencolor (RGB(250,0,0));
       line (40,40,600,40);
       lineto (600,360);
       lineto (40,360);
       lineto (40,40);
       Floodfill (1,1, RGB(255-z,255,0));
       setpenwidth (1);
      End;
     
 Label 1,2;
     
 Begin
  HideCursor;
  z:=250;
  r:=10;
  x:=300;
  y:=200;
  h1:=1;
  h2:=1;

  
   For i:=1 to 1000 do
      Begin
      1: a:=random (300)+70;
       If (a mod 20)=0 then x1[i]:=a else goto 1;
      2: a:=random (200)+70;
       If (a mod 20)=0 then y1[i]:=a else goto 2;
      End;
      
      i:=1;
      setpencolor (RGB(255,0,0));
      circle (x1[i],y1[i],r);
      floodfill (x1[i],y1[i], RGB(0,250,0));
      


   while 1>0 do
   Begin
    If z=0 then break;
    x2[h1]:=x;
    y2[h1]:=y;
    inc (h1);
    proris;
    setpencolor (RGB(0,255,0));
    circle (x,y,r);
    Floodfill (x,y, RGB(0,255,0));
    delay (z);

    setpencolor (RGB(255,255,255));
       circle (x2[h1-h2],y2[h1-h2],r);


    ns:=n;
    If KeyPressed then n:=ReadKey;
    If (n='3') or (n='6') or (n='9') then x:=x+20;
    If (n='1') or (n='2') or (n='3') then y:=y+20;
    If (n='1') or (n='4') or (n='7') then x:=x-20;
    If (n='7') or (n='8') or (n='9') then y:=y-20;
    steny;
    If (x=x1[i]) and (y=y1[i]) then
      Begin
       setpencolor (RGB(255,0,0));
       circle (x1[i+1],y1[i+1],r);
       floodfill (x1[i+1],y1[i+1], RGB(0,250,0));
       inc (i);
       z:=z-10;
       n:=ns;
       inc (h2);
      End;


   End;
 End.
