object Loading: TLoading
  Left = 191
  Top = 115
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1047#1072#1075#1088#1091#1079#1082#1072'...'
  ClientHeight = 213
  ClientWidth = 188
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 188
    Height = 196
    AutoSize = True
  end
  object Image2: TImage
    Left = 18
    Top = 11
    Width = 151
    Height = 128
    Center = True
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 196
    Width = 188
    Height = 17
    TabOrder = 0
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 24
    Top = 16
  end
end
