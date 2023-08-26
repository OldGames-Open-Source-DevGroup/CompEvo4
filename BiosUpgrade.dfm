object Bios: TBios
  Left = 192
  Top = 103
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1055#1077#1088#1077#1087#1088#1086#1096#1080#1074#1082#1072' BIOS'
  ClientHeight = 27
  ClientWidth = 249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 8
    Width = 233
    Height = 13
    Smooth = True
    TabOrder = 0
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 216
  end
end
