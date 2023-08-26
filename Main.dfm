object MainForm: TMainForm
  Left = 193
  Top = 110
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1050#1086#1084#1087#1100#1102#1090#1077#1088#1085#1072#1103' '#1101#1074#1086#1083#1102#1094#1080#1103' 4'
  ClientHeight = 600
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  ScreenSnap = True
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Image4: TImage
    Left = 632
    Top = 560
    Width = 73
    Height = 33
    AutoSize = True
  end
  object DateLabel: TLabel
    Left = 760
    Top = 544
    Width = 3
    Height = 13
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label45: TLabel
    Left = 765
    Top = 548
    Width = 24
    Height = 13
    Hint = #1053#1086#1084#1077#1088' '#1090#1077#1082#1091#1097#1077#1081' '#1074#1077#1088#1089#1080#1080' '#1080#1075#1088#1099'.'
    Caption = '4.1.2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = True
    OnMouseDown = Label45MouseDown
  end
  object UsernameLabel: TLabel
    Left = 760
    Top = 544
    Width = 3
    Height = 13
    Transparent = True
  end
  object GroupBox1: TGroupBox
    Left = 352
    Top = 0
    Width = 225
    Height = 169
    Caption = #1042#1072#1096' '#1089#1090#1072#1090#1091#1089
    TabOrder = 2
    OnClick = GroupBox1Click
    object Image2: TImage
      Left = 2
      Top = 15
      Width = 221
      Height = 152
      Align = alClient
    end
    object Label1: TLabel
      Left = 8
      Top = 96
      Width = 38
      Height = 13
      Caption = #1044#1077#1085#1100#1075#1080
      Transparent = True
    end
    object Label2: TLabel
      Left = 8
      Top = 112
      Width = 41
      Height = 13
      Caption = #1056#1077#1081#1090#1080#1085#1075
      Transparent = True
    end
    object Label4: TLabel
      Left = 8
      Top = 32
      Width = 61
      Height = 13
      Caption = #1053#1072#1089#1090#1088#1086#1077#1085#1080#1077
      Transparent = True
    end
    object Label19: TLabel
      Left = 144
      Top = 96
      Width = 27
      Height = 13
      Caption = '0 '#1076'.'#1077'.'
      Transparent = True
    end
    object Label18: TLabel
      Left = 8
      Top = 80
      Width = 36
      Height = 13
      Caption = #1056#1072#1073#1086#1090#1072
      Transparent = True
    end
    object Label36: TLabel
      Left = 144
      Top = 80
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnMouseMove = Label36MouseMove
    end
    object Label17: TLabel
      Left = 8
      Top = 128
      Width = 34
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089
      Transparent = True
    end
    object Label34: TLabel
      Left = 144
      Top = 128
      Width = 44
      Height = 13
      Caption = #1063#1077#1083#1086#1074#1077#1082
      Transparent = True
    end
    object Label39: TLabel
      Left = 8
      Top = 16
      Width = 42
      Height = 13
      Caption = #1042#1086#1079#1088#1072#1089#1090
      Transparent = True
    end
    object Label40: TLabel
      Left = 144
      Top = 16
      Width = 26
      Height = 13
      Caption = '0 '#1083#1077#1090
      Transparent = True
    end
    object Label59: TLabel
      Left = 8
      Top = 144
      Width = 101
      Height = 13
      Caption = #1054#1090#1085#1086#1096#1077#1085#1080#1077' '#1074#1083#1072#1089#1090#1077#1081
      Transparent = True
    end
    object Label112: TLabel
      Left = 144
      Top = 143
      Width = 3
      Height = 13
      Caption = '-'
      Transparent = True
    end
    object Label113: TLabel
      Left = 212
      Top = 143
      Width = 6
      Height = 13
      Caption = '+'
      Transparent = True
    end
    object Label114: TLabel
      Left = 144
      Top = 31
      Width = 3
      Height = 13
      Caption = '-'
      Transparent = True
    end
    object Label115: TLabel
      Left = 144
      Top = 111
      Width = 3
      Height = 13
      Caption = '-'
      Transparent = True
    end
    object Label116: TLabel
      Left = 212
      Top = 111
      Width = 6
      Height = 13
      Caption = '+'
      Transparent = True
    end
    object Label117: TLabel
      Left = 212
      Top = 31
      Width = 6
      Height = 13
      Caption = '+'
      Transparent = True
    end
    object Label35: TLabel
      Left = 8
      Top = 48
      Width = 35
      Height = 13
      Caption = #1046#1080#1083#1100#1077
      Transparent = True
    end
    object Label134: TLabel
      Left = 144
      Top = 48
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnMouseMove = Label134MouseMove
    end
    object Label135: TLabel
      Left = 8
      Top = 64
      Width = 41
      Height = 13
      Caption = #1052#1072#1096#1080#1085#1072
      Transparent = True
    end
    object Label136: TLabel
      Left = 144
      Top = 64
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnMouseMove = Label136MouseMove
    end
    object VlastiP: TProgressBar
      Left = 152
      Top = 144
      Width = 57
      Height = 13
      ParentShowHint = False
      Smooth = True
      ShowHint = True
      TabOrder = 2
      OnMouseMove = VlastiPMouseMove
    end
    object NastrP: TProgressBar
      Left = 152
      Top = 32
      Width = 57
      Height = 13
      Max = 175
      ParentShowHint = False
      Smooth = True
      ShowHint = True
      TabOrder = 0
      OnMouseMove = NastrPMouseMove
    end
    object RatingP: TProgressBar
      Left = 152
      Top = 112
      Width = 57
      Height = 13
      Max = 500
      ParentShowHint = False
      Smooth = True
      ShowHint = True
      TabOrder = 1
      OnMouseMove = RatingPMouseMove
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 0
    Width = 337
    Height = 313
    Caption = #1042#1072#1096' '#1082#1086#1084#1087#1100#1102#1090#1077#1088
    TabOrder = 3
    OnClick = GroupBox2Click
    object Image1: TImage
      Left = 2
      Top = 15
      Width = 333
      Height = 296
      Align = alClient
    end
    object Label5: TLabel
      Left = 8
      Top = 16
      Width = 56
      Height = 13
      Caption = #1055#1088#1086#1094#1077#1089#1089#1086#1088
      Transparent = True
    end
    object Label6: TLabel
      Left = 8
      Top = 32
      Width = 100
      Height = 13
      Caption = #1052#1072#1090#1077#1088#1080#1085#1089#1082#1072#1103' '#1087#1083#1072#1090#1072
      Transparent = True
    end
    object Label3: TLabel
      Left = 8
      Top = 48
      Width = 107
      Height = 13
      Caption = #1054#1087#1077#1088#1072#1090#1080#1074#1085#1072#1103' '#1087#1072#1084#1103#1090#1100
      Transparent = True
    end
    object Label7: TLabel
      Left = 8
      Top = 64
      Width = 73
      Height = 13
      Caption = #1046#1077#1089#1090#1082#1080#1081' '#1076#1080#1089#1082
      Transparent = True
    end
    object Label8: TLabel
      Left = 8
      Top = 80
      Width = 44
      Height = 13
      Caption = #1052#1086#1085#1080#1090#1086#1088
      Transparent = True
    end
    object Label9: TLabel
      Left = 8
      Top = 96
      Width = 35
      Height = 13
      Caption = #1052#1086#1076#1077#1084
      Transparent = True
    end
    object Label10: TLabel
      Left = 8
      Top = 112
      Width = 99
      Height = 13
      Caption = #1054#1087#1090#1080#1095#1077#1089#1082#1080#1081' '#1087#1088#1080#1074#1086#1076
      Transparent = True
    end
    object Label11: TLabel
      Left = 8
      Top = 128
      Width = 80
      Height = 13
      Caption = #1047#1074#1091#1082#1086#1074#1072#1103' '#1082#1072#1088#1090#1072
      Transparent = True
    end
    object Label22: TLabel
      Left = 152
      Top = 16
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      Transparent = True
    end
    object Label23: TLabel
      Left = 152
      Top = 32
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnMouseMove = Label23MouseMove
    end
    object Label24: TLabel
      Left = 152
      Top = 48
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnMouseMove = Label24MouseMove
    end
    object Label25: TLabel
      Left = 152
      Top = 64
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnMouseMove = Label25MouseMove
    end
    object Label26: TLabel
      Left = 152
      Top = 128
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      Transparent = True
    end
    object Label27: TLabel
      Left = 152
      Top = 80
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnMouseMove = Label27MouseMove
    end
    object Label28: TLabel
      Left = 152
      Top = 112
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnMouseMove = Label28MouseMove
    end
    object Label29: TLabel
      Left = 152
      Top = 96
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnMouseMove = Label29MouseMove
    end
    object Label37: TLabel
      Left = 8
      Top = 144
      Width = 23
      Height = 13
      Caption = #1048#1041#1055
      Transparent = True
    end
    object Label38: TLabel
      Left = 152
      Top = 144
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      Transparent = True
    end
    object Label60: TLabel
      Left = 8
      Top = 160
      Width = 60
      Height = 13
      Caption = #1042#1080#1076#1077#1086#1082#1072#1088#1090#1072
      Transparent = True
    end
    object Label61: TLabel
      Left = 8
      Top = 176
      Width = 69
      Height = 13
      Caption = #1041#1083#1086#1082' '#1087#1080#1090#1072#1085#1080#1103
      Transparent = True
    end
    object Label62: TLabel
      Left = 8
      Top = 192
      Width = 59
      Height = 13
      Caption = #1050#1083#1072#1074#1080#1072#1090#1091#1088#1072
      Transparent = True
    end
    object Label63: TLabel
      Left = 8
      Top = 208
      Width = 31
      Height = 13
      Caption = #1052#1099#1096#1100
      Transparent = True
    end
    object Label64: TLabel
      Left = 8
      Top = 224
      Width = 43
      Height = 13
      Caption = #1050#1086#1083#1086#1085#1082#1080
      Transparent = True
    end
    object Label65: TLabel
      Left = 8
      Top = 240
      Width = 36
      Height = 13
      Caption = #1050#1086#1088#1087#1091#1089
      Transparent = True
    end
    object Label66: TLabel
      Left = 8
      Top = 256
      Width = 30
      Height = 13
      Caption = #1050#1091#1083#1077#1088
      Transparent = True
    end
    object Label67: TLabel
      Left = 8
      Top = 272
      Width = 43
      Height = 13
      Caption = #1055#1088#1080#1085#1090#1077#1088
      Transparent = True
    end
    object Label68: TLabel
      Left = 8
      Top = 288
      Width = 37
      Height = 13
      Caption = #1057#1082#1072#1085#1077#1088
      Transparent = True
    end
    object Label69: TLabel
      Left = 152
      Top = 192
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      Transparent = True
    end
    object Label70: TLabel
      Left = 152
      Top = 208
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      Transparent = True
    end
    object Label71: TLabel
      Left = 152
      Top = 224
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      Transparent = True
    end
    object Label72: TLabel
      Left = 152
      Top = 240
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      Transparent = True
    end
    object Label73: TLabel
      Left = 152
      Top = 256
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnMouseMove = Label73MouseMove
    end
    object Label74: TLabel
      Left = 152
      Top = 272
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnMouseMove = Label74MouseMove
    end
    object Label75: TLabel
      Left = 152
      Top = 288
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnMouseMove = Label75MouseMove
    end
    object Label76: TLabel
      Left = 152
      Top = 160
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnMouseMove = Label76MouseMove
    end
    object Label77: TLabel
      Left = 152
      Top = 176
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      Transparent = True
    end
    object MediaPlayer1: TMediaPlayer
      Left = 304
      Top = 248
      Width = 29
      Height = 28
      VisibleButtons = [btPlay]
      Visible = False
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 320
    Width = 337
    Height = 233
    Caption = #1059#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1099#1077' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
    TabOrder = 4
    OnClick = GroupBox3Click
    object Image6: TImage
      Left = 2
      Top = 15
      Width = 333
      Height = 216
      Align = alClient
    end
    object Label12: TLabel
      Left = 8
      Top = 16
      Width = 120
      Height = 13
      Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1072#1103' '#1089#1080#1089#1090#1077#1084#1072
      Transparent = True
    end
    object Label14: TLabel
      Left = 8
      Top = 32
      Width = 93
      Height = 13
      Caption = #1057#1088#1077#1076#1072' '#1088#1072#1079#1088#1072#1073#1086#1090#1082#1080
      Transparent = True
    end
    object Label30: TLabel
      Left = 152
      Top = 16
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      Transparent = True
    end
    object Label32: TLabel
      Left = 152
      Top = 32
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      Transparent = True
    end
    object Label122: TLabel
      Left = 8
      Top = 64
      Width = 129
      Height = 13
      Caption = #1055#1088#1086#1090#1080#1074#1086#1089#1087#1072#1084#1085#1099#1081' '#1092#1080#1083#1100#1090#1088
      Transparent = True
    end
    object Label123: TLabel
      Left = 152
      Top = 64
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      Transparent = True
    end
    object Label13: TLabel
      Left = 8
      Top = 48
      Width = 53
      Height = 13
      Caption = #1040#1085#1090#1080#1074#1080#1088#1091#1089
      Transparent = True
    end
    object Label31: TLabel
      Left = 152
      Top = 48
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnMouseMove = Label31MouseMove
    end
    object Label47: TLabel
      Left = 8
      Top = 144
      Width = 110
      Height = 13
      Caption = #1060#1072#1081#1083#1086#1074#1099#1081' '#1084#1077#1085#1077#1076#1078#1077#1088
      Transparent = True
    end
    object Label48: TLabel
      Left = 152
      Top = 144
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      Transparent = True
    end
    object Label50: TLabel
      Left = 8
      Top = 80
      Width = 62
      Height = 13
      Caption = #1041#1088#1072#1085#1076#1084#1072#1091#1077#1088
      Transparent = True
    end
    object Label51: TLabel
      Left = 152
      Top = 80
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      Transparent = True
    end
    object Label52: TLabel
      Left = 8
      Top = 96
      Width = 121
      Height = 13
      Caption = #1044#1077#1092#1088#1072#1075#1084#1077#1085#1090#1072#1090#1086#1088' '#1076#1080#1089#1082#1072
      Transparent = True
    end
    object Label53: TLabel
      Left = 152
      Top = 96
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      Transparent = True
    end
    object Label130: TLabel
      Left = 8
      Top = 128
      Width = 42
      Height = 13
      Caption = #1041#1088#1072#1091#1079#1077#1088
      Transparent = True
    end
    object Label131: TLabel
      Left = 152
      Top = 128
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      Transparent = True
    end
    object Label132: TLabel
      Left = 8
      Top = 160
      Width = 96
      Height = 13
      Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072'-'#1090#1077#1089#1090#1077#1088
      Transparent = True
    end
    object Label133: TLabel
      Left = 152
      Top = 160
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      Transparent = True
    end
    object Label139: TLabel
      Left = 8
      Top = 176
      Width = 106
      Height = 13
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1080#1089#1082#1086#1074
      Transparent = True
    end
    object Label141: TLabel
      Left = 8
      Top = 208
      Width = 71
      Height = 13
      Caption = #1057#1078#1072#1090#1080#1077' '#1074#1080#1076#1077#1086
      Transparent = True
    end
    object Label142: TLabel
      Left = 8
      Top = 192
      Width = 70
      Height = 13
      Caption = #1057#1078#1072#1090#1080#1077' '#1072#1091#1076#1080#1086
      Transparent = True
    end
    object Label56: TLabel
      Left = 152
      Top = 176
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      Transparent = True
    end
    object Label58: TLabel
      Left = 152
      Top = 192
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      Transparent = True
    end
    object Label57: TLabel
      Left = 152
      Top = 208
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      Transparent = True
    end
    object Label49: TLabel
      Left = 8
      Top = 112
      Width = 82
      Height = 13
      Caption = #1054#1087#1077#1088#1072#1090#1086#1088' '#1076#1080#1089#1082#1072
      Transparent = True
    end
    object Label54: TLabel
      Left = 152
      Top = 112
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      Transparent = True
    end
  end
  object GroupBox6: TGroupBox
    Left = 584
    Top = 0
    Width = 209
    Height = 249
    Caption = #1060#1086#1090#1086#1075#1088#1072#1092#1080#1103' '#1080#1075#1088#1086#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    object Image13: TImage
      Left = 2
      Top = 15
      Width = 205
      Height = 232
      Align = alClient
      Center = True
      PopupMenu = PopupMenu2
    end
  end
  object GroupBox5: TGroupBox
    Left = 352
    Top = 176
    Width = 225
    Height = 73
    Caption = #1061#1072#1082#1077#1088#1089#1090#1074#1086
    TabOrder = 5
    OnClick = GroupBox5Click
    object Image5: TImage
      Left = 2
      Top = 15
      Width = 221
      Height = 56
      Align = alClient
    end
    object Label20: TLabel
      Left = 8
      Top = 48
      Width = 123
      Height = 13
      Caption = #1042#1079#1083#1086#1084#1072#1085#1086' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1086#1074
      Transparent = True
    end
    object Label21: TLabel
      Left = 144
      Top = 48
      Width = 6
      Height = 13
      Caption = '0'
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnMouseMove = Label21MouseMove
    end
    object Label42: TLabel
      Left = 8
      Top = 16
      Width = 108
      Height = 13
      Caption = #1061#1072#1082#1077#1088#1089#1082#1080#1093' '#1087#1088#1086#1075#1088#1072#1084#1084
      Transparent = True
    end
    object Label43: TLabel
      Left = 144
      Top = 16
      Width = 6
      Height = 13
      Caption = '0'
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnMouseMove = Label43MouseMove
    end
    object Label44: TLabel
      Left = 8
      Top = 32
      Width = 103
      Height = 13
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1072#1088#1077#1089#1090#1086#1074
      Transparent = True
    end
    object Label46: TLabel
      Left = 144
      Top = 32
      Width = 6
      Height = 13
      Caption = '0'
      Transparent = True
    end
  end
  object BmpButton1: TBmpButton
    Left = 392
    Top = 576
    Width = 16
    Height = 16
    Cursor = crHandPoint
    Hint = #1043#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102' '#1080#1075#1088#1099'.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = BmpButton1Click
    ImageNum = 4
    MarginLeft = 0
    MarginRight = 0
    MarginTop = 0
    MarginBottom = 0
    MarginFocus = 0
    Transparent = False
    AutoSize = True
    Checked = False
    AllowChecked = False
  end
  object GroupBox4: TGroupBox
    Left = 352
    Top = 256
    Width = 225
    Height = 57
    Caption = #1055#1080#1088#1072#1090#1089#1090#1074#1086
    TabOrder = 6
    OnClick = GroupBox4Click
    object Image3: TImage
      Left = 2
      Top = 15
      Width = 221
      Height = 40
      Align = alClient
    end
    object Label78: TLabel
      Left = 8
      Top = 16
      Width = 110
      Height = 13
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1073#1086#1083#1074#1072#1085#1086#1082
      Transparent = True
    end
    object Label79: TLabel
      Left = 8
      Top = 32
      Width = 88
      Height = 13
      Caption = #1047#1072#1087#1080#1089#1072#1085#1086' '#1076#1080#1089#1082#1086#1074
      Transparent = True
    end
    object Label80: TLabel
      Left = 144
      Top = 16
      Width = 6
      Height = 13
      Caption = '0'
      Transparent = True
    end
    object Label81: TLabel
      Left = 144
      Top = 32
      Width = 6
      Height = 13
      Caption = '0'
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnMouseMove = Label81MouseMove
    end
  end
  object GroupBox7: TGroupBox
    Left = 352
    Top = 320
    Width = 225
    Height = 105
    Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1080#1088#1086#1074#1072#1085#1080#1077
    TabOrder = 7
    OnClick = GroupBox7Click
    object Image7: TImage
      Left = 2
      Top = 15
      Width = 221
      Height = 88
      Align = alClient
    end
    object Label82: TLabel
      Left = 8
      Top = 32
      Width = 32
      Height = 13
      Caption = 'Pascal'
      Transparent = True
    end
    object Label83: TLabel
      Left = 8
      Top = 48
      Width = 19
      Height = 13
      Caption = 'C++'
      Transparent = True
    end
    object Label84: TLabel
      Left = 8
      Top = 64
      Width = 48
      Height = 13
      Caption = 'Assembler'
      Transparent = True
    end
    object Label85: TLabel
      Left = 144
      Top = 64
      Width = 52
      Height = 13
      Caption = #1053#1077' '#1079#1085#1072#1077#1090#1077
      Transparent = True
    end
    object Label86: TLabel
      Left = 144
      Top = 32
      Width = 52
      Height = 13
      Caption = #1053#1077' '#1079#1085#1072#1077#1090#1077
      Transparent = True
    end
    object Label87: TLabel
      Left = 144
      Top = 48
      Width = 52
      Height = 13
      Caption = #1053#1077' '#1079#1085#1072#1077#1090#1077
      Transparent = True
    end
    object Label88: TLabel
      Left = 8
      Top = 80
      Width = 104
      Height = 13
      Caption = #1053#1072#1087#1080#1089#1072#1085#1086' '#1087#1088#1086#1075#1088#1072#1084#1084
      Transparent = True
    end
    object Label89: TLabel
      Left = 144
      Top = 80
      Width = 6
      Height = 13
      Caption = '0'
      Transparent = True
    end
    object Label128: TLabel
      Left = 8
      Top = 16
      Width = 26
      Height = 13
      Caption = 'Basic'
      Transparent = True
    end
    object Label129: TLabel
      Left = 144
      Top = 16
      Width = 52
      Height = 13
      Caption = #1053#1077' '#1079#1085#1072#1077#1090#1077
      Transparent = True
    end
  end
  object GroupBox8: TGroupBox
    Left = 352
    Top = 432
    Width = 225
    Height = 73
    Caption = #1041#1072#1085#1082
    TabOrder = 8
    OnClick = GroupBox8Click
    object Image8: TImage
      Left = 2
      Top = 15
      Width = 221
      Height = 56
      Align = alClient
    end
    object Label90: TLabel
      Left = 8
      Top = 16
      Width = 31
      Height = 13
      Caption = #1042#1082#1083#1072#1076
      Transparent = True
    end
    object Label91: TLabel
      Left = 8
      Top = 32
      Width = 86
      Height = 13
      Caption = #1043#1086#1076#1086#1074#1086#1081' '#1087#1088#1086#1094#1077#1085#1090
      Transparent = True
    end
    object Label92: TLabel
      Left = 144
      Top = 16
      Width = 27
      Height = 13
      Caption = '0 '#1076'.'#1077'.'
      Transparent = True
    end
    object Label93: TLabel
      Left = 144
      Top = 32
      Width = 17
      Height = 13
      Caption = '0 %'
      Transparent = True
    end
    object Label126: TLabel
      Left = 8
      Top = 48
      Width = 36
      Height = 13
      Caption = #1050#1088#1077#1076#1080#1090
      Transparent = True
    end
    object Label127: TLabel
      Left = 144
      Top = 48
      Width = 27
      Height = 13
      Caption = '0 '#1076'.'#1077'.'
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnMouseMove = Label127MouseMove
    end
  end
  object GroupBox9: TGroupBox
    Left = 8
    Top = 560
    Width = 337
    Height = 89
    Caption = #1048#1085#1090#1077#1088#1085#1077#1090
    TabOrder = 9
    OnClick = GroupBox9Click
    object Image9: TImage
      Left = 2
      Top = 15
      Width = 333
      Height = 72
      Align = alClient
    end
    object Label15: TLabel
      Left = 8
      Top = 16
      Width = 88
      Height = 13
      Caption = #1057#1072#1081#1090' '#1074' '#1080#1085#1090#1077#1088#1085#1077#1090#1077
      Transparent = True
    end
    object Label33: TLabel
      Left = 152
      Top = 16
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnMouseMove = Label33MouseMove
    end
    object Label16: TLabel
      Left = 8
      Top = 32
      Width = 28
      Height = 13
      Caption = 'E-mail'
      Transparent = True
    end
    object Label41: TLabel
      Left = 152
      Top = 32
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      ParentShowHint = False
      ShowHint = False
      Transparent = True
    end
    object Label124: TLabel
      Left = 8
      Top = 48
      Width = 83
      Height = 13
      Caption = #1055#1086#1083#1091#1095#1077#1085#1086' '#1089#1087#1072#1084#1072
      Transparent = True
    end
    object Label125: TLabel
      Left = 152
      Top = 48
      Width = 6
      Height = 13
      Caption = '0'
      Transparent = True
    end
    object Label55: TLabel
      Left = 8
      Top = 64
      Width = 127
      Height = 13
      Caption = #1055#1088#1077#1076#1086#1087#1083#1072#1095#1077#1085#1085#1099#1081' '#1090#1088#1072#1092#1080#1082
      Transparent = True
    end
    object Label140: TLabel
      Left = 152
      Top = 64
      Width = 24
      Height = 13
      Caption = '0 '#1052#1073
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnMouseMove = Label140MouseMove
    end
  end
  object GroupBox10: TGroupBox
    Left = 584
    Top = 256
    Width = 209
    Height = 73
    Caption = #1044#1072#1085#1085#1099#1077' '#1087#1086' '#1084#1072#1090#1077#1088#1080#1085#1089#1082#1086#1081' '#1087#1083#1072#1090#1077
    TabOrder = 10
    OnClick = GroupBox10Click
    object Image10: TImage
      Left = 2
      Top = 15
      Width = 205
      Height = 56
      Align = alClient
    end
    object Label97: TLabel
      Left = 8
      Top = 48
      Width = 114
      Height = 13
      Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1084#1085#1086#1078#1080#1090#1077#1083#1103
      Transparent = True
    end
    object Label101: TLabel
      Left = 136
      Top = 48
      Width = 61
      Height = 13
      Caption = #1041#1083#1086#1082#1080#1088#1086#1074#1072#1085
      Transparent = True
    end
    object Label95: TLabel
      Left = 8
      Top = 16
      Width = 92
      Height = 13
      Caption = #1057#1084#1077#1085#1072' '#1095#1072#1089#1090#1086#1090' FSB'
      Transparent = True
    end
    object Label99: TLabel
      Left = 136
      Top = 16
      Width = 60
      Height = 13
      Caption = #1053#1077#1076#1086#1089#1090#1091#1087#1085#1086
      Transparent = True
    end
    object Label120: TLabel
      Left = 8
      Top = 32
      Width = 98
      Height = 13
      Caption = #1057#1084#1077#1085#1072' '#1085#1072#1087#1088#1103#1078#1077#1085#1080#1103
      Transparent = True
    end
    object Label121: TLabel
      Left = 136
      Top = 32
      Width = 60
      Height = 13
      Caption = #1053#1077#1076#1086#1089#1090#1091#1087#1085#1086
      Transparent = True
    end
  end
  object GroupBox11: TGroupBox
    Left = 584
    Top = 336
    Width = 209
    Height = 105
    Caption = #1044#1072#1085#1085#1099#1077' '#1087#1086' '#1087#1088#1086#1094#1077#1089#1089#1086#1088#1091
    TabOrder = 11
    OnClick = GroupBox11Click
    object Image11: TImage
      Left = 2
      Top = 15
      Width = 205
      Height = 88
      Align = alClient
    end
    object Label102: TLabel
      Left = 8
      Top = 16
      Width = 90
      Height = 13
      Caption = #1058#1072#1082#1090#1086#1074#1072#1103' '#1095#1072#1089#1090#1086#1090#1072
      Transparent = True
    end
    object Label103: TLabel
      Left = 8
      Top = 48
      Width = 64
      Height = 13
      Caption = #1053#1072#1087#1088#1103#1078#1077#1085#1080#1077
      Transparent = True
    end
    object Label104: TLabel
      Left = 136
      Top = 16
      Width = 30
      Height = 13
      Caption = '0 '#1052#1043#1094
      Transparent = True
    end
    object Label105: TLabel
      Left = 136
      Top = 48
      Width = 39
      Height = 13
      Caption = '0 '#1042#1086#1083#1100#1090
      Transparent = True
    end
    object Label118: TLabel
      Left = 8
      Top = 80
      Width = 67
      Height = 13
      Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072
      Transparent = True
    end
    object Label119: TLabel
      Left = 136
      Top = 80
      Width = 55
      Height = 13
      Caption = '0 '#1075#1088#1072#1076#1091#1089#1086#1074
      Transparent = True
    end
    object Label94: TLabel
      Left = 8
      Top = 32
      Width = 96
      Height = 13
      Caption = #1063#1072#1089#1090#1086#1090#1072' '#1096#1080#1085#1099' FSB'
      Transparent = True
    end
    object Label98: TLabel
      Left = 136
      Top = 32
      Width = 30
      Height = 13
      Caption = '0 '#1052#1043#1094
      Transparent = True
    end
    object Label96: TLabel
      Left = 8
      Top = 64
      Width = 58
      Height = 13
      Caption = #1052#1085#1086#1078#1080#1090#1077#1083#1100
      Transparent = True
    end
    object Label100: TLabel
      Left = 136
      Top = 64
      Width = 16
      Height = 13
      Caption = '0 X'
      Transparent = True
    end
  end
  object GroupBox12: TGroupBox
    Left = 584
    Top = 448
    Width = 209
    Height = 89
    Caption = #1044#1072#1085#1085#1099#1077' '#1087#1086' '#1074#1080#1076#1077#1086#1082#1072#1088#1090#1077
    TabOrder = 12
    OnClick = GroupBox12Click
    object Image12: TImage
      Left = 2
      Top = 15
      Width = 205
      Height = 72
      Align = alClient
    end
    object Label106: TLabel
      Left = 8
      Top = 16
      Width = 91
      Height = 13
      Caption = #1057#1086#1092#1090' '#1076#1083#1103' '#1088#1072#1079#1075#1086#1085#1072
      Transparent = True
    end
    object Label107: TLabel
      Left = 8
      Top = 48
      Width = 69
      Height = 13
      Caption = #1063#1072#1089#1090#1086#1090#1072' '#1103#1076#1088#1072
      Transparent = True
    end
    object Label108: TLabel
      Left = 8
      Top = 64
      Width = 82
      Height = 13
      Caption = #1063#1072#1089#1090#1086#1090#1072' '#1087#1072#1084#1103#1090#1080
      Transparent = True
    end
    object Label109: TLabel
      Left = 136
      Top = 16
      Width = 19
      Height = 13
      Caption = #1053#1077#1090
      Transparent = True
    end
    object Label110: TLabel
      Left = 136
      Top = 48
      Width = 30
      Height = 13
      Caption = '0 '#1052#1043#1094
      Transparent = True
    end
    object Label111: TLabel
      Left = 136
      Top = 64
      Width = 30
      Height = 13
      Caption = '0 '#1052#1043#1094
      Transparent = True
    end
    object Label137: TLabel
      Left = 8
      Top = 32
      Width = 67
      Height = 13
      Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072
      Transparent = True
    end
    object Label138: TLabel
      Left = 136
      Top = 32
      Width = 55
      Height = 13
      Caption = '0 '#1075#1088#1072#1076#1091#1089#1086#1074
      Transparent = True
    end
  end
  object PlayList: TFileListBox
    Left = 712
    Top = 560
    Width = 81
    Height = 33
    ItemHeight = 13
    Mask = '*.mid;*.rmi;*.midi'
    TabOrder = 13
    Visible = False
  end
  object SpamMessages: TMemo
    Left = 712
    Top = 560
    Width = 81
    Height = 33
    ReadOnly = True
    TabOrder = 14
    Visible = False
    WordWrap = False
  end
  object NewsTicker: TMemo
    Left = 712
    Top = 560
    Width = 81
    Height = 33
    TabOrder = 15
    Visible = False
    WordWrap = False
  end
  object BmpButton2: TBmpButton
    Left = 440
    Top = 576
    Width = 16
    Height = 16
    Cursor = crHandPoint
    Hint = #1055#1086#1082#1091#1087#1082#1072' '#1076#1077#1090#1072#1083#1077#1081' '#1076#1083#1103' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1072'.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 17
    OnClick = BmpButton2Click
    ImageNum = 4
    MarginLeft = 0
    MarginRight = 0
    MarginTop = 0
    MarginBottom = 0
    MarginFocus = 0
    Transparent = False
    AutoSize = True
    Checked = False
    AllowChecked = False
  end
  object BmpButton3: TBmpButton
    Left = 464
    Top = 576
    Width = 16
    Height = 16
    Cursor = crHandPoint
    Hint = #1059#1089#1090#1072#1085#1086#1074#1082#1072' '#1087#1088#1086#1075#1088#1072#1084#1084#1085#1086#1075#1086' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1103'.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 18
    OnClick = BmpButton3Click
    ImageNum = 4
    MarginLeft = 0
    MarginRight = 0
    MarginTop = 0
    MarginBottom = 0
    MarginFocus = 0
    Transparent = False
    AutoSize = True
    Checked = False
    AllowChecked = False
  end
  object BmpButton4: TBmpButton
    Left = 488
    Top = 576
    Width = 16
    Height = 16
    Cursor = crHandPoint
    Hint = #1058#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1072'.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 19
    OnClick = BmpButton4Click
    ImageNum = 4
    MarginLeft = 0
    MarginRight = 0
    MarginTop = 0
    MarginBottom = 0
    MarginFocus = 0
    Transparent = False
    AutoSize = True
    Checked = False
    AllowChecked = False
  end
  object BmpButton5: TBmpButton
    Left = 512
    Top = 576
    Width = 16
    Height = 16
    Cursor = crHandPoint
    Hint = #1048#1085#1090#1077#1088#1085#1077#1090' '#1080' '#1074#1089#1077', '#1095#1090#1086' '#1089' '#1085#1080#1084' '#1089#1074#1103#1079#1072#1085#1086'.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 20
    OnClick = BmpButton5Click
    ImageNum = 4
    MarginLeft = 0
    MarginRight = 0
    MarginTop = 0
    MarginBottom = 0
    MarginFocus = 0
    Transparent = False
    AutoSize = True
    Checked = False
    AllowChecked = False
  end
  object BmpButton6: TBmpButton
    Left = 536
    Top = 576
    Width = 16
    Height = 16
    Cursor = crHandPoint
    Hint = #1055#1086#1080#1089#1082' '#1080' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1086' '#1085#1072' '#1088#1072#1073#1086#1090#1091'.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 21
    OnClick = BmpButton6Click
    ImageNum = 4
    MarginLeft = 0
    MarginRight = 0
    MarginTop = 0
    MarginBottom = 0
    MarginFocus = 0
    Transparent = False
    AutoSize = True
    Checked = False
    AllowChecked = False
  end
  object BmpButton7: TBmpButton
    Left = 560
    Top = 576
    Width = 16
    Height = 16
    Cursor = crHandPoint
    Hint = #1054#1090#1076#1099#1093' '#1080' '#1088#1072#1079#1074#1083#1077#1095#1077#1085#1080#1103'.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 22
    OnClick = BmpButton7Click
    ImageNum = 4
    MarginLeft = 0
    MarginRight = 0
    MarginTop = 0
    MarginBottom = 0
    MarginFocus = 0
    Transparent = False
    AutoSize = True
    Checked = False
    AllowChecked = False
  end
  object BmpButton8: TBmpButton
    Left = 584
    Top = 576
    Width = 16
    Height = 16
    Cursor = crHandPoint
    Hint = #1041#1072#1085#1082#1086#1074#1089#1082#1080#1077' '#1086#1087#1077#1088#1072#1094#1080#1080'.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 23
    OnClick = BmpButton8Click
    ImageNum = 4
    MarginLeft = 0
    MarginRight = 0
    MarginTop = 0
    MarginBottom = 0
    MarginFocus = 0
    Transparent = False
    AutoSize = True
    Checked = False
    AllowChecked = False
  end
  object BmpButton9: TBmpButton
    Left = 608
    Top = 576
    Width = 16
    Height = 16
    Cursor = crHandPoint
    Hint = #1053#1086#1074#1086#1089#1090#1080' '#1089#1086' '#1074#1089#1077#1075#1086' '#1084#1080#1088#1072'.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 24
    OnClick = BmpButton9Click
    ImageNum = 4
    MarginLeft = 0
    MarginRight = 0
    MarginTop = 0
    MarginBottom = 0
    MarginFocus = 0
    Transparent = False
    AutoSize = True
    Checked = False
    AllowChecked = False
  end
  object BmpButton10: TBmpButton
    Left = 416
    Top = 576
    Width = 16
    Height = 16
    Cursor = crHandPoint
    Hint = #1044#1086#1084#1086#1093#1086#1079#1103#1081#1089#1090#1074#1086'.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
    OnClick = BmpButton10Click
    ImageNum = 4
    MarginLeft = 0
    MarginRight = 0
    MarginTop = 0
    MarginBottom = 0
    MarginFocus = 0
    Transparent = False
    AutoSize = True
    Checked = False
    AllowChecked = False
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 248
    Top = 280
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.evs'
    Filter = #1057#1086#1093#1088#1072#1085#1077#1085#1085#1099#1077' '#1080#1075#1088#1099' (*.evs)|*.evs'
    Options = [ofHideReadOnly]
    Title = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1075#1088#1091
    Left = 280
    Top = 216
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.evs'
    Filter = #1057#1086#1093#1088#1072#1085#1077#1085#1085#1099#1077' '#1080#1075#1088#1099' (*.evs)|*.evs'
    InitialDir = 'Saves'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1075#1088#1091
    Left = 280
    Top = 280
  end
  object ActionList1: TActionList
    Left = 312
    Top = 216
    object ChangeSkin: TAction
      Caption = #1042#1099#1073#1086#1088' '#1089#1082#1080#1085#1072
      OnExecute = ChangeSkinExecute
    end
    object Upd: TAction
      Caption = 'Upd'
      OnExecute = UpdExecute
    end
    object GameSave: TAction
      Caption = 'GameSave'
      OnExecute = GameSaveExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 312
    Top = 184
    object N1: TMenuItem
      Caption = '&'#1053#1086#1074#1072#1103' '#1080#1075#1088#1072'...'
      ShortCut = 16462
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Pause: TMenuItem
      Caption = '&'#1055#1072#1091#1079#1072
      ShortCut = 113
      OnClick = PauseClick
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object N5: TMenuItem
      Caption = '&'#1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1075#1088#1091'...'
      ShortCut = 16460
      OnClick = N5Click
    end
    object N6: TMenuItem
      Caption = '&'#1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1075#1088#1091'...'
      ShortCut = 16467
      OnClick = N6Click
    end
    object N28: TMenuItem
      Caption = '-'
    end
    object N8: TMenuItem
      Caption = '&'#1056#1077#1082#1086#1088#1076#1099
      OnClick = N14Click
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object N16: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      object N15: TMenuItem
        Caption = #1040#1074#1090#1086#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077
        OnClick = N15Click
      end
      object N18: TMenuItem
        Caption = #1052#1091#1079#1099#1082#1072
        OnClick = N18Click
      end
      object N25: TMenuItem
        Caption = #1053#1086#1074#1086#1089#1090#1080
        Checked = True
        OnClick = N25Click
      end
      object N19: TMenuItem
        Caption = #1054#1082#1086#1085#1085#1099#1081' '#1088#1077#1078#1080#1084
        Checked = True
        ShortCut = 32781
        OnClick = N19Click
      end
      object N26: TMenuItem
        Caption = #1055#1088#1086#1079#1088#1072#1095#1085#1086#1089#1090#1100
        Enabled = False
        OnClick = N26Click
      end
      object N17: TMenuItem
        Caption = '-'
      end
      object N20: TMenuItem
        Caption = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077
        object N21: TMenuItem
          Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080
          OnClick = N21Click
        end
        object N22: TMenuItem
          Caption = '-'
        end
        object N23: TMenuItem
          Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100
          ShortCut = 16469
          OnClick = N23Click
        end
      end
      object N24: TMenuItem
        Caption = #1055#1083#1072#1075#1080#1085#1099'...'
        OnClick = N24Click
      end
      object N13: TMenuItem
        Caption = #1057#1082#1080#1085'...'
        OnClick = N13Click
      end
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object N27: TMenuItem
      Caption = #1055#1086#1084#1086#1097#1100'...'
      ShortCut = 112
      Visible = False
      OnClick = N27Click
    end
    object N11: TMenuItem
      Caption = '&'#1048#1089#1090#1086#1088#1080#1103'...'
      OnClick = N11Click
    end
    object N3: TMenuItem
      Caption = '&'#1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077'...'
      OnClick = N3Click
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object N10: TMenuItem
      Caption = #1042#1099'&'#1093#1086#1076'...'
      ShortCut = 32883
      OnClick = N10Click
    end
  end
  object ZipMaster1: TZipMaster
    Verbose = False
    Trace = False
    AddCompLevel = 9
    AddOptions = [AddEncrypt]
    ExtrOptions = []
    Unattended = False
    Password = 'Windows 2000 forever!'
    MinZipDllVers = 172
    MinUnzDllVers = 172
    VersionInfo = '1.72'
    AddStoreSuffixes = [assGIF, assPNG, assZ, assZIP, assZOO, assARC, assLZH, assARJ, assTAZ, assTGZ, assLHA, assRAR, assACE, assCAB, assGZ, assGZIP, assJAR]
    SpanOptions = []
    KeepFreeOnDisk1 = 0
    KeepFreeOnAllDisks = 0
    SFXCaption = 'Self-extracting Archive'
    SFXOverWriteMode = OvrConfirm
    Left = 280
    Top = 248
  end
  object MyTray: TCoolTrayIcon
    CycleInterval = 0
    Hint = #1050#1086#1084#1087#1100#1102#1090#1077#1088#1085#1072#1103' '#1101#1074#1086#1083#1102#1094#1080#1103' 4'
    ShowHint = True
    Icon.Data = {
      0000010001001010000001000800680500001600000028000000100000002000
      0000010008000000000000010000000000000000000000000000000000000000
      00002E72B1004B7AAB001871C000197FCE004C81B3001F86CB002D89C100358B
      C4002495D200259BD700309AD40027A1DB0033A4DA00169DEB000A93FF000F98
      F900109DFE0016A0F0001CAFF40014A3FF0016A8FF0018ABFF001DB2FE002AAD
      E2002CB3E50021BAFE0026C1FF0029C7FF002AC8FF0034D8FF00A48D8D00A496
      9600AB959500ADA2A200B8A6A600B6ACAC00BAA9A900C1B1B100C7B9B900C8B9
      B900A6B4C400A8B2C100AFBECD00CEC1C100D3C8C800D7CDCD00DAD1D100E3DC
      DC00E7E1E100E9E4E400EDE8E800F1EDED00F6F3F300F8F6F600FAF8F8007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0209400D021AF00062AF8770000AF00C821
      AF00D021AF00CC2094008806AF0084219400551FF877402AF877FFFFFFFF9421
      94001EC7FC777813AF00D021AF000000000044C6FC7700000000000000000000
      0000000000000000000000000000000000000000000000000000F8EBFD7F4021
      9400D021AF00A343F87700000000182394000000000000000000000000001C1F
      94000035F87700ECFD7F0000AF004500000000ECFD7F08000A00907CF8774400
      00000100000020C544790021940001010101C8239400551FF8772825F877FFFF
      FFFF1022940034C5447910229400A3C544790000000002000000A02394000100
      00001800000000000000F42194004200000000000000D8219400000000000000
      0000000000000C00000002000000010194005E35F87700ECFD7F000000000200
      00004C001A02D021AF007FFFFFFF00000000D021AF0005000000479445793422
      9400D9C14479E4000000000000C0000000000000000002000000000000000000
      0000742394006F034B00C856B901000000C00000000068239400020000008000
      000000000000200000001000000010000000443A5C50726F6772616D735C436F
      6D7045766F5C49636F6E735C547261792E69636F0000FC0DE277F8EBFD7F0000
      0000A422940000000000A343F8770000000028239400D5190679000000001800
      0000E4000000F8EBFD7F40000000000000000000000000000000000000000000
      002E637572000000000000000000F0229400E4000000A343F87761644479E400
      00000000000000000000000000002C239400B023940016000000000000000100
      000016000000A023940010000000F8EBFD7F04000000E0239400000000001600
      0000E40000000000000014239400A0239400C8239400441F4879981E4379FFFF
      FFFF7823940006044B00E4000000B02394001600000084239400000000000000
      0000000000000000000001030200000000000000000000000004161410050000
      00000000000000000914150F10060000000000000000000A1E17141015080000
      0000000000000C1C1D1B1A1A0C00000000000000000713171717170C00000000
      00201F211F2A0B121112180000000022212C2E2D2E2E2B0D0E19000000000026
      30303030302E28290D00000000002332302E3232323230250000000000002833
      25222F34343433260000000000002C260000242F373635270000000000002800
      000000273537372C00000000000000000000002F373731000000000000000000
      00003037373427000000000000000000002E31322F000000000000000000FFF1
      0000FFE00000FFC00000FF800000FF010000FE030000E0070000800F0000801F
      0000003F0000003F0000303F0000783F0000F87F0000F07F0000E1FF0000}
    IconVisible = False
    IconIndex = 0
    OnClick = MyTrayClick
    Left = 248
    Top = 216
  end
  object OpenPictureDialog1: TOpenPictureDialog
    DefaultExt = '*.jpg;*.jpeg'
    Filter = #1060#1086#1088#1084#1072#1090' JPEG (*.jpg;*.jpeg)|*.jpg;*.jpeg'
    Options = [ofHideReadOnly]
    Title = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1086#1090#1086#1075#1088#1072#1092#1080#1102
    Left = 248
    Top = 248
  end
  object PopupMenu2: TPopupMenu
    Left = 216
    Top = 280
    object N29: TMenuItem
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1086#1090#1086#1075#1088#1072#1092#1080#1102'...'
      ShortCut = 16464
      OnClick = N29Click
    end
    object N7: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1092#1086#1090#1086#1075#1088#1072#1092#1080#1102'...'
      Enabled = False
      OnClick = N7Click
    end
    object N30: TMenuItem
      Caption = '-'
    end
    object N31: TMenuItem
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081'...'
      OnClick = N31Click
    end
  end
  object ImageList1: TImageList
    Left = 312
    Top = 280
  end
end
