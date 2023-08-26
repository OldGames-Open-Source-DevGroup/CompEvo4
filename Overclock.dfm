object Clock: TClock
  Left = 235
  Top = 128
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1056#1072#1079#1075#1086#1085' '#1087#1088#1086#1094#1077#1089#1089#1086#1088#1072
  ClientHeight = 426
  ClientWidth = 337
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
    Left = 176
    Top = 8
    Width = 138
    Height = 134
    AutoSize = True
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 145
    Height = 257
    Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 90
      Height = 13
      Caption = #1058#1077#1082#1091#1097#1072#1103' '#1095#1072#1089#1090#1086#1090#1072':'
    end
    object Label2: TLabel
      Left = 16
      Top = 32
      Width = 30
      Height = 13
      Caption = '0 '#1052#1043#1094
    end
    object Label3: TLabel
      Left = 8
      Top = 176
      Width = 108
      Height = 13
      Caption = #1058#1077#1082#1091#1097#1080#1081' '#1084#1085#1086#1078#1080#1090#1077#1083#1100':'
    end
    object Label4: TLabel
      Left = 16
      Top = 192
      Width = 16
      Height = 13
      Caption = '0 '#1061
    end
    object Label5: TLabel
      Left = 8
      Top = 216
      Width = 117
      Height = 13
      Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1084#1085#1086#1078#1080#1090#1077#1083#1103':'
    end
    object Label6: TLabel
      Left = 16
      Top = 232
      Width = 61
      Height = 13
      Caption = #1041#1083#1086#1082#1080#1088#1086#1074#1072#1085
    end
    object Label7: TLabel
      Left = 8
      Top = 56
      Width = 95
      Height = 13
      Caption = #1057#1084#1077#1085#1072' '#1095#1072#1089#1090#1086#1090' FSB:'
    end
    object Label8: TLabel
      Left = 16
      Top = 72
      Width = 60
      Height = 13
      Caption = #1053#1077#1076#1086#1089#1090#1091#1087#1085#1086
    end
    object Label9: TLabel
      Left = 8
      Top = 96
      Width = 67
      Height = 13
      Caption = #1053#1072#1087#1088#1103#1078#1077#1085#1080#1077':'
    end
    object Label10: TLabel
      Left = 16
      Top = 112
      Width = 39
      Height = 13
      Caption = '0 '#1042#1086#1083#1100#1090
    end
    object Label11: TLabel
      Left = 8
      Top = 136
      Width = 101
      Height = 13
      Caption = #1057#1084#1077#1085#1072' '#1085#1072#1087#1088#1103#1078#1077#1085#1080#1103':'
    end
    object Label12: TLabel
      Left = 16
      Top = 152
      Width = 60
      Height = 13
      Caption = #1053#1077#1076#1086#1089#1090#1091#1087#1085#1086
    end
  end
  object GroupBox2: TGroupBox
    Left = 160
    Top = 184
    Width = 169
    Height = 81
    Caption = #1044#1077#1081#1089#1090#1074#1080#1103
    TabOrder = 1
    object Button1: TButton
      Left = 8
      Top = 16
      Width = 153
      Height = 25
      Cursor = crHandPoint
      Hint = #1055#1086#1080#1089#1082#1072#1090#1100' '#1074' '#1080#1085#1090#1077#1088#1085#1077#1090#1077' '#1087#1088#1086#1096#1080#1074#1082#1080' '#1076#1083#1103' '#1074#1072#1096#1077#1081' '#1084#1072#1090#1077#1088#1080#1085#1089#1082#1086#1081' '#1087#1083#1072#1090#1099'.'
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' BIOS'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 8
      Top = 48
      Width = 153
      Height = 25
      Cursor = crHandPoint
      Hint = #1056#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100' '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090' '#1091#1084#1085#1086#1078#1077#1085#1080#1103' '#1085#1072' '#1074#1072#1096#1077#1081' '#1084#1072#1090#1077#1088#1080#1085#1089#1082#1086#1081' '#1087#1083#1072#1090#1077'.'
      Caption = #1056#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100' '#1084#1085#1086#1078#1080#1090#1077#1083#1100
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 272
    Width = 321
    Height = 145
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
    TabOrder = 2
    object Label13: TLabel
      Left = 8
      Top = 16
      Width = 99
      Height = 13
      Caption = #1063#1072#1089#1090#1086#1090#1072' '#1096#1080#1085#1099' FSB:'
    end
    object Label14: TLabel
      Left = 232
      Top = 16
      Width = 61
      Height = 13
      Caption = #1052#1085#1086#1078#1080#1090#1077#1083#1100':'
    end
    object Label15: TLabel
      Left = 128
      Top = 16
      Width = 67
      Height = 13
      Caption = #1053#1072#1087#1088#1103#1078#1077#1085#1080#1077':'
    end
    object Label16: TLabel
      Left = 133
      Top = 35
      Width = 9
      Height = 13
      Caption = '1,'
    end
    object Edit1: TEdit
      Left = 16
      Top = 32
      Width = 49
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 0
      Text = '100'
    end
    object UpDown1: TUpDown
      Left = 65
      Top = 32
      Width = 16
      Height = 21
      Associate = Edit1
      Enabled = False
      Min = 33
      Max = 5000
      Position = 100
      TabOrder = 1
      OnChanging = UpDown1Changing
    end
    object Edit2: TEdit
      Left = 240
      Top = 32
      Width = 49
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 4
      Text = '1'
    end
    object UpDown2: TUpDown
      Left = 289
      Top = 32
      Width = 16
      Height = 21
      Associate = Edit2
      Enabled = False
      Min = 1
      Max = 25
      Position = 1
      TabOrder = 5
      OnChanging = UpDown1Changing
    end
    object Button4: TButton
      Left = 8
      Top = 88
      Width = 305
      Height = 25
      Cursor = crHandPoint
      Hint = #1055#1088#1086#1090#1077#1089#1090#1080#1088#1086#1074#1072#1090#1100' '#1085#1086#1074#1099#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099'.'
      Caption = #1055#1077#1088#1077#1079#1072#1075#1088#1091#1079#1080#1090#1100' '#1082#1086#1084#1087#1100#1102#1090#1077#1088
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = Button4Click
    end
    object Edit3: TEdit
      Left = 144
      Top = 32
      Width = 49
      Height = 21
      ReadOnly = True
      TabOrder = 2
      Text = '50'
    end
    object UpDown3: TUpDown
      Left = 193
      Top = 32
      Width = 16
      Height = 21
      Associate = Edit3
      Min = 35
      Max = 99
      Position = 50
      TabOrder = 3
      OnChanging = UpDown1Changing
    end
    object ProgressBar1: TProgressBar
      Left = 8
      Top = 120
      Width = 305
      Height = 17
      Smooth = True
      TabOrder = 8
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 64
      Width = 305
      Height = 17
      Hint = 
        #1059#1074#1077#1083#1080#1095#1080#1074#1072#1077#1090' '#1073#1099#1089#1090#1088#1086#1076#1077#1081#1089#1090#1074#1080#1077' '#1087#1088#1086#1094#1077#1089#1089#1086#1088#1072' '#1079#1072' '#1089#1095#1105#1090' '#1087#1088#1086#1075#1088#1072#1084#1084#1085#1086#1075#1086' '#1089#1086#1079#1076#1072 +
        #1085#1080#1103' "'#1074#1090#1086#1088#1086#1075#1086'" '#1087#1088#1086#1094#1077#1089#1089#1086#1088#1072'.'
      Caption = 'Hyper-Threading'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = CheckBox1Click
    end
  end
  object Button3: TButton
    Left = 176
    Top = 152
    Width = 137
    Height = 25
    Cursor = crHandPoint
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 3
    OnClick = Button3Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer1Timer
    Left = 296
    Top = 360
  end
end
