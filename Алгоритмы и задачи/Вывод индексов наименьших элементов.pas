Uses CRT;
Var a,b,c:integer;
 x: array [1..5, 1..7] of integer;
 
  Begin
  
  
   for a:=1 to 5 do
    For b:=1 to 7 do
     Begin                        // ����� ��������
      x[a,b]:=random (19)-7;
      write (x[a,b]:4);
      If b=7 then writeln;
     End;

   c:=20;

   for a:=1 to 5 do
    For b:=1 to 7 do                    //   ����������� ����������� ��������
      If x[a,b]<c then c:=x[a,b];
      

   for a:=1 to 5 do
    For b:=1 to 7 do                              //   ����� �������� ���������� ����������
      If x[a,b]=c then writeln (a,' ',b);

     
  End.
