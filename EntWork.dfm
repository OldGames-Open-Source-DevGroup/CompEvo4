object Ext: TExt
  Left = 210
  Top = 102
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1059#1076#1072#1083#1077#1085#1085#1072#1103' '#1088#1072#1073#1086#1090#1072
  ClientHeight = 273
  ClientWidth = 465
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
    Left = 240
    Top = 8
    Width = 216
    Height = 144
    AutoSize = True
  end
  object Memo1: TMemo
    Left = 256
    Top = 160
    Width = 185
    Height = 41
    Cursor = crArrow
    BorderStyle = bsNone
    Color = clBtnFace
    Lines.Strings = (
      #1047#1072#1088#1072#1073#1072#1090#1099#1074#1072#1090#1100' '#1076#1077#1085#1100#1075#1080' '#1074#1072#1084' '#1087#1086#1084#1086#1075#1091#1090' '
      '            '#1087#1088#1080#1085#1090#1077#1088' '#1080' '#1089#1082#1072#1085#1077#1088'.')
    ReadOnly = True
    TabOrder = 4
  end
  object Button1: TButton
    Left = 240
    Top = 216
    Width = 217
    Height = 25
    Cursor = crHandPoint
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 225
    Height = 113
    Caption = #1055#1088#1086#1089#1100#1073#1072
    TabOrder = 0
    object Memo2: TMemo
      Left = 8
      Top = 16
      Width = 209
      Height = 89
      Cursor = crArrow
      BorderStyle = bsNone
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 128
    Width = 225
    Height = 113
    Caption = #1042#1072#1088#1080#1072#1085#1090#1099' '#1076#1077#1081#1089#1090#1074#1080#1081
    TabOrder = 1
    object Button2: TButton
      Left = 8
      Top = 16
      Width = 209
      Height = 25
      Cursor = crHandPoint
      Hint = #1053#1072#1087#1077#1095#1072#1090#1072#1090#1100' '#1090#1077#1082#1089#1090' '#1085#1072' '#1087#1088#1080#1085#1090#1077#1088#1077'.'
      Caption = #1055#1077#1095#1072#1090#1100
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 8
      Top = 48
      Width = 209
      Height = 25
      Cursor = crHandPoint
      Hint = #1054#1090#1089#1082#1072#1085#1080#1088#1086#1074#1072#1090#1100' '#1089#1090#1088#1072#1085#1080#1094#1091'.'
      Caption = #1057#1082#1072#1085#1080#1088#1086#1074#1072#1085#1080#1077
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 8
      Top = 80
      Width = 209
      Height = 25
      Cursor = crHandPoint
      Hint = #1057#1083#1077#1076#1091#1102#1097#1077#1077' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1077'.'
      Caption = #1044#1072#1083#1077#1077' >>'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Button4Click
    end
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 248
    Width = 449
    Height = 17
    Smooth = True
    TabOrder = 3
  end
  object ActionList1: TActionList
    Left = 248
    Top = 16
    object Action1: TAction
      Caption = 'Action1'
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = 'Action2'
      OnExecute = Action2Execute
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 424
    Top = 16
  end
end
