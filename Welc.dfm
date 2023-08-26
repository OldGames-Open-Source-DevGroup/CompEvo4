object Welcome: TWelcome
  Left = 211
  Top = 119
  BorderIcons = [biMinimize]
  BorderStyle = bsDialog
  Caption = #1055#1088#1077#1076#1089#1090#1072#1074#1100#1090#1077#1089#1100
  ClientHeight = 497
  ClientWidth = 297
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 281
    Height = 170
    AutoSize = True
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 184
    Width = 281
    Height = 305
    Caption = #1055#1088#1080#1074#1077#1090#1089#1090#1074#1080#1077
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 134
      Height = 13
      Caption = #1044#1086#1073#1088#1086' '#1087#1086#1078#1072#1083#1086#1074#1072#1090#1100' '#1074' '#1080#1075#1088#1091':'
    end
    object Label2: TLabel
      Left = 16
      Top = 32
      Width = 138
      Height = 13
      Caption = #1050#1086#1084#1087#1100#1102#1090#1077#1088#1085#1072#1103' '#1101#1074#1086#1083#1102#1094#1080#1103' 4'
    end
    object Label3: TLabel
      Left = 8
      Top = 56
      Width = 141
      Height = 13
      Caption = #1044#1083#1103' '#1085#1072#1095#1072#1083#1072' '#1087#1088#1077#1076#1089#1090#1072#1074#1100#1090#1077#1089#1100':'
    end
    object Label5: TLabel
      Left = 8
      Top = 160
      Width = 151
      Height = 13
      Caption = #1047#1072#1090#1077#1084' '#1091#1082#1072#1078#1080#1090#1077' '#1089#1074#1086#1081' '#1074#1086#1079#1088#1072#1089#1090':'
    end
    object Label4: TLabel
      Left = 8
      Top = 256
      Width = 127
      Height = 13
      Caption = #1048' '#1084#1086#1078#1077#1090#1077' '#1085#1072#1095#1080#1085#1072#1090#1100' '#1080#1075#1088#1091':'
    end
    object Label6: TLabel
      Left = 8
      Top = 208
      Width = 222
      Height = 13
      Caption = #1059#1082#1072#1078#1080#1090#1077' '#1090#1072#1082#1078#1077' '#1089#1082#1086#1088#1086#1089#1090#1100' '#1090#1077#1095#1077#1085#1080#1103' '#1074#1088#1077#1084#1077#1085#1080':'
    end
    object Label7: TLabel
      Left = 79
      Top = 228
      Width = 3
      Height = 13
    end
    object Label8: TLabel
      Left = 79
      Top = 180
      Width = 3
      Height = 13
    end
    object Label9: TLabel
      Left = 8
      Top = 104
      Width = 197
      Height = 13
      Caption = #1052#1086#1078#1077#1090#1077' '#1074#1089#1090#1072#1074#1080#1090#1100' '#1092#1086#1090#1086#1075#1088#1072#1092#1080#1102' '#1080#1075#1088#1086#1082#1072':'
    end
    object Button1: TButton
      Left = 16
      Top = 272
      Width = 121
      Height = 25
      Cursor = crHandPoint
      Hint = #1053#1091' '#1095#1090#1086', '#1073#1072#1090#1077#1085#1100#1082#1072'! '#1053#1072#1095#1085#1105#1084'-'#1089' '#1085#1072#1096#1091' '#1084#1072#1083#1077#1085#1100#1082#1091#1102' '#1080#1075#1088#1091'? '#1040'?'
      Caption = #1055#1086#1077#1093#1072#1083#1080'!'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 144
      Top = 272
      Width = 121
      Height = 25
      Cursor = crHandPoint
      Hint = #1057#1074#1072#1083#1080#1090#1100' '#1086#1090#1089#1102#1076#1072'.'
      Caption = #1042#1099#1093#1086#1076
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button2Click
    end
    object Edit2: TEdit
      Left = 16
      Top = 176
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 4
      Text = '16'
      OnChange = Edit2Change
    end
    object UpDown1: TUpDown
      Left = 57
      Top = 176
      Width = 16
      Height = 21
      Associate = Edit2
      Min = 14
      Max = 70
      Position = 16
      TabOrder = 5
    end
    object Edit1: TComboBox
      Left = 16
      Top = 72
      Width = 249
      Height = 21
      Ctl3D = True
      ItemHeight = 13
      MaxLength = 16
      ParentCtl3D = False
      TabOrder = 2
      Text = #1042#1074#1077#1076#1080#1090#1077' '#1089#1074#1086#1105' '#1080#1084#1103'...'
      OnClick = Edit1Click
      OnEnter = Edit1Enter
      OnKeyDown = Edit1KeyDown
    end
    object Edit3: TEdit
      Left = 16
      Top = 224
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 6
      Text = '12'
      OnChange = Edit3Change
    end
    object UpDown2: TUpDown
      Left = 57
      Top = 224
      Width = 16
      Height = 21
      Associate = Edit3
      Min = 1
      Max = 23
      Position = 12
      TabOrder = 7
    end
    object Button3: TButton
      Left = 16
      Top = 120
      Width = 121
      Height = 25
      Cursor = crHandPoint
      Hint = 
        #1057#1090#1088#1072#1085#1072' '#1076#1086#1083#1078#1085#1072' '#1079#1085#1072#1090#1100' '#1089#1074#1086#1080#1093' '#1075#1077#1088#1086#1077#1074' '#1074' '#1083#1080#1094#1086'. '#1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1099#1081' '#1088#1072#1079#1084#1077#1088': '#1096#1080 +
        #1088#1080#1085#1072' - 221, '#1074#1099#1089#1086#1090#1072' 120 '#1087#1080#1082#1089#1077#1083#1086#1074'.'
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100'...'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Button3Click
    end
  end
end
