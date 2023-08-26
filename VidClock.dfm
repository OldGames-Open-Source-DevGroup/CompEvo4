object Vclock: TVclock
  Left = 208
  Top = 103
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1056#1072#1079#1075#1086#1085' '#1074#1080#1076#1077#1086#1082#1072#1088#1090#1099
  ClientHeight = 577
  ClientWidth = 305
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
    Left = 53
    Top = 8
    Width = 200
    Height = 171
    AutoSize = True
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 336
    Width = 289
    Height = 169
    Caption = #1056#1077#1075#1091#1083#1080#1088#1086#1074#1082#1072' '#1095#1072#1089#1090#1086#1090
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 108
      Height = 13
      Caption = #1063#1072#1089#1090#1086#1090#1072' '#1103#1076#1088#1072' - 0 '#1052#1043#1094
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 121
      Height = 13
      Caption = #1063#1072#1089#1090#1086#1090#1072' '#1087#1072#1084#1103#1090#1080' - 0 '#1052#1043#1094
    end
    object TrackBar1: TTrackBar
      Left = 2
      Top = 32
      Width = 285
      Height = 25
      Ctl3D = True
      Max = 1500
      ParentCtl3D = False
      TabOrder = 0
      TickStyle = tsNone
      OnChange = TrackBar1Change
    end
    object TrackBar2: TTrackBar
      Left = 2
      Top = 80
      Width = 285
      Height = 25
      Ctl3D = True
      Max = 2500
      ParentCtl3D = False
      TabOrder = 1
      TickStyle = tsNone
      OnChange = TrackBar2Change
    end
    object Button3: TButton
      Left = 8
      Top = 112
      Width = 105
      Height = 25
      Cursor = crHandPoint
      Hint = #1055#1088#1086#1090#1077#1089#1090#1080#1088#1086#1074#1072#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099'.'
      Caption = #1058#1077#1089#1090' '#1085#1072#1089#1090#1088#1086#1077#1082
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 120
      Top = 112
      Width = 161
      Height = 25
      Cursor = crHandPoint
      Hint = #1055#1086#1079#1074#1086#1083#1080#1090#1100' '#1087#1088#1086#1075#1088#1072#1084#1084#1077' '#1089#1072#1084#1086#1081' '#1085#1072#1081#1090#1080' '#1086#1087#1090#1080#1084#1072#1083#1100#1085#1099#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099'.'
      Caption = #1053#1072#1081#1090#1080' '#1086#1087#1090#1080#1084#1072#1083#1100#1085#1099#1077' '#1095#1072#1089#1090#1086#1090#1099
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Button4Click
    end
    object ProgressBar1: TProgressBar
      Left = 8
      Top = 144
      Width = 273
      Height = 17
      Smooth = True
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 184
    Width = 289
    Height = 145
    Caption = #1044#1072#1085#1085#1099#1077' '#1087#1086' '#1074#1080#1076#1077#1086#1082#1072#1088#1090#1077
    TabOrder = 1
    object Label3: TLabel
      Left = 8
      Top = 16
      Width = 59
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' - '
    end
    object Label4: TLabel
      Left = 8
      Top = 32
      Width = 29
      Height = 13
      Caption = #1063#1080#1087' - '
    end
    object Label5: TLabel
      Left = 8
      Top = 48
      Width = 138
      Height = 13
      Caption = #1054#1073#1098#1105#1084' '#1074#1080#1076#1077#1086#1087#1072#1084#1103#1090#1080' - 0 '#1052#1073
    end
    object Label6: TLabel
      Left = 8
      Top = 64
      Width = 116
      Height = 13
      Caption = #1053#1086#1084#1080#1085#1072#1083#1100#1085#1099#1077' '#1095#1072#1089#1090#1086#1090#1099
    end
    object Label7: TLabel
      Left = 16
      Top = 80
      Width = 65
      Height = 13
      Caption = #1071#1076#1088#1086' - 0 '#1052#1043#1094
    end
    object Label8: TLabel
      Left = 16
      Top = 96
      Width = 78
      Height = 13
      Caption = #1055#1072#1084#1103#1090#1100' - 0 '#1052#1043#1094
    end
    object Label9: TLabel
      Left = 8
      Top = 120
      Width = 152
      Height = 13
      Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072' '#1076#1083#1103' '#1088#1072#1079#1075#1086#1085#1072' - '#1053#1077#1090
    end
  end
  object Button1: TButton
    Left = 8
    Top = 512
    Width = 137
    Height = 25
    Cursor = crHandPoint
    Hint = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1085#1072' '#1082#1086#1084#1087#1100#1102#1090#1077#1088' '#1087#1088#1086#1075#1088#1072#1084#1084#1091' '#1076#1083#1103' '#1088#1072#1079#1075#1086#1085#1072' '#1074#1080#1076#1077#1086#1082#1072#1088#1090#1099'.'
    Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072' '#1076#1083#1103' '#1088#1072#1079#1075#1086#1085#1072
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 544
    Width = 289
    Height = 25
    Cursor = crHandPoint
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button5: TButton
    Left = 152
    Top = 512
    Width = 145
    Height = 25
    Cursor = crHandPoint
    Hint = #1055#1086#1089#1083#1077#1076#1085#1080#1081' '#1089#1087#1086#1089#1086#1073' '#1074#1099#1078#1072#1090#1100' '#1080#1079' '#1074#1072#1096#1077#1081' '#1074#1080#1076#1077#1086#1082#1072#1088#1090#1099' '#1074#1089#1077'...'
    Caption = #1069#1082#1089#1090#1088#1080#1084#1072#1083#1100#1085#1099#1081' '#1088#1072#1079#1075#1086#1085
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = Button5Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer1Timer
    Left = 264
    Top = 296
  end
end
