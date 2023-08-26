object Bank: TBank
  Left = 194
  Top = 119
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1041#1072#1085#1082
  ClientHeight = 393
  ClientWidth = 457
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
  object Image1: TImage
    Left = 216
    Top = 8
    Width = 230
    Height = 156
    AutoSize = True
  end
  object Label15: TLabel
    Left = 217
    Top = 168
    Width = 230
    Height = 13
    Caption = #1043#1088#1072#1078#1076#1072#1085#1077'! '#1061#1088#1072#1085#1080#1090#1077' '#1076#1077#1085#1100#1075#1080' '#1074' '#1089#1073#1077#1088#1077#1075#1072#1090#1077#1083#1100#1085#1086#1081
    Transparent = True
  end
  object Label16: TLabel
    Left = 234
    Top = 181
    Width = 196
    Height = 13
    Caption = #1082#1072#1089#1089#1077'! '#1045#1089#1083#1080', '#1082#1086#1085#1077#1095#1085#1086', '#1086#1085#1080' '#1091' '#1074#1072#1089' '#1077#1089#1090#1100'...'
    Transparent = True
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 201
    Height = 121
    Caption = #1050#1072#1087#1080#1090#1072#1083
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 16
      Width = 31
      Height = 13
      Caption = #1042#1082#1083#1072#1076
    end
    object Label4: TLabel
      Left = 8
      Top = 32
      Width = 86
      Height = 13
      Caption = #1043#1086#1076#1086#1074#1086#1081' '#1087#1088#1086#1094#1077#1085#1090
    end
    object Label7: TLabel
      Left = 120
      Top = 16
      Width = 27
      Height = 13
      Caption = '0 '#1076'.'#1077'.'
    end
    object Label8: TLabel
      Left = 120
      Top = 32
      Width = 17
      Height = 13
      Caption = '0 %'
    end
    object Label5: TLabel
      Left = 8
      Top = 48
      Width = 36
      Height = 13
      Caption = #1050#1088#1077#1076#1080#1090
    end
    object Label6: TLabel
      Left = 120
      Top = 48
      Width = 27
      Height = 13
      Caption = '0 '#1076'.'#1077'.'
    end
    object Label9: TLabel
      Left = 8
      Top = 64
      Width = 85
      Height = 13
      Caption = #1050#1088#1077#1076#1080#1090' '#1080#1089#1090#1077#1082#1072#1077#1090
    end
    object Label10: TLabel
      Left = 120
      Top = 64
      Width = 3
      Height = 13
      Caption = '-'
    end
    object Label11: TLabel
      Left = 8
      Top = 96
      Width = 26
      Height = 13
      Caption = #1055#1077#1085#1103
    end
    object Label12: TLabel
      Left = 8
      Top = 80
      Width = 87
      Height = 13
      Caption = #1055#1088#1086#1094#1077#1085#1090' '#1082#1088#1077#1076#1080#1090#1072
    end
    object Label13: TLabel
      Left = 120
      Top = 80
      Width = 17
      Height = 13
      Caption = '0 %'
    end
    object Label14: TLabel
      Left = 120
      Top = 96
      Width = 27
      Height = 13
      Caption = '0 '#1076'.'#1077'.'
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 136
    Width = 201
    Height = 121
    Caption = #1042#1082#1083#1072#1076
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 34
      Height = 13
      Caption = #1057#1091#1084#1084#1072
    end
    object Button1: TButton
      Left = 8
      Top = 56
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Hint = #1042#1083#1086#1078#1080#1090#1100' '#1091#1082#1072#1079#1072#1085#1085#1091#1102' '#1089#1091#1084#1084#1091'.'
      Caption = #1042#1082#1083#1072#1076
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 104
      Top = 56
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Hint = #1057#1085#1103#1090#1100' '#1091#1082#1072#1079#1072#1085#1085#1091#1102' '#1089#1091#1084#1084#1091'.'
      Caption = #1057#1085#1103#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 8
      Top = 32
      Width = 185
      Height = 21
      TabOrder = 0
      Text = '1'
      OnKeyDown = Edit1KeyDown
      OnKeyPress = Edit1KeyPress
    end
    object Button3: TButton
      Left = 8
      Top = 88
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Hint = #1057#1088#1072#1079#1091' '#1089#1085#1103#1090#1100' '#1074#1089#1077' '#1085#1072#1083#1080#1095#1085#1099#1077'.'
      Caption = #1057#1085#1103#1090#1100' '#1074#1089#1077' '#1076#1077#1085#1100#1075#1080
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object Button9: TButton
    Left = 240
    Top = 352
    Width = 185
    Height = 25
    Cursor = crHandPoint
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 5
    OnClick = Button9Click
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 264
    Width = 201
    Height = 121
    Caption = #1047#1072#1081#1084
    TabOrder = 2
    object Label2: TLabel
      Left = 16
      Top = 16
      Width = 34
      Height = 13
      Caption = #1057#1091#1084#1084#1072
    end
    object Label17: TLabel
      Left = 112
      Top = 16
      Width = 60
      Height = 13
      Caption = #1057#1088#1086#1082' '#1074' '#1076#1085#1103#1093
    end
    object Edit2: TEdit
      Left = 8
      Top = 32
      Width = 89
      Height = 21
      MaxLength = 5
      TabOrder = 0
      Text = '1000'
      OnKeyDown = Edit2KeyDown
      OnKeyPress = Edit1KeyPress
    end
    object Button4: TButton
      Left = 8
      Top = 56
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Hint = #1047#1072#1085#1103#1090#1100' '#1091' '#1073#1072#1085#1082#1072' '#1091#1082#1072#1079#1072#1085#1085#1091#1102' '#1089#1091#1084#1084#1091'.'
      Caption = #1047#1072#1085#1103#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 104
      Top = 56
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Hint = #1054#1090#1076#1072#1090#1100' '#1091#1082#1072#1079#1072#1085#1085#1091#1102' '#1089#1091#1084#1084#1091' '#1073#1072#1085#1082#1091'.'
      Caption = #1054#1090#1076#1072#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 8
      Top = 88
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Hint = #1057#1088#1072#1079#1091' '#1074#1099#1087#1083#1072#1090#1080#1090#1100' '#1074#1089#1077' '#1076#1086#1083#1075#1080' '#1073#1072#1085#1082#1091'.'
      Caption = #1055#1086#1075#1072#1089#1080#1090#1100' '#1074#1077#1089#1100' '#1076#1086#1083#1075
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = Button6Click
    end
    object Edit3: TEdit
      Left = 104
      Top = 32
      Width = 89
      Height = 21
      MaxLength = 3
      TabOrder = 1
      Text = '30'
      OnKeyPress = Edit1KeyPress
    end
  end
  object Button7: TButton
    Left = 240
    Top = 320
    Width = 185
    Height = 25
    Cursor = crHandPoint
    Hint = 
      '"'#1050#1091#1087#1080#1074'" '#1091' '#1087#1088#1086#1074#1072#1081#1076#1077#1088#1072' '#1085#1077#1089#1082#1086#1083#1100#1082#1086' '#1084#1077#1075#1072#1073#1072#1081#1090' '#1090#1088#1072#1092#1080#1082#1072' '#1074#1099' '#1087#1086#1083#1091#1095#1072#1077#1090#1077' '#1074#1086#1079 +
      #1084#1086#1078#1085#1086#1089#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100#1089#1103' '#1080#1085#1090#1077#1088#1085#1077#1090#1086#1084'.'
    Caption = #1055#1086#1087#1086#1083#1085#1080#1090#1100' '#1089#1095#1077#1090' '#1079#1072' '#1080#1085#1090#1077#1088#1085#1077#1090
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = Button7Click
  end
  object GroupBox4: TGroupBox
    Left = 216
    Top = 200
    Width = 233
    Height = 105
    Caption = #1055#1086#1087#1086#1083#1085#1077#1085#1080#1077' '#1089#1095#1077#1090#1072' '#1079#1072' '#1080#1085#1090#1077#1088#1085#1077#1090
    TabOrder = 3
    object Label18: TLabel
      Left = 8
      Top = 32
      Width = 53
      Height = 13
      Caption = #1062#1077#1085#1072' 1 '#1052#1073
    end
    object Label19: TLabel
      Left = 8
      Top = 16
      Width = 103
      Height = 13
      Caption = #1054#1089#1090#1072#1074#1096#1080#1081#1089#1103' '#1090#1088#1072#1092#1080#1082
    end
    object Label20: TLabel
      Left = 16
      Top = 56
      Width = 43
      Height = 13
      Caption = #1055#1086#1082#1091#1087#1082#1072
    end
    object Label21: TLabel
      Left = 136
      Top = 16
      Width = 24
      Height = 13
      Caption = '0 '#1052#1073
    end
    object Label22: TLabel
      Left = 136
      Top = 32
      Width = 42
      Height = 13
      Caption = '0.00 '#1076'.'#1077'.'
    end
    object Edit4: TEdit
      Left = 8
      Top = 72
      Width = 113
      Height = 21
      TabOrder = 0
      Text = '1'
      OnKeyPress = Edit1KeyPress
    end
    object Button8: TButton
      Left = 136
      Top = 70
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Hint = #1050#1091#1087#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1086#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1084#1077#1075#1072#1073#1072#1081#1090'.'
      Caption = #1050#1091#1087#1080#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button8Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 224
    Top = 16
  end
end
