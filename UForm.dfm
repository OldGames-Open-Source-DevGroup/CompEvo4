object UpdateForm: TUpdateForm
  Left = 210
  Top = 109
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1081
  ClientHeight = 249
  ClientWidth = 449
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
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 300
    Top = 8
    Width = 128
    Height = 128
    AutoSize = True
  end
  object Label9: TLabel
    Left = 288
    Top = 139
    Width = 150
    Height = 13
    Caption = #1047#1076#1077#1089#1100' '#1074#1099' '#1084#1086#1078#1077#1090#1077' '#1091#1089#1090#1072#1085#1086#1074#1080#1090#1100
    Transparent = True
  end
  object Label10: TLabel
    Left = 291
    Top = 152
    Width = 142
    Height = 13
    Caption = #1074#1089#1077' '#1074#1072#1078#1085#1077#1081#1096#1080#1077' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103
    Transparent = True
  end
  object Label11: TLabel
    Left = 296
    Top = 165
    Width = 128
    Height = 13
    Caption = #1076#1083#1103' '#1074#1072#1096#1077#1081' '#1086#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086#1081
    Transparent = True
  end
  object Label12: TLabel
    Left = 301
    Top = 178
    Width = 119
    Height = 13
    Caption = #1089#1080#1089#1090#1077#1084#1099'. '#1069#1090#1086' '#1087#1086#1079#1074#1086#1083#1080#1090
    Transparent = True
  end
  object Label13: TLabel
    Left = 288
    Top = 191
    Width = 146
    Height = 13
    Caption = #1079#1072#1097#1080#1090#1080#1090#1100' '#1074#1072#1096' '#1082#1086#1084#1087#1100#1102#1090#1077#1088' '#1086#1090
    Transparent = True
  end
  object Label14: TLabel
    Left = 286
    Top = 204
    Width = 152
    Height = 13
    Caption = ' '#1074#1080#1088#1091#1089#1086#1074' '#1080' '#1072#1090#1072#1082' '#1080#1079' '#1080#1085#1090#1077#1088#1085#1077#1090#1072'.'
    Transparent = True
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 8
    Width = 249
    Height = 97
    Caption = #1042#1072#1096' '#1082#1086#1084#1087#1100#1102#1090#1077#1088
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 100
      Height = 13
      Caption = #1059#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1072#1103' '#1054#1057':'
      Transparent = True
    end
    object Label2: TLabel
      Left = 19
      Top = 32
      Width = 3
      Height = 13
      Transparent = True
    end
    object Label3: TLabel
      Left = 8
      Top = 56
      Width = 163
      Height = 13
      Caption = #1057#1082#1086#1088#1086#1089#1090#1100' '#1088#1072#1073#1086#1090#1099' '#1089' '#1080#1085#1090#1077#1088#1085#1077#1090#1086#1084':'
      Transparent = True
    end
    object Label4: TLabel
      Left = 19
      Top = 72
      Width = 3
      Height = 13
      Transparent = True
    end
  end
  object GroupBox2: TGroupBox
    Left = 32
    Top = 112
    Width = 249
    Height = 97
    Caption = #1044#1086#1089#1090#1091#1087#1085#1099#1077' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103
    TabOrder = 1
    object Label5: TLabel
      Left = 8
      Top = 16
      Width = 62
      Height = 13
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
      Transparent = True
    end
    object Label6: TLabel
      Left = 19
      Top = 32
      Width = 3
      Height = 13
      Transparent = True
    end
    object Label7: TLabel
      Left = 8
      Top = 56
      Width = 112
      Height = 13
      Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1090#1088#1072#1092#1080#1082#1072':'
      Transparent = True
    end
    object Label8: TLabel
      Left = 19
      Top = 72
      Width = 3
      Height = 13
      Transparent = True
    end
  end
  object Button1: TButton
    Left = 48
    Top = 216
    Width = 105
    Height = 25
    Cursor = crHandPoint
    Caption = #1053#1072#1095#1072#1090#1100' '#1079#1072#1075#1088#1091#1079#1082#1091
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 216
    Width = 105
    Height = 25
    Cursor = crHandPoint
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 8
    Width = 17
    Height = 233
    Max = 512000
    Orientation = pbVertical
    TabOrder = 4
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 248
    Top = 16
  end
end
