Uses CRT;
Var a:string;
    ksv,knsv,kslot,ksl,nsl,kls,ks,q,q1,posl:integer;
    s1,s2:string;
    por: array [1..500] of integer;
    sl,slo: array [1..500] of string;
    proc,kf:real;
 Begin
 
 //обнуление
  ksv:=0; knsv:=0; kslot:=0; proc:=0; ksl:=0; nsl:=0; kls:=0; kf:=1; ks:=1;
  For q:=1 to 500 do por[q]:=0;
 //ввод строк
  Write ('—трока 1 - ');
  Readln (s1); s1:=s1+' ';
  Write ('—трока 2 - ');
   Readln (s2); s2:=s2+' ';
 //удаление лишних символов
  For q:=1 to length (s1) do
   If (s1[q]=',') or (s1[q]='.') or (s1[q]=':') or
   (s1[q]=';') or (s1[q]='(') or (s1[q]=')') then delete (s1,q,1);
  For q:=1 to length (s2) do
   If (s2[q]=',') or (s2[q]='.') or (s1[q]=':') or
   (s1[q]=';') or (s1[q]='(') or (s1[q]=')') then delete (s2,q,1);

 //записываем слова из строки в массив, удал€€ окончани€
   Writeln ();
  Writeln ('–азбивка 1 строки на слова ');
  while s1<>'' do
   Begin
    inc(ksl);
    sl[ksl]:=copy(s1,1,pos(' ',s1));
    sl[ksl]:=copy(sl[ksl],1,round(length(sl[ksl])*0.6));
    Write (ksl,' - ',sl[ksl],'  ');
    delete (s1,1,pos(' ',s1));
   end;

 //записываем слова из 2 строки в массив
   Writeln ();
  Writeln ('–азбивка 2 строки на слова ');
  while s2<>'' do
   Begin
    inc(kslot);
    slo[kslot]:=copy(s2,1,pos(' ',s2));
    Write (kslot,' - ',slo[kslot],'  ');
    delete (s2,1,pos(' ',s2));
   end; Writeln ();

  //сравнение слов и выделение последовательностей
  For q:=1 to ksl do
   For q1:=1 to kslot do
     If (pos(sl[q],slo[q1])=1)// and (length(sl[q])>=length(slo[q1])-3)
     and (por[q1]=0) then por[q1]:=q;
  For q:=1 to kslot do write (por[q]:3); Writeln ();
  
  //подсчет слов, которых нет в ответе
  For q:=1 to kslot do
   If por[q]=0 then inc (knsv);
  //подсчет совпадений
  ksv:=kslot-knsv;
  //подсчет лишних слов
  kls:=ksl-ksv;
  Writeln ('—овпадений - ',ksv);
  Writeln ('—лов, отсутствующих в ответе - ',knsv);
  Writeln ('Ћишних слов - ',kls);
  
  //подсчет последовательностей
  For q:=1 to kslot-1 do
   If por[q]=por[q+1]-1 then
   Begin  inc (ks); Write (por[q]:3); End
    else If ks<>1 then Begin posl:=posl+ks; ks:=1;  Write (' ':3);  End; Writeln ();
  Writeln ('ѕоследовательности - ',posl);

   //первичный процент
  proc:=(ksv/kslot)*100;
  If proc<>0 then
   Begin
    proc:=proc+(100-proc)*((posl/ksv)*100);                                     //увеличиваем за последовательности
    proc:=proc-proc*(abs(kls-knsv)/kslot);                                      //уменьшаем за лишние слова и недостатки
   End;
  
  //страховка, если вышли за границы то редактируем
  If proc>100 then proc:=100;
  If proc<0 then proc:=0;
  Writeln ('—овпадение - ',proc);
 end.