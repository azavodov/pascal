unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TASources, TAStyles, TALegendPanel,
  TANavigation, TAChartExtentLink, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Buttons, ComCtrls, Spin, ExtDlgs, ColorBox, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    CheckBox1: TCheckBox;
    ColorBox1: TColorBox;
    ColorBox2: TColorBox;
    ColorBox3: TColorBox;
    ComboBox1: TComboBox;
    ComboBox10: TComboBox;
    ComboBox11: TComboBox;
    ComboBox12: TComboBox;
    ComboBox13: TComboBox;
    ComboBox14: TComboBox;
    ComboBox15: TComboBox;
    ComboBox16: TComboBox;
    ComboBox17: TComboBox;
    ComboBox18: TComboBox;
    ComboBox19: TComboBox;
    ComboBox2: TComboBox;
    ComboBox20: TComboBox;
    ComboBox21: TComboBox;
    ComboBox22: TComboBox;
    ComboBox23: TComboBox;
    ComboBox24: TComboBox;
    ComboBox25: TComboBox;
    ComboBox26: TComboBox;
    ComboBox27: TComboBox;
    ComboBox28: TComboBox;
    ComboBox29: TComboBox;
    ComboBox3: TComboBox;
    ComboBox30: TComboBox;
    ComboBox31: TComboBox;
    ComboBox32: TComboBox;
    ComboBox33: TComboBox;
    ComboBox34: TComboBox;
    ComboBox35: TComboBox;
    ComboBox36: TComboBox;
    ComboBox37: TComboBox;
    ComboBox38: TComboBox;
    ComboBox39: TComboBox;
    ComboBox4: TComboBox;
    ComboBox40: TComboBox;
    ComboBox41: TComboBox;
    ComboBox42: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
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
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label5: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label6: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label7: TLabel;
    Label70: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    OpenDialog1: TOpenDialog;
    PaintBox1: TPaintBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    SaveDialog1: TSaveDialog;
    SaveDialog2: TSaveDialog;
    SpeedButton1: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton100: TSpeedButton;
    SpeedButton101: TSpeedButton;
    SpeedButton102: TSpeedButton;
    SpeedButton103: TSpeedButton;
    SpeedButton104: TSpeedButton;
    SpeedButton105: TSpeedButton;
    SpeedButton106: TSpeedButton;
    SpeedButton107: TSpeedButton;
    SpeedButton108: TSpeedButton;
    SpeedButton109: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton110: TSpeedButton;
    SpeedButton111: TSpeedButton;
    SpeedButton112: TSpeedButton;
    SpeedButton113: TSpeedButton;
    SpeedButton114: TSpeedButton;
    SpeedButton115: TSpeedButton;
    SpeedButton116: TSpeedButton;
    SpeedButton117: TSpeedButton;
    SpeedButton118: TSpeedButton;
    SpeedButton119: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton120: TSpeedButton;
    SpeedButton121: TSpeedButton;
    SpeedButton122: TSpeedButton;
    SpeedButton123: TSpeedButton;
    SpeedButton124: TSpeedButton;
    SpeedButton125: TSpeedButton;
    SpeedButton126: TSpeedButton;
    SpeedButton127: TSpeedButton;
    SpeedButton128: TSpeedButton;
    SpeedButton129: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton130: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    SpeedButton29: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton30: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton33: TSpeedButton;
    SpeedButton34: TSpeedButton;
    SpeedButton35: TSpeedButton;
    SpeedButton36: TSpeedButton;
    SpeedButton37: TSpeedButton;
    SpeedButton38: TSpeedButton;
    SpeedButton39: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton40: TSpeedButton;
    SpeedButton41: TSpeedButton;
    SpeedButton42: TSpeedButton;
    SpeedButton43: TSpeedButton;
    SpeedButton44: TSpeedButton;
    SpeedButton45: TSpeedButton;
    SpeedButton46: TSpeedButton;
    SpeedButton47: TSpeedButton;
    SpeedButton48: TSpeedButton;
    SpeedButton49: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton50: TSpeedButton;
    SpeedButton51: TSpeedButton;
    SpeedButton52: TSpeedButton;
    SpeedButton53: TSpeedButton;
    SpeedButton54: TSpeedButton;
    SpeedButton55: TSpeedButton;
    SpeedButton56: TSpeedButton;
    SpeedButton57: TSpeedButton;
    SpeedButton58: TSpeedButton;
    SpeedButton59: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton60: TSpeedButton;
    SpeedButton61: TSpeedButton;
    SpeedButton62: TSpeedButton;
    SpeedButton63: TSpeedButton;
    SpeedButton64: TSpeedButton;
    SpeedButton65: TSpeedButton;
    SpeedButton66: TSpeedButton;
    SpeedButton67: TSpeedButton;
    SpeedButton68: TSpeedButton;
    SpeedButton69: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton70: TSpeedButton;
    SpeedButton71: TSpeedButton;
    SpeedButton72: TSpeedButton;
    SpeedButton73: TSpeedButton;
    SpeedButton74: TSpeedButton;
    SpeedButton75: TSpeedButton;
    SpeedButton76: TSpeedButton;
    SpeedButton77: TSpeedButton;
    SpeedButton78: TSpeedButton;
    SpeedButton79: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton80: TSpeedButton;
    SpeedButton81: TSpeedButton;
    SpeedButton82: TSpeedButton;
    SpeedButton83: TSpeedButton;
    SpeedButton84: TSpeedButton;
    SpeedButton85: TSpeedButton;
    SpeedButton86: TSpeedButton;
    SpeedButton87: TSpeedButton;
    SpeedButton88: TSpeedButton;
    SpeedButton89: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton90: TSpeedButton;
    SpeedButton91: TSpeedButton;
    SpeedButton92: TSpeedButton;
    SpeedButton93: TSpeedButton;
    SpeedButton94: TSpeedButton;
    SpeedButton95: TSpeedButton;
    SpeedButton96: TSpeedButton;
    SpeedButton97: TSpeedButton;
    SpeedButton98: TSpeedButton;
    SpeedButton99: TSpeedButton;
    SpinEdit1: TSpinEdit;
    SpinEdit10: TSpinEdit;
    SpinEdit19: TSpinEdit;
    SpinEdit18: TSpinEdit;
    SpinEdit17: TSpinEdit;
    SpinEdit16: TSpinEdit;
    SpinEdit15: TSpinEdit;
    SpinEdit14: TSpinEdit;
    SpinEdit13: TSpinEdit;
    SpinEdit12: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit11: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    SpinEdit5: TSpinEdit;
    SpinEdit6: TSpinEdit;
    SpinEdit7: TSpinEdit;
    SpinEdit8: TSpinEdit;
    SpinEdit9: TSpinEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure ColorBox1Change(Sender: TObject);
    procedure ColorBox2Change(Sender: TObject);
    procedure ColorBox3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PaintBox1Paint(Sender: TObject);
    procedure SpeedButton127Click(Sender: TObject);
    procedure SpeedButton128Click(Sender: TObject);
    procedure SpeedButton129Click(Sender: TObject);
    procedure SpeedButton130Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

Var w,h:integer;
    i,j:integer;
    dv,dn:integer;
    ln:integer;
    lesson: array [0..20] of integer;
    cb: array [1..50] of tcombobox;
    sp: array [0..20] of tspinedit;
    otv,pr,kr: array [1..50] of tspeedbutton;
implementation

Uses Unit2,Unit3;

{$R *.lfm}

{ TForm1 }

//прикреэйте
procedure TForm1.FormCreate(Sender: TObject);
Var k:integer;
begin
 panel7.Width:=form1.Width;
 panel7.height:=form1.height;
 ln:=0;
 For i:=1 to 42 do
   cb[i]:=findcomponent ('ComboBox' + inttostr(i)) as tcombobox;
 k:=1;
 For i:=1 to 126 do
  If (i mod 3)=0 then
   Begin
    otv[k]:=findcomponent ('SpeedButton' + inttostr(i-2)) as tspeedbutton;
    otv[k].groupindex:=i-2; otv[k].allowallup:=true;
    pr[k]:=findcomponent ('SpeedButton' + inttostr(i-1)) as tspeedbutton;
    pr[k].groupindex:=i-1; pr[k].allowallup:=true;
    kr[k]:=findcomponent ('SpeedButton' + inttostr(i)) as tspeedbutton;
    kr[k].groupindex:=i; kr[k].allowallup:=true;
    inc (k);
   End;
 For i:=0 to 18 do
  sp[i]:=findcomponent ('SpinEdit' + inttostr(i+1)) as tspinedit;
end;

//выравнивание
procedure TForm1.FormResize(Sender: TObject);
begin
  Panel8.Left := Width div 2 - Panel8.Width div 2;
  Panel8.Top := Height div 2 - Panel8.Height div 2;
  Panel9.Left := Width div 2 - Panel9.Width div 2;
end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
  SpeedButton128.down:=not(SpeedButton128.down);
  PaintBox1Paint(paintbox1);
end;

procedure TForm1.MenuItem11Click(Sender: TObject);
begin
  SpeedButton129.down:=not(SpeedButton129.down);
  PaintBox1Paint(paintbox1);
end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
  SpeedButton130.down:=not(SpeedButton130.down);
  PaintBox1Paint(paintbox1);
end;

procedure TForm1.MenuItem13Click(Sender: TObject);
begin
  checkbox1.Checked:=not(checkbox1.Checked);
  PaintBox1Paint(paintbox1);
end;

procedure TForm1.MenuItem14Click(Sender: TObject);
begin
  Form2.visible:=true;
end;

procedure TForm1.MenuItem15Click(Sender: TObject);
begin
  Form3.visible:=true;
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  form1.Button5Click(Button5);
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  form1.Button1Click(Button1);
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  form1.Button6Click(Button6);
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
  form1.Button4Click(Button4);
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
  form1.Button2Click(Button2);
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  form1.SpeedButton127Click(SpeedButton127);
end;

//МЫШЬ
procedure TForm1.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 If checkbox1.Checked=true then
  If (((x-10) div dv)>=0) and (((x-10) div dv)<42)  then
 Begin
  PaintBox1Paint(paintbox1);
  paintbox1.Canvas.pen.color:=colorbox3.selected;
  paintbox1.Canvas.line (x,0,x,h-14);
  paintbox1.Canvas.textout (x,y-15,cb[((x-10) div dv)+1].text);
 end;
end;

//обнуление
procedure TForm1.Button2Click(Sender: TObject);
begin
 PaintBox1Paint(paintbox1);
 For i:=1 to 42 do
  cb[i].itemindex:=-1;
 For i:=1 to 42 do
  Begin
   otv[i].down:=false;
   pr[i].down:=false;
   kr[i].down:=false;
  end;
end;

//сохранение
procedure TForm1.Button1Click(Sender: TObject);
Var f:textfile;
    ind:integer;
begin
 If savedialog1.execute then
  Begin
   Assignfile (f,savedialog1.filename); Rewrite (f);
    For i:=1 to 42 do
     Begin
      ind:=cb[i].itemindex;
      If ind<0 then Writeln (f,'') else
      Writeln (f,cb[i].items[ind]);
     end;
   closefile (f);
  end;
end;

//опрос
procedure TForm1.Button3Click(Sender: TObject);
begin
 panel7.Visible:=false;
 For i:=0 to 18 do
  lesson[i]:=sp[i].Value;
end;

//предпочтения
procedure TForm1.Button4Click(Sender: TObject);
begin
 panel7.Visible:=true;;
end;

//открыть расписание
procedure TForm1.Button5Click(Sender: TObject);
Var f:textfile;
    s:string;
begin
 If opendialog1.execute then
  Begin
    Assignfile (f,opendialog1.filename); Reset (f);
    For i:=1 to 42 do
     Begin
      Readln (f,s);
       case (s) of
        '':cb[i].itemindex:=-1;
        'Алгебра':cb[i].itemindex:=0;
        'Англ. яз.':cb[i].itemindex:=1;
        'Биология':cb[i].itemindex:=2;
        'География':cb[i].itemindex:=3;
        'Геометрия':cb[i].itemindex:=4;
        'ИГМ':cb[i].itemindex:=5;
        'Инф. и ИКТ':cb[i].itemindex:=6;
        'Иссл. практикум':cb[i].itemindex:=7;
        'История':cb[i].itemindex:=8;
        'Культура речи':cb[i].itemindex:=9;
        'ЛПФ':cb[i].itemindex:=10;
        'Литература':cb[i].itemindex:=11;
        'ОБЖ':cb[i].itemindex:=12;
        'Обществознание':cb[i].itemindex:=13;
        'Программир.':cb[i].itemindex:=14;
        'Русский язык':cb[i].itemindex:=15;
        'Физика':cb[i].itemindex:=16;
        'Физкультура':cb[i].itemindex:=17;
        'Химия':cb[i].itemindex:=18;
       end;
     end;
   closefile (f);
  end;
end;

//сохранить график
procedure TForm1.Button6Click(Sender: TObject);
var
  Bitmap: TBitmap;
  Source: TRect;
  Dest: TRect;
begin
  Bitmap := TBitmap.Create;
  try
    with Bitmap do
    begin
      Width   := PaintBox1.Width;
      Height  := PaintBox1.Height;
      Dest    := Rect(0, 0, Width, Height);
    end;
    with PaintBox1 do
      Source := Rect(0, 0, Width, Height);
      Bitmap.Canvas.CopyRect(Dest, PaintBox1.Canvas, Source);
      If savedialog2.execute then
      Bitmap.SaveToFile(savedialog2.Filename);
  finally
    Bitmap.Free;
 end;

end;

//вывод предметов
procedure TForm1.CheckBox1Change(Sender: TObject);
begin
 PaintBox1Paint(paintbox1);
end;

//цвет
procedure TForm1.ColorBox1Change(Sender: TObject);
begin
 PaintBox1Paint(paintbox1);
end;

//цвет
procedure TForm1.ColorBox2Change(Sender: TObject);
begin
  PaintBox1Paint(paintbox1);
end;

//цвет
procedure TForm1.ColorBox3Change(Sender: TObject);
begin
  PaintBox1Paint(paintbox1);
end;

//Прорисовка
procedure TForm1.PaintBox1Paint(Sender: TObject);
begin

   w:=paintbox1.Width;
   h:=paintbox1.Height;
   paintbox1.Canvas.clear;
   dv:=(w - 20) div 42;
   dn:=(h - 20) div 10;

   with paintbox1.Canvas do
    Begin


     If speedbutton128.Down=true then Begin
       For i:=1 to 42 do
        Begin
         Pen.Width := 2;
         Pen.Color := colorbox1.selected;
         ellipse (dv*i+8,h-8,dv*i+12,h-12);
         Pen.Width := 1;
         Pen.Color := clGray;
         line (dv*i+8,h-12,dv*i+8,10);
        End;

       For i:=1 to 10 do
        Begin
         Pen.Width := 2;
         Pen.Color := colorbox1.selected;
         ellipse (8,dn*i+8,12,dn*i+12);
         textout (1,dn*i+10,inttostr (10-i));
         Pen.Width := 1;
         Pen.Color := clGray;
         line (12,dn*i+8,w-10,dn*i+8);
        End;                         End;

     If speedbutton130.Down=true then Begin
       pen.Style:=psDash;
       pen.Color:=colorbox3.selected;
       Pen.Width := 2;
       For i:=1 to 42 do
        Begin
        If (i mod 7)=0 then line (dv*i+8,h-12,dv*i+8,10);
          case (i) of
           2:textout (dv*i,h-13,'Понедельник');
           10:textout (dv*i,h-13,'Вторник');
           17:textout (dv*i,h-13,'Среда');
           24:textout (dv*i,h-13,'Четверг');
           31:textout (dv*i,h-13,'Пятница');
           38:textout (dv*i,h-13,'Суббота');
          end;
        end;
       pen.Style:=psSolid;           end;

     If speedbutton129.Down=true then Begin
       Pen.Width := 2;
       Pen.Color := colorbox1.selected;
       Line (10,10,10,h-10);
       lineto (w-10,h-10);
       line (5,15,10,10);
       lineto (15,15);
       line (w-15,h-15,w-10,h-10);
       lineto (w-15,h-5);
                                      End;
     end;

   paintbox1.Canvas.line (0,paintbox1.Height-10,10,paintbox1.Height-10);
 ln:=0;
 For i:=1 to 42 do
   Begin
     If otv[i].Down=true then ln:=ln+1;
     If pr[i].Down=true then ln:=ln+1;
     If kr[i].Down=true then ln:=ln+2;
     If cb[i].ItemIndex>-1 then ln:=ln+lesson[cb[i].ItemIndex]
     else ln:=ln-3;
     If ln>9 then ln:=9; If ln<0 then ln:=0;
     If (i mod 7)=0 then ln:=0;
    paintbox1.Canvas.Pen.Width := 3; paintbox1.Canvas.Pen.Color := colorbox2.selected;
  //  If cb[i].ItemIndex=-1 then paintbox1.Canvas.lineto (dv*i+8,paintbox1.Height-dn-10) else
    paintbox1.Canvas.lineto (dv*i+8,paintbox1.Height-dn*ln-10);
  {   For j:=ln downto 1 do
      case (j) of
       9:paintbox1.Canvas.floodfill (dv*i+8,paintbox1.Height-dn*j-6, clGreen, fsBorder);
       8:paintbox1.Canvas.floodfill (dv*i+8,paintbox1.Height-dn*j-6, clGreen, fsBorder);
       7:paintbox1.Canvas.floodfill (dv*i+8,paintbox1.Height-dn*j-6, clGreen, fsBorder);
       6:paintbox1.Canvas.floodfill (dv*i+8,paintbox1.Height-dn*j-6, clGreen, fsBorder);
       5:paintbox1.Canvas.floodfill (dv*i+8,paintbox1.Height-dn*j-6, clGreen, fsBorder);
       4:paintbox1.Canvas.floodfill (dv*i+8,paintbox1.Height-dn*j-6, clGreen, fsBorder);
       3:paintbox1.Canvas.floodfill (dv*i+8,paintbox1.Height-dn*j-6, clGreen, fsBorder);
       2:paintbox1.Canvas.floodfill (dv*i+8,paintbox1.Height-dn*j-6, clGreen, fsBorder);
       1:paintbox1.Canvas.floodfill (dv*i+8,paintbox1.Height-dn*j-6, clGreen, fsBorder);
      end;  }
   end;
end;

//сетка
procedure TForm1.SpeedButton128Click(Sender: TObject);
begin
 PaintBox1Paint(paintbox1);
end;

//оси
procedure TForm1.SpeedButton129Click(Sender: TObject);
begin
  PaintBox1Paint(paintbox1);
end;

//дни недели
procedure TForm1.SpeedButton130Click(Sender: TObject);
begin
  PaintBox1Paint(paintbox1);
end;

//Построение
procedure TForm1.SpeedButton127Click(Sender: TObject);
begin
 PaintBox1Paint(paintbox1);
end;

end.

