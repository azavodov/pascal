//������� ��� ���������� ����� �� ���������
Uses CRT;
Var b,c,i,j,N,k,s:integer;
    a: array [1..1000] of integer;

 Begin
 
    Readln (N);
//  N:=6;  // ����� ��� ���������� (����� - 11)

    For i:=1 to N do
      a[i]:=1;

    k:=0;  // ����������� ����������
    j:=n;  //����������� ��������� � ������� �����
    s:=n;  //����� ���������
    
   while a[1]<=n do
    Begin

     If s<n then Begin inc (j); a[j]:=a[j-1]; s:=s+a[j]; End;
     If s=n then Begin Write (N,' = ');
                       For i:=1 to j do
                           Begin  If i<j then Write (a[i],' + ')
                                         else write (a[i]); End;
                       inc (k);  writeln;
                 End;
     If a[1]=n then break;
     If s>=n then
      Begin
       j:=j-1;
       a[j]:=a[j]+1;
       s:=s-a[j+1]+1;
      End;
      
    End;

  Writeln (k,' - ����������� ����������');
   
 End.
