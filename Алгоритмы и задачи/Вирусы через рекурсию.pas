// ������
// ������� ����� ������� ����� �������� ������������� �������.
// ����� �������� "�" ����� �� ��������.

Uses CRT;
Var x: array [0..100,0..100] of integer;    // -1 = "�" ��������,   0 = ��������� ����������� ������
    i,j,m,n,k : integer;
    
Procedure virus(i1,j1:integer);           // ��������� ��������� �������
  begin
    x[i1,j1]:=k;
    
    delay(800);                           // ����� �� �����
    gotoxy(j1*3,i1);
    write(x[i1,j1]);
    
    if (j1<m) and (x[i1,j1+1]=0) then virus(i1,j1+1);     // ������
    if (i1<n) and (x[i1+1,j1]=0) then virus(i1+1,j1);     // ����
    if (j1>1) and (x[i1,j1-1]=0) then virus(i1,j1-1);     // �����
    if (i1>1) and (x[i1-1,j1]=0) then virus(i1-1,j1);     // �����
  end;
    
    
    
Begin

  m:=10; n:=7;                             // ������� ������������� �������
  
  For i:=1  to n do                        // ������ �������
    For j:=1 to m do
      begin
        x[i,j]:=random(2)-1;
        gotoxy(j*3,i);
        if x[i,j]<0 then write('�') else write(x[i,j]);
      end;
      
      
                                            // ������� ������ - ���������� ������� ��������(������� ������)
  For i:=1  to n do
    For j:=1 to m do
     begin
       if x[i,j]=0 then begin k:=k+1; virus(i,j); end;
     end;
     
     
  gotoxy(5,n+1);                               //  �����:
  Writeln ('����� ������� - ',k);

end.
