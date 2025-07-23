unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, ComCtrls, Grids, ActnList, CheckLst, MaskEdit, Spin, ValEdit,
  Buttons;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button12: TButton;
    Button3: TButton;
    Button10: TButton;
    Button11: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Button36: TButton;
    Button37: TButton;
    Button38: TButton;
    Button39: TButton;
    Button4: TButton;
    Button40: TButton;
    Button41: TButton;
    Button42: TButton;
    Button43: TButton;
    Button44: TButton;
    Button45: TButton;
    Button46: TButton;
    Button47: TButton;
    Button48: TButton;
    Button49: TButton;
    Button5: TButton;
    Button50: TButton;
    Button51: TButton;
    Button52: TButton;
    Button53: TButton;
    Button54: TButton;
    Button55: TButton;
    Button56: TButton;
    Button57: TButton;
    Button58: TButton;
    Button59: TButton;
    Button6: TButton;
    Button60: TButton;
    Button61: TButton;
    Button62: TButton;
    Button63: TButton;
    Button64: TButton;
    Button65: TButton;
    Button66: TButton;
    Button67: TButton;
    Button68: TButton;
    Button69: TButton;
    Button7: TButton;
    Button70: TButton;
    Button8: TButton;
    Button9: TButton;
    CheckBox1: TCheckBox;
    CheckListBox1: TCheckListBox;
    CheckListBox2: TCheckListBox;
    CheckListBox3: TCheckListBox;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label4: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Memo5: TMemo;
    OpenDialog1: TOpenDialog;
    OpenDialog2: TOpenDialog;
    OpenDialog3: TOpenDialog;
    Panel1: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel2: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    SaveDialog1: TSaveDialog;
    SaveDialog2: TSaveDialog;
    SaveDialog3: TSaveDialog;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    SpinEdit5: TSpinEdit;
    SpinEdit6: TSpinEdit;
    SpinEdit7: TSpinEdit;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    Timer1: TTimer;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure Button45Click(Sender: TObject);
    procedure Button46Click(Sender: TObject);
    procedure Button47Click(Sender: TObject);
    procedure Button48Click(Sender: TObject);
    procedure Button49Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button50Click(Sender: TObject);
    procedure Button51Click(Sender: TObject);
    procedure Button52Click(Sender: TObject);
    procedure Button53Click(Sender: TObject);
    procedure Button54Click(Sender: TObject);
    procedure Button55Click(Sender: TObject);
    procedure Button56Click(Sender: TObject);
    procedure Button57Click(Sender: TObject);
    procedure Button58Click(Sender: TObject);
    procedure Button59Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button60Click(Sender: TObject);
    procedure Button61Click(Sender: TObject);
    procedure Button62Click(Sender: TObject);
    procedure Button63Click(Sender: TObject);
    procedure Button64Click(Sender: TObject);
    procedure Button65Click(Sender: TObject);
    procedure Button66Click(Sender: TObject);
    procedure Button67Click(Sender: TObject);
    procedure Button68Click(Sender: TObject);
    procedure Button69Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button70Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure CheckListBox1ClickCheck(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure obnulenie();
    procedure obnulenie1();
    procedure obnulenie2();
    procedure udalenie();
    procedure sravnenie();
    procedure provtest();
    procedure provslov();
    procedure genervar();
    procedure sohrez(met:integer);
    procedure shifr(s:string);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

 Var
     im,fam,st,VIP:string;
     a,b,c:integer;
     kolv,kvt,nv,kv,knv,kdv,nvv,nvr,nomprot,notv:integer;

     // добавленные при создании теста вопросы и ответы
     dvop,dotv: array [1..500] of string;
     tvar: array [1..100,1..6] of string;
     ms: array [1..500] of string;

     //переменные для "вставка слова"
      edit: array [1..5] of Tedit;
      lab: array [1..5] of Tlabel;
      ot,kl: array [1..5] of string;
      osh:string; sovpad:integer;

     rand: array [1..500] of integer;
     oc: array [1..500] of byte; ocsr:real;
     i,j:integer;
     kontra:boolean;

     // массивы для записи вопросов,ответов... при тестировании
     vop,otv,vr,res: array [1..500] of string;

    // переменные для процедуры сравнения
    sl,slo: array [1..500] of string;
    por: array [1..500] of integer;
    s1,s2:string;
    ksl,kslot,ksv,knsv,kls,nsl,q,q1,ks,posl:integer;
    proc,kf:real;

     // переменные для процедуры шифрования\дешифрования
    ih,jh:integer;
    sh,sh1,sh2:string;
    f,f1:textfile;

    //массивы определений
    meh,molek,elmog,mikr,tehtr,prib: array [1..200] of string;

implementation
uses Unit1;

{$R *.lfm}

{ TForm2 }


///////////////////////////развернутый ответ////////////////////////////////////

//Механика (1)
procedure TForm2.Button4Click(Sender: TObject);
begin
 For i:=1 to 200 do If meh[i]<>'' then
 Begin inc(kolv); vop[kolv]:=meh[i]; End;
 label9.caption:='Тест : Механика';
 obnulenie(); kontra:=false;
end;

//Молекулярная физика. Термодинамика (1)
procedure TForm2.Button5Click(Sender: TObject);
begin
 For i:=1 to 200 do If molek[i]<>'' then
 Begin inc(kolv); vop[kolv]:=molek[i]; End;
 label9.caption:='Тест : Молекулярная физика. Термодинамика';
 obnulenie(); kontra:=false;
end;

//Электромагнетизм (1)
procedure TForm2.Button6Click(Sender: TObject);
begin
 For i:=1 to 200 do If elmog[i]<>'' then
 Begin inc(kolv); vop[kolv]:=elmog[i]; End;
 label9.caption:='Тест : Электромагнетизм';
 obnulenie(); kontra:=false;
end;

//Физика микромира (1)
procedure TForm2.Button7Click(Sender: TObject);
begin
 For i:=1 to 100 do If mikr[i]<>'' then
 Begin inc(kolv); vop[kolv]:=mikr[i]; End;
 label9.caption:='Тест : Физика микромира';
 obnulenie(); kontra:=false;
end;

//Технические термины (1)
procedure TForm2.Button8Click(Sender: TObject);
begin
 For i:=1 to 100 do If tehtr[i]<>'' then
 Begin inc(kolv); vop[kolv]:=tehtr[i]; End;
 label9.caption:='Тест : Технические термины';
 obnulenie(); kontra:=false;
end;

//Измерительные приборы и устройства (1)
procedure TForm2.Button9Click(Sender: TObject);
begin
 For i:=1 to 100 do If prib[i]<>'' then
 Begin inc(kolv); vop[kolv]:=prib[i];  End;
 label9.caption:='Тест : Измерительные приборы и устройства';
 obnulenie(); kontra:=false;
end;

//создание теста (выделение раздела) (1)
procedure TForm2.CheckListBox1ClickCheck(Sender: TObject);
begin
 a:=checklistbox1.ItemIndex;
  If (form1.term[a+1]='') then
   Begin
    If checklistbox1.Checked[a]=true then
     For i:=a+1 to form1.kolt do
      If form1.term[i+1]='' then break else checklistbox1.Checked[i]:=true
    else
     For i:=a+1 to form1.kolt do
      If form1.term[i+1]='' then break else checklistbox1.Checked[i]:=false;;
   End;
end;

//тест по всем темам (1)
procedure TForm2.Button10Click(Sender: TObject);
begin
 For i:=1 to form1.kolt do
  If form1.term[i]<>'' then
  Begin inc(kolv); vop[kolv]:=form1.opr[i]; End;
 label9.caption:='Тест : по всем темам';
 obnulenie(); kontra:=false;
end;

//обнуление (1)
Procedure TForm2.obnulenie();
Var i,j:integer;
 Begin
  If kontra=false then kvt:=spinedit1.value;
  For i:=0 to 500 do Begin rand[i]:=0; oc[i]:=0; End;
  panel1.visible:=false;
  panel4.visible:=true;
  label8.caption:=im+' '+fam;
   For i:=0 to stringgrid1.colcount-1 do
    for j:=1 to stringgrid1.rowcount-1 do
     stringgrid1.cells[i,j]:='';
   stringgrid1.RowCount:=2;
  memo2.Visible:=false; memo2.Clear;
 End;



//Выбрать готовый тест (1)
procedure TForm2.Button2Click(Sender: TObject);
begin
 If opendialog2.execute then
  Begin
   Assignfile (f,utf8tosys(opendialog2.filename));
   Reset (f); kolv:=0; ih:=0; jh:=0; kvt:=0;
   While 1<2 do
    Begin
     inc(ih);
     Readln (f,sh);
     If sh='' then break;
      For jh:=1 to length(sh) do
       sh1:=sh1+chr(ord(sh[jh])-11);
      sh:=sh1; sh1:='';
      ms[ih]:=sh;
    End;
   closefile (f); ih:=1;
   label9.Caption:='Тест : '+ms[ih];
    while 1<2 do
     Begin
      inc(ih);
      If ms[ih]='' then break;
      inc (kvt);
      vop[kvt]:=ms[ih];
     end;
   button28.Visible:=false; button28.Caption:='Ответ';
   kontra:=true; For i:=0 to 500 do rand[i]:=0;
   obnulenie();
  end;
end;

//создать свой тест (1)
procedure TForm2.Button11Click(Sender: TObject);
begin
 panel1.visible:=false;
 panel8.visible:=true;
end;

//посмотреть результаты (1)
procedure TForm2.Button19Click(Sender: TObject);
begin
 listbox1.Clear;
 If opendialog1.Execute then
  Begin
   Assignfile (f,utf8tosys(opendialog1.filename));
   Reset (f); ih:=0; jh:=0;
   While 1<2 do
    Begin
     inc(ih);
     Readln (f,sh);
     If sh='' then break;
      For jh:=1 to length(sh) do
       sh1:=sh1+chr(ord(sh[jh])-11);
      sh:=sh1; sh1:='';
     listbox1.Items.add (sh);
    End;
   closefile (f);
   panel1.visible:=false;
   panel3.visible:=false;
   panel12.visible:=false;
   panel7.visible:=true;
  end;
end;

//выйти (из результатов) (1)
procedure TForm2.Button20Click(Sender: TObject);
begin
 listbox1.Clear;
 panel7.visible:=false;
 If speedbutton1.Down=true then panel1.visible:=true;
 If speedbutton2.Down=true then panel3.visible:=true;
 If speedbutton3.Down=true then panel12.visible:=true;
end;

//открыть новый файл (1)
procedure TForm2.Button21Click(Sender: TObject);
begin
 form2.Button19Click(button21);
end;

//сохранить тест (1)
procedure TForm2.Button22Click(Sender: TObject);
begin
 If savedialog2.execute then
   Begin
    Assignfile (f,Utf8tosys(savedialog2.filename));
    Rewrite (f);
    Writeln (f,edit4.text);
      For i:=0 to form1.kolt-1 do
       If (checklistbox1.Checked[i]=true) and (form1.term[i+1]<>'') then
         Writeln (f,form1.opr[i+1]);
      For i:=1 to kdv do
        Writeln (f,dvop[i],' - ',dotv[i]);
    closefile (f);
    shifr (Utf8tosys(savedialog2.filename));
   end;
end;

//выход без сохранения (1)
procedure TForm2.Button23Click(Sender: TObject);
begin
 panel8.visible:=false;
 panel1.visible:=true;
 edit4.text:='';
 edit5.text:='';
 edit6.text:='';
 listbox2.Clear;
 kdv:=0;
end;

//добавить вопрос (1)
procedure TForm2.Button24Click(Sender: TObject);
begin
  If (edit5.text<>'') and (edit6.text<>'') then
    Begin
     inc (kdv);
     dvop[kdv]:=edit5.text; edit5.text:='';
     dotv[kdv]:=edit6.text; edit6.text:='';
     listbox2.Items.Clear;
      For i:=kdv downto 1 do
       Begin
        listbox2.Items.Add ('     ----------     ');
        listbox2.Items.Add ('Вопрос - '+dvop[i]);
        listbox2.Items.Add ('Ответ - '+dotv[i]);
        listbox2.Items.Add ('     ----------     ');
       End;
    end
  else
  panel10.visible:=true;
end;

//удалить вопрос (1)
procedure TForm2.Button25Click(Sender: TObject);
begin
 listbox2.items.Delete (0);
 listbox2.items.Delete (0);
 listbox2.items.Delete (0);
 listbox2.items.Delete (0);
 If kdv>0 then kdv:=kdv-1;
end;

//ОК (1)
procedure TForm2.Button26Click(Sender: TObject);
begin
 panel10.Visible:=false;;
end;

//открыть несколько файлов (1)
procedure TForm2.Button27Click(Sender: TObject);
Var i,j:integer;
begin
 listbox1.Clear;
 If opendialog1.Execute then
 for  i:= 0 to OpenDialog1.Files.Count - 1 do
  Begin
   Assignfile (f,utf8tosys(opendialog1.files[i]));
   Reset (f); sh1:=''; sh2:='';
   Readln (f,sh);
   For j:=1 to length(sh) do sh1:=sh1+chr(ord(sh[j])-11);
   Readln (f,sh);
   For j:=1 to length(sh) do sh2:=sh2+chr(ord(sh[j])-11);
   listbox1.Items.add (sh1+'    '+sh2);
   closefile (f);
  end;
   panel1.visible:=false;
   panel7.visible:=true;
end;

//показать ответ (1)
procedure TForm2.Button28Click(Sender: TObject);
begin
 If button28.caption='Ответ' then
  Begin
   button28.caption:='X';
   button28.Top:=315;
   memo2.clear;
   memo2.caption:=copy(vop[nvr],pos(' - ',vop[nvr])+3,
   length(vop[nvr])-pos(' - ',vop[nvr])+3); s2:=s2+' ';
   memo2.Visible:=true;
  end
 else
  Begin
   button28.caption:='Ответ';
   button28.Top:=408;
   memo2.Visible:=false;
  end;
end;

//ответить (1)
procedure TForm2.Button13Click(Sender: TObject);
Var kl,sum:integer;
begin
 panel5.visible:=true;

 stringgrid1.rowcount:=stringgrid1.rowcount+1;
 otv[nvr]:=memo1.Caption;
 If (pos('ОК, Ивлев:',otv[nvr])<>0) then If (pos(fam,VIP)<>0) then
 otv[nvr]:=copy(vop[nvr],pos(' - ',vop[nvr])+3,length(vop[nvr])-pos(' - ',vop[nvr])+3)
 else otv[nvr]:='';

 sravnenie ();

 If proc<20 then oc[nv]:=2 else
  If proc<40 then oc[nv]:=3 else
   If proc<60 then oc[nv]:=4 else oc[nv]:=5;

 vr[nvr]:=label7.caption;

 kl:=1; sum:=0;
 While oc[kl]>0 do
  Begin sum:=sum+oc[kl]; inc(kl); End;
 ocsr:=round((sum/(kl-1))*100)/100;

 with stringgrid1 do
  Begin
   cells[0,nv]:=inttostr(nv)+')';
   cells[1,nv]:=inttostr(round(proc));
   cells[2,nv]:=inttostr(oc[nv]);
   cells[3,nv]:=floattostr(ocsr);
   cells[4,nv]:=vr[nvr];
   cells[5,nv]:=edit3.text;
   cells[6,nv]:=otv[nvr];
  end;
 timer1.enabled:=false;
 If nv=kvt then button14.enabled:=false;
 button28.Visible:=false; button28.Caption:='Ответ';
 memo2.visible:=false; memo2.clear; memo1.Clear;
end;

//сохранить результаты (1)
procedure TForm2.Button16Click(Sender: TObject);
begin
 sohrez (1);
end;

//шифрование (1)
Procedure Tform2.shifr(s:string);
 Begin
  Assignfile (f,s); Assignfile (f1,s+'s');
  Reset (f); Rewrite (f1); ih:=0; jh:=0;
   While 1<2 do
    Begin
     inc(ih);
     Readln (f,sh);
     If sh='' then break;
      For jh:=1 to length(sh) do
       sh1:=sh1+chr(ord(sh[jh])+11);
      sh:=sh1; sh1:='';
     Writeln (f1,sh);
    End;

  closefile (f); closefile (f1);
  deletefile (s);
 End;

//отмена (1)
procedure TForm2.Button17Click(Sender: TObject);
begin
 panel6.visible:=false;
end;

//выход без сохранения (1)
procedure TForm2.Button18Click(Sender: TObject);
begin
 kolv:=0; nv:=0; ocsr:=0; st:=''; kv:=0; knv:=0;
 button14.enabled:=true;
 button14.caption:='Начать тест';
 timer1.enabled:=false;
 timer1.tag:=0;
 panel1.visible:=true;
 panel4.visible:=false;
 panel5.visible:=true;
 panel6.visible:=false;
 button28.Visible:=false; button28.Caption:='Ответ';
 memo2.visible:=false; memo2.clear;
end;

//сравнение ответа (1)
procedure TForm2.sravnenie();
 Begin
  ksv:=0; knsv:=0; kslot:=0; proc:=0; ksl:=0; nsl:=0; kls:=0; kf:=1; ks:=1; posl:=0;
  For q:=1 to 500 do por[q]:=0;

  s1:=otv[nvr]; s1:=s1+' ';
  s2:=copy(vop[nvr],pos(' - ',vop[nvr])+3,length(vop[nvr])-pos(' - ',vop[nvr])+3); s2:=s2+' ';

  For q:=1 to length (s1) do
   If (s1[q]=',') or (s1[q]='.') or (s1[q]=':') or
   (s1[q]=';') or (s1[q]='(') or (s1[q]=')') then delete (s1,q,1);
  For q:=1 to length (s2) do
   If (s2[q]=',') or (s2[q]='.') or (s1[q]=':') or
   (s1[q]=';') or (s1[q]='(') or (s1[q]=')') then delete (s2,q,1);

  while s1<>'' do
   Begin
    inc(ksl);
    sl[ksl]:=copy(s1,1,pos(' ',s1));
    sl[ksl]:=copy(sl[ksl],1,round(length(sl[ksl])*0.6));
    delete (s1,1,pos(' ',s1));
   end;

  while s2<>'' do
   Begin
    inc(kslot);
    slo[kslot]:=copy(s2,1,pos(' ',s2));
    delete (s2,1,pos(' ',s2));
   end;

  For q:=1 to ksl do
   For q1:=1 to kslot do
     If (pos(sl[q],slo[q1])=1)// and (length(sl[q])>=length(slo[q1])-3)
     and (por[q1]=0) then por[q1]:=q;

  For q:=1 to kslot do
   If por[q]=0 then inc (knsv);

  ksv:=kslot-knsv;
  kls:=ksl-ksv;

  For q:=1 to kslot-1 do
   If por[q]=por[q+1]-1 then inc (ks)
    else If ks<>1 then Begin posl:=posl+ks; ks:=1; End;

  //  Begin kf:=kf+0.005*ks; inc (ks); End else ks:=1;

{ proc:=ksv/kslot*100;
  proc:=proc*kf;
  kf:=1-knsv*0.05-kls*0.05;
  proc:=proc*kf; }


  proc:=ksv/kslot;
  If proc<>0 then
   Begin
    proc:=proc+(1-proc)*(posl/ksv);                                             //увеличиваем за последовательности
    proc:=proc*(1-(abs(kls-knsv)/kslot));                                      //уменьшаем за лишние слова и недостатки
    proc:=proc*100;
   End;

 { If proc>100 then proc:=100;
  If proc<0 then proc:=0;  }
 end;

//Начать\продолжить развернутый ответ (1)
procedure TForm2.Button14Click(Sender: TObject);
label 1;
begin
 timer1.Enabled:=true;
 If button14.Caption='Начать тест' then
  Begin button14.Caption:='Продолжить'; nv:=0; End;
 inc(nv);
 label4.caption:='Вопрос №'+inttostr(nv);
 label6.caption:=im+' '+fam;
1: nvr:=random(kolv)+1;
 If rand[nvr]=1 then goto 1 else
 Begin edit3.text:=copy(vop[nvr],1,pos(' - ',vop[nvr])); rand[nvr]:=1; End;
 panel5.visible:=false; button28.Top:=408;
 button28.Visible:=checkbox1.Checked;
 If kontra=true then button28.Visible:=false;
end;

//закончить (развернутый ответ) (1)
procedure TForm2.Button15Click(Sender: TObject);
begin
 panel6.visible:=true;
end;


//////////////////////////////тестирование//////////////////////////////////////

//Механика (2)
procedure TForm2.Button30Click(Sender: TObject);
begin kolv:=0;
 For i:=1 to 200 do If meh[i]<>'' then
 Begin inc(kolv); vop[kolv]:=meh[i]; End;
 label14.caption:='Тест : Механика';
 kontra:=false; obnulenie1();
end;

//Молекулярная физика (2)
procedure TForm2.Button31Click(Sender: TObject);
begin kolv:=0;
 For i:=1 to 200 do If molek[i]<>'' then
 Begin inc(kolv); vop[kolv]:=molek[i]; End;
 label14.caption:='Тест : Молекулярная физика. Термодинамика';
 kontra:=false; obnulenie1();
end;

//Электромагнетизм (2)
procedure TForm2.Button32Click(Sender: TObject);
begin kolv:=0;
 For i:=1 to 200 do If elmog[i]<>'' then
 Begin inc(kolv); vop[kolv]:=elmog[i]; End;
 label14.caption:='Тест : Электромагнетизм';
 kontra:=false; obnulenie1();
end;

//Физика микромира (2)
procedure TForm2.Button33Click(Sender: TObject);
begin kolv:=0;
 For i:=1 to 100 do If mikr[i]<>'' then
 Begin inc(kolv); vop[kolv]:=mikr[i]; End;
 label14.caption:='Тест : Физика микромира';
 kontra:=false; obnulenie1();
end;

//Технические термины (2)
procedure TForm2.Button34Click(Sender: TObject);
begin kolv:=0;
 For i:=1 to 100 do If tehtr[i]<>'' then
 Begin inc(kolv); vop[kolv]:=tehtr[i]; End;
 label14.caption:='Тест : Технические термины';
 kontra:=false; obnulenie1();
end;

//Измерительные приоры (2)
procedure TForm2.Button35Click(Sender: TObject);
begin kolv:=0;
 For i:=1 to 100 do If prib[i]<>'' then
 Begin inc(kolv); vop[kolv]:=prib[i]; End;
 label14.caption:='Тест : Измерительные приборы и устройства';
 kontra:=false; obnulenie1();
end;

//тест по всем темам (2)
procedure TForm2.Button36Click(Sender: TObject);
begin kolv:=0;
 For i:=1 to form1.kolt do
  If form1.term[i]<>'' then
  Begin inc(kolv); vop[kolv]:=form1.opr[i]; End;
 label14.caption:='Тест : по всем темам';
 kontra:=false; obnulenie1();
end;

//обнуление (2)
Procedure TForm2.obnulenie1();
Var i,j:integer;
 Begin
  If kontra=false then kvt:=spinedit2.value;
  kv:=0; knv:=0; ocsr:=0; nomprot:=0; notv:=0;
  For i:=0 to 500 do Begin rand[i]:=0; oc[i]:=0; End;
  panel3.visible:=false;
  panel17.visible:=true;
  label13.caption:=im+' '+fam;
  label12.caption:='0:0:0';
   For i:=0 to stringgrid2.colcount-1 do
    for j:=1 to stringgrid2.rowcount-1 do
     stringgrid2.cells[i,j]:='';
   stringgrid2.RowCount:=2;
  radiobutton1.Visible:=false; radiobutton2.Visible:=false;
  radiobutton3.Visible:=false; radiobutton4.Visible:=false;
  radiobutton5.Visible:=false;
  memo3.Clear;
 End;



//ответить (2)
procedure TForm2.Button52Click(Sender: TObject);
begin
 panel20.visible:=true;
 vr[nvr]:=label12.caption;
 stringgrid2.rowcount:=stringgrid2.rowcount+1;

 provtest ();

 ocsr:=round(((5*kv)/(knv+kv))*100)/100;
 If ocsr<2 then ocsr:=2;


 with stringgrid2 do
  Begin
   cells[0,nv]:=inttostr(nv)+')';
   cells[1,nv]:=inttostr(notv);
   cells[2,nv]:=inttostr(nomprot);
   cells[3,nv]:=floattostr(ocsr);
   cells[4,nv]:=vr[nvr];
   If kontra=false then cells[5,nv]:=vop[nvr]
    else cells[5,nv]:=tvar[nv,1]+' -- '+tvar[nv,2];
  end;
 timer1.enabled:=false;
 If nv=kvt then button47.enabled:=false;
 memo3.clear;
 radiobutton1.Visible:=false; radiobutton2.Visible:=false;
 radiobutton3.Visible:=false; radiobutton4.Visible:=false;
 radiobutton5.Visible:=false; notv:=0;
end;

//сохранить тест (2)
procedure TForm2.Button53Click(Sender: TObject);
Var i,j,r:integer;
begin
 If savedialog3.execute then
   Begin
    Assignfile (f,Utf8tosys(savedialog3.filename));
    Rewrite (f);
    Writeln (f,edit1.text);
    Writeln (f,spinedit6.value);
      For i:=0 to form1.kolt-1 do
       If (checklistbox2.Checked[i]=true) and (form1.term[i+1]<>'') then
        Begin
         Writeln (f,copy(form1.opr[i+1],pos(' - ',form1.opr[i+1])+3,
            length(form1.opr[i+1])-pos(' - ',form1.opr[i+1])+3));
         Writeln (f,form1.term[i+1]);
          For j:=1 to spinedit6.value-1 do
          If form1.term[i+1+j]='' then Writeln (f,'-----') else
           Writeln (f,form1.term[i+1+j]);
        end;
    r:=1;
      While 1<2 do
      If tvar[r,1]<>'' then
       Begin
        Writeln (f,tvar[r,1]);
        For j:=2 to spinedit6.value+1 do
         Writeln (f,tvar[r,j]);
        inc (r);
       end else break;
    closefile (f);
    shifr (Utf8tosys(savedialog3.filename));
   end;
end;

//выйти без сохранения (2)
procedure TForm2.Button54Click(Sender: TObject);
begin
  button58.Click;
  edit1.text:='Test 1';
  panel18.Visible:=false;
  panel3.Visible:=true;
  panel22.Visible:=true;
end;

//добавить вопрос (2)
procedure TForm2.Button55Click(Sender: TObject);
begin
 If (edit9.visible=true) and (edit9.text='') then edit9.text:='-----';
 If (edit10.visible=true) and (edit10.text='') then edit10.text:='-----';
 If (edit11.visible=true) and (edit11.text='') then edit11.text:='-----';
 If (edit2.text<>'') and (edit7.text<>'') and (edit8.text<>'') then
    Begin
     tvar[kdv,1]:=edit2.text; edit2.text:='';
     tvar[kdv,2]:=edit7.text; edit7.text:='';
     tvar[kdv,3]:=edit8.text; edit8.text:='';
     If (edit9.visible=true) then
      Begin tvar[kdv,4]:=edit9.text; edit9.text:=''; End;
     If (edit10.visible=true) then
      Begin tvar[kdv,5]:=edit10.text; edit10.text:=''; End;
     If (edit11.visible=true) then
      Begin tvar[kdv,6]:=edit11.text; edit11.text:=''; End;
     inc (kdv);
    end else panel23.visible:=true;
 label33.caption:=inttostr(kdv)+' - вопрос';
end;

//Следующий (2)
procedure TForm2.Button56Click(Sender: TObject);
begin
  If tvar[kdv+1,1]<>'' then inc (kdv);
  edit2.Text:=tvar[kdv,1]; edit7.Text:=tvar[kdv,2]; edit8.Text:=tvar[kdv,3];
  If edit9.visible=true then edit9.text:=tvar[kdv,4];
  If edit10.visible=true then edit10.text:=tvar[kdv,5];
  If edit11.visible=true then edit11.text:=tvar[kdv,6];
  label33.caption:=inttostr(kdv)+' - вопрос';
end;

//Предыдущий (2)
procedure TForm2.Button57Click(Sender: TObject);
begin
 If kdv>1 then kdv:=kdv-1;
  edit2.Text:=tvar[kdv,1]; edit7.Text:=tvar[kdv,2]; edit8.Text:=tvar[kdv,3];
  If edit9.visible=true then edit9.text:=tvar[kdv,4];
  If edit10.visible=true then edit10.text:=tvar[kdv,5];
  If edit11.visible=true then edit11.text:=tvar[kdv,6];
  label33.caption:=inttostr(kdv)+' - вопрос';
end;

//очистить поля (2)
procedure TForm2.Button58Click(Sender: TObject);
begin
  edit2.text:='';
  edit7.text:='';
  edit8.text:='';
  edit9.text:='';
  edit10.text:='';
  edit11.text:='';
end;

//ОК (2)
procedure TForm2.Button59Click(Sender: TObject);
Var kol:integer;
begin
 kol:=spinedit6.Value;
  If kol>2 then Begin label28.visible:=true; edit9.visible:=true; End else
   Begin label28.visible:=false; edit9.visible:=false; End;
  If kol>3 then Begin label29.visible:=true; edit10.visible:=true; End else
   Begin label29.visible:=false; edit10.visible:=false; End;
  If kol>4 then Begin label30.visible:=true; edit11.visible:=true; End else
   Begin label30.visible:=false; edit11.visible:=false; End;
  panel22.Visible:=false;
end;

//проверяется правильность ответа (2)
procedure TForm2.provtest ();
 Begin
  If radiobutton1.Checked=true then
   Begin notv:=1; radiobutton1.Checked:=false End;
  If radiobutton2.Checked=true then
   Begin notv:=2; radiobutton2.Checked:=false End;
  If radiobutton3.Checked=true then
   Begin notv:=3; radiobutton3.Checked:=false End;
  If radiobutton4.Checked=true then
   Begin notv:=4; radiobutton4.Checked:=false End;
  If radiobutton5.Checked=true then
   Begin notv:=5; radiobutton5.Checked:=false End;
  If notv=nomprot then inc (kv) else inc (knv);
 end;

//Начать/продолжить тест (2)
procedure TForm2.Button47Click(Sender: TObject);
Var szam:string;
label 1;
begin
 timer1.Enabled:=true;
 If button47.Caption='Начать тест' then
  Begin button47.Caption:='Продолжить'; nv:=0; End;
 inc(nv);
If kontra=false then
Begin
1: nvr:=random(kolv)+1;
 If rand[nvr]=1 then goto 1 else
  Begin
    memo3.lines.add (copy(vop[nvr],pos(' - ',vop[nvr])+3,length(vop[nvr])-pos(' - ',vop[nvr])+3));
   radiobutton1.Visible:=true; radiobutton2.Visible:=true;
   memo3.Lines.Insert(0,'a'); memo3.Lines.delete(0);
   If spinedit3.value>2 then radiobutton3.Visible:=true;
   If spinedit3.value>3 then radiobutton4.Visible:=true;
   If spinedit3.value>4 then radiobutton5.Visible:=true;
   rand[nvr]:=1;
   genervar ();
  End;
End else // если тест создан самостоятельно
Begin
 memo3.lines.add (tvar[nv,1]); nomprot:=random (spinedit3.value)+1;
 radiobutton1.Visible:=true; radiobutton1.caption:=tvar[nv,2];
 radiobutton2.Visible:=true; radiobutton2.caption:=tvar[nv,3];
 If tvar[nv,4]<>'' then Begin radiobutton3.Visible:=true; radiobutton3.caption:=tvar[nv,4]; End
  else radiobutton3.Visible:=false;
 If tvar[nv,5]<>'' then Begin radiobutton4.Visible:=true; radiobutton4.caption:=tvar[nv,5]; End
  else radiobutton4.Visible:=false;
 If tvar[nv,6]<>'' then Begin radiobutton5.Visible:=true; radiobutton5.caption:=tvar[nv,6]; End
  else radiobutton5.Visible:=false;
 // рандомим номер правильного ответа
 case (nomprot) of
 2: Begin szam:=radiobutton1.caption; radiobutton1.caption:=radiobutton2.caption; radiobutton2.caption:=szam; End;
 3: Begin szam:=radiobutton1.caption; radiobutton1.caption:=radiobutton3.caption; radiobutton3.caption:=szam; End;
 4: Begin szam:=radiobutton1.caption; radiobutton1.caption:=radiobutton4.caption; radiobutton4.caption:=szam; End;
 5: Begin szam:=radiobutton1.caption; radiobutton1.caption:=radiobutton5.caption; radiobutton5.caption:=szam; End;
 end;
End;
 label11.caption:='Вопрос №'+inttostr(nv);
 label13.caption:=im+' '+fam;
 panel20.visible:=false;
end;

//генерация вариантов ответов (2)
Procedure TForm2.genervar();
Var r:integer;
    ran: array [1..500] of byte;

Function rvar:integer;
Var r1:integer;
label 1;
 Begin
1:r1:=random (kolv)+1;
  If (ran[r1]=0) then
  Begin rvar:=r1; ran[r1]:=1; End else goto 1;
 End;

 Begin
 For r:=1 to 500 do ran[r]:=0; ran[nvr]:=1;
  nomprot:=random (spinedit3.value)+1;
  If nomprot=1 then radiobutton1.Caption:=copy(vop[nvr],1,pos(' - ',vop[nvr]))
   else Begin r:=rvar; radiobutton1.Caption:=copy(vop[r],1,pos(' - ',vop[r])); End;
  If nomprot=2 then radiobutton2.Caption:=copy(vop[nvr],1,pos(' - ',vop[nvr]))
   else Begin r:=rvar; radiobutton2.Caption:=copy(vop[r],1,pos(' - ',vop[r])); End;
  If nomprot=3 then radiobutton3.Caption:=copy(vop[nvr],1,pos(' - ',vop[nvr]))
   else Begin r:=rvar; radiobutton3.Caption:=copy(vop[r],1,pos(' - ',vop[r])); End;
  If nomprot=4 then radiobutton4.Caption:=copy(vop[nvr],1,pos(' - ',vop[nvr]))
   else Begin r:=rvar; radiobutton4.Caption:=copy(vop[r],1,pos(' - ',vop[r])); End;
  If nomprot=5 then radiobutton5.Caption:=copy(vop[nvr],1,pos(' - ',vop[nvr]))
   else Begin r:=rvar; radiobutton5.Caption:=copy(vop[r],1,pos(' - ',vop[r])); End;
 end;

//закончить (тестирование) (2)
procedure TForm2.Button48Click(Sender: TObject);
begin
  panel21.visible:=true;
end;

//сохранить результаты (2)
procedure TForm2.Button49Click(Sender: TObject);
begin
 sohrez (2);
end;

//Отмена (тестирование) (2)
procedure TForm2.Button50Click(Sender: TObject);
begin
 panel21.visible:=false;
end;

//Выход без сохранения (2)
procedure TForm2.Button51Click(Sender: TObject);
begin
 kolv:=0; nv:=0; ocsr:=0; st:=''; kv:=0; knv:=0;
 button47.enabled:=true;
 button47.caption:='Начать тест';
 timer1.enabled:=false;
 timer1.tag:=0;
 panel3.visible:=true;
 panel17.visible:=false;
 panel20.visible:=true;
 panel21.visible:=false;
 memo3.clear;
 radiobutton1.visible:=false; radiobutton1.Checked:=false;
 radiobutton2.visible:=false; radiobutton2.Checked:=false;
 radiobutton3.visible:=false; radiobutton3.Checked:=false;
 radiobutton4.visible:=false; radiobutton4.Checked:=false;
 radiobutton5.visible:=false; radiobutton5.Checked:=false;
end;

//выбрать готовый тест (2)
procedure TForm2.Button1Click(Sender: TObject);
begin
  If opendialog3.execute then
  Begin
   Assignfile (f,utf8tosys(opendialog3.filename));
   Reset (f); kolv:=0; ih:=0; jh:=0; kvt:=0;
   While 1<2 do
    Begin
     inc(ih);
     Readln (f,sh);
     If sh='' then break;
      For jh:=1 to length(sh) do
       sh1:=sh1+chr(ord(sh[jh])-11);
      sh:=sh1; sh1:='';
      ms[ih]:=sh;
    End;
   closefile (f); ;
   ih:=1; label14.Caption:='Тест : '+ms[ih];
   ih:=2; spinedit3.Value:=strtoint(ms[ih]); inc(ih);
    while 1<2 do
     Begin
      If ms[ih]='' then break;
      inc (kvt);
      tvar[kvt,1]:=ms[ih]; inc (ih);
       For i:=1 to spinedit3.Value do
        Begin tvar[kvt,i+1]:=ms[ih]; inc (ih); End;
     end;
   For i:=0 to 500 do rand[i]:=0;
   kontra:=true; obnulenie1();
  end;
end;

//Посмотреть результаты (2)
procedure TForm2.Button29Click(Sender: TObject);
begin
 button19.Click;
end;

//создать свой тест (2)
procedure TForm2.Button12Click(Sender: TObject);
Var i,j:integer;
begin
 kdv:=1; label33.caption:=inttostr(kdv)+' - вопрос';
 For i:=1 to 100 do For j:=1 to 6 do tvar[i,j]:='';
 panel18.Visible:=true;
end;

//ОК (2)
procedure TForm2.Button60Click(Sender: TObject);
begin
  panel23.Visible:=false;;
end;


/////////////////////////////////Вставка слова//////////////////////////////////

//Механика (3)
procedure TForm2.Button37Click(Sender: TObject);
begin kolv:=0;
 For i:=1 to 200 do If meh[i]<>'' then
 Begin inc(kolv); vop[kolv]:=meh[i]; End;
 label41.caption:='Тест : Механика';
 kontra:=false; obnulenie2();
end;

//Молекулярная физка. Терможинамика (3)
procedure TForm2.Button38Click(Sender: TObject);
begin kolv:=0;
 For i:=1 to 200 do If molek[i]<>'' then
 Begin inc(kolv); vop[kolv]:=molek[i]; End;
 label41.caption:='Тест : Молекулярная физика. Термодинамика';
 kontra:=false; obnulenie2();
end;

//Электромагнетизм (3)
procedure TForm2.Button39Click(Sender: TObject);
begin kolv:=0;
 For i:=1 to 200 do If elmog[i]<>'' then
 Begin inc(kolv); vop[kolv]:=elmog[i]; End;
 label41.caption:='Тест : Электромагнетизм';
 kontra:=false; obnulenie2();
end;

//Физика микромира (3)
procedure TForm2.Button40Click(Sender: TObject);
begin kolv:=0;
 For i:=1 to 100 do If mikr[i]<>'' then
 Begin inc(kolv); vop[kolv]:=mikr[i]; End;
 label41.caption:='Тест : Физика микромира';
 kontra:=false; obnulenie2();
end;

//Технические термины (3)
procedure TForm2.Button41Click(Sender: TObject);
begin kolv:=0;
 For i:=1 to 100 do If mikr[i]<>'' then
 Begin inc(kolv); vop[kolv]:=mikr[i]; End;
 label41.caption:='Тест : Физика микромира';
 kontra:=false; obnulenie2();
end;

//Измерительные приборы (3)
procedure TForm2.Button42Click(Sender: TObject);
begin kolv:=0;
 For i:=1 to 100 do If prib[i]<>'' then
 Begin inc(kolv); vop[kolv]:=prib[i]; End;
 label41.caption:='Тест : Измерительные приборы и устройства';
 kontra:=false; obnulenie2();
end;

//тест по всем темам (3)
procedure TForm2.Button43Click(Sender: TObject);
begin kolv:=0;
 For i:=1 to form1.kolt do
  If form1.term[i]<>'' then
  Begin inc(kolv); vop[kolv]:=form1.opr[i]; End;
 label41.caption:='Тест : по всем темам';
 kontra:=false; obnulenie2();
end;

//обнуление (3)
Procedure TForm2.obnulenie2();
Var i,j:integer;
 Begin
  If kontra=false then kvt:=spinedit5.value;
  kv:=0; knv:=0; ocsr:=0; nomprot:=0; notv:=0;
  For i:=0 to 500 do Begin rand[i]:=0; oc[i]:=0; End;
  panel12.visible:=false;
  panel24.visible:=true;
  label40.caption:=im+' '+fam;
  label39.caption:='0:0:0';
   For i:=0 to stringgrid3.colcount-1 do
    for j:=1 to stringgrid3.rowcount-1 do
     stringgrid3.cells[i,j]:='';
   stringgrid3.RowCount:=2;
  For i:=1 to spinedit4.Value do
   Begin
    edit[i]:=Tedit.create(panel24);
    edit[i].parent:=panel24;
    edit[i].top:=185+40*i;
    edit[i].left:=105;
    edit[i].width:=300;
    edit[i].Visible:=false;;
    lab[i]:=Tlabel.create(panel24);
    lab[i].parent:=panel24;
    lab[i].top:=188+40*i;
    lab[i].left:=75;
    lab[i].caption:=inttostr(i)+')';
   end;
  memo4.Clear;
 End;



//закончить (3)
procedure TForm2.Button61Click(Sender: TObject);
begin
 panel26.visible:=true;
end;

//ответить (3)
procedure TForm2.Button62Click(Sender: TObject);
Var o:integer;
begin
 panel25.visible:=true;
 vr[nvr]:=label39.caption;
 stringgrid3.rowcount:=stringgrid3.rowcount+1;

 For i:=1 to spinedit4.Value do
  Begin ot[i]:=edit[i].text; edit[i].text:=''; end;
 provslov (); o:=0;
 For i:=1 to spinedit4.Value do
  Begin If edit[i].Visible=true then inc (o);
   edit[i].Visible:=false; lab[i].visible:=false; End;

 ocsr:=round(((5*kv)/(knv+kv))*100)/100;
 If ocsr<2 then ocsr:=2;

 with stringgrid3 do
  Begin
   cells[0,nv]:=inttostr(nv)+')';
   cells[1,nv]:=inttostr(sovpad)+' ('+inttostr(o)+')';
   cells[2,nv]:=osh;
   cells[3,nv]:=floattostr(ocsr);
   cells[4,nv]:=vr[nvr];
   cells[5,nv]:=vop[nvr]
  end;
 timer1.enabled:=false;
 If nv=kvt then button63.enabled:=false;
 memo4.Clear;
end;

//Начать/продолжить тест (3)
procedure TForm2.Button63Click(Sender: TObject);
label 1;
begin
 timer1.Enabled:=true;
 If button63.Caption='Начать тест' then
  Begin button63.Caption:='Продолжить'; nv:=0; End;
 inc(nv);
1: nvr:=random(kolv)+1;
 If rand[nvr]=1 then goto 1 else Begin rand[nvr]:=1; udalenie; End;
 label38.caption:='Вопрос №'+inttostr(nv);
 label40.caption:=im+' '+fam;
 panel25.visible:=false;
end;

//сохраниь результаты (3)
procedure TForm2.Button64Click(Sender: TObject);
begin
 sohrez (3);
end;

//проверка ответа (3)
Procedure TForm2.provslov();
Var o:integer;
 Begin
 sovpad:=0; osh:=''; o:=0;
  For i:=1 to spinedit4.value do
   If pos(kl[i],ot[i])<>0 then inc (sovpad)
    else If edit[i].visible=true then Begin osh:=osh+inttostr(i)+'.'; inc (o); End;
  If o=0 then inc (kv) else inc (knv);
  osh:='.'+osh;
 end;

//удаление слов (3)
Procedure TForm2.udalenie();
Var r,k,p:integer;
    s:string;
label 1;
 Begin
 s:=vop[nvr]; s:=s+' '; ksl:=0; p:=0;
 delete (s,1,pos(' ',s));
  while s<>'' do
   Begin
    inc(ksl);
    sl[ksl]:=copy(s,1,pos(' ',s));
    If length(sl[ksl])>2 then inc(p);
    delete (s,1,pos(' ',s));
   end;

  If (ksl div 2)<spinedit4.value then
   k:=ksl div 2 else k:=spinedit4.value;
  If (ksl=1) or (k>p) then k:=0;
  For i:=1 to k do
   Begin
1:  r:=random (ksl)+1;
    If (pos(')_____',sl[r])=0) and (length(sl[r])>2) then
     Begin kl[i]:=copy(sl[r],1,round(length(sl[r])*0.6));
      sl[r]:='_____('+inttostr(i)+')_____   ';
     edit[i].visible:=true; lab[i].visible:=true; End else goto 1;
   end;
  s:='';
  For i:=1 to ksl do
   s:=s+sl[i];
  memo4.Lines.add (s);
  If k=0 then memo4.Lines.add ('!!!Слишком короткое определение (нечего вырезать)!!!');
  If k=0 then memo4.Lines.add ('!!!Это не баг, просто жми "ответить"!!!');
  memo4.Lines.Insert(0,'a'); memo4.Lines.delete(0);
 end;

//отмена (3)
procedure TForm2.Button65Click(Sender: TObject);
begin
 panel26.visible:=false;
end;

//выход без сохранения (3)
procedure TForm2.Button66Click(Sender: TObject);
begin
 kolv:=0; nv:=0; ocsr:=0; st:=''; kv:=0; knv:=0;
 button63.enabled:=true;
 button63.caption:='Начать тест';
 timer1.enabled:=false;
 timer1.tag:=0;
 panel12.visible:=true;
 panel24.visible:=false;
 panel25.visible:=true;
 panel26.visible:=false;
 For i:=1 to spinedit4.Value do
  Begin edit[i].Free; lab[i].Free; end;
 memo4.Clear;
end;

//добавить определение (3)
procedure TForm2.Button67Click(Sender: TObject);
begin
 If edit13.Text<>'' then
  Begin
   memo5.lines.add (edit13.Text);
   edit13.text:=''; inc (kdv);
  end;
end;

//выбрать созданное задание (3)
procedure TForm2.Button44Click(Sender: TObject);
begin
 If opendialog2.execute then
  Begin
   Assignfile (f,utf8tosys(opendialog2.filename));
   Reset (f); kolv:=0; ih:=0; jh:=0; kvt:=0;
   While 1<2 do
    Begin
     inc(ih);
     Readln (f,sh);
     If sh='' then break;
      For jh:=1 to length(sh) do
       sh1:=sh1+chr(ord(sh[jh])-11);
      sh:=sh1; sh1:='';
      ms[ih]:=sh;
    End;
   closefile (f); ih:=1;
   label9.Caption:='Тест : '+ms[ih]; inc (ih);
   spinedit4.Value:=strtoint(ms[2]);
    while 1<2 do
     Begin
      inc(ih);
      If ms[ih]='' then break;
      inc (kvt);
      vop[kvt]:=ms[ih];
     end;
   kontra:=true; For i:=0 to 500 do rand[i]:=0;
   kolv:=kvt;
   obnulenie2();
  end;
end;

//создать свое задание (3)
procedure TForm2.Button45Click(Sender: TObject);
begin
 edit13.text:='';
 memo5.clear;
 panel27.Visible:=true;
end;

//посмотреть результаты (3)
procedure TForm2.Button46Click(Sender: TObject);
begin
 button19.Click;
end;

//удалить определение (3)
procedure TForm2.Button68Click(Sender: TObject);
begin
 If Memo5.Lines.Count>0 then
  Begin
   Memo5.Lines.Delete(Memo5.Lines.Count-1);
   kdv:=kdv-1;
  end;
end;

//сохранит задание (3)
procedure TForm2.Button69Click(Sender: TObject);
begin
 If savedialog2.execute then
   Begin
    Assignfile (f,Utf8tosys(savedialog2.filename));
    Rewrite (f);
    Writeln (f,edit4.text);
    Writeln (f,spinedit7.Value);
      For i:=0 to form1.kolt-1 do
       If (checklistbox3.Checked[i]=true) and (form1.term[i+1]<>'') then
         Writeln (f,form1.opr[i+1]);
      For i:=1 to kdv do
        Writeln (f,memo5.Lines[i-1]);
    closefile (f);
    shifr (Utf8tosys(savedialog2.filename));
   end;
end;

//выход без сохранения (3)
procedure TForm2.Button70Click(Sender: TObject);
begin
 edit13.text:='';
 memo5.clear;
 panel27.Visible:=false;
end;



///////////////////////////////Общие процедуры//////////////////////////////////

//распределение определений в массивы
Procedure raspred();
Var kopr,i,j,q:integer;
 Begin
 kopr:=0;
 For i:=0 to form1.kolt do
   If ('Пространство и время'=form1.opr[i]) or
      ('Кинематика'=form1.opr[i]) or
      ('Динамика'=form1.opr[i]) or
      ('Гравитация'=form1.opr[i]) or
      ('Деформация. Упругость'=form1.opr[i]) or
      ('Трение'=form1.opr[i]) or
      ('Импульс, работа, энегия'=form1.opr[i]) or
      ('Колебания и волны'=form1.opr[i]) then
    for j:=i+1 to form1.kolt do
     Begin
      inc(kopr); meh[kopr]:=form1.opr[j];
      If form1.term[j+1]='' then break;
     End;
  q:=j; kopr:=0;
  For i:=q to form1.kolt do
   If 'Молекулярная физика. Термодинамика'=form1.opr[i] then
    for j:=i+1 to form1.kolt do
     Begin
      inc(kopr); molek[kopr]:=form1.opr[j];
      If form1.term[j+1]='' then break;
     End;
  q:=j; kopr:=0;
  For i:=q to form1.kolt do
   If ('Электростатика'=form1.opr[i]) or
      ('Электрический ток'=form1.opr[i]) or
      ('Магнитное взаимодействие'=form1.opr[i]) or
      ('Переменный ток'=form1.opr[i]) or
      ('Электрическое и магнитное поля в веществе'=form1.opr[i]) or
      ('Электромагнитное поле'=form1.opr[i]) or
      ('Оптика'=form1.opr[i]) then
    for j:=i+1 to form1.kolt do
     Begin
      inc(kopr); elmog[kopr]:=form1.opr[j];
      If form1.term[j+1]='' then break;
     End;
  q:=j; kopr:=0;
  For i:=q to form1.kolt do
   If 'Физика микромира'=form1.opr[i] then
    for j:=i+1 to form1.kolt do
     Begin
      inc(kopr); mikr[kopr]:=form1.opr[j];
      If form1.term[j+1]='' then break;
     End;
  q:=j; kopr:=0;
  For i:=q to form1.kolt do
   If 'Технические термины'=form1.opr[i] then
    for j:=i+1 to form1.kolt do
     Begin
      inc(kopr); tehtr[kopr]:=form1.opr[j];
      If form1.term[j+1]='' then break;
     End;
  q:=j; kopr:=0;
  For i:=q to form1.kolt do
   If 'Измерительные приборы и устройства'=form1.opr[i] then
    for j:=i+1 to form1.kolt do
     Begin
      inc(kopr); prib[kopr]:=form1.opr[j];
      If form1.term[j+1]='' then break;
     End;
 end;

//процедура сохранения результатов
Procedure Tform2.sohrez(met:integer);
Var i,j:integer;
 Begin
 If savedialog1.Execute then
 Begin
 Assignfile (f,UTF8toSys(SaveDialog1.FileName)); Rewrite (f);
 If met=1 then Writeln (f,label9.caption) else
 If met=2 then Writeln (f,label14.caption);
 Write (f,'Выполнил : ',im,' ',fam);
 Writeln (f,'   Оценка : ',round(ocsr));
 If met=1 then
 With stringgrid1 do
  Begin
  For i:=0 to 4 do Write (f,'||| ',cells[i,0]:length(cells[i,0]),' '); Writeln (f,'|||');
  Writeln (f,'-----------------------------------------------------------------');
  For i:=1 to RowCount-2 do
   Begin
    For j:=0 to 4 do
     Write (f,'||| ',cells[j,i]:length(cells[j,0]),' '); Writeln (f,'|||');
     Writeln (f,'Вопрос - ',cells[5,i]);
     Writeln (f,'Ответ  - ',cells[6,i]);
     Writeln (f,'-----------------------------------------------------------------');
   End
  end
  else If met=2 then
   With stringgrid2 do
  Begin
  For i:=0 to 4 do Write (f,'||| ',cells[i,0]:length(cells[i,0]),' '); Writeln (f,'|||');
  Writeln (f,'-----------------------------------------------------------------');
  For i:=1 to RowCount-2 do
   Begin
    For j:=0 to 4 do
     Write (f,'||| ',cells[j,i]:length(cells[j,0]),' '); Writeln (f,'|||');
     Writeln (f,'Определение : ',cells[5,i]);
     Writeln (f,'-----------------------------------------------------------------');
   End
  end
  else If met=3 then
   With stringgrid3 do
  Begin
  For i:=0 to 4 do Write (f,'||| ',cells[i,0]:length(cells[i,0]),' '); Writeln (f,'|||');
  Writeln (f,'-----------------------------------------------------------------');
  For i:=1 to RowCount-2 do
   Begin
    For j:=0 to 4 do
     Write (f,'||| ',cells[j,i]:length(cells[j,0]),' '); Writeln (f,'|||');
     Writeln (f,'Определение : ',cells[5,i]);
     Writeln (f,'-----------------------------------------------------------------');
   End
  end;
 closefile (f);
 End;
 shifr(UTF8toSys(SaveDialog1.FileName));
 kolv:=0; nv:=0; ocsr:=0; kv:=0; knv:=0;
 case (met) of
 1:Begin
   button14.enabled:=true;
   button14.caption:='Начать тест';
   panel1.visible:=true;
   panel4.visible:=false;
   panel5.visible:=true;
   panel6.visible:=false;
   End;
 2:Begin
   button47.enabled:=true;
   button47.caption:='Начать тест';
   panel3.visible:=true;
   panel17.visible:=false;
   panel20.visible:=true;
   panel21.visible:=false;
   End;
 End;
 timer1.enabled:=false;
 timer1.tag:=0;
end;

//при креэйте
procedure TForm2.FormCreate(Sender: TObject);
begin
  VIP:='Заводов Каштанов Горчакова Баландина Чекурова ';
  Raspred ();
   with stringgrid1 do
    Begin
     RowCount:=2; ColCount:=7;
     cells[0,0]:='№'; ColWidths[0]:=30;
     cells[1,0]:='Совпадение'; ColWidths[1]:=120;
     cells[2,0]:='Оценка'; ColWidths[2]:=110;
     cells[3,0]:='Общая оц.'; ColWidths[3]:=110;
     cells[4,0]:='Время'; ColWidths[4]:=110;
     cells[5,0]:='Вопрос'; ColWidths[5]:=500;
     cells[6,0]:='Ответ'; ColWidths[6]:=500;
    end;
   with stringgrid2 do
    Begin
     RowCount:=2; ColCount:=7;
     cells[0,0]:='№'; ColWidths[0]:=30;
     cells[1,0]:='Ответ'; ColWidths[1]:=110;
     cells[2,0]:='Верный'; ColWidths[2]:=110;
     cells[3,0]:='Оценка'; ColWidths[3]:=110;
     cells[4,0]:='Время'; ColWidths[4]:=120;
     cells[5,0]:='Вопрос - Ответ'; ColWidths[5]:=500;
    end;
   with stringgrid3 do
    Begin
     RowCount:=2; ColCount:=7;
     cells[0,0]:='№'; ColWidths[0]:=30;
     cells[1,0]:='Верно'; ColWidths[1]:=110;
     cells[2,0]:='Ошибки'; ColWidths[2]:=110;
     cells[3,0]:='Оценка'; ColWidths[3]:=110;
     cells[4,0]:='Время'; ColWidths[4]:=120;
     cells[5,0]:='Определение'; ColWidths[5]:=500;
    end;
  form2.Left:=0; form2.top:=0; kontra:=false;
  Form2.Width:=Screen.Width; Form2.height:=Screen.Height;
  panel1.left:=(Form2.width div 2) - (panel1.Width div 2);
  panel1.top:=(Form2.height div 2) - (panel1.height div 2);
  panel3.Left:=panel1.left; panel3.top:=panel1.top;
  panel12.Left:=panel1.left; panel12.top:=panel1.top;
  button3.left:=panel1.left; button3.top:=panel1.top+panel1.height;
  speedbutton1.Left:=panel1.left;
  speedbutton1.top:=panel1.top-speedbutton1.height;
  speedbutton2.Left:=panel1.left+speedbutton1.width;
  speedbutton2.top:=speedbutton1.top;
  speedbutton3.Left:=speedbutton2.left+speedbutton2.width;
  speedbutton3.top:=speedbutton1.top;
  panel4.Left:=(Form2.Width div 2) - 329;
  panel4.top:=(Form2.height div 2) - 283;
  panel7.Left:=(Form2.Width div 2) - 329;
  panel7.top:=(Form2.height div 2) - 283;
  panel8.Left:=(Form2.Width div 2) - 329;
  panel8.top:=(Form2.height div 2) - 283;
  panel17.Left:=panel4.Left;
  panel17.top:=panel4.top;
  panel24.Left:=panel4.Left;
  panel24.top:=panel4.top;
  panel18.Left:=panel4.Left;
  panel18.top:=panel4.top;
  panel27.Left:=panel4.Left;
  panel27.top:=panel4.top;
   For i:=1 to form1.kolt do
    If form1.term[i]=''
     then Begin
     checklistbox1.Items.Add (form1.opr[i]+' (раздел)');
     checklistbox2.Items.Add (form1.opr[i]+' (раздел)');
     checklistbox3.Items.Add (form1.opr[i]+' (раздел)');end
     else Begin
     checklistbox1.Items.Add (form1.term[i]);
     checklistbox2.Items.Add (form1.term[i]);
     checklistbox3.Items.Add (form1.term[i]); end;
end;

//развернутый ответ
procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
 panel1.Visible:=true;
 panel3.Visible:=false;
 panel12.Visible:=false;
end;

//Тестирование
procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
 panel1.Visible:=false;
 panel3.Visible:=true;
 panel12.Visible:=false;
end;

//Вставка слова
procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
 panel1.Visible:=false;
 panel3.Visible:=false;
 panel12.Visible:=true;
end;

//таймер (1)(2)(3)
procedure TForm2.Timer1Timer(Sender: TObject);
begin
 timer1.tag:=timer1.tag+1;
 If panel4.Visible=true then
 label7.Caption:=inttostr(timer1.tag div 3600)+':'+
   inttostr(timer1.tag div 60)+':'+inttostr(timer1.tag mod 60);
 If panel17.Visible=true then
 label12.Caption:=inttostr(timer1.tag div 3600)+':'+
   inttostr(timer1.tag div 60)+':'+inttostr(timer1.tag mod 60);
 If panel24.Visible=true then
 label39.Caption:=inttostr(timer1.tag div 3600)+':'+
   inttostr(timer1.tag div 60)+':'+inttostr(timer1.tag mod 60);
end;

//Выход
procedure TForm2.Button3Click(Sender: TObject);
begin
  form2.Visible:=false;
end;

end.

