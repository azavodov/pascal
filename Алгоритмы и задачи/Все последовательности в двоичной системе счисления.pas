Uses CRT;
 Var a,b,c,i,j,n,q,kol:integer;
     x: array [1..10000,1..100] of integer;
  Begin
  
  
  Write ('������� ����������� �������� - ');
  Readln (n);

   
   For i:=1 to n do                           //������������ ����
    x[1,i]:=0;
   
   kol:=1;
   For i:=1 to n do                           // ������� ������� ����� �������������������
    kol:=kol*2;
    
    
  For i:=2 to kol do                          // ���� ��� �������� ���� �������������������
   For j:=n downto 1 do                       // ���� ��� �������� ��������� �������������������
     Begin
     
      If x[i,j]=0 then                        // ���� �������� 0, �����
       Begin
        x[i,j]:=1;                            // ������ ��� 1,
         For q:=j+1 to n do                   // ��� ��� ����� ����� - ��������
          x[i,q]:=0;
         For q:=1 to n do                     // ��� ��� ��� ���������� � ������, �����������
          x[i+1,q]:=x[i,q];                   // ���������� ���������, ���� ������� ������������������
        break;
       End;

     end;

   For i:=1 to kol do                             //�����!
    For j:=1 to n do
     Begin
      If j=1 then
       If i<10 then write ('0',i,') ')
               else write (i,') ');               // ������ ������
      write (x[i,j]);
      If j=n then Writeln();
     End;
    
  
  End.
