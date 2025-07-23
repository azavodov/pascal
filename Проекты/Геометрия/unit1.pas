unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, IpHtml, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls, Buttons, Spin, ColorBox, LazHelpHTML, CheckLst,
  types;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckListBox1: TCheckListBox;
    ColorBox1: TColorBox;
    ColorBox2: TColorBox;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ListBox1: TListBox;
    PaintBox1: TPaintBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpinEdit1: TSpinEdit;
    TreeView1: TTreeView;
    procedure Button1Click(Sender: TObject);
    procedure ColorBox1Change(Sender: TObject);
    procedure ColorBox2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1MouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure PaintBox1Paint(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure analiz();
  private
    { private declarations }
  public
    { public declarations }
    spr: array [1..500] of string;
  end;

var
  Form1: TForm1;
Var a,b,c,r:integer;
    i,j,x0,y0,x1,y1,x2,y2:integer;
    kf,kt,kt1:integer;  //колличество фигур и их точек
    ed,w,h,sx,sy,sxd,syd,xmax,ymax:integer; //сетка
    tfi,fg,s:string;
    mc,uv:boolean;
    ntree:integer;
    fig: array [0..100,0..100] of integer; //массив прорисовываемых фигур
    col: array [0..50] of Tcolor;
    im: array [0..50,0..50] of string;


implementation

Uses Unit2;

{$R *.lfm}


{ TForm1 }

//при криэйте
procedure TForm1.FormCreate(Sender: TObject);
Var f:TextFile;
begin
 Assignfile (f,'geomres.txt'); Reset (f);
  For i:=1 to 250 do
   Readln (f,spr[i]);
  closefile (f);
 s:='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
 kf:=1; kt:=0; ed:=50; ntree:=0;
 col[kf]:=colorbox1.selected;
 sx:=0; sy:=0;
 mc:=false; uv:=true;
 xmax:=2350; ymax:=2350;
  For i:=0 to 100 do
   For j:=0 to 100 do
    fig[i,j]:=0;
end;

//непрерывное рисоване
procedure Tform1.analiz();
 Begin
  If kt=0 then
  Begin
  inc (kf);
  If speedbutton4.down=true then
  Begin kt:=2; fig[kf,0]:=2; col[kf]:=colorbox1.selected;
  treeview1.Items.Add (nil,'Точка'); End;
  If speedbutton5.down=true then
  Begin kt:=4; fig[kf,0]:=4; col[kf]:=colorbox1.selected;
  treeview1.Items.Add (nil,'Отрезок'); End;
  If speedbutton6.down=true then
  Begin kt:=4; fig[kf,0]:=-28; col[kf]:=colorbox1.selected;
  treeview1.Items.Add (nil,'Прямая'); End;
  If speedbutton7.down=true then
  Begin kt:=4; fig[kf,0]:=-288; col[kf]:=colorbox2.selected;
  treeview1.Items.Add (nil,'Окружность'); End;
  If speedbutton8.down=true then
  Begin kt:=spinedit1.value*2; fig[kf,0]:=kt; col[kf]:=colorbox1.selected;
  treeview1.Items.Add (nil,'Многоугольник'); End;
  If speedbutton9.down=true then
  Begin kt:=4; fig[kf,0]:=2; End;
  end;
  ntree:=treeview1.items.count-1;
 end;

//Курсор
procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
 Panel5.visible:=false;
 kt:=0;
end;

//Назад
procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
 If kf>1 then Begin  kf:=kf-1; kt:=0; speedbutton3.enabled:=true; End
 else Begin  kf:=kf-1; kt:=0; speedbutton2.enabled:=false; speedbutton3.enabled:=true; End;
 form1.PaintBox1.OnPaint (PaintBox1);
end;

//Вперед
procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
 If fig[kf+1,0]<>0 then Begin kf:=kf+1; kt:=0; speedbutton2.enabled:=true; End
 else Begin speedbutton3.enabled:=false; speedbutton2.enabled:=true; End;
 form1.PaintBox1.OnPaint (PaintBox1);
end;

//точка
procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  If kt=0 then treeview1.Items.Add (nil,'Точка') else
  Begin TreeView1.Items.Delete(TreeView1.Items.Item[ntree]);
   treeview1.Items.Add (nil,'Точка'); end;
  panel1.visible:=false;
  panel5.height:=48; panel5.top:=50; panel5.left:=100;
  panel5.Visible:=not(panel5.Visible);
  If (kt=0) and (fig[kf,fig[kf,0]]<>0) then inc(kf);
  kt:=2; fig[kf,0]:=kt;
end;

//отрезок
procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  If kt=0 then treeview1.Items.Add (nil,'Отрезок') else
  Begin TreeView1.Items.Delete(TreeView1.Items.Item[ntree]);
  treeview1.Items.Add (nil,'Отрезок') End;
  panel1.visible:=false;
  panel5.height:=48; panel5.top:=100; panel5.left:=100;
  panel5.Visible:=not(panel5.Visible);
  If (kt=0) and (fig[kf,fig[kf,0]]<>0) then inc(kf);
  kt:=4; fig[kf,0]:=kt;
end;

//прямая
procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
  If kt=0 then treeview1.Items.Add (nil,'Прямая') else
  Begin TreeView1.Items.Delete(TreeView1.Items.Item[ntree]);
  treeview1.Items.Add (nil,'Прямая') End;
  panel1.visible:=false;
  panel5.height:=48; panel5.top:=50; panel5.left:=150;
  panel5.Visible:=not(panel5.Visible);
  If (kt=0) and (fig[kf,fig[kf,0]]<>0) then inc(kf);
  kt:=4; fig[kf,0]:=-28;
end;

//окружность
procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
  If kt=0 then treeview1.Items.Add (nil,'Окружность') else
  Begin TreeView1.Items.Delete(TreeView1.Items.Item[ntree]);
  treeview1.Items.Add (nil,'Окружность') End;
  panel5.visible:=false;
  panel1.Visible:=not(panel1.Visible);
  If (kt=0) and (fig[kf,fig[kf,0]]<>0) then inc(kf);
  kt:=4; fig[kf,0]:=-288;
end;

//многоугольник
procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
  If kt=0 then treeview1.Items.Add (nil,'Многоугольник') else
  Begin TreeView1.Items.Delete(TreeView1.Items.Item[ntree]);
  treeview1.Items.Add (nil,'Многоугольник') End;
  panel1.visible:=false;
  panel5.height:=90; panel5.top:=50; panel5.left:=200;
  panel5.Visible:=not(panel5.Visible);
  If (kt=0) and (fig[kf,fig[kf,0]]<>0) then inc(kf);
  kt:=(spinedit1.Value)*2; fig[kf,0]:=kt;
end;

//правильные многоугольники
procedure TForm1.SpeedButton9Click(Sender: TObject);
begin

end;

//переключатель клетки
procedure TForm1.SpeedButton10Click(Sender: TObject);
begin
 form1.PaintBox1.OnPaint (PaintBox1);
end;

//многоугольники(колличество углов)
procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
 If kt=fig[kf,0] then kt:=spinedit1.Value*2;
end;

//нажатие мыши (добавление точек)
procedure TForm1.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
Var pr:integer;
begin
 mc:=true;
 For i:=kf+1 to 100 do For j:=1 to 100 do fig[i,j]:=0;
 If kt=0 then Begin x2:=x; y2:=y; End;
 If kt<>0 then speedbutton2.enabled:=true;
 If kt>0 then
 Begin
  If fig[kf,0]>0 then pr:=fig[kf,0] else pr:=4;
  kt:=kt-1; fig[kf,pr-kt]:=round((x+sx)*(50/ed));                               //записываем X
  kt:=kt-1; fig[kf,pr-kt]:=round((y+sy)*(50/ed));                               //записываем Y
  im[kf,(pr-kt)div 2]:=copy(s,(pr-kt)div 2,1)+inttostr(kf);                     //именуем
  If fig[kf,0]=-288 then Begin im[kf,1]:='O'+inttostr(kf);                      //обработка эллипса
  If checkbox1.Checked=true then fig[kf,4]:=fig[kf,2]+fig[kf,3]-fig[kf,1] End;
  If fig[kf,0]=-28 then im[kf,1]:='a'+inttostr(kf);                             //обработка прямой
  TreeView1.Items.AddChild(TreeView1.Items.Item[ntree], im[kf,(pr-kt)div 2]+    //добавляем в дерево
    ' - x='+inttostr(fig[kf,pr-kt-1])+', y='+inttostr(fig[kf,pr-kt]));
  analiz();
 end;
 form1.PaintBox1.OnPaint (PaintBox1);
end;

//перемещение мыши
procedure TForm1.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 If (kt=0) and (mc=true) then
  Begin
   If (-(sxd-(x2-x))<xmax) then sx:=-(sxd-(x2-x));
   If (sx<0) then sx:=0;
   If (-(syd-(y2-y))<ymax) then sy:=-(syd-(y2-y));
   If (sy<0) then sy:=0;
   form1.PaintBox1.OnPaint (PaintBox1);
  end;
 If (kt<>0) and (mc=false) then
 If fig[kf,1]<>0 then
   Begin
    If fig[kf,0]=-288 then
     Begin
      fig[kf,3]:=round((x+sx)*(50/ed));
      If checkbox1.Checked=true then fig[kf,4]:=fig[kf,2]+fig[kf,3]-fig[kf,1]
      else fig[kf,4]:=round((y+sy)*(50/ed));
     End;
    If fig[kf,0]=-28 then
     Begin

     End;
    form1.PaintBox1.OnPaint(PaintBox1);
    If fig[kf,0]>0 then paintbox1.Canvas.lineto (x,y);
   End;

end;

//отпускание мыши
procedure TForm1.PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 mc:=false;
 If kt=0 then Begin sxd:=-sx; syd:=-sy; End;
end;

//масштабирование
procedure TForm1.PaintBox1MouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
 If (ed+(WheelDelta div 20)>2) and (ed+(WheelDelta div 20)<w) then
  Begin
   ed:=ed+(WheelDelta div 20);
   xmax:=ed*56-450; ymax:=ed*56-450;
    If WheelDelta<0 then
     Begin
      sx:=round(sx*0.5); If (sx)<9 then sx:=0;
      sy:=round(sy*0.5); If (sy)<9 then sy:=0;
     End;
  End;
 form1.PaintBox1.OnPaint (PaintBox1);
end;

//выбор цвета 1
procedure TForm1.ColorBox1Change(Sender: TObject);
begin
 col[kf]:=colorbox1.selected;
end;

//Справочный материал
procedure TForm1.Button1Click(Sender: TObject);
begin
 Form2.visible:=true;
end;

//выбор цвета 2
procedure TForm1.ColorBox2Change(Sender: TObject);
begin
 col[kf]:=colorbox2.selected;
end;

//прорисовка
procedure TForm1.PaintBox1Paint(Sender: TObject);
begin
 w:=paintbox1.Width;
 h:=paintbox1.Height;

 With paintbox1.Canvas do Begin

 clear;

 If speedbutton10.Down=true then Begin
 Pen.Color:=clGray; Pen.Width:=1;
 For i:=(-sx div ed) to (w+sx div ed) do
  line (ed*i-sx,0,ed*i-sx,h);
 For i:=(-sy div ed) to (h+sy div ed) do
  line (0,ed*i-sy,w,ed*i-sy);    End;

 //прорисовка эллипсов
 for i:=1 to kf do
  Begin

   kt1:=fig[i,0];
   Pen.Color:=col[i];

   If kt1=-288 then
    If fig[i,2]<>0 then
     Begin
      x0:=round(fig[i,1]/(50/ed))-sx; y0:=round(fig[i,2]/(50/ed))-sy;
      x1:=round(fig[i,3]/(50/ed))-sx; y1:=round(fig[i,4]/(50/ed))-sy;
      If x1=-sx then x1:=x0; If y1=-sy then y1:=y0;
      ellipse (x0,y0,x1,y1);
      TextOut ((x0+x1) div 2,(y0+y1) div 2,im[i,1]);
     end;
  end;

 for i:=1 to kf do
  Begin

   kt1:=fig[i,0];
   Pen.Color:=col[i];

  //прорисовка точек, отрезков, многоугольников
   If kt1>0 then
    For j:=1 to kt1 do
    If fig[i,j]<>0 then
     Begin
      If (j mod 2)<>0 then Begin x0:=round(fig[i,j]/(50/ed))-sx; y0:=round(fig[i,j+1]/(50/ed))-sy; End;
      If j=1 then Begin Pen.Width := 6; TextOut (x0-20,y0-20,im[i,j div 2]); line (x0,y0,x0,y0); x1:=x0; y1:=y0; End
      else Begin Pen.Width := 2; LineTo (x0,y0); TextOut (x0-20,y0-20,im[i,j div 2]); Pen.Width := 6; line (x0,y0,x0,y0);End;
      If j=kt1 then Begin Pen.Width := 2; lineto (x1,y1); End;
     end;

   //прорисовка прямой
    If kt1=-28 then
    If fig[i,2]<>0 then
     Begin
      x0:=round(fig[i,1]/(50/ed))-sx; y0:=round(fig[i,2]/(50/ed))-sy;
      x1:=round(fig[i,3]/(50/ed))-sx; y1:=round(fig[i,4]/(50/ed))-sy;
      Line (x0+round(y0*abs(x0-y1)/abs(y0-y1)),0,x1-round((h-y1)*abs(y0-y1)/abs(x0-x1)),h);
      TextOut (x0,y0,im[i,1]);
     end;

   end;


 end;
end;


end.

