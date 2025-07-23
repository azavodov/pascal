unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit4: TEdit;
    Panel1: TPanel;
    Label4: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  If (sqrt(strtofloat(edit2.text)*strtofloat(edit2.text)+(-4)*strtofloat(edit1.text)*strtofloat(edit3.text)))<0 then edit4.text:='D - отрицательный' else
  Begin
  edit4.text:=floattostr(sqrt(strtofloat(edit2.text)*strtofloat(edit2.text)+(-4)*strtofloat(edit1.text)*strtofloat(edit3.text)));
  edit5.text:=floattostr((((-1)*strtofloat(edit2.text))+strtofloat(edit4.text))/(2*strtofloat(edit1.text)));
  edit6.text:=floattostr((((-1)*strtofloat(edit2.text))-strtofloat(edit4.text))/(2*strtofloat(edit1.text)));
  End;
end;

end.
