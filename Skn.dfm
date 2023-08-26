object ChSkin: TChSkin
  Left = 609
  Top = 101
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1042#1099#1073#1086#1088' '#1089#1082#1080#1085#1072
  ClientHeight = 281
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
  object Label1: TLabel
    Left = 168
    Top = 8
    Width = 33
    Height = 13
    Caption = #1040#1074#1090#1086#1088':'
  end
  object Label2: TLabel
    Left = 160
    Top = 24
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 168
    Top = 48
    Width = 31
    Height = 13
    Caption = 'E-mail:'
  end
  object Label4: TLabel
    Left = 160
    Top = 64
    Width = 3
    Height = 13
    Cursor = crHandPoint
    Hint = #1053#1072#1087#1080#1089#1072#1090#1100' '#1087#1080#1089#1100#1084#1086' '#1072#1074#1090#1086#1088#1091' '#1089#1082#1080#1085#1072'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = Label4Click
  end
  object Label5: TLabel
    Left = 168
    Top = 88
    Width = 73
    Height = 13
    Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081':'
  end
  object Label6: TLabel
    Left = 16
    Top = 8
    Width = 119
    Height = 13
    Caption = #1059#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1099#1077' '#1089#1082#1080#1085#1099':'
  end
  object Label7: TLabel
    Left = 31
    Top = 264
    Width = 340
    Height = 13
    Caption = #1051#1091#1095#1096#1077' '#1074#1089#1077#1075#1086' '#1090#1077#1093#1085#1086#1083#1086#1075#1080#1103' '#1089#1082#1080#1085#1086#1074' '#1088#1072#1073#1086#1090#1072#1077#1090' '#1087#1086#1076' Windows XP '#1080' '#1074#1099#1096#1077'.'
  end
  object Button1: TButton
    Left = 168
    Top = 232
    Width = 105
    Height = 25
    Cursor = crHandPoint
    Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1089' '#1089#1072#1081#1090#1072' '#1080#1075#1088#1099' '#1085#1086#1074#1099#1077' '#1089#1082#1080#1085#1099'.'
    Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1077#1097#1077'...'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 160
    Top = 104
    Width = 233
    Height = 89
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Button2: TButton
    Left = 168
    Top = 200
    Width = 105
    Height = 25
    Cursor = crHandPoint
    Hint = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1081' '#1089#1082#1080#1085'.'
    Caption = #1042#1099#1073#1088#1072#1090#1100
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 280
    Top = 232
    Width = 105
    Height = 25
    Cursor = crHandPoint
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 5
    OnClick = Button3Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 24
    Width = 145
    Height = 233
    ItemHeight = 13
    Sorted = True
    TabOrder = 0
    OnClick = ListBox1Click
    OnDblClick = Button2Click
    OnKeyDown = ListBox1KeyDown
  end
  object Button4: TButton
    Left = 280
    Top = 200
    Width = 105
    Height = 25
    Cursor = crHandPoint
    Hint = #1047#1072#1087#1091#1089#1090#1080#1090#1100' '#1087#1088#1086#1075#1088#1072#1084#1084#1091' '#1076#1083#1103' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1089#1082#1080#1085#1086#1074'.'
    Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1089#1082#1080#1085#1086#1074
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = Button4Click
  end
  object ActionList1: TActionList
    Left = 304
    Top = 72
    object SearchExecute: TAction
      Caption = #1055#1086#1080#1089#1082' '#1089#1082#1080#1085#1086#1074' '#1074' '#1082#1072#1090#1072#1083#1086#1075#1077' '#1080#1075#1088#1099'.'
      OnExecute = SearchExecuteExecute
    end
  end
end
