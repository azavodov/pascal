Uses CRT;
Var a: array [1..100] of integer;
    i, p: integer;
  begin
    for i:=1 to 100 do
   begin
    a[i]:= random (19)-9;
     write (a[i],' ');
   end;
   writeln;
   writeln('������ 1');
   p:=0;
  for i:=1 to 98 do
   if a[i]=a[i+1]-2 then
    begin
     writeln (i,' ',i+1);
     p:=1;
    end;
   if p=0 then writeln ('� ������� ��� ��� ������ ������ ���������, � ����������� � ���� �� ��� �������');
   writeln;
   writeln('������ 2');
   p:=0;
  for i:=1 to 98 do
   if (a[i]=a[i+1]) and (a[i+1]=a[i+2]) then p:=1;
  if p=0 then writeln ('����� ��-��� ���')
         else writeln ('����� ��-�� ����')
  end.
