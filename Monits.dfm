object Compl: TCompl
  Left = 191
  Top = 114
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  ClientHeight = 265
  ClientWidth = 529
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
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  DesignSize = (
    529
    265)
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 176
    Top = 152
    Width = 101
    Height = 13
    Caption = #1057#1084#1077#1085#1072' '#1095#1072#1089#1090#1086#1090' FSB - '
    Visible = False
  end
  object Label13: TLabel
    Left = 176
    Top = 168
    Width = 185
    Height = 13
    Caption = #1057#1084#1077#1085#1072' '#1085#1072#1087#1088#1103#1078#1077#1085#1080#1103' '#1085#1072' '#1087#1088#1086#1094#1077#1089#1089#1086#1088#1077' - '
    Visible = False
  end
  object Label15: TLabel
    Left = 176
    Top = 184
    Width = 180
    Height = 13
    Caption = #1057#1084#1077#1085#1072' '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1072' '#1091#1084#1085#1086#1078#1077#1085#1080#1103' - '
    Visible = False
  end
  object Label16: TLabel
    Left = 176
    Top = 104
    Width = 46
    Height = 13
    Caption = #1063#1080#1087#1089#1077#1090' - '
    Visible = False
  end
  object Label17: TLabel
    Left = 176
    Top = 144
    Width = 140
    Height = 13
    Caption = #1063#1072#1089#1090#1086#1090#1072' '#1089#1080#1089#1090#1077#1084#1085#1086#1081' '#1096#1080#1085#1099' - '
    Transparent = True
    Visible = False
  end
  object Label18: TLabel
    Left = 176
    Top = 160
    Width = 122
    Height = 13
    Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1099#1081' '#1088#1072#1079#1098#1105#1084' - '
    Transparent = True
    Visible = False
  end
  object Label19: TLabel
    Left = 176
    Top = 184
    Width = 29
    Height = 13
    Caption = #1063#1080#1087' - '
    Transparent = True
  end
  object Label21: TLabel
    Left = 176
    Top = 200
    Width = 139
    Height = 13
    Caption = #1058#1072#1082#1090#1086#1074#1072#1103' '#1095#1072#1089#1090#1086#1090#1072' '#1087#1072#1084#1103#1090#1080' - '
    Transparent = True
  end
  object Label22: TLabel
    Left = 176
    Top = 216
    Width = 126
    Height = 13
    Caption = #1058#1072#1082#1090#1086#1074#1072#1103' '#1095#1072#1089#1090#1086#1090#1072' '#1103#1076#1088#1072' - '
    Transparent = True
  end
  object Label20: TLabel
    Left = 176
    Top = 232
    Width = 113
    Height = 13
    Caption = #1048#1089#1087#1086#1083#1100#1079#1091#1077#1084#1072#1103' '#1096#1080#1085#1072' - '
  end
  object Label23: TLabel
    Left = 176
    Top = 120
    Width = 217
    Height = 13
    Caption = #1055#1086#1076#1076#1077#1088#1078#1080#1074#1072#1077#1084#1099#1077' '#1096#1080#1085#1099' '#1076#1083#1103' '#1074#1080#1076#1077#1086#1082#1072#1088#1090#1099' - '
    ParentShowHint = False
    ShowHint = False
    Transparent = True
  end
  object Label24: TLabel
    Left = 176
    Top = 144
    Width = 28
    Height = 13
    Caption = #1058#1080#1087' - '
    Transparent = True
    Visible = False
  end
  object Image1: TImage
    Left = 8
    Top = 40
    Width = 161
    Height = 145
    Center = True
  end
  object Label25: TLabel
    Left = 176
    Top = 136
    Width = 229
    Height = 13
    Caption = #1055#1086#1076#1076#1077#1088#1078#1080#1074#1072#1077#1084#1099#1081' '#1090#1080#1087' '#1086#1087#1077#1088#1072#1090#1080#1074#1085#1086#1081' '#1087#1072#1084#1103#1090#1080' - '
  end
  object Label26: TLabel
    Left = 176
    Top = 200
    Width = 148
    Height = 13
    Caption = #1055#1086#1076#1076#1077#1088#1078#1082#1072' '#1076#1074#1091#1093' '#1074#1080#1076#1077#1086#1082#1072#1088#1090' - '
    Visible = False
  end
  object Label27: TLabel
    Left = 176
    Top = 248
    Width = 46
    Height = 13
    Caption = 'SLICFMH'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clFuchsia
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 8
    Width = 513
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    Sorted = True
    TabOrder = 0
    OnChange = OpenExecute
    OnKeyDown = ComboBox1KeyDown
  end
  object Button1: TButton
    Left = 16
    Top = 232
    Width = 145
    Height = 25
    Cursor = crHandPoint
    Anchors = [akLeft, akBottom]
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 200
    Width = 145
    Height = 25
    Cursor = crHandPoint
    Hint = #1050#1091#1087#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1081' '#1090#1086#1074#1072#1088
    Anchors = [akLeft, akBottom]
    Caption = #1050#1091#1087#1080#1090#1100
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 176
    Top = 40
    Width = 345
    Height = 57
    Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080
    TabOrder = 3
    object Label8: TLabel
      Left = 264
      Top = 34
      Width = 33
      Height = 13
      Caption = '- 0 '#1076'.'#1077'.'
    end
    object Gauge1: TGauge
      Left = 8
      Top = 32
      Width = 249
      Height = 17
      ForeColor = clBlue
      MaxValue = 600
      Progress = 0
      ShowText = False
    end
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 92
      Height = 13
      Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072' 1'
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 92
      Height = 13
      Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072' 2'
      Transparent = True
    end
    object Gauge2: TGauge
      Left = 8
      Top = 72
      Width = 249
      Height = 17
      ForeColor = clRed
      Progress = 0
      ShowText = False
    end
    object Label3: TLabel
      Left = 16
      Top = 96
      Width = 92
      Height = 13
      Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072' 3'
      Transparent = True
    end
    object Gauge3: TGauge
      Left = 8
      Top = 112
      Width = 249
      Height = 17
      ForeColor = clYellow
      Progress = 0
      ShowText = False
    end
    object Gauge4: TGauge
      Left = 8
      Top = 152
      Width = 249
      Height = 17
      ForeColor = clLime
      Progress = 0
      ShowText = False
    end
    object Label4: TLabel
      Left = 16
      Top = 136
      Width = 92
      Height = 13
      Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072' 4'
      Transparent = True
    end
    object Label6: TLabel
      Left = 16
      Top = 176
      Width = 92
      Height = 13
      Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072' 5'
      Transparent = True
    end
    object Gauge5: TGauge
      Left = 8
      Top = 192
      Width = 249
      Height = 17
      ForeColor = clAqua
      Progress = 0
      ShowText = False
    end
    object Label7: TLabel
      Left = 16
      Top = 216
      Width = 92
      Height = 13
      Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072' 6'
      Transparent = True
    end
    object Gauge6: TGauge
      Left = 8
      Top = 232
      Width = 249
      Height = 17
      ForeColor = clFuchsia
      Progress = 0
      ShowText = False
    end
    object Label9: TLabel
      Left = 264
      Top = 114
      Width = 33
      Height = 13
      Caption = '- 0 '#1076'.'#1077'.'
    end
    object Label10: TLabel
      Left = 264
      Top = 154
      Width = 33
      Height = 13
      Caption = '- 0 '#1076'.'#1077'.'
    end
    object Label11: TLabel
      Left = 264
      Top = 194
      Width = 33
      Height = 13
      Caption = '- 0 '#1076'.'#1077'.'
    end
    object Label12: TLabel
      Left = 264
      Top = 234
      Width = 33
      Height = 13
      Caption = '- 0 '#1076'.'#1077'.'
    end
    object Label14: TLabel
      Left = 264
      Top = 74
      Width = 33
      Height = 13
      Caption = '- 0 '#1076'.'#1077'.'
    end
  end
  object ActionList1: TActionList
    Left = 16
    Top = 48
    object Open: TAction
      Caption = 'Open'
      OnExecute = OpenExecute
    end
  end
end
