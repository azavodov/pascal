Uses CRT;
Var a:string;
    ksv,knsv,kslot,ksl,nsl,kls,ks,q,q1,posl:integer;
    s1,s2:string;
    por: array [1..500] of integer;
    sl,slo: array [1..500] of string;
    proc,kf:real;
 Begin
 
 //���������
  ksv:=0; knsv:=0; kslot:=0; proc:=0; ksl:=0; nsl:=0; kls:=0; kf:=1; ks:=1;
  For q:=1 to 500 do por[q]:=0;
 //���� �����
  Write ('������ 1 - ');
  Readln (s1); s1:=s1+' ';
  Write ('������ 2 - ');
   Readln (s2); s2:=s2+' ';
 //�������� ������ ��������
  For q:=1 to length (s1) do
   If (s1[q]=',') or (s1[q]='.') or (s1[q]=':') or
   (s1[q]=';') or (s1[q]='(') or (s1[q]=')') then delete (s1,q,1);
  For q:=1 to length (s2) do
   If (s2[q]=',') or (s2[q]='.') or (s1[q]=':') or
   (s1[q]=';') or (s1[q]='(') or (s1[q]=')') then delete (s2,q,1);

 //���������� ����� �� ������ � ������, ������ ���������
   Writeln ();
  Writeln ('�������� 1 ������ �� ����� ');
  while s1<>'' do
   Begin
    inc(ksl);
    sl[ksl]:=copy(s1,1,pos(' ',s1));
    sl[ksl]:=copy(sl[ksl],1,round(length(sl[ksl])*0.6));
    Write (ksl,' - ',sl[ksl],'  ');
    delete (s1,1,pos(' ',s1));
   end;

 //���������� ����� �� 2 ������ � ������
   Writeln ();
  Writeln ('�������� 2 ������ �� ����� ');
  while s2<>'' do
   Begin
    inc(kslot);
    slo[kslot]:=copy(s2,1,pos(' ',s2));
    Write (kslot,' - ',slo[kslot],'  ');
    delete (s2,1,pos(' ',s2));
   end; Writeln ();

  //��������� ���� � ��������� �������������������
  For q:=1 to ksl do
   For q1:=1 to kslot do
     If (pos(sl[q],slo[q1])=1)// and (length(sl[q])>=length(slo[q1])-3)
     and (por[q1]=0) then por[q1]:=q;
  For q:=1 to kslot do write (por[q]:3); Writeln ();
  
  //������� ����, ������� ��� � ������
  For q:=1 to kslot do
   If por[q]=0 then inc (knsv);
  //������� ����������
  ksv:=kslot-knsv;
  //������� ������ ����
  kls:=ksl-ksv;
  Writeln ('���������� - ',ksv);
  Writeln ('����, ������������� � ������ - ',knsv);
  Writeln ('������ ���� - ',kls);
  
  //������� �������������������
  For q:=1 to kslot-1 do
   If por[q]=por[q+1]-1 then
   Begin  inc (ks); Write (por[q]:3); End
    else If ks<>1 then Begin posl:=posl+ks; ks:=1;  Write (' ':3);  End; Writeln ();
  Writeln ('������������������ - ',posl);

   //��������� �������
  proc:=(ksv/kslot)*100;
  If proc<>0 then
   Begin
    proc:=proc+(100-proc)*((posl/ksv)*100);                                     //����������� �� ������������������
    proc:=proc-proc*(abs(kls-knsv)/kslot);                                      //��������� �� ������ ����� � ����������
   End;
  
  //���������, ���� ����� �� ������� �� �����������
  If proc>100 then proc:=100;
  If proc<0 then proc:=0;
  Writeln ('���������� - ',proc);
 end.