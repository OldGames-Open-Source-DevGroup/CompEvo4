object Down: TDown
  Left = 201
  Top = 101
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1047#1072#1082#1072#1095#1082#1072'...'
  ClientHeight = 89
  ClientWidth = 233
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
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 0
    Width = 86
    Height = 13
    Caption = #1047#1072#1082#1072#1095#1082#1072' '#1092#1072#1081#1083#1072'...'
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 59
    Height = 13
    Caption = #1055#1088#1086#1074#1077#1088#1082#1072'...'
  end
  object Gauge1: TGauge
    Left = 8
    Top = 64
    Width = 217
    Height = 17
    Progress = 0
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 16
    Width = 217
    Height = 17
    Smooth = True
    TabOrder = 0
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 250
    OnTimer = Timer1Timer
    Left = 200
    Top = 56
  end
end
