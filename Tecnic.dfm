object Technics: TTechnics
  Left = 191
  Top = 106
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1044#1086#1084#1086#1093#1086#1079#1103#1081#1089#1090#1074#1086
  ClientHeight = 201
  ClientWidth = 385
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 144
    Top = 8
    Width = 232
    Height = 153
    AutoSize = True
  end
  object Label1: TLabel
    Left = 157
    Top = 168
    Width = 208
    Height = 26
    Alignment = taCenter
    Caption = #1047#1076#1077#1089#1100' '#1074#1099' '#1084#1086#1078#1077#1090#1077' '#1082#1091#1087#1080#1090#1100' '#1078#1080#1083#1100#1077', '#1072' '#1090#1072#1082#1078#1077#13#10#1089#1088#1077#1076#1089#1090#1074#1086' '#1087#1077#1088#1077#1076#1074#1080#1078#1077#1085#1080#1103'.'
    Transparent = True
  end
  object Button1: TButton
    Left = 8
    Top = 40
    Width = 129
    Height = 25
    Cursor = crHandPoint
    Hint = #1055#1086#1082#1091#1087#1082#1072' '#1089#1088#1077#1076#1089#1090#1074' '#1087#1077#1088#1077#1076#1074#1080#1078#1077#1085#1080#1103'.'
    Caption = #1040#1074#1090#1086#1084#1086#1073#1080#1083#1080
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button4: TButton
    Left = 8
    Top = 168
    Width = 129
    Height = 25
    Cursor = crHandPoint
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 2
    OnClick = Button4Click
  end
  object Button2: TButton
    Left = 8
    Top = 8
    Width = 129
    Height = 25
    Cursor = crHandPoint
    Hint = #1056#1077#1096#1077#1085#1080#1077' '#1082#1074#1072#1088#1090#1080#1088#1085#1086#1075#1086' '#1074#1086#1087#1088#1086#1089#1072'.'
    Caption = #1046#1080#1083#1100#1077
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = Button2Click
  end
end
