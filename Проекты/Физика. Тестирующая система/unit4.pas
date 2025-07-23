unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form4: TForm4;

implementation
Uses Unit1;

{$R *.lfm}

{ TForm4 }

procedure TForm4.FormCreate(Sender: TObject);
begin
 form4.left:=form1.left+(form1.width div 2)-(form4.Width div 2);
 form4.top:=form1.top+(form1.height div 2)-(form4.height div 2);
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
  form4.visible:=false;
end;

end.

