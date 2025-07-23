unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
 Var a: array [1..10] of string;
begin
a[1]:='Õ”?';
a[2]:='Õ¿∆Ã»';
a[3]:='ƒ¿¬¿…!';
a[4]:='ﬂ ∆ƒ”!';
a[5]:='— Œ–Œ?';
button1.top:=random (350)+50;
button1.left:=random (350)+50;
button1.Caption:=a[random (5)+1];
end;

end.
