// Заводов Андрей 9А

uses graphabc, crt;
  var x,y,z,r,k,i,j:integer;
   r1,r2,r3,r4,r5:integer;
   x1,y1,x2,y2:array[1..10] of integer;
     ras:real;
     n,ns:char;
     
   Procedure gran;
    Begin
      if x>620 then x:=20;
      if x<20 then x:=620;
      if y>378 then y:=20;
      if y<20 then y:=370;
    End;
    
   Procedure dvig;
    Begin
     ns:=n;
     if KeyPressed then n:=readkey;
     if (n='3') or (n='6') or (n='9') then x:=x+1;
     if (n='1') or (n='2') or (n='3') then y:=y+1;
     if (n='7') or (n='8') or (n='9') then y:=y-1;
     if (n='1') or (n='4') or (n='7') then x:=x-1;
     if n='+' then begin z:=z div 2; n:=ns; end;
     if n='-' then begin z:=z*2; n:=ns; end;
    End;
    
    Procedure proris;
     Begin
      for i:=1 to 10 do
       begin
        x1[i]:=(random (15)+1)*40;
        y1[i]:=(random (8)+1)*40;
        drawpicture (r1,x1[i]-20,y1[i]-20);
       end;

      for i:=1 to 10 do
       begin
        x2[i]:=(random (15)+1)*40;
        y2[i]:=(random (8)+1)*40;
         For j:=1 to i-1 do
        drawpicture (r2,x2[i]-20,y2[i]-20);
       end;
     End;

 begin
  setpencolor (rgb(255,255,255));
  z:=20; r:=20;
  x:=300; y:=150;
  r1:=loadpicture ('zv.bmp');
  r2:=loadpicture ('met.bmp');
  r3:=loadpicture ('let.bmp');
  r4:=loadpicture ('bzv.bmp');
  
   proris;

   while 1>0 do
    begin
     setpencolor(rgb(255,255,255));
     drawpicture (r3,x-20,y-20);

      for i:=1 to 10 do
        begin
         ras:=sqrt(sqr(x-x1[i])+sqr(y-y1[i]));
          if ras<=43 then
           begin
            k:=k+500;
            gotoxy (1,1);
            write(' ',k,' ');
            circle(x1[i],y1[i],20);
            x1[i]:=(random (15)+1)*40;
            y1[i]:=(random (8)+1)*40;
            If (random (5)=3) then
                drawpicture (r4,x1[i]-20,y1[i]-20)
                else
                drawpicture (r1,x1[i]-20,y1[i]-20);
           end;
         End;

           for i:=1 to 10 do
            begin
             ras:=sqrt(sqr(x-x2[i])+sqr(y-y2[i]));
              if ras<=43 then
               begin
                k:=k-75;
                gotoxy (1,1);
                write(' ',k,' ');
                circle(x2[i],y2[i],23);
                x2[i]:=(random (15)+1)*40;
                y2[i]:=(random (8)+1)*40;
                drawpicture (r2,x2[i]-20,y2[i]-20);
               end;
             End;
             
       delay(z);
       circle(x,y,25);
       dvig;
       gran;

     End;

end.

