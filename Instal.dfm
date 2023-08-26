object Install: TInstall
  Left = 192
  Top = 105
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1085#1080#1077'...'
  ClientHeight = 135
  ClientWidth = 373
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
    Left = 10
    Top = 77
    Width = 3
    Height = 13
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Gauge1: TProgressBar
    Left = 10
    Top = 101
    Width = 285
    Height = 13
    Smooth = True
    TabOrder = 0
  end
  object Button1: TButton
    Left = 302
    Top = 101
    Width = 60
    Height = 23
    Cursor = crHandPoint
    Hint = #1055#1088#1077#1082#1088#1072#1090#1080#1090#1100' '#1091#1089#1090#1072#1085#1086#1074#1082#1091' '#1074#1099#1073#1088#1072#1085#1085#1086#1081' '#1089#1086#1092#1090#1080#1085#1099'.'
    Caption = #1054#1090#1084#1077#1085#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = Button1Click
  end
  object Animate1: TAnimate
    Left = 10
    Top = 0
    Width = 272
    Height = 60
    CommonAVI = aviCopyFile
    StopFrame = 26
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 385
    OnTimer = Timer1Timer
    Left = 344
  end
end
