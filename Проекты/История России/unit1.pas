unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Buttons, PairSplitter, ComCtrls, types;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    PaintBox1: TPaintBox;
    Panel1: TPanel;
    ScrollBar1: TScrollBar;
    ScrollBar2: TScrollBar;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PaintBox1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure PaintBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure PaintBox1Paint(Sender: TObject);
    procedure ScrollBar1Scroll(Sender: TObject; ScrollCode: TScrollCode;
      var ScrollPos: Integer);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

Var a,b,c:integer; a1,b1,c1:real;       //переменные для промежуточных расчетов
    i,j:integer;                        //переменные для циклов
    g1,g2,mas,kg,god,godpr:integer;     //!!! системные переменные !!!
    pbw,pbh:integer;                    //размеры рабочей области

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
 g1:=860; g2:=2015;
 mas:=50; kg:=10;
end;

//кнопка выдвижения и задвижения настроек
procedure TForm1.Button1Click(Sender: TObject);
begin

end;

// наведение мыши
procedure TForm1.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 form1.PaintBox1Paint(paintbox1);
 with paintbox1.canvas do
   Begin
    pen.width:=1;
    pen.Color:=clgray;
    line (X,0,X,pbh);
    line (X,pbh div 2,X+25,(pbh div 2)-25);
    lineto (X+60,(pbh div 2)-25);
    lineto (X+60,(pbh div 2)-9);
    lineto (X+25,(pbh div 2)-9);
    lineto (X,pbh div 2);
    godpr:=round(((g2-g1) / pbw)*x+g1);
    TextOut(X+30,(pbh div 2)-24,inttostr(godpr));
    ellipse (X-5,(pbh div 2)-5,X+5,(pbh div 2)+5);
   end;
end;

// уменьшение масштаба
procedure TForm1.PaintBox1MouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
 If (g1>=910) and (g2<=1965) then
  Begin g1:=g1-50; g2:=g2+50; mas:=mas-5; end
 else Begin g1:=860; g2:=2015; mas:=50; scrollbar1.enabled:=false; End;
 form1.PaintBox1Paint(paintbox1);
end;

// увеличение масштаба
procedure TForm1.PaintBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
 scrollbar1.enabled:=true;
 If (g2-g1)>=100 then
 Begin g1:=g1+50; g2:=g2-50; mas:=mas+5; End;
 form1.PaintBox1Paint(paintbox1);
end;

// прорисовка ленты (live)
procedure TForm1.PaintBox1Paint(Sender: TObject);
begin
 scrollbar1.position:=g1;
 scrollbar1.pagesize:=g2-g1;
 paintbox1.Canvas.Clear;
 kg:=paintbox1.width div mas;
 with PaintBox1.canvas do
  begin
    Pen.Width := 1;
    Pen.Color := clRed;
    pbw:=paintbox1.width;
    pbh:=paintbox1.height;
    line (0,(pbh div 2)-2,pbw-10,(pbh div 2)-2);
    line (0,(pbh div 2)+2,pbw-10,(pbh div 2)+2);
    line (pbw,(pbh div 2),pbw-10,(pbh div 2)-5);
    lineto (pbw-10,(pbh div 2)+5);
    lineto (pbw,pbh div 2);
    For i:=1 to kg do
     Begin
      god:=round(((g2-g1) / kg )*i+g1);
      Ellipse (round((pbw / kg)*i-2),(pbh div 2)-2,round((pbw / kg)*i+2),(pbh div 2)+2);
      TextOut((pbw div kg)*i-25,(pbh div 2)+5,inttostr(god));
     End;
  end;
end;

// движение ползунка
procedure TForm1.ScrollBar1Scroll(Sender: TObject; ScrollCode: TScrollCode;
  var ScrollPos: Integer);
begin
 a:=g1; g1:=ScrollPos;
 g2:=g2+g1-a;
 form1.PaintBox1Paint(paintbox1);
end;

end.

