Uses CRT;
Var x,kv,kn:integer;
    s:string;
Label 1,2;
 Begin
  clrscr;
  Writeln;
  Writeln ('Тест по информатике (7/8 класс)');
  writeln ('ответы вводятся маленькими буквами');
  writeln ('составитель - Заводов Андрей');
  writeln;
  Writeln ('НУ ЧТО? НАЧНЁМ? (да или нет)');
  Readln (s);
  If s='да' then goto 1 else
   Begin
    writeln ('ТРУС И ЛЕНТЯЙ!!! 2 тебе!!!');
    goto 2;
   End;
1:Writeln ('Введите число 7 в двоичной системе счисления');
  Readln (x);
  If x=111 then
   Begin
    writeln ('Верно! :) ');
    kn:=kv+1;
   End
    else
   Begin
    writeln ('Не верно :( ');
    kn:=kn+1;
   End;
  Writeln ('Введите число 9 в двоичной системе счисления');
  Readln (x);
  If x=1001 then
   Begin
    writeln ('Верно! :) ');
    kn:=kv+1;
   End
    else
   Begin
    writeln ('Не верно :( ');
    kn:=kn+1;
   End;
  Writeln ('Введите число 7 в двоичной системе счисления');
  Readln (s);
  If (s='мышь') or (s='Мышь') or (s='мышка') then
   Begin
    writeln ('Верно! :) ');
    kn:=kv+1;
   End
    else
   Begin
    writeln ('Не верно :( ');
    kn:=kn+1;
   End;
  writeln ((kv/(kv+kn))*5);
2:End.
