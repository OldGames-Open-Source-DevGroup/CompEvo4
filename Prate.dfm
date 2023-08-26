object Pirate: TPirate
  Left = 218
  Top = 120
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1055#1080#1088#1072#1090#1089#1090#1074#1086
  ClientHeight = 169
  ClientWidth = 558
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
  object Label10: TLabel
    Left = 8
    Top = 141
    Width = 3
    Height = 13
  end
  object Image1: TImage
    Left = 424
    Top = 0
    Width = 129
    Height = 129
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 417
    Height = 129
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1055#1088#1080#1074#1077#1090#1089#1090#1074#1080#1077
      object Label1: TLabel
        Left = 32
        Top = 8
        Width = 332
        Height = 78
        Caption = 
          #1047#1076#1077#1089#1100' '#1074#1072#1084' '#1074#1089#1077#1075#1086' '#1083#1080#1096#1100' '#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1085#1072' '#1076#1080#1089#1082#1080' '#1083#1080#1094#1077#1085#1079#1080#1086#1085#1085#1099#1093' '#1089#1086#1092#1090'.'#13#10' '#1069#1090 +
          #1086' '#1085#1077' '#1090#1088#1091#1076#1085#1086'. '#1054#1076#1085#1072#1082#1086' '#1077#1089#1083#1080' '#1074#1099' '#1091#1074#1083#1077#1095#1077#1090#1077#1089#1100', '#1090#1086' '#1085#1072#1083#1086#1075#1086#1074#1072#1103' '#1084#1086#1078#1077#1090#13#10'    ' +
          '                   '#1086#1076#1085#1072#1078#1076#1099' '#1087#1086#1089#1090#1091#1095#1072#1090#1100' '#1074' '#1074#1072#1096#1080' '#1076#1074#1077#1088#1080'.'#13#10' '#1042#1089#1105' '#1087#1088#1086#1089#1090#1086'.' +
          ' '#1055#1086#1082#1091#1087#1072#1077#1090#1077' '#1089#1077#1073#1077' '#1089#1086#1092#1090' '#1080' '#1082#1086#1087#1080#1088#1091#1077#1090#1077' '#1077#1075#1086' '#1085#1072' '#1073#1086#1083#1074#1072#1085#1082#1080'.'#13#10'   '#1057#1082#1086#1088#1086#1089#1090#1100' '#1082 +
          #1086#1087#1080#1088#1086#1074#1072#1085#1080#1103' '#1085#1072#1087#1088#1103#1084#1091#1102' '#1079#1072#1074#1080#1089#1080#1090' '#1086#1090' '#1074#1072#1096#1077#1075#1086' CD-RW'#13#10'                   ' +
          '                             '#1087#1088#1080#1074#1086#1076#1072'.'
        Transparent = True
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1041#1072#1079#1072#1088
      ImageIndex = 2
      OnShow = TabSheet3Show
      object Label5: TLabel
        Left = 296
        Top = 16
        Width = 32
        Height = 13
        Caption = #1059' '#1074#1072#1089':'
      end
      object Label6: TLabel
        Left = 280
        Top = 32
        Width = 63
        Height = 13
        Caption = '0 - '#1073#1086#1083#1074#1072#1085#1086#1082
      end
      object Button5: TButton
        Left = 8
        Top = 8
        Width = 217
        Height = 25
        Cursor = crHandPoint
        Caption = #1050#1091#1087#1080#1090#1100' 10 '#1073#1086#1083#1074#1072#1085#1086#1082' - 70 '#1076'.'#1077'.'
        TabOrder = 0
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 8
        Top = 40
        Width = 217
        Height = 25
        Cursor = crHandPoint
        Caption = #1050#1091#1087#1080#1090#1100' 25 '#1073#1086#1083#1074#1072#1085#1086#1082' - 100 '#1076'.'#1077'.'
        TabOrder = 1
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 8
        Top = 72
        Width = 217
        Height = 25
        Cursor = crHandPoint
        Caption = #1050#1091#1087#1080#1090#1100' 50 '#1073#1086#1083#1074#1072#1085#1086#1082' - 150 '#1076'.'#1077'.'
        TabOrder = 2
        OnClick = Button7Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1099
      ImageIndex = 3
      object Label2: TLabel
        Left = 144
        Top = 14
        Width = 157
        Height = 13
        Caption = '- '#1089#1086#1079#1076#1072#1085#1080#1077' '#1090#1086#1095#1085#1086#1081' '#1082#1086#1087#1080#1080' '#1076#1080#1089#1082#1072
        Transparent = True
      end
      object Label3: TLabel
        Left = 144
        Top = 46
        Width = 260
        Height = 13
        Caption = '- '#1082#1086#1085#1074#1077#1088#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1072#1091#1076#1080#1086#1076#1080#1089#1082#1086#1074' '#1074' MP3, OGG, WMA'
        Transparent = True
      end
      object Label4: TLabel
        Left = 144
        Top = 78
        Width = 189
        Height = 13
        Caption = '- '#1082#1086#1085#1074#1077#1088#1090#1080#1088#1086#1074#1072#1085#1080#1077' DVD-'#1076#1080#1089#1082#1086#1074' '#1074' AVI'
        Transparent = True
      end
      object Button2: TButton
        Left = 8
        Top = 8
        Width = 129
        Height = 25
        Cursor = crHandPoint
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1080#1089#1082#1086#1074
        TabOrder = 0
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 8
        Top = 40
        Width = 129
        Height = 25
        Cursor = crHandPoint
        Caption = #1057#1078#1072#1090#1080#1077' '#1072#1091#1076#1080#1086
        TabOrder = 1
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 8
        Top = 72
        Width = 129
        Height = 25
        Cursor = crHandPoint
        Caption = #1057#1078#1072#1090#1080#1077' '#1074#1080#1076#1077#1086
        TabOrder = 2
        OnClick = Button4Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1047#1072#1081#1084#1080#1089#1100' '#1076#1077#1083#1086#1084' '#1085#1072#1082#1086#1085#1077#1094'!'
      ImageIndex = 3
      OnHide = TabSheet4Hide
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 193
        Height = 97
        Caption = #1047#1072#1082#1072#1079
        TabOrder = 0
        object Label16: TLabel
          Left = 8
          Top = 16
          Width = 177
          Height = 41
          AutoSize = False
          Transparent = True
          WordWrap = True
        end
        object Button12: TButton
          Left = 128
          Top = 64
          Width = 57
          Height = 25
          Cursor = crHandPoint
          Hint = #1057#1083#1077#1076#1091#1102#1097#1077#1077' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1077'.'
          Caption = #1044#1072#1083#1077#1077' >>'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = Button12Click
        end
        object Button13: TButton
          Left = 8
          Top = 64
          Width = 113
          Height = 25
          Cursor = crHandPoint
          Hint = #1053#1072#1089#1090#1091#1095#1072#1090#1100' '#1085#1072' '#1079#1072#1082#1072#1079#1095#1080#1082#1072'.'
          Caption = #1057#1086#1086#1073#1097#1080#1090#1100' '#1074#1083#1072#1089#1090#1103#1084
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = Button13Click
        end
      end
      object Button9: TButton
        Left = 200
        Top = 8
        Width = 113
        Height = 25
        Cursor = crHandPoint
        Hint = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1085#1072' '#1076#1080#1089#1082'.'
        Caption = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100'...'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = Button9Click
      end
      object Button10: TButton
        Left = 200
        Top = 40
        Width = 113
        Height = 25
        Cursor = crHandPoint
        Hint = #1057#1078#1072#1090#1100' DVD '#1076#1080#1089#1082'.'
        Caption = #1057#1078#1072#1090#1100'...'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = Button10Click
      end
      object Button11: TButton
        Left = 200
        Top = 72
        Width = 113
        Height = 25
        Cursor = crHandPoint
        Hint = #1057#1078#1072#1090#1100' Audio CD.'
        Caption = #1055#1077#1088#1077#1075#1085#1072#1090#1100' '#1074'...'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = Button11Click
      end
      object WriteP: TProgressBar
        Left = 384
        Top = 8
        Width = 17
        Height = 89
        Hint = #1047#1072#1087#1080#1089#1100' CD.'
        Max = 200
        Orientation = pbVertical
        ParentShowHint = False
        Smooth = True
        ShowHint = True
        TabOrder = 4
      end
      object TestP: TProgressBar
        Left = 336
        Top = 8
        Width = 17
        Height = 89
        Hint = #1057#1082#1072#1095#1082#1072' '#1092#1072#1081#1083#1072'.'
        Max = 200
        Orientation = pbVertical
        ParentShowHint = False
        Smooth = True
        ShowHint = True
        TabOrder = 5
      end
      object ProcP: TProgressBar
        Left = 360
        Top = 8
        Width = 17
        Height = 89
        Hint = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077' '#1087#1088#1086#1094#1077#1089#1089#1086#1088#1072'.'
        Orientation = pbVertical
        ParentShowHint = False
        Smooth = True
        ShowHint = True
        TabOrder = 6
      end
    end
  end
  object Button1: TButton
    Left = 424
    Top = 136
    Width = 129
    Height = 25
    Cursor = crHandPoint
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object ActionList1: TActionList
    Left = 216
    Top = 136
    object Start: TAction
      OnExecute = StartExecute
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer1Timer
    Left = 184
    Top = 136
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 152
    Top = 136
  end
  object Timer3: TTimer
    Enabled = False
    OnTimer = Timer3Timer
    Left = 120
    Top = 136
  end
end
