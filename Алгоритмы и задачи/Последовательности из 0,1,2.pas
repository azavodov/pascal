Uses CRT;
 Var a,b,c,i,j,n,q,kol,q1:integer;
     x: array [0..10000,0..100] of integer;
  Begin


  Write ('������� ����������� �������� - ');
  Readln (n);


   For i:=1 to n do                              // �������� ������ �����
    x[1,i]:=0;

   kol:=1;
   For i:=1 to n do                              // ������� ����������� �������������������
    kol:=kol*3;


  For i:=2 to kol do                             //���� ��� �������� �������������������
   For j:=n downto 1 do                          //���� ��� �������� ���� � �������������������
     Begin
                                                 // ���� �����,����� ����������� � �������� ����� ��������.
      If x[i,j]<2 then
         x[i,j]:=x[i,j]+1
      else
         For q:=j-1 downto 1 do                  // ����� ���� ����� ������� ����� ���������
          If x[i,q]<2 then
           Begin
             inc (x[i,q]);                       // �����������
             For q1:=q+1 to n do                 // ����� �� ��� ��������
             x[i,q1]:=0;
             break;
           End;
      
       For q:=1 to n do                          // ���������� ��������� �������
          x[i+1,q]:=x[i,q];                      // ����������� ������� ������������������
       Break;
     end;

   For i:=1 to kol do                            // �����!
    For j:=1 to n do
     Begin
      If j=1 then
       If i<10 then write ('0',i,') ')           // ������ ������.
               else write (i,') ');
      write (x[i,j]);
      If j=n then Writeln();
     End;


  End.
