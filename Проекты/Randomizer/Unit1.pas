unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus;

type
  Trandomaze = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Panel2: TPanel;
    Button2: TButton;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Edit4: TEdit;
    ListBox2: TListBox;
    Panel3: TPanel;
    Button3: TButton;
    Label5: TLabel;
    ListBox3: TListBox;
    Label6: TLabel;
    Panel4: TPanel;
    Edit6: TEdit;
    Button4: TButton;
    ListBox4: TListBox;
    Label7: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Label8: TLabel;
    Label9: TLabel;
    Memo2: TMemo;
    memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  randomaze: Trandomaze;
  pred: array [1 .. 10] of string;
  smile: array [1 .. 10] of string;
  vys: array [1 .. 10] of string;

implementation

{$R *.dfm}

procedure Trandomaze.Button1Click(Sender: TObject);
 Var kol,ot,doo,i:integer;
     ch:string;
begin
 listbox1.items.Clear;
 kol:=strtoint (edit1.text);
 ot:=strtoint (edit2.text);
 doo:=strtoint (edit3.text);

  For i:=1 to kol do
   Begin
    ch:=inttostr(random (doo)+ot);
    listbox1.items.add (ch);
   End;
end;

procedure Trandomaze.Button2Click(Sender: TObject);
Var dl,i:integer;
    sim,cf,sc,parol:string;
begin
 listbox2.items.Clear;
 sim:='qwertyuiopasdfghjklzxcvbnm';
 cf:='0123456789';
 sc:='/*<>[]()-=+';
 dl:=strtoint(edit4.text);
  For i:=1 to dl do
   Begin
    If checkbox1.Checked=true then If random (2)=0 then parol:=parol+copy(cf,random(10)+1,1);
    If length (parol)=dl then break;
    If checkbox2.Checked=true then If random (2)=1 then parol:=parol+copy(sc,random(10)+1,1);
    If length (parol)=dl then break;
    parol:=parol+copy(sim,random (26)+1,1);
    If length (parol)=dl then break;
   End;
  listbox2.items.add (parol);
end;

procedure Trandomaze.Button3Click(Sender: TObject);
 Var i,cfr,b1,b2:integer;
     cf,bilet:string;
begin
 listbox3.items.Clear;
 cf:='0123456789';
  label6.Caption:='';
 For i:=1 to 6 do
  Begin
   cfr:=random (10)+1;
   If i<4 then b1:=b1+cfr-1 else b2:=b2+cfr-1;
   bilet:=bilet+copy(cf,cfr,1);
  End;
  bilet:='   '+bilet;
 listbox3.Items.Add(bilet);
 If b1=b2 then label6.Caption:='     счастливый!!!' else label6.Caption:='не счастливый, увы.';
end;

procedure Trandomaze.Button4Click(Sender: TObject);
Var ran:integer;
begin
 listbox4.items.Clear;
 ran:=random (10)+1;
 listbox4.Items.Add(pred[ran]);
end;

procedure Trandomaze.Button5Click(Sender: TObject);
Var run:integer;
begin
 memo1.lines[0]:='';
 run:=random (9)+1;
 memo1.Lines[0]:=vys[run];
End;

procedure Trandomaze.FormCreate(Sender: TObject);
begin
pred[1]:= 'уверен';
pred[2]:='несомненно';
pred[3]:='весьма спорно';
pred[4]:='не уверен';
pred[5]:='скорее всего нет';
pred[6]:='точно нет';
pred[7]:='перспективы хорошие';
pred[8]:='вероятнее всего';
pred[9]:='по моим данным да';
pred[10]:='пока не ясно';
smile[1]:='Отделу по борьбе с наркотиками на постоянную работу требуется ди–джей.';
smile[2]:='На концерте Тимати решил опередить зал, и первым начал кидать в него помидоры.';
smile[3]:='Посмотрел "Пилу" - придумал сестре конкурсы на день рождения.';
smile[4]:='Немецкая потомственная гадалка снимет порчу на камеру';
smile[5]:='Надо выпустить пельмени под брендом "Пичалька". И слоган - "Нечего жрать? Пичалька!"';
smile[6]:='У нас может быть только 2 реальных прогноза погоды: грязь подсохла и грязь подмёрзла. Остальное просто: грязь!';
smile[7]:='Дагестанские шахматисты. Согласитесь, неудачное название для организованной преступной группировки.';
smile[8]:='Одинокий бегемотик ищет заботы, ласки, понимания... И чего-нибудь пожрать!';
smile[9]:='Переехал в новый дом. Просыпаюсь с первыми перфораторами...';
smile[10]:='"Допрыгался" - отчитывал кенгуру-отец кенгуру-сына.';
vys[1]:='Мечты – краеугольные камни нашего характера.— Генри Дэвид Торо';
vys[2]:='Совесть - это теща, которая постоянно живет с вами.— Генри Луис Менкен';
vys[3]:='В истинной красоте всегда есть изъян.— Джонатан Свифт';
vys[4]:='Дороже всего деньги даются тому, кто на них женится.— Кин Хаббард';
vys[5]:='Против всего можно устоять, но не против доброты.— Жан Жак Руссо';
vys[6]:='Жениться, ничем не связывая себя, - предательство.— Мишель де Монтень';
vys[7]:='Предатели предают прежде всего самих себя.— Плутарх';
vys[8]:='Буква закона должна быть включена в алфавит.— Станислав Ежи Лец';
vys[9]:='То, что тяжело переносится, с нежностью вспоминается.— Томас Фуллер';
vys[10]:='Школа готовит нас к жизни в мире, которого не существует.— Альбер Камю';
end;


procedure Trandomaze.Button6Click(Sender: TObject);
begin
 label8.Caption:=':(';
 memo1.Color:=clred;
end;

procedure Trandomaze.Button7Click(Sender: TObject);
begin
 label8.Caption:=':)';
 memo1.Color:=clgreen;
end;

procedure Trandomaze.Button9Click(Sender: TObject);
begin
 label9.Caption:=':)';
 memo2.Color:=clgreen;
end;

procedure Trandomaze.Button10Click(Sender: TObject);
begin
 label9.Caption:=':(';
 memo2.Color:=clred;
end;

procedure Trandomaze.Button8Click(Sender: TObject);
Var run1:integer;
begin
 memo2.lines[0]:='';
 run1:=random (9)+1;
 memo2.Lines[0]:=vys[run1];
End;

end.
