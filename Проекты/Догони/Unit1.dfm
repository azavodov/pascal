object Form1: TForm1
  Left = 579
  Top = 220
  Width = 575
  Height = 537
  Caption = #1076#1086#1075#1086#1085#1080
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 13
  object timelabel: TLabel
    Left = 16
    Top = 64
    Width = 8
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Player: TShape
    Left = 248
    Top = 64
    Width = 41
    Height = 41
    Brush.Color = clBlue
    Shape = stCircle
  end
  object enemy: TShape
    Left = 248
    Top = 448
    Width = 41
    Height = 41
    Brush.Color = clRed
    Shape = stCircle
  end
  object Label1: TLabel
    Left = 328
    Top = 8
    Width = 11
    Height = 37
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object levellabel: TLabel
    Left = 16
    Top = 16
    Width = 8
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 224
    Top = 8
    Width = 97
    Height = 33
    Caption = #1057#1090#1072#1088#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 8
    Top = 464
  end
  object gametimer: TTimer
    Enabled = False
    Interval = 100
    OnTimer = gametimerTimer
    Left = 40
    Top = 464
  end
  object leveltimer: TTimer
    Enabled = False
    Interval = 10000
    Left = 72
    Top = 464
  end
end
