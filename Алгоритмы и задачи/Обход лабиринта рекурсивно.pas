Uses crt;
label 1,2,3,4;
Var i,j,n,z : integer;
    a,b,c,d: array [0..100,0..100] of integer;    // �������� // ����������� // ������ ������ // ����� ����
    
Procedure virus(i1,j1:integer);    // ����� �� ����� � ��������� � ��������
  Label 1;
  begin
  b[i1,j1]:=n;
  
  delay(z);
  gotoxy(j1*2,i1);
  writeln(n);
  if i1*j1=n*n then goto 1; //writeln('yes');
  
  if (a[i1,j1+1]<0) and (j1<n) and (b[i1,j1+1]=0) then virus(i1,j1+1);
  if (a[i1+1,j1]<0) and (i1<n) and (b[i1+1,j1]=0) then virus(i1+1,j1);
  if (a[i1,j1-1]<0) and (j1>1) and (b[i1,j1-1]=0) then virus(i1,j1-1);
  if (a[i1-1,j1]<0) and (i1>1) and (b[i1-1,j1]=0) then virus(i1-1,j1);

 1: end;
  
    
Begin

  n:=8;                         // �������
  z:=100;                         // ��������
  For i:=1 to n do
    for j:=1 to n do
     begin
      a[i,j]:=-random(3);                               //  a[i,j]<0 - ���� ��������� "."     a[i,j]=0 - �������� "�"
      gotoxy(j*2,i);
      if a[i,j]=0 then writeln('�') else writeln('.');
     end;
  a[1,1]:=-1;    // ������
  a[n,n]:=-1;    // ��������� ����
  
  virus(1,1);
      
  //  �����
1:  gotoxy(1,n+1);
  if b[n,n]=n then writeln('yes') else writeln('no');

end.
