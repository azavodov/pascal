unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, MPlayer, MMSystem;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    ProgressBar1: TProgressBar;
    MediaPlayer1: TMediaPlayer;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    SpeedButton4: TSpeedButton;
    Panel2: TPanel;
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    SpeedButton2: TSpeedButton;
    MediaPlayer2: TMediaPlayer;
    MediaPlayer3: TMediaPlayer;
    MediaPlayer4: TMediaPlayer;
    MediaPlayer5: TMediaPlayer;
    procedure FormCreate(Sender: TObject);
    procedure BOSS();
    procedure Pzomb();
    procedure Pshoot();
    procedure Pzombshoot();
    procedure Draw();
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MediaPlayer1Notify(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Image4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image10MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image11MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

  orug: array [1..2] of TbitMap;
  zomb: array [1..3] of TbitMap;
  zdd: array [1..4] of Tbitmap;
  levelpic: array [1..10] of tbitmap;
  bosspic: array [1..7] of Tbitmap;
  fon,pr,str,pl,bossbody: tbitmap;
  zx,zy: array [1..100] of integer;
  zfr,zdfr: array [1..100] of integer;
  px,py: array [1..100] of integer;
  vsx,vsy,vsvr,krx,kry,krvr: array [1..100] of integer;
  bx,by,bhealth,barhealth: integer;
  zombfr,level,lv,vst,health,ktr,k:integer;
  xorug,yorug:integer;
  fight:boolean;
  zv1,zv2,zv3,zv4,sl5:boolean;

implementation

{$R *.dfm}
{$R res.res}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
 Var i:integer;
 muz : TResourceStream;
begin
  createdir ('musicres');
  muz:=TResourceStream.Create(Hinstance, 'fonzv', Pchar('WAVE'));
  muz.SavetoFile('musicres/fonzv.wav');
  muz:=TResourceStream.Create(Hinstance, 'ocher', Pchar('WAVE'));
  muz.SavetoFile('musicres/ocher.wav');
  muz:=TResourceStream.Create(Hinstance, 'shoot', Pchar('WAVE'));
  muz.SavetoFile('musicres/shoot.wav');
  muz:=TResourceStream.Create(Hinstance, 'zomb', Pchar('WAVE'));
  muz.SavetoFile('musicres/zomb.wav');
  muz:=TResourceStream.Create(Hinstance, 'zvon', Pchar('WAVE'));
  muz.SavetoFile('musicres/zvon.wav');
  mediaplayer1.FileName:='musicres/fonzv.wav'; mediaplayer1.Open;
  mediaplayer2.FileName:='musicres/shoot.wav'; mediaplayer2.Open;
  mediaplayer3.FileName:='musicres/ocher.wav'; mediaplayer3.Open;
  mediaplayer4.FileName:='musicres/zomb.wav';  mediaplayer4.Open;
  mediaplayer5.FileName:='musicres/zvon.wav';  mediaplayer5.Open;
  mediaplayer1.Play;

  zv1:=true; zv2:=true; zv3:=true;
  zv4:=true; sl5:=true;
  panel1.color:=$008080FF;
  fight:=false;
  progressbar1.position:=100;
  xorug:=250; yorug:=250;
  level:=0; health:=5000; ktr:=0; lv:=0;
  fon:= tbitmap.Create;
  fon.LoadFromResourceName (HInstance, 'fon');
  pr:= tbitmap.Create;
  pr.LoadFromResourceName (HInstance, 'pr');
  pr.transparent:=true;
  str:= tbitmap.Create;
  str.LoadFromResourceName(HInstance, 'str');
  str.transparent:=true;
  pl:= tbitmap.Create;
  pl.LoadFromResourceName(HInstance, 'pl');
  pl.transparent:=true;
  bossbody:= tbitmap.Create;
  bossbody.LoadFromResourceName(HInstance, 'boss');
  bossbody.transparent:=true;

  For i:=1 to 2 do
   Begin
     orug[i]:= TbitMap.Create;
     orug[i].LoadFromResourceName(HInstance, 'orug'+inttostr(i));
     orug[i].Transparent:=true;
   end;

  For i:=1 to 3 do
   Begin
     zomb[i]:= TbitMap.Create;
     zomb[i].LoadFromResourceName(HInstance, 'zomb'+inttostr(i));
     zomb[i].Transparent:=true;
   end;

  For i:=1 to 7 do
   Begin
     bosspic[i]:= TbitMap.Create;
     bosspic[i].LoadFromResourceName(HInstance, inttostr(i)+'b');
     bosspic[i].Transparent:=true;
   end;

  For i:=1 to 10 do
    Begin
     levelpic[i]:= TbitMap.Create;
     levelpic[i].LoadFromResourceName(HInstance, 'l'+inttostr(i)+'l');
     levelpic[i].Transparent:=true;
    End;

  For i:=1 to 4 do
    Begin
     zdd[i]:= TbitMap.Create;
     zdd[i].LoadFromResourceName(HInstance, 'zdd'+inttostr(i));
     zdd[i].Transparent:=true;
    End;
end;

procedure TForm1.BOSS;
Var i:integer;
begin

 If k=0 then
     Begin
      If zv4=true then mediaplayer5.Play;
      bx:=200; by:=100;
      For i:=1 to 100 do
       Begin
        px[i]:=0; py[i]:=0;
        zx[i]:=0; zy[i]:=0;
       end;
      case (level) of
       1: bhealth:=20;
       2: bhealth:=50;
       3: bhealth:=80;
       4: bhealth:=100;
       5: bhealth:=150;
       6: bhealth:=200;
       7: bhealth:=500;
      end;
      barhealth:=bhealth;
      progressbar1.position:=100;
      progressbar1.visible:=true;
     end;

 inc (k);

 If (k>=1) and (k<20) then image1.canvas.draw (100,200,levelpic[8]);
 If (k>=2) and (k<20) then image1.canvas.draw (150,200,levelpic[9]);
 If (k>=3) and (k<20) then image1.canvas.draw (200,200,levelpic[10]);
 If (k>=4) and (k<20) then image1.canvas.draw (250,200,levelpic[9]);
 If (k>=5) and (k<20) then image1.canvas.draw (300,200,levelpic[8]);
 If (k>=6) and (k<20) then image1.canvas.draw (350,200,levelpic[level]);

end;

procedure TForm1.Draw;
Var i:integer;
begin
 image1.Canvas.draw (0, 0, fon);
 If level=lv then Begin
  For i:=1 to 100 do
     If zx[i]>0 then image1.Canvas.draw (zx[i], zy[i], zomb[zfr[i]]) End
    else
  Begin
   image1.Canvas.draw (bx, by, bossbody);
   image1.Canvas.draw (bx+40, by+10, bosspic[level]);
  End;
  For i:=1 to 100 do
     If px[i]>0 then
      image1.Canvas.draw (px[i], py[i], pl);
  For i:=1 to 100 do
     If krx[i]>0 then
      image1.Canvas.draw (krx[i], kry[i], zdd[krvr[i]]);
  For i:=1 to 100 do
     If vsx[i]>0 then
      image1.Canvas.draw (vsx[i], vsy[i], str);
  image1.Canvas.draw (xorug, 400, orug[vst]);
  form1.image1.Canvas.draw (xorug, yorug, pr);
  form1.edit1.text:='Здоровье - '+inttostr(health);
  form1.edit2.text:='Убийств - '+inttostr(ktr);
  form1.edit3.text:='Уровень - '+inttostr(level);
  vst:=1;
end;

procedure TForm1.Pshoot;
Var i,j:integer;
begin
 If fight=true then
Begin

 If sl5=true then
 For i:=1 to 100 do
       If vsx[i]=0 then
        Begin vsx[i]:=xorug; vsy[i]:=yorug; break; End;

If level=lv then
Begin
 If zv2=true then mediaplayer2.Play;
 For i:=1 to 100 do
   Begin
    vst:=2; fight:=false;
    If (zx[i]+10<xorug) and (zx[i]+40>xorug)
    and (zy[i]<yorug) and (zy[i]+80>yorug) then
      Begin
        If zv4=true then mediaplayer4.Play;
         For j:=1 to 100 do
          If krx[j]=0 then
           Begin krx[j]:=zx[i]; kry[j]:=zy[i]; krvr[j]:=1; break; End;
         zx[i]:=0;
        zy[i]:=0;
        inc(ktr);
      end;
   end;
   level:=(ktr div 20);
End
else
Begin
vst:=2;
If zv2=true then mediaplayer3.Play;
If (bx+30<xorug) and (bx+120>xorug)
and (by+30<yorug) and (by+120>yorug) then
bhealth:=bhealth-1;
If bhealth<=0 then
  Begin lv:=level; progressbar1.visible:=false; If zv4=true then mediaplayer4.Play; End else
 progressbar1.position:=round(bhealth/barhealth*100);
 If lv=7 then SpeedButton2.Click;
End;

End;

For i:=1 to 100 do
  Begin
   If vsx[i]>0 then inc (vsvr[i]);
   If krx[i]>0 then inc (krvr[i]);
   If vsvr[i]=5 then Begin vsx[i]:=0; vsy[i]:=0; vsvr[i]:=0; End;
   If krvr[i]=5 then Begin krx[i]:=0; kry[i]:=0; krvr[i]:=0; End;
  End;

end;

procedure TForm1.Pzomb;
Var i,r:integer;
label 1;
begin
 For i:=1 to 100 do
  If zx[i]>0 then
  Begin 1: r:=random(3)+1; If r<>zfr[i] then zfr[i]:=r else goto 1; End;


 If lv=level then
  For i:=1 to 100 do
   If zx[i]>0 then
    Begin
      If zy[i]<200 then zy[i]:=zy[i]+2;
      If (zy[i]>-103) and (zy[i]<0) then zy[i]:=120;
    end
    else
      Begin
        zx[i]:=random(100)+180;
        zy[i]:=-random(3000)-100;
      End
  else
  If random(8)=3 then
   Begin
    bx:=random(100)+180;
    by:=random(200)+120;
   end; 
end;

procedure TForm1.Pzombshoot;
Var i,j:integer;
begin

If level=lv then
Begin
  for i:= 1 to 100 do
   If zy[i]>=120 then
     For j:= 1 to 100 do
      If px[j]=0 then
       Begin px[j]:=zx[i]+15; py[j]:=zy[i]+20; break; End;
End
else
Begin
 For i:=1 to 100 do
  If px[i]=0 then
    Begin
     px[i]:=bx+10; py[i]:=by+20;
     px[i+1]:=bx+20; py[i+1]:=by+20;
     break;
    End;
End;

For i:=1 to 100 do
   Begin
    If px[i]>0 then py[i]:=py[i]+15;
    If py[i]>500 then Begin py[i]:=0; px[i]:=0; health:=health-1; End;
   End;

   If health<=0 then SpeedButton2.Click;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
 panel1.visible:=false;
 timer1.enabled:=true;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
 form1.Close;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin

  Pshoot;
  If lv=level then
   Begin Pzombshoot;  Pzomb; Draw; k:=0; End else
   Begin  Pzombshoot;  Pzomb; Draw; BOSS; End 

end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 fight:=true;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 xorug:=x-10;
 yorug:=y-10;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 fight:=false;
end;

procedure TForm1.MediaPlayer1Notify(Sender: TObject);
begin
 with MediaPlayer1 do
        if NotifyValue = nvSuccessful then
            begin
                Notify := True;
                Play;
            end;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
panel2.visible:=true;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
panel2.Visible:=false;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
zv1:=checkbox1.Checked;
If zv1=true then mediaplayer1.play
 else mediaplayer1.pause;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
zv2:=checkbox2.Checked;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
zv3:=checkbox3.Checked;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
zv4:=checkbox4.Checked;
end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin
sl5:=checkbox5.Checked;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
Var i:integer;
begin
timer1.Enabled:=false;
panel1.Visible:=true;
image1.Canvas.draw (0, 0, fon);
fight:=false;
  progressbar1.position:=100;
  xorug:=250; yorug:=250;
  level:=0; health:=5000; ktr:=0; lv:=0;
  For i:=1 to 100 do
       Begin
        px[i]:=0; py[i]:=0;
        zx[i]:=0; zy[i]:=0;
       end;
progressbar1.Visible:=false;
end;

procedure TForm1.Image4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 image4.picture:=nil;
 image4.picture.bitmap.LoadFromResourceName (HInstance, 'zs2');
end;

procedure TForm1.Image4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
image4.picture:=nil;
image4.picture.bitmap.LoadFromResourceName(HInstance, 'zs1');
end;

procedure TForm1.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 image3.picture:=nil;
 image3.picture.bitmap.LoadFromResourceName(HInstance, 'zs1');
end;

procedure TForm1.Image3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 image3.picture:=nil;
 image3.picture.bitmap.LoadFromResourceName(HInstance, 'zs2');
end;

procedure TForm1.Image8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 image8.picture:=nil;
 image8.picture.bitmap.LoadFromResourceName(HInstance, inttostr(random(7)+1)+'b');
end;

procedure TForm1.Image5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 image5.picture:=nil;
 image5.picture.bitmap.LoadFromResourceName(HInstance, inttostr(random(7)+1)+'b');
end;

procedure TForm1.Image6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 image6.picture:=nil;
 image6.picture.bitmap.LoadFromResourceName(HInstance, inttostr(random(7)+1)+'b');
end;

procedure TForm1.Image7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 image7.picture:=nil;
 image7.picture.bitmap.LoadFromResourceName(HInstance, inttostr(random(7)+1)+'b');
end;

procedure TForm1.Image9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 image9.picture:=nil;
 image9.picture.bitmap.LoadFromResourceName(HInstance, inttostr(random(7)+1)+'b');
end;

procedure TForm1.Image10MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 image10.picture:=nil;
 image10.picture.bitmap.LoadFromResourceName(HInstance, inttostr(random(7)+1)+'b');
end;

procedure TForm1.Image11MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 image11.picture:=nil;
 image11.picture.bitmap.LoadFromResourceName(HInstance, inttostr(random(7)+1)+'b');
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 mediaplayer1.Free;
 mediaplayer2.Free;
 mediaplayer3.Free;
 mediaplayer4.Free;
 mediaplayer5.Free;
 deletefile ('musicres/fonzv.wav');
 deletefile ('musicres/shoot.wav');
 deletefile ('musicres/ocher.wav');
 deletefile ('musicres/zvon.wav');
 deletefile ('musicres/zomb.wav');
 removedir ('musicres');
end;

end.
