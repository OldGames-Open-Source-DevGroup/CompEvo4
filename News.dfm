object Nws: TNws
  Left = 200
  Top = 103
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = #1053#1086#1074#1086#1089#1090#1080
  ClientHeight = 257
  ClientWidth = 617
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
    Left = 480
    Top = 8
    Width = 128
    Height = 120
    AutoSize = True
  end
  object Label1: TLabel
    Left = 488
    Top = 136
    Width = 109
    Height = 13
    Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1077' '#1080#1079#1074#1077#1089#1090#1080#1103'!'
  end
  object Button1: TButton
    Left = 480
    Top = 224
    Width = 129
    Height = 25
    Cursor = crHandPoint
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 480
    Top = 192
    Width = 129
    Height = 25
    Cursor = crHandPoint
    Hint = 
      #1048#1089#1090#1086#1088#1080#1103' - '#1101#1090#1086' '#1090#1072#1082#1072#1103' '#1085#1072#1091#1082#1072', '#1082#1086#1090#1086#1088#1072#1103' '#1085#1080#1095#1077#1075#1086' '#1085#1077' '#1079#1072#1073#1099#1074#1072#1077#1090', '#1085#1086' '#1085#1077' '#1074#1089#1105 +
      ' '#1087#1086#1084#1085#1080#1090'.'
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1080#1089#1090#1086#1088#1080#1102
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 465
    Height = 241
    Alignment = taCenter
    Ctl3D = True
    ParentCtl3D = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
end
