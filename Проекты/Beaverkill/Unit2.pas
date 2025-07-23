unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mmsystem;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Edit1: TEdit;
    gametimer: TTimer;
    Label1: TLabel;
    Edit2: TEdit;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure gametimerTimer(Sender: TObject);
    procedure Image15MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image16MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image15Click(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

 Var p,i,time,prov:integer;
     ran1,ran2,ran3,ran4:integer;
     p1,p2,p3:integer;
     r:array [1..9] of string;
     level:integer=1;


implementation

Uses Unit1, Unit3, Unit4;

{$R *.dfm}


procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 closefile (f);
 Application.Terminate;
end;

procedure TForm2.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 If p=0 then Begin p:=1; image2.picture.LoadFromFile ('picture/start1.bmp'); End
end;

procedure TForm2.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 If p=1 then
 Begin
  p:=0;
  image2.picture.LoadFromFile ('picture/start.bmp');
  image15.picture.LoadFromFile ('picture/gallery.bmp');
  image16.picture.LoadFromFile ('picture/shop.bmp');
 End;

end;


procedure TForm2.Image3Click(Sender: TObject);
begin
If gametimer.Enabled=false then
Begin
 image3.picture.LoadFromFile ('picture/1level1.bmp');
 image4.picture.LoadFromFile ('picture/2level.bmp');
 image5.picture.LoadFromFile ('picture/3level.bmp');
 level:=1; prov:=level;
 playsound ('sound/1.wav',0,SND_ASYNC);
End;
end;


procedure TForm2.Image4Click(Sender: TObject);
begin
If gametimer.Enabled=false then
Begin
 image3.picture.LoadFromFile ('picture/1level.bmp');
 image4.picture.LoadFromFile ('picture/2level2.bmp');
 image5.picture.LoadFromFile ('picture/3level.bmp');
 level:=2; prov:=level;
 playsound ('sound/1.wav',0,SND_ASYNC);
End;
end;

procedure TForm2.Image5Click(Sender: TObject);
begin
If gametimer.Enabled=false then
Begin
 image3.picture.LoadFromFile ('picture/1level.bmp');
 image4.picture.LoadFromFile ('picture/2level.bmp');
 image5.picture.LoadFromFile ('picture/3level3.bmp');
 level:=3; prov:=level;
 playsound ('sound/1.wav',0,SND_ASYNC);
End;
end;

procedure TForm2.Image2Click(Sender: TObject);
begin
 gametimer.enabled:=true;
 playsound ('sound/1.wav',0,SND_ASYNC);
end;

procedure TForm2.gametimerTimer(Sender: TObject);
label 1;
begin
If level=prov then
 Begin
 prov:=0;
 edit1.text:=inttostr(kolp);
 edit2.text:=inttostr(kolb);
 For i:=1 to 9 do
  r[i]:='picture/яма.bmp';
 inc (time);
 label1.caption:=inttostr(time)+' sec.';
  1: ran1:=random(9)+1;
     ran2:=random(9)+1;
     ran3:=random(9)+1;
     ran4:=random(9)+1;
    If (ran1=ran2) or (ran2=ran3) or
       (ran3=ran4) or (ran1=ran4) or
       (ran3=ran1) or (ran2=ran4) then goto 1;
 If level=1 then
  Begin
   r[ran1]:='picture/бобр.bmp';
   r[ran2]:='picture/pol.bmp';
   r[ran3]:='picture/pol.bmp';
   r[ran4]:='picture/pol.bmp';
  End;

 If level=2 then
  Begin
   r[ran1]:='picture/бобр.bmp';
   r[ran2]:='picture/бобр.bmp';
   r[ran3]:='picture/pol.bmp';
   r[ran4]:='picture/pol.bmp';
  End;

  If level=3 then
  Begin
   r[ran1]:='picture/бобр.bmp';
   r[ran2]:='picture/бобр.bmp';
   r[ran3]:='picture/бобр.bmp';
   r[ran4]:='picture/polbol.bmp';
  End;

  image6.Picture.LoadFromFile (r[1]);
  image7.Picture.LoadFromFile (r[2]);
  image8.Picture.LoadFromFile (r[3]);
  image9.Picture.LoadFromFile (r[4]);
  image10.Picture.LoadFromFile (r[5]);
  image11.Picture.LoadFromFile (r[6]);
  image12.Picture.LoadFromFile (r[7]);
  image13.Picture.LoadFromFile (r[8]);
  image14.Picture.LoadFromFile (r[9]);
 End
 else
 Begin
  time:=0;
  For i:=1 to 9 do
  r[i]:='picture/яма.bmp';
  image6.Picture.LoadFromFile (r[1]);
  image7.Picture.LoadFromFile (r[2]);
  image8.Picture.LoadFromFile (r[3]);
  image9.Picture.LoadFromFile (r[4]);
  image10.Picture.LoadFromFile (r[5]);
  image11.Picture.LoadFromFile (r[6]);
  image12.Picture.LoadFromFile (r[7]);
  image13.Picture.LoadFromFile (r[8]);
  image14.Picture.LoadFromFile (r[9]);
  gametimer.Enabled:=false;
  prov:=level;
  rewrite (f);
  form4.label8.caption:=inttostr(kolb*10+kolp*10);
  Writeln (f,nik); Writeln (f,kolb); Writeln (f,kolp);
  playsound ('sound/fail.wav',0,SND_ASYNC);
 End;
end;

procedure TForm2.Image15MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  If p=0 then Begin p:=1; image15.picture.LoadFromFile ('picture/gallery1.bmp'); End
end;

procedure TForm2.Image16MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  If p=0 then Begin p:=1; image16.picture.LoadFromFile ('picture/shop1.bmp'); End
end;

procedure TForm2.Image15Click(Sender: TObject);
begin
 form3.Top:=form2.Top;
 form3.Left:=form2.Left-340;
 form3.show;
end;

procedure TForm2.Image16Click(Sender: TObject);
begin
 form4.Top:=form2.Top;
 form4.Left:=form2.Left+340;
 form4.show;
end;

procedure TForm2.Image6Click(Sender: TObject);
begin
 If r[1]='picture/бобр.bmp' then
 If level=1 then inc(kolb) else If level=2 then
 kolb:=kolb+2 else kolb:=kolb+3;

 If r[1]='picture/бобр.bmp' then
 Begin inc (prov); playsound ('sound/1.wav',0,SND_ASYNC);
 image6.Picture.LoadFromFile ('picture/бобр1.bmp'); End;

 If r[1]='picture/pol.bmp' then
 If level=1 then inc(kolp) else kolp:=kolp+5;
 If r[1]='picture/polbol.bmp' then kolp:=kolp+10;

 If (r[1]='picture/pol.bmp') or (r[1]='picture/polbol.bmp') then
 image6.Picture.LoadFromFile ('picture/яма.bmp');
end;

procedure TForm2.Image7Click(Sender: TObject);
begin
 If r[2]='picture/бобр.bmp' then
 If level=1 then inc(kolb) else If level=2 then
 kolb:=kolb+2 else kolb:=kolb+3;

 If r[2]='picture/бобр.bmp' then
 Begin inc (prov); playsound ('sound/1.wav',0,SND_ASYNC);
 image7.Picture.LoadFromFile ('picture/бобр1.bmp'); End;

 If r[2]='picture/pol.bmp' then
 If level=1 then inc(kolp) else kolp:=kolp+5;
 If r[2]='picture/polbol.bmp' then kolp:=kolp+10;

 If (r[2]='picture/pol.bmp') or (r[2]='picture/polbol.bmp') then
 image7.Picture.LoadFromFile ('picture/яма.bmp');
end;

procedure TForm2.Image8Click(Sender: TObject);
begin
 If r[3]='picture/бобр.bmp' then
 If level=1 then inc(kolb) else If level=2 then
 kolb:=kolb+2 else kolb:=kolb+3;

 If r[3]='picture/бобр.bmp' then
 Begin inc (prov); playsound ('sound/1.wav',0,SND_ASYNC);
 image8.Picture.LoadFromFile ('picture/бобр1.bmp'); End;

 If r[3]='picture/pol.bmp' then
 If level=1 then inc(kolp) else kolp:=kolp+5;
 If r[3]='picture/polbol.bmp' then kolp:=kolp+10;

 If (r[3]='picture/pol.bmp') or (r[3]='picture/polbol.bmp') then
 image8.Picture.LoadFromFile ('picture/яма.bmp');
end;

procedure TForm2.Image9Click(Sender: TObject);
begin
 If r[4]='picture/бобр.bmp' then
 If level=1 then inc(kolb) else If level=2 then
 kolb:=kolb+2 else kolb:=kolb+3;

 If r[4]='picture/бобр.bmp' then
 Begin inc (prov); playsound ('sound/1.wav',0,SND_ASYNC);
 image9.Picture.LoadFromFile ('picture/бобр1.bmp'); End;

 If r[4]='picture/pol.bmp' then
 If level=1 then inc(kolp) else kolp:=kolp+5;
 If r[4]='picture/polbol.bmp' then kolp:=kolp+10;

 If (r[4]='picture/pol.bmp') or (r[4]='picture/polbol.bmp') then
 image9.Picture.LoadFromFile ('picture/яма.bmp');
end;

procedure TForm2.Image10Click(Sender: TObject);
begin
 If r[5]='picture/бобр.bmp' then
 If level=1 then inc(kolb) else If level=2 then
 kolb:=kolb+2 else kolb:=kolb+3;

 If r[5]='picture/бобр.bmp' then
 Begin inc (prov); playsound ('sound/1.wav',0,SND_ASYNC);
 image10.Picture.LoadFromFile ('picture/бобр1.bmp'); End;

 If r[5]='picture/pol.bmp' then
 If level=1 then inc(kolp) else kolp:=kolp+5;
 If r[5]='picture/polbol.bmp' then kolp:=kolp+10;

 If (r[5]='picture/pol.bmp') or (r[5]='picture/polbol.bmp') then
 image10.Picture.LoadFromFile ('picture/яма.bmp');
end;

procedure TForm2.Image11Click(Sender: TObject);
begin
 If r[6]='picture/бобр.bmp' then
 If level=1 then inc(kolb) else If level=2 then
 kolb:=kolb+2 else kolb:=kolb+3;

 If r[6]='picture/бобр.bmp' then
 Begin inc (prov); playsound ('sound/1.wav',0,SND_ASYNC);
 image11.Picture.LoadFromFile ('picture/бобр1.bmp'); End;

 If r[6]='picture/pol.bmp' then
 If level=1 then inc(kolp) else kolp:=kolp+5;
 If r[6]='picture/polbol.bmp' then kolp:=kolp+10;

 If (r[6]='picture/pol.bmp') or (r[6]='picture/polbol.bmp') then
 image11.Picture.LoadFromFile ('picture/яма.bmp');
end;

procedure TForm2.Image12Click(Sender: TObject);
begin
 If r[7]='picture/бобр.bmp' then
 If level=1 then inc(kolb) else If level=2 then
 kolb:=kolb+2 else kolb:=kolb+3;

 If r[7]='picture/бобр.bmp' then
 Begin inc (prov); playsound ('sound/1.wav',0,SND_ASYNC);
 image12.Picture.LoadFromFile ('picture/бобр1.bmp'); End;

 If r[7]='picture/pol.bmp' then
 If level=1 then inc(kolp) else kolp:=kolp+5;
 If r[7]='picture/polbol.bmp' then kolp:=kolp+10;

 If (r[7]='picture/pol.bmp') or (r[7]='picture/polbol.bmp') then
 image12.Picture.LoadFromFile ('picture/яма.bmp');
end;

procedure TForm2.Image13Click(Sender: TObject);
begin
 If r[8]='picture/бобр.bmp' then
 If level=1 then inc(kolb) else If level=2 then
 kolb:=kolb+2 else kolb:=kolb+3;

 If r[8]='picture/бобр.bmp' then
 Begin inc (prov); playsound ('sound/1.wav',0,SND_ASYNC);
 image13.Picture.LoadFromFile ('picture/бобр1.bmp'); End;

 If r[8]='picture/pol.bmp' then
 If level=1 then inc(kolp) else kolp:=kolp+5;
 If r[8]='picture/polbol.bmp' then kolp:=kolp+10;

 If (r[8]='picture/pol.bmp') or (r[8]='picture/polbol.bmp') then
 image13.Picture.LoadFromFile ('picture/яма.bmp');
end;

procedure TForm2.Image14Click(Sender: TObject);
begin
 If r[9]='picture/бобр.bmp' then
 If level=1 then inc(kolb) else If level=2 then
 kolb:=kolb+2 else kolb:=kolb+3;

 If r[9]='picture/бобр.bmp' then
 Begin inc (prov); playsound ('sound/1.wav',0,SND_ASYNC);
 image14.Picture.LoadFromFile ('picture/бобр1.bmp'); End;

 If r[9]='picture/pol.bmp' then
 If level=1 then inc(kolp) else kolp:=kolp+5;
 If r[9]='picture/polbol.bmp' then kolp:=kolp+10;

 If (r[9]='picture/pol.bmp') or (r[9]='picture/polbol.bmp') then
 image14.Picture.LoadFromFile ('picture/яма.bmp');
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
prov:=level;
end;

end.
