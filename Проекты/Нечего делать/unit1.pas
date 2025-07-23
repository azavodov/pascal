unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, ColorBox, ComCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    ColorBox1: TColorBox;
    Image1: TImage;
    PaintBox1: TPaintBox;
    Panel1: TPanel;
    TrackBar1: TTrackBar;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
 Var x,y,r,i: integer;
begin
  r:=30;
   While 1<2 do
    Begin
     x:=random (2000);
     y:=random (1000);
      paintbox1.Canvas.Pen.Color:=colorbox1.color;
       For i:=1 to 10 do
        Begin
         paintbox1.Canvas.EllipseC (x,y,r,r);
         If i=10 then r:=30 else r:=r-3;
        End;
    End;
end;

end.

