//�������� ������
Uses CRT;
Var a: array [1..90] of integer;
    i, k, s, r, min: integer;
    sr, p: real;
 begin
  writeln ('������� 1-2');
  {1. ��������� ������ ����������� 90 ������ ������� �� -24 �� 69
   2. ������� ��-�� ������� �� ����� � ������}
  for i:=1 to 90 do
   begin
    a[i]:= random (95)-24;
     write (a[i],' ');
   end;
  writeln;
  writeln ('������� 3');
  {3. ����� ������������ ��-��� �������, �� ������� 3}
  p:=1;
  for i:=1 to 90 do
   if a[i]mod 3<>0 then p:=p*a[i];
  writeln ('������������ ��-��� �������, �� ������� 3 - ', p);
  writeln;
  writeln ('������� 4');
  {4. ���������, ���� �� � ������� �����, ������� -22}
  for i:=1 to 90 do
   if a[i]<(-22) then r:=1;
  if r=1 then writeln ('� ������� ���� ��-��, ������� -22') else writeln ('� ������� ��� ��-���, ������� -22');
  writeln;
  writeln ('������� 5');
  {5. ����� ������� �������������� ������������� ��-��� �������}
  for i:=1 to 90 do
    if a[i]<0 then
      begin
       s:=s+a[i];
       k:=k+1;
      end;
  sr:=s/k;
  writeln ('������� �������������� ������������� ��-��� ������� - ', sr);
  writeln;
  writeln ('������� 6');
  {6. ��-�� �������, ������� 7, ��������� � 2 ����}
  for i:=1 to 90 do
   begin
    if a[i]mod 7=0 then a[i]:=a[i]*2;
    write (a[i],' ');
   end;
  writeln;
  writeln ('������� 7');
  {7. ������� ������ ���������� ��-��� �������}
  min:=a[1];
  for i:=2 to 90 do
   if a[i]<min then min:=a[i];
  for i:=1 to 90 do
   if a[i]=min then write (i,' ');
end.

