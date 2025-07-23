unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    procedure Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
Var r,r1:integer;
    n:integer=1;
    k:integer=10; k1:integer=10;
implementation

Uses Unit1;

{$R *.dfm}

procedure TForm3.Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 If n=1 then Begin n:=2; image4.picture.loadfromfile ('picture/1стрелка1.bmp'); End;
end;

procedure TForm3.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 If n=2 then
 Begin
  n:=1;
  image4.picture.loadfromfile ('picture/1стрелка.bmp');
  image5.picture.loadfromfile ('picture/2стрелка.bmp');
  image6.picture.loadfromfile ('picture/3стрелка.bmp');
  image7.picture.loadfromfile ('picture/4стрелка.bmp');
 End;
end;

procedure TForm3.Image5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  If n=1 then Begin n:=2; image5.picture.loadfromfile ('picture/2стрелка1.bmp'); End;
end;

procedure TForm3.Image6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  If n=1 then Begin n:=2; image6.picture.loadfromfile ('picture/3стрелка1.bmp'); End;
end;

procedure TForm3.Image7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  If n=1 then Begin n:=2; image7.picture.loadfromfile ('picture/4стрелка1.bmp'); End;
end;

procedure TForm3.Image4Click(Sender: TObject);
begin
If r=1 then r:=((kolb+200) div 100) else r:=r-1;
image2.picture.loadfromfile ('picture/gallery/ris1/'+inttostr(r)+'.bmp');
end;

procedure TForm3.Image5Click(Sender: TObject);
begin
If kolb+200>=(r+1)*100 then
Begin
If r=k then r:=1 else r:=r+1;
image2.picture.loadfromfile ('picture/gallery/ris1/'+inttostr(r)+'.bmp');
End;
end;

procedure TForm3.Image6Click(Sender: TObject);
begin
If r1=1 then r1:=((kolp+200) div 100) else r1:=r1-1;
image3.picture.loadfromfile ('picture/gallery/ris2/'+inttostr(r1)+'.bmp');
end;

procedure TForm3.Image7Click(Sender: TObject);
begin
If kolp+200>=(r1+1)*100 then
Begin
If r1=k then r1:=1 else r1:=r1+1;
image3.picture.loadfromfile ('picture/gallery/ris2/'+inttostr(r1)+'.bmp');
End;
end;

end.
