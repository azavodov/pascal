//�������� ������
Uses CRT;
Var a: array [1..100] of integer;
    i, k, s, r, max: integer;
    sr, p: real;
 begin
  writeln ('������� 1-2');
  {1. ��������� ������ ����������� 100 ������ ������� �� -33 �� 55
   2. ������� ��-�� ������� �� ����� � ������}
  for i:=1 to 100 do
   begin
    a[i]:= random (89)-33;
     write (a[i],' ');
   end;
  writeln;
  writeln ('������� 3');
  {3. ����� ������� �������������� �����, ������� 5}
  for i:=1 to 100 do
    if a[i] mod 5=0 then
      begin
       s:=s+a[i];
       k:=k+1;
      end;
  sr:=s/k;
  writeln ('������� �������������� �����, ������� 5 - ', sr);
  writeln;
  writeln ('������� 4');
  {4. ����� ������������ ������������� ��-��� �������}
  p:=1;
  for i:=1 to 100 do
   if a[i]<0 then p:=p*a[i];
  writeln ('������������ ������������� ��-��� ������� - ', p);
  writeln;
  writeln ('������� 5');
  {5. ���������, ���� �� � ������� �����, ������� 53}
  for i:=1 to 100 do
   if a[i]>53 then r:=1;
  if r=1 then writeln ('� ������� ���� ��-��, ������� 53') else writeln ('� ������� ��� ��-���, ������� 53');
  writeln;
  writeln ('������� 6');
  {6. ������������� ��-�� ������� ��������� �� 7}
  for i:=1 to 100 do
   begin
    if a[i]>0 then a[i]:=a[i]-7;
    write (a[i],' ');
   end;
  writeln;
  writeln ('������� 7');
  {7. ������� ������ ���������� ��-��� �������}
  max:=a[1];
  for i:=2 to 100 do
   if a[i]>max then max:=a[i];
  for i:=1 to 100 do
   if a[i]=max then write (i,' ');
end.


