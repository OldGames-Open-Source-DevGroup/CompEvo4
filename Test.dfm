object Tst: TTst
  Left = 207
  Top = 103
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1058#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 289
  ClientWidth = 641
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
    Left = 16
    Top = 8
    Width = 120
    Height = 13
    Caption = #1048#1085#1080#1094#1080#1072#1083#1080#1079#1072#1094#1080#1103' '#1090#1077#1089#1090#1072'...'
  end
  object Image1: TImage
    Left = 456
    Top = 70
    Width = 177
    Height = 177
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 64
    Width = 441
    Height = 185
    Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 17
      Width = 117
      Height = 13
      Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' - '
    end
    object Label3: TLabel
      Left = 8
      Top = 41
      Width = 72
      Height = 13
      Caption = #1053#1072#1076#1077#1078#1085#1086#1089#1090#1100' - '
    end
    object Label4: TLabel
      Left = 8
      Top = 65
      Width = 155
      Height = 13
      Caption = #1057#1082#1086#1088#1086#1089#1090#1100' '#1088#1072#1073#1086#1090#1099' '#1089' '#1080#1085#1090#1077#1088#1085#1077#1090' - '
    end
    object Label5: TLabel
      Left = 8
      Top = 89
      Width = 153
      Height = 13
      Caption = #1041#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1100' '#1076#1083#1103' '#1079#1076#1086#1088#1086#1074#1100#1103' - '
    end
    object Gauge1: TGauge
      Left = 176
      Top = 16
      Width = 257
      Height = 17
      Hint = #1053#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1074#1083#1080#1103#1077#1090' '#1087#1088#1086#1094#1077#1089#1089#1086#1088'.'
      ForeColor = clBlue
      MaxValue = 50000
      ParentShowHint = False
      Progress = 0
      ShowHint = True
      ShowText = False
    end
    object Gauge2: TGauge
      Left = 176
      Top = 40
      Width = 257
      Height = 17
      Hint = 
        #1053#1072#1076#1077#1078#1085#1086#1089#1090#1100' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1072' '#1086#1087#1088#1077#1076#1077#1083#1103#1077#1090#1089#1103' '#1080#1089#1090#1086#1095#1085#1080#1082#1086#1084' '#1073#1077#1089#1087#1077#1088#1077#1073#1086#1081#1085#1086#1075#1086' '#1087#1080#1090 +
        #1072#1085#1080#1103'.'
      ForeColor = clRed
      MaxValue = 99
      ParentShowHint = False
      Progress = 0
      ShowHint = True
      ShowText = False
    end
    object Gauge3: TGauge
      Left = 176
      Top = 64
      Width = 257
      Height = 17
      Hint = #1057#1082#1086#1088#1086#1089#1090#1100' '#1088#1072#1073#1086#1090#1099' '#1074' '#1080#1085#1090#1077#1088#1085#1077#1090' '#1079#1072#1074#1080#1089#1080#1090' '#1082#1086#1085#1077#1095#1085#1086' '#1078#1077' '#1086#1090' '#1084#1086#1076#1077#1084#1072'.'
      ForeColor = clYellow
      MaxValue = 1024000
      ParentShowHint = False
      Progress = 0
      ShowHint = True
      ShowText = False
    end
    object Gauge4: TGauge
      Left = 176
      Top = 88
      Width = 257
      Height = 17
      Hint = #1061#1086#1088#1086#1096#1080#1081' '#1084#1086#1085#1080#1090#1086#1088' '#1089#1073#1077#1088#1077#1078#1077#1090' '#1074#1072#1096#1080' '#1075#1083#1072#1079#1072' '#1086#1090' '#1087#1077#1088#1077#1091#1090#1086#1084#1083#1077#1085#1080#1103'.'
      ForeColor = clLime
      MaxValue = 99
      ParentShowHint = False
      Progress = 0
      ShowHint = True
      ShowText = False
    end
    object Label6: TLabel
      Left = 8
      Top = 113
      Width = 141
      Height = 13
      Caption = #1057#1082#1086#1088#1086#1089#1090#1100' '#1087#1077#1095#1072#1090#1080' '#1087#1088#1080#1085#1090#1077#1088#1072' -'
    end
    object Gauge5: TGauge
      Left = 176
      Top = 112
      Width = 257
      Height = 17
      Hint = #1041#1099#1089#1090#1088#1099#1081' '#1087#1088#1080#1085#1090#1077#1088' '#1087#1086#1084#1086#1078#1077#1090' '#1074#1072#1084' '#1073#1099#1089#1090#1088#1086' '#1087#1086#1087#1086#1083#1085#1080#1090#1100' '#1074#1072#1096' '#1073#1102#1076#1078#1077#1090'.'
      ForeColor = clAqua
      MaxValue = 40
      ParentShowHint = False
      Progress = 0
      ShowHint = True
      ShowText = False
    end
    object Gauge6: TGauge
      Left = 176
      Top = 136
      Width = 257
      Height = 17
      Hint = #1041#1099#1089#1090#1088#1099#1081' '#1089#1082#1072#1085#1077#1088' '#1087#1086#1084#1086#1078#1077#1090' '#1074#1072#1084' '#1073#1099#1089#1090#1088#1086' '#1087#1086#1087#1086#1083#1085#1080#1090#1100' '#1074#1072#1096' '#1073#1102#1076#1078#1077#1090'.'
      ForeColor = clFuchsia
      MaxValue = 40
      ParentShowHint = False
      Progress = 0
      ShowHint = True
      ShowText = False
    end
    object Label8: TLabel
      Left = 8
      Top = 137
      Width = 139
      Height = 13
      Caption = #1057#1082#1086#1088#1086#1089#1090#1100' '#1088#1072#1073#1086#1090#1099' '#1089#1082#1072#1085#1077#1088#1072' -'
    end
    object Label7: TLabel
      Left = 8
      Top = 160
      Width = 158
      Height = 13
      Caption = #1041#1099#1089#1090#1088#1086#1076#1077#1081#1089#1090#1074#1080#1077' '#1074#1080#1076#1077#1086#1082#1072#1088#1090#1099' - '
    end
    object Gauge7: TGauge
      Left = 176
      Top = 160
      Width = 257
      Height = 17
      Hint = #1041#1099#1089#1090#1088#1072#1103' '#1074#1080#1076#1077#1086#1082#1072#1088#1090#1072' '#1089#1073#1077#1088#1077#1078#1077#1090' '#1074#1072#1084' '#1085#1077#1088#1074#1099' '#1074' '#1089#1086#1074#1088#1077#1084#1077#1085#1085#1099#1093' '#1080#1075#1088#1072#1093'.'
      MaxValue = 35000
      ParentShowHint = False
      Progress = 0
      ShowHint = True
      ShowText = False
    end
  end
  object Button1: TButton
    Left = 472
    Top = 256
    Width = 145
    Height = 25
    Cursor = crHandPoint
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 5
    OnClick = Button1Click
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 24
    Width = 513
    Height = 25
    Max = 200
    Smooth = True
    TabOrder = 1
  end
  object Button2: TButton
    Left = 528
    Top = 24
    Width = 105
    Height = 25
    Cursor = crHandPoint
    Hint = #1055#1088#1077#1088#1074#1072#1090#1100' '#1090#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1077'.'
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 84
    Top = 256
    Width = 137
    Height = 25
    Cursor = crHandPoint
    Hint = #1050#1072#1082#1086#1081' '#1088#1091#1089#1089#1082#1080#1081' '#1085#1077' '#1083#1102#1073#1080#1090' '#1073#1099#1089#1090#1088#1086#1081' '#1077#1079#1076#1099'?'
    Caption = #1056#1072#1079#1075#1086#1085' '#1087#1088#1086#1094#1077#1089#1089#1086#1088#1072
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 228
    Top = 256
    Width = 137
    Height = 25
    Cursor = crHandPoint
    Hint = #1048#1079#1073#1072#1074#1083#1103#1077#1084#1089#1103' '#1086#1090' '#1090#1086#1088#1084#1086#1079#1086#1074' '#1074' '#1080#1075#1088#1072#1093'.'
    Caption = #1056#1072#1079#1075#1086#1085' '#1074#1080#1076#1077#1086#1082#1072#1088#1090#1099
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = Button4Click
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 208
    Top = 24
  end
end
