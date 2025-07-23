unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Timer: TTimer;
    timelabel: TLabel;
    Button1: TButton;
    Player: TShape;
    enemy: TShape;
    Label1: TLabel;
    gametimer: TTimer;
    leveltimer: TTimer;
    levellabel: TLabel;
    procedure TimerTimer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure gametimerTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  time,level,step:integer;
  px,py:real;

implementation

{$R *.dfm}



procedure TForm1.TimerTimer(Sender: TObject);
begin
  Inc(Time); 
  if Time < 60 then 
    TimeLabel.Caption:=IntToStr(Time)+' сек.'
  else
    TimeLabel.Caption:=IntToStr(Time div 60)+' мин. '+IntToStr(Time mod 60)+' сек.';
  if (time div level)>= 10 then
  begin
    Inc(Level);
    levellabel.Caption:='Уровень: '+IntToStr(Level);
    step:=step+10;
  end;
 If (time=1000) then Begin label1.caption:='ПОБЕДА'; exit; End;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 step:=10;
 level:=1;
 levellabel.Caption:='Уровень: 1';
 label1.Caption:='';
 time:=0;
 button1.Visible:=false;
 Timer.Enabled:=True;
 gametimer.Enabled:=True;
 leveltimer.Enabled:=true;
end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Player.Left:=X-Round(Player.Width/2);
  Player.Top:=Y-Round(Player.Height/2);
end;

procedure TForm1.gametimerTimer(Sender: TObject);
 Var dx,dy:integer;
begin
 
  if Player.Left+Player.Width < Enemy.Left then
    dx:=Player.Left+Player.Width-Enemy.Left
  else if Enemy.Left+Enemy.Width < Player.Left then 
    dx:=Player.Left-Enemy.Left-Enemy.Width
  else
    dx:=0; 

  if Player.Top+Player.Height < Enemy.Top then 
    dy:=Enemy.Top-Player.Top+Player.Height
  else if Enemy.Top+Enemy.Height < Player.Top then 
    dy:=Enemy.Top-Enemy.Height-Player.Top
  else 
    dy:=0;

 if (dx = 0) and (dy = 0) then
  begin
    GameTimer.Enabled:=False;
    Timer.Enabled:=False;
    LevelTimer.Enabled:=False;
    label1.Caption:='GAME OVER!!!';
    button1.Visible:=true;
  end;

   if (Abs(dx) >= Abs(dy)) and (dx <> 0) then 
    if dx < 0 then 
      Enemy.Left:=Enemy.Left-Step
    else if dx > 0 then 
      Enemy.Left:=Enemy.Left+Step 
  else else if (dy <> 0) then 
    if dy < 0 then
      Enemy.Top:=Enemy.Top+Step 
    else if dy > 0 then 
      Enemy.Top:=Enemy.Top-Step;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 step:=10;
 level:=1;
 levellabel.Caption:='Уровень: 1'
end;

end.
