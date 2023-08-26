object Inet: TInet
  Left = 191
  Top = 108
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1080#1085#1090#1077#1088#1085#1077#1090#1086#1084
  ClientHeight = 249
  ClientWidth = 633
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
    Left = 480
    Top = 8
    Width = 145
    Height = 113
    AutoSize = True
  end
  object Label4: TLabel
    Left = 491
    Top = 128
    Width = 123
    Height = 39
    Caption = 
      #1047#1076#1077#1089#1100' '#1085#1077' '#1079#1072#1088#1072#1073#1072#1090#1099#1074#1072#1102#1090#13#10'         '#1089#1083#1072#1074#1091', '#1079#1076#1077#1089#1100#13#10' '#1079#1072#1088#1072#1073#1072#1090#1099#1074#1072#1102#1090' '#1076#1077#1085#1100 +
      #1075#1080'.'
    Transparent = False
  end
  object Label3: TLabel
    Left = 8
    Top = 168
    Width = 251
    Height = 13
    Caption = #1055#1086#1084#1085#1080#1090#1077', '#1095#1090#1086' '#1089#1086#1079#1076#1072#1085#1080#1077' '#1089#1072#1081#1090#1072' '#1089' '#1076#1086#1084#1077#1085#1086#1084' '#1074#1090#1086#1088#1086#1075#1086
    Transparent = False
  end
  object Label5: TLabel
    Left = 8
    Top = 181
    Width = 267
    Height = 13
    Caption = #1091#1088#1086#1074#1085#1103' (.com, .ru '#1080' '#1090'.'#1076'.) '#1089#1090#1086#1080#1090' '#1076#1077#1085#1077#1075'. '#1054#1076#1085#1072#1082#1086' '#1087#1083#1072#1090#1085#1099#1081
  end
  object Label6: TLabel
    Left = 8
    Top = 194
    Width = 162
    Height = 13
    Caption = #1093#1086#1089#1090#1080#1085#1075' '#1085#1072#1076#1077#1078#1085#1077#1077' '#1073#1077#1089#1087#1083#1072#1090#1085#1086#1075#1086'.'
  end
  object GroupBox1: TGroupBox
    Left = 296
    Top = 8
    Width = 177
    Height = 145
    Caption = #1056#1072#1073#1086#1090#1072
    TabOrder = 2
    object Button4: TButton
      Left = 8
      Top = 16
      Width = 161
      Height = 25
      Cursor = crHandPoint
      Hint = #1054#1090' '#1074#1072#1089' '#1090#1088#1077#1073#1091#1077#1090#1089#1103' '#1079#1072#1085#1080#1077' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1072' '#1080#1083#1080' '#1072#1085#1075#1083#1080#1081#1089#1082#1086#1075#1086' '#1103#1079#1099#1082#1072'.'
      Caption = #1054#1090#1074#1077#1090#1099' '#1085#1072' '#1074#1086#1087#1088#1086#1089#1099
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 8
      Top = 48
      Width = 161
      Height = 25
      Cursor = crHandPoint
      Hint = #1061#1072#1082#1085#1077#1084' '#1095#1090#1086'-'#1085#1080#1073#1091#1076#1100'?'
      Caption = #1061#1072#1082#1077#1088#1089#1090#1074#1086
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button5Click
    end
    object Button8: TButton
      Left = 8
      Top = 80
      Width = 161
      Height = 25
      Cursor = crHandPoint
      Hint = #1053#1072#1088#1091#1096#1080#1084' '#1072#1074#1090#1086#1088#1089#1082#1080#1077' '#1087#1088#1072#1074#1072'?'
      Caption = #1055#1080#1088#1072#1090#1089#1090#1074#1086
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 8
      Top = 112
      Width = 161
      Height = 25
      Cursor = crHandPoint
      Hint = #1044#1083#1103' '#1083#1102#1076#1077#1081' '#1089#1086' '#1089#1082#1072#1085#1077#1088#1086#1084' '#1080' '#1087#1088#1080#1085#1090#1077#1088#1086#1084'.'
      Caption = #1057#1082#1072#1085#1080#1088#1086#1074#1072#1085#1080#1077' '#1080' '#1088#1072#1089#1087#1077#1095#1072#1090#1082#1072
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Button9Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 281
    Height = 73
    Caption = #1057#1072#1081#1090
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 19
      Width = 58
      Height = 13
      Caption = 'http://www.'
    end
    object Button1: TButton
      Left = 152
      Top = 40
      Width = 57
      Height = 25
      Cursor = crHandPoint
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1089#1074#1086#1081' '#1089#1072#1081#1090' '#1074#1086' '#1074#1089#1077#1084#1080#1088#1085#1086#1081' '#1089#1077#1090#1080'.'
      Caption = #1057#1086#1079#1076#1072#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 216
      Top = 40
      Width = 57
      Height = 25
      Cursor = crHandPoint
      Hint = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1074#1089#1105' '#1101#1090#1086' '#1082#1091#1076#1072' '#1087#1086#1076#1072#1083#1100#1096#1077'.'
      Caption = #1057#1085#1077#1089#1090#1080
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 68
      Top = 16
      Width = 77
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'my'
      OnKeyPress = Edit1KeyPress
    end
    object ComboBox1: TComboBox
      Left = 152
      Top = 16
      Width = 121
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 88
    Width = 281
    Height = 73
    Caption = 'E-mail'
    TabOrder = 1
    object Label1: TLabel
      Left = 135
      Top = 19
      Width = 11
      Height = 13
      Caption = '@'
    end
    object Edit3: TEdit
      Left = 8
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'my'
      OnKeyPress = Edit3KeyPress
    end
    object Button6: TButton
      Left = 152
      Top = 40
      Width = 57
      Height = 25
      Cursor = crHandPoint
      Hint = #1047#1072#1074#1077#1089#1090#1080' '#1089#1074#1086#1081' '#1087#1086#1095#1090#1086#1074#1099#1081' '#1103#1097#1080#1082' '#1074#1086' '#1074#1089#1077#1084#1080#1088#1085#1086#1081' '#1089#1077#1090#1080'.'
      Caption = #1057#1086#1079#1076#1072#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 216
      Top = 40
      Width = 57
      Height = 25
      Cursor = crHandPoint
      Hint = #1057#1085#1077#1089#1090#1080' '#1089#1074#1086#1081' '#1087#1086#1095#1090#1086#1074#1099#1081' '#1103#1097#1080#1082'.'
      Caption = #1057#1085#1077#1089#1090#1080
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Button7Click
    end
    object ComboBox2: TComboBox
      Left = 152
      Top = 16
      Width = 121
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
    end
  end
  object Button3: TButton
    Left = 480
    Top = 176
    Width = 145
    Height = 25
    Cursor = crHandPoint
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 4
    OnClick = Button3Click
  end
  object GroupBox4: TGroupBox
    Left = 296
    Top = 160
    Width = 177
    Height = 81
    Caption = #1044#1088#1091#1075#1086#1077
    TabOrder = 3
    object Button10: TButton
      Left = 8
      Top = 48
      Width = 161
      Height = 25
      Cursor = crHandPoint
      Hint = #1055#1086#1073#1088#1086#1076#1080#1090#1100' '#1074' '#1080#1085#1090#1077#1088#1085#1077#1090#1077' '#1074' '#1087#1086#1080#1089#1082#1072#1093' '#1095#1077#1075#1086'-'#1085#1080#1073#1091#1076#1100'.'
      Caption = #1042#1099#1093#1086#1076' '#1074' '#1080#1085#1090#1077#1088#1085#1077#1090
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 8
      Top = 16
      Width = 161
      Height = 25
      Cursor = crHandPoint
      Hint = 
        #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1086#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086#1081' '#1089#1080#1089#1090#1077#1084#1099' '#1076#1083#1103' '#1079#1072#1097#1080#1090#1099' '#1086#1090' '#1074#1080#1088#1091#1089#1086#1074' '#1080' '#1072#1090#1072#1082' '#1080#1079' ' +
        #1080#1085#1090#1077#1088#1085#1077#1090#1072'.'
      Caption = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1080#1089#1090#1077#1084#1099
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Button11Click
    end
  end
end
