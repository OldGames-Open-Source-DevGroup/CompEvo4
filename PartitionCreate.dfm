object CreatePart: TCreatePart
  Left = 198
  Top = 118
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  ClientHeight = 257
  ClientWidth = 233
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
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 217
    Height = 209
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1088#1072#1079#1076#1077#1083#1072
    TabOrder = 0
    object Label6: TLabel
      Left = 16
      Top = 64
      Width = 99
      Height = 13
      Caption = #1060#1072#1081#1083#1086#1074#1072#1103' '#1089#1080#1089#1090#1077#1084#1072
    end
    object Label7: TLabel
      Left = 16
      Top = 112
      Width = 39
      Height = 13
      Caption = #1056#1072#1079#1084#1077#1088
    end
    object Label8: TLabel
      Left = 16
      Top = 160
      Width = 32
      Height = 13
      Caption = #1052#1077#1090#1082#1072
    end
    object Label1: TLabel
      Left = 192
      Top = 131
      Width = 15
      Height = 13
      Caption = #1052#1073
    end
    object ComboBox3: TComboBox
      Left = 8
      Top = 80
      Width = 201
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 8
      Top = 128
      Width = 177
      Height = 21
      MaxLength = 9
      TabOrder = 3
      Text = '500'
      OnChange = Edit3Change
      OnKeyPress = Edit3KeyPress
    end
    object Edit4: TEdit
      Left = 8
      Top = 176
      Width = 201
      Height = 21
      TabOrder = 4
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 16
      Width = 201
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = #1054#1089#1085#1086#1074#1085#1086#1081
      Items.Strings = (
        #1054#1089#1085#1086#1074#1085#1086#1081
        #1051#1086#1075#1080#1095#1077#1089#1082#1080#1081)
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 40
      Width = 193
      Height = 17
      Hint = #1054#1090#1084#1077#1085#1103#1077#1090' '#1074#1086#1079#1084#1086#1078#1085#1086#1089#1090#1100' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1077#1097#1077' '#1086#1076#1085#1086#1075#1086' '#1086#1089#1085#1086#1074#1085#1086#1075#1086' '#1088#1072#1079#1076#1077#1083#1072'.'
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1081' '#1088#1072#1079#1076#1077#1083
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
  object Button1: TButton
    Left = 16
    Top = 224
    Width = 129
    Height = 25
    Cursor = crHandPoint
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 152
    Top = 224
    Width = 65
    Height = 25
    Cursor = crHandPoint
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = Button2Click
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 16
    Top = 24
  end
end
