unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Memo1: TMemo;
    Label7: TLabel;
    Button3: TButton;
    Button4: TButton;
    Label8: TLabel;
    Label9: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   Var c,c1:array [1..100] of integer;
     x,zn,i,j,ks,kn,p:integer;
     s:string;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
Label 1;
begin
 p:=1;

 c[1]:=random(8)+1;
 zn:=strtoint(edit1.text);
   for i:=2 to zn do
    Begin
 1:   c[i]:=random (9)+1;
      For j:=1 to i-1 do
       if c[i]=c[j] then goto 1;
    end;
 button1.Enabled:=false;
 button1.visible:=false;
 button2.Enabled:=true;
 edit1.enabled:=false;
 memo1.Clear;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 button1.Enabled:=true;
 button1.visible:=true;
 button2.Enabled:=false;
 edit1.enabled:=true;
 memo1.Clear;
 label2.Caption:='1)';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  s:=edit2.Text;
 If s<>'' then
  Begin
   memo1.Lines.add (inttostr(p)+') Попытка.');
   inc (p);
   label2.Caption:=inttostr(p)+')';
    For i:=1 to zn do
     c1[i]:=strtoint (s[i]);
     memo1.Lines.add ('Ваше число - '+s);

    ks:=0;
    for i:=1 to zn do
     If c[i]=c1[i] then inc (ks);
     label8.caption:=inttostr(ks);
     memo1.Lines.add (inttostr(ks)+' - цифр совпало');

    kn:=0;
     for i:= 1 to zn do
      For j:= 1 to zn do
       If (c[i]=c1[j]) and (i<>j) then inc (kn);
       label9.caption:=inttostr(kn);
       memo1.Lines.Add (inttostr(kn)+' - цифр присутствует');


    If ks=zn then
     Begin
      memo1.lines.add ('УГАДАНО! Число - '+s);
      button1.Enabled:=true;
      button1.visible:=true;
      button2.Enabled:=false;
      edit1.enabled:=true;
     End;
   memo1.Lines.Add (' ');
   edit2.text:='';
  End;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 form2.show;
end;

end.
