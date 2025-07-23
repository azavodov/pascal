unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mmsystem, MPlayer;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Image2: TImage;
    MediaPlayer1: TMediaPlayer;
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MediaPlayer1Notify(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1;
   Var nik,nik1:string;
       kolb,kolp:integer;
       f:textfile;
       n:integer=1;
       i:integer=1;
       
implementation

uses Unit2, Unit4;

{$R *.dfm}

procedure TForm1.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 If n=1 then Begin n:=2; image2.picture.loadfromfile ('picture/2кн.bmp'); End;
end;


procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 If n=2 then Begin n:=1; image2.picture.loadfromfile ('picture/1кн.bmp'); End;
end;

procedure TForm1.Image2Click(Sender: TObject);
label 1;
begin
 form2.top:=form1.Top;
 form2.Left:=form1.Left;
 form2.show;
 playsound ('sound/1.wav',0,SND_ASYNC);
 assignfile (f,'result.txt');
 reset (f);
 If edit1.text<>'' then
  Begin
   nik:=edit1.Text;
   form4.edit1.Text:=nik;
   
   Readln (f,nik1);
   If nik1=nik then Begin Readln (f,kolb); readln (f,kolp); End
   Else Begin rewrite (f); writeln (f,nik); End;
   form4.label8.caption:=inttostr(kolb*10+kolp*10);
  End;
 form1.visible:=false;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
mediaplayer1.Play;
end;

procedure TForm1.MediaPlayer1Notify(Sender: TObject);
begin
 with MediaPlayer1 do
  if NotifyValue=nvSuccessful then
    begin
    Notify:=True;
    Play;
    end;
end;

end.
