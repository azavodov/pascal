Uses CRT;
 Var s,s1:string;
     pr,i,k:integer;
   
 Begin
 
  Write ('������� ������(������ ��������� ��������� �����):  ');
  Readln (s);
  Write ('������� ����(�����):  ');
  Readln (k);

   For i:= 1 to length (s) do
    Begin
    
     If (ord(s[i])<=95) and (ord(s[i])>=60) then
       Begin
        pr:=ord(s[i]);
        pr:=pr+k;
        If pr>90 then pr:=pr-90+65;
        s1:=s1+chr(pr);
       End
     else s1:=s1+s[i];
     
    End;
    
   Writeln ('������������� ������:  ',s1);
    
 End.
 
