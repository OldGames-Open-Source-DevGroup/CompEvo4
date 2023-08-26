object Partition: TPartition
  Left = 202
  Top = 136
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1044#1080#1089#1082#1086#1074#1099#1077' '#1088#1072#1079#1076#1077#1083#1099
  ClientHeight = 545
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
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 625
    Height = 208
    AutoSize = True
  end
  object List1: TListView
    Left = 8
    Top = 248
    Width = 625
    Height = 257
    Columns = <
      item
        Caption = #1056#1072#1079#1076#1077#1083
        Width = 125
      end
      item
        Caption = #1060#1072#1081#1083#1086#1074#1072#1103' '#1089#1080#1089#1090#1077#1084#1072
        Width = 125
      end
      item
        Caption = #1056#1072#1079#1084#1077#1088
        Width = 75
      end
      item
        Caption = 'C'#1074#1086#1073#1086#1076#1085#1086
        Width = 75
      end
      item
        Caption = #1057#1090#1072#1090#1091#1089
        Width = 100
      end
      item
        Caption = #1058#1080#1087
        Width = 100
      end>
    ReadOnly = True
    RowSelect = True
    TabOrder = 0
    ViewStyle = vsReport
    OnClick = List1Click
    OnDblClick = List1DblClick
    OnKeyDown = List1KeyDown
  end
  object Button1: TButton
    Left = 528
    Top = 512
    Width = 99
    Height = 25
    Cursor = crHandPoint
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 120
    Top = 512
    Width = 97
    Height = 25
    Cursor = crHandPoint
    Hint = #1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1081' '#1088#1072#1079#1076#1077#1083'.'
    Caption = #1059#1076#1072#1083#1080#1090#1100
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 16
    Top = 512
    Width = 97
    Height = 25
    Cursor = crHandPoint
    Hint = #1057#1086#1079#1076#1072#1090#1100' '#1080#1079' '#1087#1091#1089#1090#1086#1075#1086' '#1084#1077#1089#1090#1072' '#1085#1086#1074#1099#1081' '#1088#1072#1079#1076#1077#1083'.'
    Caption = #1057#1086#1079#1076#1072#1090#1100
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 224
    Top = 512
    Width = 97
    Height = 25
    Cursor = crHandPoint
    Hint = #1060#1086#1088#1084#1072#1090#1080#1088#1086#1074#1072#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1081' '#1088#1072#1079#1076#1077#1083'.'
    Caption = #1060#1086#1088#1084#1072#1090#1080#1088#1086#1074#1072#1090#1100
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = Button5Click
  end
  object Button2: TButton
    Left = 408
    Top = 512
    Width = 105
    Height = 25
    Cursor = crHandPoint
    Hint = #1042#1099#1073#1088#1072#1090#1100' '#1088#1072#1079#1076#1077#1083' '#1076#1083#1103' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1099'.'
    Caption = #1042#1099#1073#1088#1072#1090#1100
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = Button2Click
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 224
    Width = 625
    Height = 17
    TabOrder = 9
  end
  object Button6: TButton
    Left = 352
    Top = 512
    Width = 161
    Height = 25
    Cursor = crHandPoint
    Hint = #1053#1072#1079#1085#1072#1095#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1081' '#1088#1072#1079#1076#1077#1083' '#1072#1082#1090#1080#1074#1085#1099#1084'.'
    Caption = #1053#1072#1079#1085#1072#1095#1080#1090#1100' '#1072#1082#1090#1080#1074#1085#1099#1084
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 432
    Top = 512
    Width = 89
    Height = 25
    Cursor = crHandPoint
    Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1089#1076#1077#1083#1072#1085#1085#1099#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103'.'
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 328
    Top = 512
    Width = 97
    Height = 25
    Cursor = crHandPoint
    Hint = #1057#1084#1077#1085#1080#1090#1100' '#1084#1077#1090#1082#1091' '#1074#1099#1073#1088#1072#1085#1085#1086#1075#1086' '#1076#1080#1089#1082#1072'.'
    Caption = #1057#1084#1077#1085#1080#1090#1100' '#1084#1077#1090#1082#1091
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = Button8Click
  end
end
