Uses CRT,GraphABC;
Var  x1,y1:array [1..1000] of integer;
     a,b,c,x,y,z,r,i,g,cv:integer;
     n,ns:char;
     
    Procedure proris;
      Begin
       setpenwidth (4);
       setpencolor (RGB(250,0,0));
       line (40,0,40,440);
       line (600,0,600,440);
       Floodfill (1,1, RGB(50,50,50));
       Floodfill (610,1, RGB(50,50,50));
       setpenwidth (1);
      End;

   Procedure polosa;
    Begin
     setpenwidth (2);

     For i:=1 to 10 do
      Begin
       line (180,a,180,a+20);
       line (320,a,320,a+20);
       line (460,a,460,a+20);
       a:=a+40;
      End;
    End;
    
    Procedure mashina;
     Begin
      circle (x-25,y-60,6);
      circle (x+25,y-60,6);
      circle (x-40,y-30,9);
      circle (x+40,y+30,9);
      circle (x+40,y-30,9);
      circle (x-40,y+30,9);
      rectangle (x-40,y-60,x+40,y+60);
      rectangle (x-20,y-30,x+20,y+30);
      line (x-40,y-60,x-20,y-30);
      line (x+40,y-60,x+20,y-30);
      line (x-40,y+60,x-20,y+30);
      line (x+40,y+60,x+20,y+30);
     End;
     
    Procedure dvig;
     Begin
      If KeyPressed then n:=ReadKey;
      
      If (n='4') then If x<>110 then
       Begin x:=x-140;  n:=ns; End
        else n:=ns;
        
      If (n='6') then If x<>530 then
       Begin x:=x+140;  n:=ns; End
        else n:=ns;
        
      If (n='8') then If y<>70 then
        Begin y:=y-40;  n:=ns; End
         else n:=ns;
         
      If (n='2') then If y<>350 then
        Begin y:=y+40;  n:=ns; End
         else n:=ns;
     End;
     
   Label 1,2,3;

 Begin
 
 a:=10;
 z:=50; r:=20;
 x:=110; y:=350;

   ClrScr;
  HideCursor;
  
  FOr i:=1 to 100 do
   Begin
    x1[i]:=random (4)*140+110;
    y1[i]:=c;
    c:=c-150;
   End;
 
   While 1>0 do
    Begin
     proris;  ///
     polosa;  ///
     setpencolor (RGB(cv,cv,cv));
     mashina; ///
      for i:=1 to 100 do
       Begin
        setpencolor (RGB(0,255,0));
        circle (x1[i],y1[i],30);
        Floodfill (x1[i],y1[i], RGB(150,150,150));
       End;
     Floodfill (x,y, RGB(50,50,50));
     delay (z);
     setpencolor (RGB(255,255,255));
     mashina; ///
       for i:=1 to 100 do
        circle (x1[i],y1[i],30);
     ns:=n;
    
     dvig;  ///



      For i:=1 to 100 do
        If (x1[i]=x) then If
        ((y1[i] div y)>0) and ((y mod y1[i])<0.1)
        then goto 3;

      For i:=1 to 100 do
        y1[i]:=y1[i]+20;
        


    End;
 3:
 End.
