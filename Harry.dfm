object Happy: THappy
  Left = 206
  Top = 115
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = #1054#1090#1076#1099#1093' '#1080' '#1088#1072#1079#1074#1083#1077#1095#1077#1085#1080#1103
  ClientHeight = 274
  ClientWidth = 393
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 240
    Top = 8
    Width = 143
    Height = 200
    AutoSize = True
  end
  object Label1: TLabel
    Left = 45
    Top = 224
    Width = 150
    Height = 13
    Caption = #1054#1090#1076#1099#1093#1072#1081#1090#1077', '#1085#1072#1073#1080#1088#1072#1081#1090#1077#1089#1100' '#1089#1080#1083'!'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 225
    Height = 209
    Caption = #1042#1080#1076#1099' '#1086#1090#1076#1099#1093#1072
    TabOrder = 0
    object Button2: TButton
      Left = 8
      Top = 16
      Width = 209
      Height = 25
      Cursor = crHandPoint
      Caption = #1055#1086#1087#1072#1088#1080#1090#1100#1089#1103' '#1074' '#1073#1072#1085#1077' - 20 '#1076'.'#1077'.'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 8
      Top = 48
      Width = 209
      Height = 25
      Cursor = crHandPoint
      Caption = #1057#1098#1077#1079#1076#1080#1090#1100' '#1085#1072' '#1088#1077#1095#1082#1091' - 50 '#1076'.'#1077'.'
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 8
      Top = 112
      Width = 209
      Height = 25
      Cursor = crHandPoint
      Caption = #1042#1099#1077#1079#1076' '#1085#1072' '#1096#1072#1096#1083#1099#1082#1080' - 100 '#1076'.'#1077'.'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 8
      Top = 144
      Width = 209
      Height = 25
      Cursor = crHandPoint
      Caption = #1055#1091#1090#1077#1096#1077#1089#1090#1074#1080#1077' '#1074#1086#1082#1088#1091#1075' '#1089#1074#1077#1090#1072' - 1000 '#1076'.'#1077'.'
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 8
      Top = 80
      Width = 209
      Height = 25
      Cursor = crHandPoint
      Caption = #1055#1086#1081#1090#1080' '#1074' '#1082#1080#1085#1086#1090#1077#1072#1090#1088' '#1089' '#1076#1077#1074#1091#1096#1082#1086#1081' - 75 '#1076'.'#1077'.'
      TabOrder = 2
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 8
      Top = 176
      Width = 209
      Height = 25
      Cursor = crHandPoint
      Hint = #1047#1072#1095#1077#1084' '#1078#1077' '#1074#1099' '#1077#1097#1105' '#1087#1086#1082#1091#1087#1072#1083#1080' '#1089#1091#1087#1077#1088#1085#1086#1074#1091#1102' '#1074#1080#1076#1077#1086#1082#1072#1088#1090#1091'?'
      Caption = #1055#1086#1080#1075#1088#1072#1090#1100' - 0 '#1076'.'#1077'.'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = Button7Click
    end
  end
  object Button1: TButton
    Left = 48
    Top = 240
    Width = 145
    Height = 25
    Cursor = crHandPoint
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
end
