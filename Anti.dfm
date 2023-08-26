object Antiv: TAntiv
  Left = 208
  Top = 149
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077'...'
  ClientHeight = 209
  ClientWidth = 280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 49
    Height = 13
    Caption = #1055#1088#1086#1090#1086#1082#1086#1083
  end
  object Memo1: TMemo
    Left = 8
    Top = 24
    Width = 265
    Height = 121
    Ctl3D = True
    ParentCtl3D = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 152
    Width = 265
    Height = 17
    Max = 50
    Smooth = True
    TabOrder = 1
  end
  object Button1: TButton
    Left = 16
    Top = 176
    Width = 249
    Height = 25
    Cursor = crHandPoint
    Hint = #1053#1077#1084#1077#1076#1083#1077#1085#1085#1086' '#1086#1090#1073#1086#1081'!'
    Caption = #1056#1072#1079#1086#1088#1074#1072#1090#1100' '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1077
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = Button1Click
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 224
    Top = 112
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 150
    OnTimer = Timer2Timer
    Left = 192
    Top = 112
  end
end
