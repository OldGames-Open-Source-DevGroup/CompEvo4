object Xak: TXak
  Left = 211
  Top = 142
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1061#1072#1082#1077#1088#1089#1090#1074#1086
  ClientHeight = 282
  ClientWidth = 601
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 601
    Height = 241
    ActivePage = TabSheet2
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #1042#1089#1090#1091#1087#1083#1077#1085#1080#1077
      OnShow = TabSheet1Show
      object Label2: TLabel
        Left = 48
        Top = 8
        Width = 536
        Height = 13
        Caption = 
          #1061#1072#1081'! '#1056#1077#1096#1080#1083#1080' '#1095#1090#1086'-'#1085#1080#1073#1091#1076#1100' '#1074#1079#1083#1086#1084#1072#1090#1100'? '#1055#1086#1078#1072#1083#1091#1081#1089#1090#1072'! '#1053#1086' '#1091#1095#1090#1080#1090#1077', '#1095#1090#1086' '#1074#1072#1089' ' +
          #1084#1086#1075#1091#1090' '#1087#1086#1081#1084#1072#1090#1100' '#1080' '#1074#1099' '#1074#1083#1077#1090#1080#1090#1077' '#1085#1072' '#1090#1072#1082#1080#1077
        Transparent = True
      end
      object Image1: TImage
        Left = 0
        Top = 64
        Width = 593
        Height = 149
        Center = True
      end
      object Label1: TLabel
        Left = 4
        Top = 21
        Width = 579
        Height = 13
        Caption = 
          #1073#1072#1073#1082#1080'!!! '#1051#1072#1076#1085#1086' '#1087#1086#1077#1093#1072#1083#1080'. '#1044#1083#1103' '#1093#1072#1082#1072' '#1074#1072#1084' '#1085#1091#1078#1085#1099' '#1087#1088#1086#1075#1088#1072#1084#1084#1099'. '#1055#1086#1082#1091#1087#1082#1072' '#1087#1088 +
          #1086#1075#1088#1072#1084#1084' '#1086#1073#1093#1086#1076#1080#1090#1089#1103' '#1076#1086#1088#1086#1075#1086', '#1085#1086' '#1073#1077#1079' '#1085#1080#1093' '#1074#1099' '#1085#1077
        Transparent = True
      end
      object Label3: TLabel
        Left = 4
        Top = 34
        Width = 577
        Height = 13
        Caption = 
          #1089#1084#1086#1078#1077#1090#1077' '#1085#1080#1095#1077#1075#1086' '#1093#1072#1082#1085#1091#1090#1100' '#1080#1083#1080' '#1074#1079#1083#1086#1084#1072#1090#1100'. '#1058#1072#1082#1078#1077' '#1085#1077#1087#1083#1086#1093#1086' '#1073#1099#1083#1086' '#1073#1099' '#1080#1084#1077#1090#1100 +
          ' '#1082#1072#1082#1086#1081'-'#1085#1080#1073#1091#1076#1100' '#1092#1072#1081#1083#1086#1074#1099#1081' '#1084#1077#1085#1077#1076#1078#1077#1088', '#1095#1090#1086#1073#1099
        Transparent = True
      end
      object Label4: TLabel
        Left = 4
        Top = 47
        Width = 129
        Height = 13
        Caption = #1083#1072#1079#1080#1090#1100' '#1087#1086' '#1082#1086#1084#1087#1091' '#1078#1077#1088#1090#1074#1099'.'
        Transparent = True
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1050#1086#1085#1089#1086#1083#1100
      ImageIndex = 3
      OnShow = TabSheet2Show
      object ProgressBar2: TProgressBar
        Left = 0
        Top = 192
        Width = 593
        Height = 17
        Position = 100
        Smooth = True
        TabOrder = 1
      end
      object CommandWindow: TMemo
        Left = 0
        Top = 0
        Width = 593
        Height = 185
        Align = alTop
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
        OnChange = CommandWindowChange
        OnClick = CommandWindowChange
        OnKeyDown = CommandWindowKeyDown
        OnKeyPress = CommandWindowKeyPress
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1060#1072#1081#1083#1086#1074#1099#1081' '#1084#1077#1085#1077#1076#1078#1077#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 2
      ParentFont = False
      TabVisible = False
      object ProgressBar1: TProgressBar
        Left = 0
        Top = 192
        Width = 593
        Height = 17
        Position = 100
        Smooth = True
        TabOrder = 0
      end
      object TreeView1: TTreeView
        Left = 0
        Top = 0
        Width = 593
        Height = 185
        Align = alTop
        Images = ImageList1
        Indent = 19
        PopupMenu = PopupMenu1
        TabOrder = 1
      end
    end
  end
  object Button1: TButton
    Left = 440
    Top = 248
    Width = 137
    Height = 25
    Cursor = crHandPoint
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 296
    Top = 248
    Width = 137
    Height = 25
    Cursor = crHandPoint
    Hint = #1055#1086#1082#1091#1087#1082#1072' '#1087#1088#1086#1075#1088#1072#1084#1084' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1099#1093' '#1082#1072#1078#1076#1086#1084#1091' '#1093#1072#1082#1077#1088#1091'.'
    Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1099
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = Button2Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 250
    OnTimer = Timer1Timer
    Left = 8
    Top = 248
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 40
    Top = 248
    object N10: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Enabled = False
      OnClick = N10Click
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object N1: TMenuItem
      Caption = #1055#1086#1076#1086#1073#1088#1072#1090#1100' '#1087#1072#1088#1086#1083#1100
      Enabled = False
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1042#1079#1083#1086#1084#1072#1090#1100
      Enabled = False
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1047#1072#1087#1091#1089#1090#1080#1090#1100' '#1074#1080#1088#1091#1089
      Enabled = False
      OnClick = N3Click
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object N12: TMenuItem
      Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100' '#1072#1085#1090#1080#1074#1080#1088#1091#1089
      Enabled = False
    end
    object N13: TMenuItem
      Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100' firewall'
      Enabled = False
      OnClick = N13Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object N6: TMenuItem
      Caption = 'Anti-firewall'
      Enabled = False
      OnClick = N6Click
    end
    object N5: TMenuItem
      Caption = 'Stealth '#1084#1072#1089#1082#1080#1088#1086#1074#1082#1072
      Enabled = False
      OnClick = N5Click
    end
    object N7: TMenuItem
      Caption = '-'
      Visible = False
    end
    object N8: TMenuItem
      Caption = #1057#1082#1072#1095#1072#1090#1100' '#1089#1077#1082#1088#1077#1090#1085#1091#1102' '#1087#1088#1086#1075#1088#1072#1084#1084#1091
      Visible = False
      OnClick = N8Click
    end
  end
  object ImageList1: TImageList
    Left = 72
    Top = 248
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A22E1200A22E1200A22E
      1200A22E1200A22E1200A22E1200A22E1200A22E1200A22E1200A22E1200A22E
      1200A22E1200A22E1200A22E12000000000000000000A8603900A22E1200A22E
      1200A22E1200A22E1200A22E1200A22E1200A22E1200A22E1200A22E1200A22E
      1200A22E1200A22E1200A22E1200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AC623900A8311200CEB0AC00D1BC
      BC00D1BCBC00D1BCBC00D1BCBC00D1BCBC00D1BCBC00D1BCBC00D1BCBC00D1BC
      BC00D1BCBC00D3C4C600AE40210000000000A8603900FEBC6400AA371600D1BC
      BC00D1BCBC00D1BCBC00D1BCBC00D1BCBC00D1BCBC00D1BCBC00D1BCBC00D1BC
      BC00D1BCBC00D1BCBC00D1BCBC00AA3716000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AC623900C0542200F1D8CE00FEFD
      FD00FEFDFD00FEFDFD00FEFDFD00FEFDFD00FEFDFD00FEFDFD00FEFDFD00FEFD
      FD00FEFDFD00DDD6DB00B755350000000000AF653A00FEC47700B2401C00FEFD
      FD00FEFDFD00FEFDFD00FEFDFD00FEFDFD00FEFDFD00FEFDFD00FEFDFD00FEFD
      FD00FEFDFD00FEFDFD00D1BCBC00B2401C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B3673B00CB632C00E7BFAE00FEFD
      FD00FEFDFD00FEFDFD00FEFDFD00FEFDFD00FEFDFD00FEFDFD00FEFDFD00FEFD
      FD00FEFDFD00E2DEE600BF6A4B0000000000AF653A00FEC47700BA4B2100FEFD
      FD00FEFDFD00FEFDFD00FEFDFD00FEFDFD00FEFDFD00FEFDFD00FEFDFD00FEFD
      FD00FEFDFD00FEFDFD00D1BCBC00BA4B21000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B3673B00DC895100E0713000FE95
      3C00FE903A00FE953C00FE903A00FE903A00FE903A00FE903A00FE903A00FE90
      3A00FE903A00FE953C00E0713000DCA69000B76A3C00FECA8200C2542700FE90
      3A00FE903A00FE8F3900FE903A00FE8F3900FE8F3900FE8F3900FE8F3900FE8F
      3900FE8F3900FE8F3900FE8F3900C25427000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD6E3D00E9A26700DC733800FEA2
      5100FE9A4D00FE9A4D00FE9A4D00FE9A4D00FE9A4D00FE9A4D00FE9A4D00FE9A
      4D00FE9A4D00FE9A4D00EB854000D6927400B76A3C00FECF8E00C95E2C00FE9A
      4D00FE9A4D00FE9A4D00FE9A4D00FE9A4D00FE9A4D00FE9A4D00FE9A4D00FE9A
      4D00FE9A4D00FE9A4D00FE9A4D00C95E2C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD6E3D00F5BE8400DC733800FEB0
      6A00FEA96400FEA96400FEA96400FEA96400FEA96400FEA96400FEA96400FEA9
      6400FEA96400FEA96400F69A5900D47E5200BD6E3D00FED59B00D0673000FEA8
      6400FEA86400FEA86400FEA86400FEA86400FEA86400FEA86400FEA86400FEA8
      6400FEA86400FEA86400FEA86400D0672F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C5733F00FBD2A000D8753900FEC3
      8E00FEFDFD00FEFDFD00FEFDFD00FEFDFD00FDF8F300FEB57900FEB88000FEB8
      8000FEB88000FEB88000FEB57900D8753900BD6E3D00FEDCAA00D56E3400FEB8
      8000FEFDFD00FEFDFD00FEFDFD00FEFDFD00FEFDFD00FEB88000FEB88000FEB8
      8000FEB88000FEB88000FEB88000D56E34000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C9764000FEE1B800FEE1B800DC73
      3800DC733800D8753900D8753900D8753900EEC39500FEFDFD00FECAA000FECA
      9C00FECA9C00FECA9C00FECAA000DC733800CC784100FEE1B800FEE1B800DA74
      3700DA743700DA743700DA743700DA743700F0C69900FEFDFD00FEC99C00FEC9
      9C00FEC99C00FEC99C00FEC99C00DA7437000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC784100FEE8C600FEE8C600FEE8
      C800FEE8C600FEE8C600FEE7C600FEE7C600DC814F00EDBD9100FDF8F300FEFD
      FD00FEFDFD00FEFDFD00FEE9D300DC814F00CC784100FEE8C600FEE8C600FEE8
      C800FEE8C600FEE8C800FEE7C600FEE7C800DA743700F2D1AE00FEFDFD00FEFD
      FD00FEFDFD00FEFDFD00FEDABB00DA7437000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D17B4200FEE9D300FEE9D300FEED
      D500FEE9D300FEE9D300FEEDD500FEE9D300FEEDD500E29C7000D8753900D875
      3900D8753900D8753900D8753900D8753900D17B4200FEEDD500FEEDD500FEED
      D500FEEDD500FEEDD500FEEDD500FEEDD500FEEDD500DA743700DA743700DA74
      3700DA743700DA743700DA743700DA7437000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D67F4400FEF2E100FEF2E100FEF2
      E100FEF2E100FEF2E100FEF2E100FEF2E100FEF2E100FEF2E100FEF2E100FEF2
      E100FEF2E100FEF2E100FEF2E100D17B4200D17B4200FEF2E100FEF2E100FEF2
      E100FEF2E100FEF2E100FEF2E100FEF2E100FEF2E100FEF2E100FEF2E100FEF2
      E100FEF2E100FEF2E100FEF2E100D17B42000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DA824400FEF8ED00FEF8ED00FDF8
      F300FEF8ED00FEF8ED00FDF8F300FEF8ED00BF917400DA824400DA824400DA82
      4400DA824400DA824400DA82440000000000DE854500FEF8ED00FEF8ED00FEF8
      ED00FEF8ED00FEF8ED00FEF7ED00FEF7ED00BF917400DE854500DE854500DE85
      4500DA824400DE854500DE854500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DA824400FEFDFD00FDF8
      F300FDF8F300FEFDFD00FDF8F300FDF8F300E288460000000000000000000000
      00000000000000000000000000000000000000000000DE854500FEFCF700FEFC
      F700FEFCF700FEFCF700FEFCF700FEFCF700DE85450000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E2884600E288
      4600E2884600E2884600E2884600E28846000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E2884600E287
      4600E2874600E2884600E2884600E28846000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF000000008001800100000000
      0001000000000000000100000000000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000100000000
      807F807F00000000C0FFC0FF0000000000000000000000000000000000000000
      000000000000}
  end
end
