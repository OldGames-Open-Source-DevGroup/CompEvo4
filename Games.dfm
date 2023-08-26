object Game: TGame
  Left = 213
  Top = 116
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1048#1075#1088#1099
  ClientHeight = 201
  ClientWidth = 425
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
    Left = 8
    Top = 8
    Width = 144
    Height = 13
    Caption = #1043#1088#1072#1092#1080#1095#1077#1089#1082#1080#1081' '#1072#1082#1089#1077#1083#1083#1077#1088#1072#1090#1086#1088':'
  end
  object Label2: TLabel
    Left = 16
    Top = 24
    Width = 3
    Height = 13
  end
  object Image1: TImage
    Left = 216
    Top = 8
    Width = 200
    Height = 148
    AutoSize = True
  end
  object Label3: TLabel
    Left = 214
    Top = 160
    Width = 205
    Height = 13
    Caption = #1055#1086#1088#1072' '#1080#1089#1087#1099#1090#1072#1090#1100' '#1074#1072#1096#1091' '#1074#1080#1076#1077#1086#1082#1072#1088#1090#1091' '#1074' '#1076#1077#1083#1077'!'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 40
    Width = 201
    Height = 121
    Caption = #1048#1075#1088#1099
    TabOrder = 0
    object Label4: TLabel
      Left = 16
      Top = 48
      Width = 109
      Height = 13
      Caption = #1059#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1099#1077' '#1080#1075#1088#1099
    end
    object Button1: TButton
      Left = 8
      Top = 16
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Hint = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1085#1086#1074#1091#1102' '#1080#1075#1088#1091' '#1085#1072' '#1082#1086#1084#1087#1100#1102#1090#1077#1088'.'
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1085#1086#1074#1091#1102
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Button1Click
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 64
      Width = 185
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
    end
    object Button2: TButton
      Left = 8
      Top = 88
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Hint = #1055#1088#1086#1074#1077#1089#1090#1080' '#1074#1088#1077#1084#1103' '#1079#1072' '#1074#1099#1073#1088#1072#1085#1085#1086#1081' '#1080#1075#1088#1086#1081'.'
      Caption = #1048#1075#1088#1072#1090#1100
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object Button3: TButton
    Left = 16
    Top = 168
    Width = 185
    Height = 25
    Cursor = crHandPoint
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 1
    OnClick = Button3Click
  end
end
