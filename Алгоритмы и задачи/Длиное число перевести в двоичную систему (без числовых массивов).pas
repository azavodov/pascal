//  Длинное число (строка из цифр) перевести в двоичное число

Uses CRT;
Var S,s1,s2 : string;
    i,x,n : integer;    // параметр цикла
    d : integer;   // длина строки

    
Begin
  S:='2561044234589011';
  d:=Length(s);
  write(s,'(10)='); delay(1000);

  while s>'' do
    begin
    
      if pos(s[d],'13579')>0 then s2:='1'+s2 else s2:='0'+s2;
                              //  writeln(s2); delay(1000);
      
      if s[1]='1' then begin x:=10; n:=2; end
                  else begin x:=0;  n:=1; end;

      For i:=n to d do
        begin
          x:=x+StrToInt(s[i]);
          s1:=s1+IntToStr(x div 2);
                               // writeln(x,'  ',s1); delay(1000);
          x:=(x mod 2)*10;
        end;
        

      s:=s1;
      d:=Length(s);
      s1:='';
      
    end;

 Writeln(s2,'(2);');



end.
