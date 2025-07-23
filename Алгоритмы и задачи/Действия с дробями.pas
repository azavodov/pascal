Uses CRT;
 Var a1,b1,a2,b2,i:integer;
    d1,d2,n1,n2:integer;
    s1,zn,s2:string;
    chisl,znam:integer;

  Procedure deystvie;
   Begin
    If zn='+' then
     Begin
      chisl:=a1*b2+a2*b1;
      znam:=b1*b2;
     End;
     
    If zn='*' then
     Begin
      chisl:=a1*b2;
      znam:=b1*a2;
     End;
     
    If zn='/' then
     Begin
      chisl:=a1*a2;
      znam:=b1*b2;
     End;
     
    If zn='-' then
     Begin
      chisl:=a1*b2-a2*b1;
      znam:=b1*b2;
     End;
     
  for i:=chisl downto 2 do
   if (chisl mod i=0) and (znam mod i=0) then
     begin
       chisl:=chisl div i;
       znam:=znam div i;
       break;
     end;

  Writeln (s1,' ',zn,' ',s2,' = ',chisl,'/',znam);
   End;
   
 Begin
  Writeln ('введите 1 дробь: ');
  Readln (s1);
  Writeln ('введите знак действия: ');
  Readln (zn);
  Writeln ('введите 2 дробь: ');
  Readln (s2);
   d1:=length(s1);  n1:=pos('/',s1);
   d2:=length(s2);  n2:=pos('/',s2);

   a1:=strtoint(copy(s1,1,n1-1));
   b1:=strtoint(copy(s1,n1+1,d1-n1));
   a2:=strtoint(copy(s2,1,n2-1));
   b2:=strtoint(copy(s2,n2+1,d2-n2));

  Writeln ('Результат: ');
  deystvie;
   
 End.
