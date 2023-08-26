object ICQSell: TICQSell
  Left = 192
  Top = 110
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1040#1091#1082#1094#1080#1086#1085
  ClientHeight = 249
  ClientWidth = 385
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 160
    Top = 8
    Width = 220
    Height = 168
    AutoSize = True
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 145
    Height = 137
    Caption = #1040#1091#1082#1094#1080#1086#1085
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 56
      Width = 80
      Height = 13
      Caption = #1057#1090#1072#1088#1090#1086#1074#1072#1103' '#1094#1077#1085#1072
    end
    object Label2: TLabel
      Left = 16
      Top = 16
      Width = 92
      Height = 13
      Caption = #1055#1088#1077#1076#1084#1077#1090' '#1087#1088#1086#1076#1072#1078#1080
    end
    object Label3: TLabel
      Left = 8
      Top = 32
      Width = 56
      Height = 13
      Caption = 'ICQ '#1085#1086#1084#1077#1088':'
    end
    object Edit1: TEdit
      Left = 8
      Top = 72
      Width = 129
      Height = 21
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 8
      Top = 104
      Width = 129
      Height = 25
      Cursor = crHandPoint
      Caption = #1053#1072#1095#1072#1090#1100' '#1072#1091#1082#1094#1080#1086#1085
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 184
    Width = 369
    Height = 57
    Caption = #1055#1088#1086#1094#1077#1089#1089' '#1090#1086#1088#1075#1086#1074
    TabOrder = 2
    object Label4: TLabel
      Left = 8
      Top = 16
      Width = 353
      Height = 13
      AutoSize = False
    end
    object Label5: TLabel
      Left = 10
      Top = 32
      Width = 351
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
    end
  end
  object Button3: TButton
    Left = 8
    Top = 152
    Width = 145
    Height = 25
    Cursor = crHandPoint
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 1
    OnClick = Button3Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 16
    Top = 208
  end
  object OneTwoThree: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = OneTwoThreeTimer
    Left = 48
    Top = 208
  end
end
