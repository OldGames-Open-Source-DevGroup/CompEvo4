object Browse: TBrowse
  Left = 235
  Top = 146
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Browsing'
  ClientHeight = 480
  ClientWidth = 640
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
  object SpeedButton1: TSpeedButton
    Left = 8
    Top = 8
    Width = 81
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = #1053#1072#1079#1072#1076
    Enabled = False
    Flat = True
    ParentBiDiMode = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 96
    Top = 8
    Width = 33
    Height = 25
    Enabled = False
    Flat = True
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 136
    Top = 8
    Width = 33
    Height = 25
    Enabled = False
    Flat = True
    OnClick = SpeedButton3Click
  end
  object Button1: TSpeedButton
    Left = 528
    Top = 8
    Width = 105
    Height = 25
    Caption = #1055#1077#1088#1077#1093#1086#1076
    Enabled = False
    Flat = True
    OnClick = SpeedButton4Click
  end
  object Panel1: TPanel
    Left = 8
    Top = 40
    Width = 625
    Height = 409
    BevelOuter = bvLowered
    TabOrder = 0
    object WebBrowser1: TWebBrowser
      Left = 1
      Top = 1
      Width = 623
      Height = 407
      Align = alClient
      TabOrder = 0
      ControlData = {
        4C00000064400000112A00000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126201000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 456
    Width = 625
    Height = 17
    Max = 25
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 176
    Top = 10
    Width = 345
    Height = 21
    ItemHeight = 13
    Sorted = True
    TabOrder = 2
    OnChange = ComboBox1Change
    OnKeyDown = ComboBox1KeyDown
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 16
    Top = 48
  end
end
