Uses CRT;
Var x,kv,kn:integer;
    s:string;
Label 1,2;
 Begin
  clrscr;
  Writeln;
  Writeln ('���� �� ����������� (7/8 �����)');
  writeln ('������ �������� ���������� �������');
  writeln ('����������� - ������� ������');
  writeln;
  Writeln ('�� ���? ���ͨ�? (�� ��� ���)');
  Readln (s);
  If s='��' then goto 1 else
   Begin
    writeln ('���� � ������!!! 2 ����!!!');
    goto 2;
   End;
1:Writeln ('������� ����� 7 � �������� ������� ���������');
  Readln (x);
  If x=111 then
   Begin
    writeln ('�����! :) ');
    kn:=kv+1;
   End
    else
   Begin
    writeln ('�� ����� :( ');
    kn:=kn+1;
   End;
  Writeln ('������� ����� 9 � �������� ������� ���������');
  Readln (x);
  If x=1001 then
   Begin
    writeln ('�����! :) ');
    kn:=kv+1;
   End
    else
   Begin
    writeln ('�� ����� :( ');
    kn:=kn+1;
   End;
  Writeln ('������� ����� 7 � �������� ������� ���������');
  Readln (s);
  If (s='����') or (s='����') or (s='�����') then
   Begin
    writeln ('�����! :) ');
    kn:=kv+1;
   End
    else
   Begin
    writeln ('�� ����� :( ');
    kn:=kn+1;
   End;
  writeln ((kv/(kv+kn))*5);
2:End.
