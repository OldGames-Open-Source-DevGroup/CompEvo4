object Records: TRecords
  Left = 200
  Top = 104
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = #1048#1075#1088#1086#1082#1080' '#1076#1086#1078#1080#1074#1096#1080#1077' '#1076#1086' 2005 '#1075#1086#1076#1072'!'
  ClientHeight = 381
  ClientWidth = 401
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
  object Button1: TButton
    Left = 204
    Top = 352
    Width = 113
    Height = 25
    Cursor = crHandPoint
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 385
    Height = 337
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Button2: TButton
    Left = 84
    Top = 352
    Width = 113
    Height = 25
    Cursor = crHandPoint
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1088#1077#1082#1086#1088#1076#1099
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    OnClick = Button2Click
  end
end
