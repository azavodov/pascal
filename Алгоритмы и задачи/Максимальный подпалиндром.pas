Uses CRT;
Var d, i, j, max, m1, m2, m10, m20 :integer;
    s,s1:string;
    a : array [1..256] of integer;
label 1;
 Begin
 
  Write ('������� �������� ������ : ');
  Readln (s);
  Write ('������������ ������������ :');
 // s:='ABCFGHTHCBA';
  
  
  
  d:=length (s);
   For i:=1 to d-1 do                                       // ������� � ������ ������
    Begin
    max:=0;
    
     For j:=d downto i+1 do                                 // ������� � ����� ������
      Begin
       If a[j]>max then max:=a[j];
       If (s[i]=s[j]) and (a[j]=0) then                     // ��������� ������ � ������� ���������� ������
        Begin a[i]:=max+1; a[j]:=max+1; Break; End;         // ������������� ���������� ��� ������ �����
      End;
      
    End;
     
     
{   Writeln (s);
    For i:=1 to d do                                        // ������������� ����� �������
     write (a[i]);
   Writeln;  }
   
   m1:=1;
   For i:=1 to d do                                         // ������� �������� ��� 1 �������� ����������
    If a[i]>a[m1] then m1:=i;
1: For i:=m1+1 to d do                                      // ������� �������� ��� 2 �������� ����������
    If (a[i]=a[m1]) and (s[i]=s[m1]) then
     Begin m2:=i; Break End;
   If m1-m2=1 then                                          // ��������� ���������� �� ���������
    For i:=m1+2 to d do
     If a[i]=a[m1] then
      Begin m1:=i; goto 1; End;                             // ���� ���, ����� ������
    

   If m2-m1>1 then s1:=s[m1]+s[m1+1]+s[m2]                  // ��������� ���� �� ����� ����������� ������� (���� ����, �� ���������)
    else s1:=s[m1]+s[m2];                                   // ���� ���, ����� ������ ��������� 2 ������������
    For i:=m1-1 downto 1 do                                 // ���� �� ������ (�� ������� ���������)
     Begin
      If a[m1]-a[i]=1 then                                  // ���� ����� �� ���� ������ (����� � �������)
       For j:=m2+1 to d do
        If s[i]=s[j] then                                   // � ������� ����������
         Begin s1:=s[i]+s1+s[j]; m1:=m1-1; Break; End;      // ����� ��������� ���������
     End;
     
   Write (s1);                                              // ������� ��������� (��������!)

 End.
 
