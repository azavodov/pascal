unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ComCtrls, ExtCtrls, LResources, Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Memo1: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    ProgressBar1: TProgressBar;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;


var
   Form1: TForm1;
   i,j,k,posl,l,p:integer;
   s,s1: string;
   pi,x: array [1..5000000] of byte;
   f1,f2:textfile;
implementation

{$R *.lfm}



{ TForm1 }
procedure TForm1.FormCreate(Sender: TObject);     // Считывание ПИ
var res: TLResource;
Begin
 res := LazarusResources.Find('pires');
 Assignfile (f1,'pi.txt'); Rewrite (f1); k:=1;
 Writeln (f1,res.Value);
 closefile (f1); Reset (f1);
  For i:=1 to 53773 do
   Begin
    readln (f1,s);
     For j:=1 to length (s) do
      Begin pi[k]:=strtoint(s[j]); inc (k);  End;
   End;

 closefile (f1); deletefile ('pi.txt');
 End;

procedure TForm1.Button1Click(Sender: TObject);   // ПОИСК
begin
 memo1.Clear; k:=1; progressbar1.visible:=true; progressbar1.position:=0;

 If radiobutton1.Checked=false then
  Begin s:=edit2.text; l:=length(s);
   For i:=1 to l do
    s1:=s1+inttostr(ord(s[i]));    memo1.Lines.Add (s1);
   s:=s1; s1:='';
  End
 else
  Begin s:=edit1.text; l:=length(s); end;

 For i:=1 to 4248070 do
   Begin  s1:='';
     For j:=0 to l-1 do
      s1:=s1+inttostr(pi[i+j]);
     If s1=s then
     Begin memo1.Lines.Add (inttostr(k)+') С позиции - '+inttostr(i)+' - ');
     memo1.Lines.Add ('последовательность : ... '+s+' ... '); x[k]:=i; inc (k); End;
     progressbar1.position:=i;
   end;

 If memo1.Lines[1]='' then memo1.Lines.Add ('Последовательность в ПИ не найдена :(') else
 progressbar1.visible:=false;
end;

procedure TForm1.Button2Click(Sender: TObject);   // ОК
begin
  panel1.Visible:=false;
end;

procedure TForm1.Button3Click(Sender: TObject);   // статистика
begin
 Form2.visible:=true;
end;

procedure TForm1.Button4Click(Sender: TObject);   // вопросик
begin
  If listbox2.visible=true then
  listbox2.visible:=false else
  listbox2.visible:=true;
end;

procedure TForm1.Button5Click(Sender: TObject);   // вывод ПИ
Var t1,t2:integer; s3:string;
begin
  memo1.Clear; s3:=''; memo1.Lines.add ('3.');
  t1:=strtoint(edit3.text); If t1=1 then t1:=2;
  t2:=strtoint(edit4.text);
   For i:=t1 to t2 do
    If (((i-t1+1) mod 30)=0) or (i=t2) then
    Begin memo1.Lines.add (s3); s3:='' End
    else s3:=s3+inttostr(pi[i]);
end;

initialization
{$I pires.lrs}

end.

