unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TAIntervalSources, TASources, Forms,
  Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, Buttons;

type

  { TForm2 }

  TForm2 = class(TForm)
    Chart1: TChart;
    PaintBox1: TPaintBox;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

end.

