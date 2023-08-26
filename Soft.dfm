object Softw: TSoftw
  Left = 203
  Top = 114
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = #1059#1089#1090#1072#1085#1086#1074#1082#1072' '#1085#1086#1074#1099#1093' '#1087#1088#1086#1075#1088#1072#1084#1084
  ClientHeight = 377
  ClientWidth = 594
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
    Left = 424
    Top = 8
    Width = 161
    Height = 141
    AutoSize = True
  end
  object Label1: TLabel
    Left = 427
    Top = 152
    Width = 156
    Height = 13
    Caption = #1041#1077#1079' '#1087#1088#1086#1075#1088#1072#1084#1084' '#1074#1072#1096' '#1082#1086#1084#1087' '#1073#1091#1076#1077#1090
  end
  object Label2: TLabel
    Left = 431
    Top = 164
    Width = 147
    Height = 13
    Caption = #1087#1088#1086#1089#1090#1086' '#1075#1088#1091#1076#1086#1081' '#1084#1077#1090#1072#1083#1083#1086#1083#1086#1084#1072'.'
  end
  object Button1: TButton
    Left = 432
    Top = 256
    Width = 145
    Height = 25
    Cursor = crHandPoint
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 4
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 201
    Height = 273
    Caption = #1056#1072#1079#1083#1080#1095#1085#1099#1081' '#1089#1086#1092#1090
    TabOrder = 0
    object Osup: TButton
      Left = 8
      Top = 16
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Hint = #1042#1099#1073#1080#1088#1072#1081#1090#1077' '#1086#1087#1077#1088#1072#1094#1080#1086#1085#1085#1091#1102' '#1089#1080#1089#1090#1077#1084#1091' '#1087#1086#1076' '#1079#1072#1076#1072#1095#1080'.'
      Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1072#1103' '#1089#1080#1089#1090#1077#1084#1072
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = OsupClick
    end
    object Devup: TButton
      Left = 8
      Top = 48
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Hint = #1057#1087#1086#1089#1086#1073' '#1074#1099#1088#1072#1078#1072#1090#1100' '#1089#1074#1086#1080' '#1084#1099#1089#1083#1080'.'
      Caption = #1057#1088#1077#1076#1089#1090#1074#1072' '#1088#1072#1079#1088#1072#1073#1086#1090#1082#1080
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = DevupClick
    end
    object Button6: TButton
      Left = 8
      Top = 112
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Hint = #1057#1087#1086#1089#1086#1073#1099' '#1073#1086#1088#1100#1073#1099' '#1089' '#1080#1085#1090#1077#1088#1085#1077#1090'-'#1084#1091#1089#1086#1088#1086#1084'.'
      Caption = #1055#1088#1086#1090#1080#1074#1086#1089#1087#1072#1084#1085#1099#1077' '#1092#1080#1083#1100#1090#1088#1099
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 8
      Top = 80
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Hint = #1057#1088#1077#1076#1089#1090#1074#1072' '#1079#1072#1097#1080#1090#1099' '#1086#1090' '#1085#1077#1093#1086#1088#1086#1096#1080#1093' '#1087#1088#1086#1075#1088#1072#1084#1084'.'
      Caption = #1040#1085#1090#1080#1074#1080#1088#1091#1089
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 8
      Top = 208
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Hint = #1059#1076#1086#1073#1085#1099#1077' '#1089#1088#1077#1076#1089#1090#1074#1072' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072' '#1092#1072#1081#1083#1086#1074#1086#1081' '#1089#1080#1089#1090#1077#1084#1099' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1072'.'
      Caption = #1060#1072#1081#1083#1086#1074#1099#1081' '#1084#1077#1085#1077#1076#1078#1077#1088
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 8
      Top = 144
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Hint = #1057#1088#1077#1076#1089#1090#1074#1072' '#1076#1083#1103' '#1079#1072#1097#1080#1090#1099' '#1086#1090' '#1072#1090#1072#1082' '#1080#1079' '#1080#1085#1090#1077#1088#1085#1077#1090#1072'.'
      Caption = #1041#1088#1072#1085#1076#1084#1072#1091#1077#1088
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = Button9Click
    end
    object Button11: TButton
      Left = 8
      Top = 176
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Hint = #1057#1088#1077#1076#1089#1090#1074#1086' '#1087#1091#1090#1077#1096#1077#1089#1090#1074#1080#1103' '#1074' '#1080#1085#1090#1077#1088#1085#1077#1090#1077'.'
      Caption = #1041#1088#1072#1091#1079#1077#1088
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = Button11Click
    end
    object Button12: TButton
      Left = 8
      Top = 240
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Hint = 
        #1050#1086#1084#1087#1083#1077#1082#1089' '#1087#1088#1086#1075#1088#1072#1084#1084' '#1076#1083#1103' '#1072#1085#1072#1083#1080#1079#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100#1085#1086#1089#1090#1080' '#1074#1072#1096#1077#1075#1086' '#1078#1077#1083#1077#1079#1085#1086#1075 +
        #1086' '#1076#1088#1091#1075#1072'.'
      Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072'-'#1090#1077#1089#1090#1077#1088
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = Button12Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 288
    Width = 201
    Height = 81
    Caption = #1040#1085#1090#1080#1074#1080#1088#1091#1089
    TabOrder = 1
    object Button4: TButton
      Left = 8
      Top = 16
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Hint = #1057#1093#1086#1076#1080#1090#1100' '#1074' '#1080#1085#1090#1077#1088#1085#1077#1090' '#1079#1072' '#1072#1085#1090#1080#1074#1080#1088#1091#1089#1085#1086#1081' '#1073#1072#1079#1086#1081'.'
      Caption = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1085#1077#1074#1086#1079#1084#1086#1078#1085#1086
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 8
      Top = 48
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Hint = #1042#1099#1103#1074#1083#1077#1085#1080#1077' '#1075#1072#1076#1086#1074'.'
      Caption = #1055#1088#1086#1074#1077#1088#1082#1072' '#1085#1072' '#1074#1080#1088#1091#1089#1099
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button5Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 216
    Top = 288
    Width = 369
    Height = 81
    Caption = #1055#1088#1086#1074#1077#1088#1082#1072
    TabOrder = 5
    Visible = False
    object Label5: TLabel
      Left = 256
      Top = 16
      Width = 32
      Height = 13
      Caption = #1054#1090#1095#1077#1090':'
    end
    object Label6: TLabel
      Left = 232
      Top = 32
      Width = 90
      Height = 13
      Caption = #1042#1080#1088#1091#1089#1086#1074' '#1085#1072#1081#1076#1077#1085#1086':'
    end
    object Animate1: TAnimate
      Left = 16
      Top = 20
      Width = 80
      Height = 50
      CommonAVI = aviFindFolder
      StopFrame = 29
    end
    object ProgressBar1: TProgressBar
      Left = 192
      Top = 56
      Width = 169
      Height = 17
      Smooth = True
      TabOrder = 1
    end
  end
  object Button3: TButton
    Left = 432
    Top = 224
    Width = 145
    Height = 25
    Cursor = crHandPoint
    Hint = #1042#1089#1105', '#1095#1090#1086' '#1089#1074#1103#1079#1072#1085#1086' '#1089' '#1087#1088#1086#1075#1088#1072#1084#1084#1080#1089#1090#1089#1082#1086#1081' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1100#1102'.'
    Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1087#1088#1086#1075#1088#1072#1084#1084
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = Button3Click
  end
  object GroupBox4: TGroupBox
    Left = 216
    Top = 8
    Width = 201
    Height = 113
    Caption = #1044#1080#1089#1082#1086#1074#1099#1077' '#1086#1087#1077#1088#1072#1094#1080#1080
    TabOrder = 2
    object Button10: TButton
      Left = 8
      Top = 16
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Hint = #1055#1086#1079#1074#1086#1083#1103#1077#1090' '#1091#1074#1077#1083#1080#1095#1080#1090#1100' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1076#1080#1089#1082#1086#1074#1086#1081' '#1087#1086#1076#1089#1080#1089#1090#1077#1084#1099'.'
      Caption = #1044#1077#1092#1088#1072#1075#1084#1077#1085#1090#1072#1094#1080#1103
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Button10Click
    end
    object Button14: TButton
      Left = 8
      Top = 48
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Hint = #1042#1089#1077#1074#1086#1079#1084#1086#1078#1085#1099#1077' '#1086#1087#1077#1088#1072#1094#1080#1080' '#1089' '#1076#1080#1089#1082#1086#1074#1099#1084#1080' '#1088#1072#1079#1076#1077#1083#1072#1084#1080'.'
      Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1089#1090#1088#1091#1082#1090#1091#1088#1099' '#1088#1072#1079#1076#1077#1083#1086#1074
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button14Click
    end
    object Button2: TButton
      Left = 8
      Top = 80
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Hint = 
        #1055#1086#1079#1074#1086#1083#1103#1077#1090' '#1084#1077#1085#1103#1090#1100' '#1072#1082#1090#1080#1074#1085#1099#1081' '#1088#1072#1079#1076#1077#1083' '#1095#1090#1086' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1076#1083#1103' '#1079#1072#1075#1088#1091#1079#1082#1080' '#1085#1077#1089 +
        #1082#1086#1083#1100#1082#1080#1093' '#1086#1087#1077#1088#1072#1094#1080#1086#1085#1085#1099#1093' '#1089#1080#1089#1090#1077#1084'.'
      Caption = #1057#1084#1077#1085#1072' '#1072#1082#1090#1080#1074#1085#1086#1075#1086' '#1088#1072#1079#1076#1077#1083#1072
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 216
    Top = 128
    Width = 201
    Height = 153
    Caption = #1044#1077#1092#1088#1072#1075#1084#1077#1085#1090#1072#1094#1080#1103
    TabOrder = 6
    Visible = False
    object Gauge1: TGauge
      Left = 46
      Top = 16
      Width = 109
      Height = 105
      BackColor = clWindow
      BorderStyle = bsNone
      ForeColor = clHighlight
      Kind = gkPie
      Progress = 0
    end
    object Label3: TLabel
      Left = 8
      Top = 128
      Width = 3
      Height = 13
    end
  end
  object Timer4: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer4Timer
    Left = 464
    Top = 8
  end
  object ActionList1: TActionList
    Left = 432
    Top = 8
    object Activate: TAction
      Caption = 'Activate'
      OnExecute = ActivateExecute
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 496
    Top = 8
  end
end
