Uses CRT;
Var a: array [1..100] of integer;
    i, k, j, c, p: integer;
  begin
    for i:=1 to 100 do
   begin
    a[i]:= random (19)-9;
     write (a[i],' ');
   end;
   writeln;
   // ����������� ������ �� �����������
   For i:=1 to 99 do
    For j:=i+1 to 100 do
     if a[i]>a[j] then begin //������ ������������� ���������� (�)
                         c:=[j];
                         a[j]:=a[i];
                         a[i]:=c;
                       end;
    for i:=1 to 100 do
       write (a[i],' ');
   writeln;
   //��������� ���-�� ����� ������ ��-���
  p:=0;
  For i:=1 to 98 do
   For j:=i+1 to 99 do
    For k:=j+1 to 100 do
     if (a[i]=a[j]) and (a[j]=a[k]) then p:=p+1;
  writeln (p);
  writeln;
 //�/�: ����������� ������ �� ��������
 end.
  

   

