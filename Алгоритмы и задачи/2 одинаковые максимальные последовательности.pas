{������: ������ ������ �� N ����� �����. (������: �={1,2,1,2,2,1,2,2,1,2,2,1,2,2,2,1,2,1,2,1.)
�) ����� ��� ���������� ���������������� ��c��������������� ��������� ������������ �����.
(����� ��� �������: "1,2,2,1,2,2" � 3 �������� � � 9-�� �������� �������.  }

Uses CRT;
Var a,b,c,i,j,n,q,w,max:integer;
    x: array [1..10000] of integer;
    s,s1,s2,s3:string;
 Begin

  Write ('������� ����� ���������� �������:  ');
  Readln (n);
  Write ('�������� ������������������:  ');
  
   For i:=1 to n do
    Begin
     x[i]:=random (2)+1;
     s:=s+inttostr(x[i]);
     Write (x[i]);
    End;
     Writeln ();

     max:=0;
    For i:=1 to n-3 do
     For j:=i+1 to n-2 do
      For q:=j to n-1 do
       For w:=q to n do
        Begin
         s1:=copy (s,i,j-i);
         s2:=copy (s,q,w-q);
         If s1=s2 then
          If length (s1)>max then
           Begin max:=length (s1); s3:=s1; End;
        End;

     Writeln ('������������ ������������������:  ',s3);
 End.
