Uses CRT;
 Var a,b,m,z,x,q:integer;
 s,s1:string;
 Label 1,2,kon;
  Begin
    Readln (s);

    a:=strtoint (s);
    If a=1000 then
    Begin writeln ('������'); goto kon; End;
    
   m:=a div 100;
   case m of
    1: Write ('��� ');
    2: Write ('������ ');
    3: Write ('������ ');
    4: Write ('��������� ');
    5: Write ('������� ');
    6: Write ('�������� ');
    7: Write ('������� ');
    8: Write ('��������� ');
    9: Write ('����������� ');
   End;
   
   
   z:=(a div 10) mod 10;
    case z of
    1: Begin
     x:=a mod 100;
      case x of
       11:Begin Write (' �����������'); goto kon; End;
       12:Begin Write (' ����������'); goto kon; End;
       13:Begin Write (' ����������'); goto kon; End;
       14:Begin Write (' ������������'); goto kon; End;
       15:Begin Write (' ����������'); goto kon; End;
       16:Begin Write (' �����������'); goto kon; End;
       17:Begin Write (' ����������'); goto kon; End;
       18:Begin Write (' ������������'); goto kon; End;
       19:Begin Write (' ������������'); goto kon; End;
       End;
       
       
       End;
    2: Write ('��������');
    3: Write ('��������');
    4: Write ('�����');
    5: Write ('���������');
    6: Write ('��������');
    7: Write ('���������');
    8: Write ('�����������');
    9: Write ('���������');
    End;

   q:=a mod 10;
    case q of
     1: write ('����');
     2: Write ('���');
     3: Write ('���');
     4: Write ('������');
     5: Write ('����');
     6: Write ('�����');
     7: Write ('����');
     8: Write ('������');
     9: Write ('������');
    End;
 kon:
 End.


