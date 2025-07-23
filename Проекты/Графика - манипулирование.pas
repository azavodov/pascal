Uses CRT,GraphABC;
Var  w,p:array [1..100] of integer;
     a,b,c,x,y,z,r:integer;
     n,ns:char;
     
 Begin
  z:=20;
  r:=20;
  while 1>0 do
   Begin
    setpencolor (RGB(0,255,0));
    circle (x,y,r);
    Floodfill (x,y, RGB(0,255,0));
    delay (z);
    setpencolor (RGB(255,255,255));
    circle (x,y,r);
    ns:=n;
    If KeyPressed then n:=ReadKey;
    If (n='3') or (n='6') or (n='9') then x:=x+1;
    If (n='1') or (n='2') or (n='3') then y:=y+1;
    If (n='1') or (n='4') or (n='7') then x:=x-1;
    If (n='7') or (n='8') or (n='9') then y:=y-1;
    
    If (n='-') then Begin z:=z*2; n:=ns; end;
    If (n='+') then Begin z:=z div 2; n:=ns; end;
    
    If (n='b') then Begin r:=r+1; n:=ns; end;
    If (n='m') then Begin r:=r-1; n:=ns; end;
    
    If x>630 then
      Begin
       If n='9' then n:='7';
       If n='6' then n:='4';
       If n='3' then n:='1';
      End;
      
    If x<10 then
      Begin
       If n='7' then n:='9';
       If n='4' then n:='6';
       If n='1' then n:='3';
      End;
      
    If y>400 then
      Begin
       If n='1' then n:='7';
       If n='2' then n:='8';
       If n='3' then n:='9';
      End;
      
    If y<10 then
      Begin
       If n='7' then n:='1';
       If n='8' then n:='2';
       If n='9' then n:='3';
      End;
    
   End;
 End.
