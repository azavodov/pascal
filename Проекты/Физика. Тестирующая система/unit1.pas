unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  StdCtrls, LResources, ComCtrls, Arrow, Menus, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
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
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    ColorDialog1: TColorDialog;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    FontDialog1: TFontDialog;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ListBox1: TListBox;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
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
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure vyv(i:integer);
  private
    { private declarations }
  public
    { public declarations }
   Var opr: array [1..1000] of string;
       term: array [1..1000] of string;
       kolt:integer;
  end;

var
  Form1: TForm1;
 Var
  i,j,a,b,c:integer;
  schet,r8,i8:integer;
  termpoisk:string;
  m1,e1:integer;
  f:textfile;

implementation
uses  Unit2,Unit3,Unit4;

{$R *.lfm}

{ TForm1 }

//начальные значения
procedure TForm1.FormCreate(Sender: TObject);
var res: TLResource;
begin
 m1:=0; e1:=0;
 form1.left:=(Screen.Width div 2)-325;
 form1.top:=(Screen.height div 2)-300;
 res := LazarusResources.Find('allres');
 Assignfile (f,'res.txt'); Rewrite (f);
 Writeln (f,res.Value);
 closefile (f); Reset (f);

 kolt:=468;
   For i:=1 to kolt do
     Begin
      Readln (f,opr[i]);
      term[i]:=copy(opr[i],1,pos(' - ',opr[i]));
      listbox1.items.Add (opr[i]);
     end;

 closefile (f); deletefile ('res.txt');
end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
  button17.Click;
end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
 If (schet mod 2)<>0 then
 Begin
 listbox1.Font.Color:=clblack;
 button17.Click;
 listbox1.color:=clWhite;
 inc (schet);
 end else
 Begin
 r8:=Random(999999);
 listbox1.Font.Color:=r8;
 If r8>222222 then r8:=r8-222222 else r8:=r8+222222;
 button17.Click;
 listbox1.color:=r8;
 inc (schet);
 end;
end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
  If fontdialog1.execute then
  listbox1.Font:=fontdialog1.Font;
  button17.Click;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  button25.Click;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  form3.visible:=true;
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
  form4.visible:=true;
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
 If colordialog1.Execute then
  Begin
   form1.color:=colordialog1.Color;
   edit1.color:=colordialog1.Color;
   listbox1.color:=colordialog1.Color;
  end;
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  button26.Click;
end;

//ПОИСК
procedure TForm1.Button1Click(Sender: TObject);
begin
 listbox1.clear;
 termpoisk:=edit1.text;
 delete (termpoisk,1,2);
  For i:=1 to kolt do
    If pos(termpoisk,term[i])>0 then
     Begin
      listbox1.items.Add (opr[i]);
      listbox1.items.Add ('    ');
      listbox1.items.Add ('  --------------  ');
      listbox1.items.Add ('    ');
     end;
end;

//Электростатика
procedure TForm1.Button18Click(Sender: TObject);
begin
 listbox1.clear;
 For i:=0 to kolt do
   If pos('Электростатика',opr[i])<>0 then vyv (i);
end;

//Электрический ток
procedure TForm1.Button19Click(Sender: TObject);
begin
 listbox1.clear;
 For i:=0 to kolt do
   If pos('Электрический ток',opr[i])<>0 then vyv (i);
end;

//Магнитное взаимодействие
procedure TForm1.Button20Click(Sender: TObject);
begin
 listbox1.clear;
 For i:=0 to kolt do
   If pos('Магнитное взаимодействие',opr[i])<>0 then vyv (i);
end;

//Переменный ток
procedure TForm1.Button21Click(Sender: TObject);
begin
 listbox1.clear;
 For i:=0 to kolt do
   If pos('Переменный ток',opr[i])<>0 then vyv (i);
end;

//Электрическое и магнитное поля в веществе
procedure TForm1.Button22Click(Sender: TObject);
begin
 listbox1.clear;
 For i:=0 to kolt do
   If pos('Электрическое и магнитное поля в веществе',opr[i])<>0 then vyv (i);
end;

//Электромагнитное поле
procedure TForm1.Button23Click(Sender: TObject);
begin
 listbox1.clear;
 For i:=0 to kolt do
   If pos('Электромагнитное поле',opr[i])<>0 then vyv (i);
end;

//Оптика
procedure TForm1.Button24Click(Sender: TObject);
begin
 listbox1.clear;
 For i:=0 to kolt do
   If pos('Оптика',opr[i])<>0 then vyv (i);
end;

//Убрать/показать меню
procedure TForm1.Button25Click(Sender: TObject);
begin
 If button25.caption='Скрыть' then
   Begin
    If m1=1 then form1.Button10.Click;
    If e1=1 then form1.Button12.Click;
    listbox1.left:=0;
    listbox1.Width:=listbox1.Width+128;
    button25.caption:='Разделы';
   end
 else
   Begin
    listbox1.left:=128;
    listbox1.Width:=listbox1.Width-128;
    button25.caption:='Скрыть';
   end;
end;

//Тестирование
procedure TForm1.Button26Click(Sender: TObject);
begin
  panel1.Left:=(form1.width div 2)-170;
  panel1.visible:=true;
end;

//ОК
procedure TForm1.Button27Click(Sender: TObject);
begin
 If (edit2.Text<>'') and (edit3.text<>'') then
  Begin
   panel1.visible:=false;
   form2.Visible:=true;
   unit2.im:=edit2.text;
   unit2.fam:=edit3.text;
  end else
  panel2.visible:=true;
end;

//Отмена
procedure TForm1.Button28Click(Sender: TObject);
begin
 panel1.visible:=false;
end;

//ОК
procedure TForm1.Button29Click(Sender: TObject);
begin
 panel2.visible:=false;
end;

//пространство и время
procedure TForm1.Button2Click(Sender: TObject);
begin
 listbox1.clear;
 For i:=0 to kolt do
   If pos('Пространство и время',opr[i])<>0 then vyv (i);
end;

procedure TForm1.Button30Click(Sender: TObject);
begin

end;

//кинематика
procedure TForm1.Button3Click(Sender: TObject);
begin
 listbox1.clear;
 For i:=0 to kolt do
   If pos('Кинематика',opr[i])<>0 then vyv (i);
end;

//Динамика
procedure TForm1.Button4Click(Sender: TObject);
begin
 listbox1.clear;
 For i:=0 to kolt do
   If pos('Динамика',opr[i])<>0 then vyv (i);
end;

//Гравитация
procedure TForm1.Button5Click(Sender: TObject);
begin
 listbox1.clear;
 For i:=0 to kolt do
   If pos('Гравитация',opr[i])<>0 then vyv (i);
end;

//Деформация
procedure TForm1.Button6Click(Sender: TObject);
begin
 listbox1.clear;
 For i:=0 to kolt do
   If pos('Деформация',opr[i])<>0 then vyv (i);
end;

//Трение
procedure TForm1.Button7Click(Sender: TObject);
begin
 listbox1.clear;
 For i:=0 to kolt do
   If pos('Трение',opr[i])<>0 then vyv (i);
end;

//Импульс, работа, энергия
procedure TForm1.Button8Click(Sender: TObject);
begin
 listbox1.clear;
 For i:=0 to kolt do
   If pos('Импульс, работа, энергия',opr[i])<>0 then vyv (i);
end;

//Колебания и волны
procedure TForm1.Button9Click(Sender: TObject);
begin
 listbox1.clear;
 For i:=0 to kolt do
   If pos('Колебания и волны',opr[i])<>0 then vyv (i);
end;

//МЕХАНИКА
procedure TForm1.Button10Click(Sender: TObject);
begin
   Button18.Visible:=false; Button19.Visible:=false;
   Button20.Visible:=false; Button21.Visible:=false;
   Button22.Visible:=false; Button23.Visible:=false;
   Button24.Visible:=false;
   button13.top:=176; button14.top:=208;
   button15.top:=240; button16.top:=272; e1:=0;
 If m1=0 then
  Begin
   Button2.Visible:=true; Button6.Visible:=true;
   Button3.Visible:=true; Button7.Visible:=true;
   Button4.Visible:=true; Button8.Visible:=true;
   Button5.Visible:=true; Button9.Visible:=true;
   button11.top:=368; button12.top:=400;
   button13.top:=432; button14.top:=464;
   button15.top:=496; button16.top:=528; m1:=1;
  end
 else
  Begin
   Button2.Visible:=false; Button6.Visible:=false;
   Button3.Visible:=false; Button7.Visible:=false;
   Button4.Visible:=false; Button8.Visible:=false;
   Button5.Visible:=false; Button9.Visible:=false;
   button11.top:=112; button12.top:=144;
   button13.top:=176; button14.top:=208;
   button15.top:=240; button16.top:=272; m1:=0;
  end;
end;

//Молекулярная физика. Термодинамика
procedure TForm1.Button11Click(Sender: TObject);
begin
 listbox1.clear;
 For i:=0 to kolt do
   If pos('Молекулярная физика. Термодинамика',opr[i])<>0 then vyv (i);
end;

//Электромагнетизм
procedure TForm1.Button12Click(Sender: TObject);
begin
   Button2.Visible:=false; Button6.Visible:=false;
   Button3.Visible:=false; Button7.Visible:=false;
   Button4.Visible:=false; Button8.Visible:=false;
   Button5.Visible:=false; Button9.Visible:=false;
   button11.top:=112; button12.top:=144;
   button13.top:=176; button14.top:=208;
   button15.top:=240; button16.top:=272; m1:=0;
 If e1=0 then
  Begin
   Button18.Visible:=true; Button19.Visible:=true;
   Button20.Visible:=true; Button21.Visible:=true;
   Button22.Visible:=true; Button23.Visible:=true;
   Button24.Visible:=true;
   button13.top:=400; button14.top:=432;
   button15.top:=464; button16.top:=496; e1:=1;
  end
 else
  Begin
   Button18.Visible:=false; Button19.Visible:=false;
   Button20.Visible:=false; Button21.Visible:=false;
   Button22.Visible:=false; Button23.Visible:=false;
   Button24.Visible:=false;
   button13.top:=176; button14.top:=208;
   button15.top:=240; button16.top:=272; e1:=0;
  end;
end;

//Физика микромира
procedure TForm1.Button13Click(Sender: TObject);
begin
 listbox1.clear;
 For i:=0 to kolt do
   If pos('Физика микромира',opr[i])<>0 then vyv (i);
end;

//Технические термины
procedure TForm1.Button14Click(Sender: TObject);
begin
 listbox1.clear;
 For i:=0 to kolt do
   If pos('Технические термины',opr[i])<>0 then vyv (i);
end;

//Измерительные приборы и устройства
procedure TForm1.Button15Click(Sender: TObject);
begin
 listbox1.clear;
 For i:=0 to kolt do
   If pos('Измерительные приборы и устройства',opr[i])<>0 then vyv (i);
end;

//Физические постоянные
procedure TForm1.Button16Click(Sender: TObject);
begin
 listbox1.clear;
 For i:=0 to kolt do
   If pos('Физические постоянные',opr[i])<>0 then vyv (i);
end;

//формат вывода
procedure Tform1.vyv(i:integer);
 Begin
  for j:=i+1 to kolt do
     Begin
      listbox1.items.Add (opr[j]);
      listbox1.items.Add ('    ');
      listbox1.items.Add ('  --------------  ');
      listbox1.items.Add ('    ');
      If term[j+1]='' then break;
     End;
 end;

//Вывод всех определений
procedure TForm1.Button17Click(Sender: TObject);
begin
 listbox1.clear;
 For i:=1 to kolt do
  listbox1.items.Add (opr[i]);
end;

initialization
{$I allres1.lrs}

end.

