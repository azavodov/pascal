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
a[1]:='��?';
a[2]:='�����';
a[3]:='�����!';
a[4]:='� ���!';
a[5]:='�����?';
button1.top:=random (350)+50;
button1.left:=random (350)+50;
button1.Caption:=a[random (5)+1];
end;

end.
