object Wrks: TWrks
  Left = 359
  Top = 382
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = #1055#1086#1080#1089#1082' '#1088#1072#1073#1086#1090#1099
  ClientHeight = 265
  ClientWidth = 401
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
    Left = 288
    Top = 8
    Width = 107
    Height = 150
    AutoSize = True
  end
  object Label1: TLabel
    Left = 24
    Top = 248
    Width = 347
    Height = 13
    Caption = #1047#1072#1088#1072#1073#1072#1090#1099#1074#1072#1081#1090#1077' '#1076#1077#1085#1100#1075#1080'! '#1056#1072#1073#1086#1090#1091' '#1084#1086#1078#1085#1086' '#1089#1084#1077#1085#1080#1090#1100' '#1076#1086' 10 '#1095#1080#1089#1083#1072' '#1084#1077#1089#1103#1094#1072'!'
  end
  object Button1: TButton
    Left = 288
    Top = 168
    Width = 105
    Height = 25
    Cursor = crHandPoint
    Hint = #1059#1089#1090#1088#1086#1080#1090#1100#1089#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1091'.'
    Caption = #1053#1072#1085#1103#1090#1089#1103
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 273
    Height = 233
    Caption = #1056#1072#1073#1086#1090#1072
    TabOrder = 0
    object dv: TRadioButton
      Left = 8
      Top = 16
      Width = 257
      Height = 17
      Caption = #1044#1074#1086#1088#1085#1080#1082' - 40 '#1076'.'#1077'./'#1084#1077#1089' - 0 '#1088#1077#1081#1090#1080#1085#1075
      Enabled = False
      TabOrder = 0
      OnMouseDown = dvMouseDown
    end
    object pl: TRadioButton
      Left = 8
      Top = 80
      Width = 257
      Height = 17
      Caption = #1055#1083#1086#1090#1085#1080#1082' - 112 '#1076'.'#1077'./'#1084#1077#1089' - 104 '#1088#1077#1081#1090#1080#1085#1075
      Enabled = False
      TabOrder = 1
      OnMouseDown = dvMouseDown
    end
    object ta: TRadioButton
      Left = 8
      Top = 96
      Width = 257
      Height = 17
      Caption = #1058#1072#1082#1089#1080#1089#1090' - 132 '#1076'.'#1077'./'#1084#1077#1089' - 126 '#1088#1077#1081#1090#1080#1085#1075
      Enabled = False
      TabOrder = 2
      OnMouseDown = dvMouseDown
    end
    object si: TRadioButton
      Left = 8
      Top = 112
      Width = 257
      Height = 17
      Caption = #1057#1080#1089#1072#1076#1084#1080#1085' - 145 '#1076'.'#1077'./'#1084#1077#1089' - 169 '#1088#1077#1081#1090#1080#1085#1075
      Enabled = False
      TabOrder = 3
      OnMouseDown = dvMouseDown
    end
    object pe: TRadioButton
      Left = 8
      Top = 128
      Width = 257
      Height = 17
      Caption = #1055#1077#1088#1077#1074#1086#1076#1095#1080#1082' - 152 '#1076'.'#1077'./'#1084#1077#1089' - 197 '#1088#1077#1081#1090#1080#1085#1075
      Enabled = False
      TabOrder = 4
      OnMouseDown = dvMouseDown
    end
    object me: TRadioButton
      Left = 8
      Top = 144
      Width = 257
      Height = 17
      Caption = #1052#1077#1076#1080#1082' - 166 '#1076'.'#1077'./'#1084#1077#1089' - 231 '#1088#1077#1081#1090#1080#1085#1075
      Enabled = False
      TabOrder = 5
      OnMouseDown = dvMouseDown
    end
    object dr: TRadioButton
      Left = 8
      Top = 160
      Width = 257
      Height = 17
      Caption = #1063#1072#1089#1090#1085#1099#1081' '#1074#1086#1076#1080#1090#1077#1083#1100' - 195 '#1076'.'#1077'./'#1084#1077#1089' - 274 '#1088#1077#1081#1090#1080#1085#1075
      Enabled = False
      TabOrder = 6
      OnMouseDown = dvMouseDown
    end
    object bi: TRadioButton
      Left = 8
      Top = 176
      Width = 257
      Height = 17
      Caption = #1041#1080#1079#1085#1077#1089#1084#1077#1085' - 221 '#1076'.'#1077'./'#1084#1077#1089' - 308 '#1088#1077#1081#1090#1080#1085#1075
      Enabled = False
      TabOrder = 7
      OnMouseDown = dvMouseDown
    end
    object pr: TRadioButton
      Left = 8
      Top = 192
      Width = 257
      Height = 17
      Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1080#1089#1090' - 382 '#1076'.'#1077'./'#1084#1077#1089' - 427 '#1088#1077#1081#1090#1080#1085#1075
      Enabled = False
      TabOrder = 8
      OnMouseDown = dvMouseDown
    end
    object sh: TRadioButton
      Left = 8
      Top = 32
      Width = 257
      Height = 17
      Caption = #1064#1086#1092#1077#1088' - 63 '#1076'.'#1077'./'#1084#1077#1089' - 41 '#1088#1077#1081#1090#1080#1085#1075
      Enabled = False
      TabOrder = 9
      OnMouseDown = dvMouseDown
    end
    object mo: TRadioButton
      Left = 8
      Top = 48
      Width = 257
      Height = 17
      Caption = #1052#1086#1085#1090#1077#1088' - 84 '#1076'.'#1077'./'#1084#1077#1089' - 61 '#1088#1077#1081#1090#1080#1085#1075
      Enabled = False
      TabOrder = 10
      OnMouseDown = dvMouseDown
    end
    object sl: TRadioButton
      Left = 8
      Top = 64
      Width = 257
      Height = 17
      Caption = #1057#1083#1077#1089#1072#1088#1100' - 98 '#1076'.'#1077'./'#1084#1077#1089' - 83 '#1088#1077#1081#1090#1080#1085#1075
      Enabled = False
      TabOrder = 11
      OnMouseDown = dvMouseDown
    end
    object gc: TRadioButton
      Left = 8
      Top = 208
      Width = 257
      Height = 17
      Caption = #1053#1072#1095#1072#1083#1100#1085#1080#1082' - 500 '#1076'.'#1077'./'#1084#1077#1089' - 500 '#1088#1077#1081#1090#1080#1085#1075
      Enabled = False
      TabOrder = 12
      OnMouseDown = dvMouseDown
    end
  end
  object Button2: TButton
    Left = 288
    Top = 200
    Width = 105
    Height = 25
    Cursor = crHandPoint
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
end
