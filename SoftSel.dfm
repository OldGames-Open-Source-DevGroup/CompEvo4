object SoftSelect: TSoftSelect
  Left = 204
  Top = 109
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  ClientHeight = 233
  ClientWidth = 329
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
  DesignSize = (
    329
    233)
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 16
    Top = 144
    Width = 199
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1072#1103' '#1086#1087#1077#1088#1072#1094#1080#1086#1085#1085#1072#1103' '#1089#1080#1089#1090#1077#1084#1072' - '
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 40
    Width = 313
    Height = 97
    Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080
    TabOrder = 1
    object Size: TGauge
      Left = 8
      Top = 32
      Width = 225
      Height = 17
      ForeColor = clBlue
      Progress = 0
      ShowText = False
    end
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 115
      Height = 13
      Caption = #1056#1072#1079#1084#1077#1088' '#1085#1072' '#1074#1080#1085#1095#1077#1089#1090#1077#1088#1077
    end
    object Cost: TGauge
      Left = 8
      Top = 72
      Width = 225
      Height = 17
      ForeColor = clRed
      Progress = 0
      ShowText = False
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 55
      Height = 13
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
    end
    object Label3: TLabel
      Left = 240
      Top = 34
      Width = 3
      Height = 13
    end
    object Label4: TLabel
      Left = 240
      Top = 74
      Width = 3
      Height = 13
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 168
    Width = 169
    Height = 57
    Anchors = [akLeft, akBottom]
    Caption = #1055#1086#1082#1091#1087#1082#1072
    ItemIndex = 0
    Items.Strings = (
      #1051#1080#1094#1077#1085#1079#1080#1086#1085#1085#1072#1103' '#1074#1077#1088#1089#1080#1103
      #1053#1077#1083#1080#1094#1077#1085#1079#1080#1086#1085#1085#1072#1103' '#1074#1077#1088#1089#1080#1103)
    TabOrder = 2
    OnClick = RadioGroup1Click
  end
  object Button1: TButton
    Left = 184
    Top = 200
    Width = 65
    Height = 25
    Cursor = crHandPoint
    Hint = #1055#1088#1080#1086#1073#1088#1077#1089#1090#1080' '#1074#1099#1073#1088#1072#1085#1085#1086#1077' '#1087#1088#1086#1075#1088#1072#1084#1084#1085#1086#1077' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077'.'
    Anchors = [akLeft, akBottom]
    Caption = #1050#1091#1087#1080#1090#1100
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 256
    Top = 200
    Width = 65
    Height = 25
    Cursor = crHandPoint
    Anchors = [akLeft, akBottom]
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 5
    OnClick = Button2Click
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 8
    Width = 313
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    Sorted = True
    TabOrder = 0
    OnChange = ComboBox1Change
    OnKeyDown = ComboBox1KeyDown
  end
  object Button3: TButton
    Left = 184
    Top = 168
    Width = 137
    Height = 25
    Cursor = crHandPoint
    Hint = #1042#1099#1073#1088#1072#1090#1100' '#1088#1072#1079#1076#1077#1083' '#1076#1083#1103' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1099'.'
    Anchors = [akLeft, akBottom]
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1088#1072#1079#1076#1077#1083
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = Button3Click
  end
  object ActionList1: TActionList
    Left = 288
    Top = 48
    object ProverkaOS: TAction
      Caption = 'ProverkaOS'
      OnExecute = ProverkaOSExecute
    end
  end
end
