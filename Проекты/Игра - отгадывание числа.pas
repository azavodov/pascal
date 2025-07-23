Uses CRT;
 Var c,c1:array [1..100] of integer;
     x,zn,i,j,ks,kn,p:integer;
     s:string;
 Label 1;
 Begin
  Writeln ('скольки значное число вы хотите отгадывать');
  Readln (zn);
  c[1]:=random(10);
   for i:=2 to zn do
    Begin
 1:   c[i]:=random (9)+1;
      For j:=1 to i-1 do
       if c[i]=c[j] then goto 1;
    end;
  Writeln ('число сгенерированно.');

   while ks<zn do
    Begin
   inc (p);
   Write (p,') попытка. Введите свое число - ');
   readln (s);
    For i:=1 to zn do
     c1[i]:=strtoint (s[i]);
     
    ks:=0;
    for i:=1 to zn do
     If c[i]=c1[i] then inc (ks);
    writeln ('  ',ks,' - цифры совпали');
    
    If ks=zn then Begin writeln ('УГАДАНО! Число - ',s); Break; End;
    
    kn:=0;
     for i:= 1 to zn do
      For j:= 1 to zn do
       If (c[i]=c1[j]) and (i<>j) then inc (kn);
       writeln ('  ',kn,' - цифры не совпали');
     End;

 End.
