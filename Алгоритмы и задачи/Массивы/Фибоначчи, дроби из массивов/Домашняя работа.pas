//«адать массив обыкновенных дробей генератором случайных чисел.
//  1.„ислитель и знаменатель в интервале от 1 до 100
uses CRT;
Var	c,z: array [1..30] of integer;
    i, kpd,j,c1, d: integer;
 begin
  for i:=1 to 30 do 
    begin
     c[i]:=random (98)+2;
     z[i]:= random (98)+2;
     write (c[i],'/',z[i],'  ');
    end;
  writeln;
  
//ѕосчитать кол-во правильных дробей
  writeln;
  kpd:=0;
  for i:= 1 to 30 do
   if c[i]<z[i] then kpd:=kpd+1;
  writeln ('¬ массиве ', kpd, ' правильных дробей');
  
//”пор€дочить дроби по возрастанию
  writeln;
  For i:=1 to 29 do
	For j:=i+1 to 30 do
	if c[i]/z[i]>c[j]/z[j] then 
	    begin
			c1:=c[i];
			c[i]:=c[j];
			c[j]:=c1;
			c1:=z[i];
			z[i]:=z[j];
			z[j]:=c1;
	    end;

  For i:=1 to 30 do
   write (c[i],'/',z[i],'  ');
  WriteLn;	
  WriteLn;

//—ократить дроби, если это возможно
  For i:= 1 to 30 do begin
   For d:=2 to 30 do
    if (c[i] mod d =0) and (z[i] mod d =0) then
     begin
      if ((c[i] div d) mod d =0) and ((z[i]div d) mod d =0) then 
        begin
          c[i]:=(c[i]div d)div d;
          z[i]:=(z[i]div d)div d;
        end
      else
        begin
          c[i]:=c[i]div d;
          z[i]:=z[i]div d;
        end;
      end;

    write (c[i],'/',z[i],'  ');
                     end;
    writeln;
 end.
