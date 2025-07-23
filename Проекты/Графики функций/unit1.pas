unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Spin, Arrow, ColorBox, ExtDlgs, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    ColorDialog1: TColorDialog;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    PaintBox1: TPaintBox;
    Panel1: TPanel;
    Panel2: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    SaveDialog1: TSaveDialog;
    SpinEdit1: TSpinEdit;
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

  Var x,y,xk,xn:real;
      x1,y1,i,ed,q,cx,cy,w,h,j,ng,cvetf,k,nf:integer;
      c,ya,yb,yc: real;
      cvet,lw: array [1..10] of integer;
      x0: array [0..50] of real;
      g1,g2,g3,g4:integer;
      fn,s,s7,z:string;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin

 Paintbox1.Canvas.Clear;

   x:=-cx/ed;
   xk:=(w-cx)/ed;
   xn:=x;

   With paintbox1.canvas do
    Begin
    pen.width:=1;
    Pen.Color:=$00C8C8C8;

    for i:=-200 to 200 do
     begin
      Line(cx+i*ed,0,cx+i*ed,h);
      Line(0,cy+i*ed,w,cy+i*ed);
     If ed>50 then
       Begin
        Line(cx+i*ed+(ed div 2),0,cx+i*ed+(ed div 2),h);
        Line(0,cy+i*ed+(ed div 2),w,cy+i*ed+(ed div 2));
       End;
     End;

  Pen.Color:=clblack;
  Line(0,cy,w,cy);
  Lineto(w-20,cy+5);
  Line(w,cy,w-20,cy-5);
  TextOut(w-20,cy+19,'X');
  Line(cx,0,cx,h);
  Line(cx,0,cx+5,20);
  Line(cx,0,cx-5,20);
  TextOut(cx+19,10,'Y');
  TextOut(cx+5,cy+5,'0');


     for i:=-200 to 200 do
       begin
        line (cx+i*ed,cy-3,cx+i*ed,cy+3);
        line (cx-3,cy+i*ed,cx+3,cy+i*ed);
        If i<>0 then textout (cx+3,cy+5-i*ed,inttostr(i));
        If i>0 then q:=4 else q:=-4;
        If i>9 then q:=-2;
        If i<>0 then textout (cx+i*ed+q,cy+5,inttostr(i));
       End;



 {  For i:=1 to 5 do
   Begin

     x:=xn;
     If (checkbox1.checked=false) and (i=1) then inc(i);
     If (checkbox2.checked=false) and (i=2) then inc(i);
     If (checkbox3.checked=false) and (i=3) then inc(i);
     If (checkbox4.checked=false) and (i=4) then inc(i);
     If (checkbox5.checked=false) and (i=5) then break;
     ng:=i;
     pen.color:=cvet[i];
     pen.width:=lw[i];
     While x<xk do
     Begin
      y:=gr(ng,x);
      x1:=cx+round(x*ed);
      y1:=cy-Round(y*ed);
      if x=xn then moveto(x1,y1);
      lineto(x1,y1);
      x:=x+1/ed/5;
     End;
   End; }


   End;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  Paintbox1.Canvas.clear;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 cy:=cy-10;
 Button1.Click;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 cy:=cy+10;
 Button1.Click;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 cx:=cx-10;
 Button1.Click;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 cx:=cx+10;
 Button1.Click;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ed:=45;
  cx:=250;
  cy:=250;
  w:=PaintBox1.width;
  h:=PaintBox1.Height;

  For i:=1 to 5 do
   cvet[i]:=0;
  for i:=1 to 5 do
   lw[i]:=0;

 Paintbox1.canvas.clear;
end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
  ed:=spinedit1.value;
  button1.click;
end;

end.

