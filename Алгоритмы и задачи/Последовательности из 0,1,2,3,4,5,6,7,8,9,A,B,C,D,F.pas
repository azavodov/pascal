Uses CRT;
 Var a,b,c,i,j,n,q,kol,q1:integer;
     x: array [1..4100,1..5] of integer;
     s: array [1..4100,1..5] of string;
  Begin


  Write ('������� ����������� �������� - ');
  Readln (n);


   For i:=1 to n do                              // �������� ������ �����
    x[1,i]:=0;

   kol:=1;
   For i:=1 to n do                              // ������� ����������� �������������������
    kol:=kol*16;


  For i:=2 to kol do                             //���� ��� �������� �������������������
   For j:=n downto 1 do                          //���� ��� �������� ���� � �������������������
     Begin
                                                 // ���� �����,����� ����������� � �������� ����� ��������.
      If x[i,j]<15 then
         x[i,j]:=x[i,j]+1
      else
         For q:=j-1 downto 1 do                  // ����� ���� ����� ������� ����� ���������
          If x[i,q]<15 then
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

     For i:=1 to kol do
      For j:=1 to n do
       If x[i,j]<10 then
        s[i,j]:=inttostr(x[i,j])
       else
        case (x[i,j]) of
         10: s[i,j]:='A';
         11: s[i,j]:='B';
         12: s[i,j]:='C';
         13: s[i,j]:='D';
         14: s[i,j]:='E';
         15: s[i,j]:='F';
        End;


   For i:=1 to kol do                            // �����!
    For j:=1 to n do
     Begin
      If j=1 then
       If i<10 then write ('0',i,') ')           // ������ ������.
               else write (i,') ');
      write (s[i,j]);
      If j=n then Writeln();
     End;


  End.
