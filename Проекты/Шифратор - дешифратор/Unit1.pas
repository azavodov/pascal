unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    ListBox2: TListBox;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

Var s,s1:string;
    i,j,kod,sh,r:integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 listbox2.Clear;
 s:=edit2.Text;
  while s<>'' do
   Begin
    r:=length(s);
    sh:=random(r);
    s1:=s1+inttostr(sh);
    s1:=s1+copy(s,sh,1);
    delete (s,sh,1);
   End;
  If edit1.text<>'' then
   Begin

   End;
 listbox2.Items.add (s1);
end;

end.
