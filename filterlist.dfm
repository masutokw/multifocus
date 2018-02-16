object FilterForm: TFilterForm
  Left = 932
  Top = 236
  Width = 533
  Height = 383
  Caption = 'Config'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFCC
    CCCCCCCCCCCCCCCCCCCCCCCCCCFFFCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCFCCCA
    AAAA777777777777777CCCCCCCCCCCCAAAAA6666666666666667CCCCCCCCCCCA
    AAAA66666666666666667CCCCCCCCCCAAAAA66666166666166666CCCCCCCCCCA
    AAAA66661116661116666CCCCCCCCCCAAAAA66666166666166666CCCCCCCCCCA
    AAAA66666666666666600CCCCCCCCC76666666666666666666600CCCCCCCCC76
    666666666666666666600CCCCCCCCC76666666666666666666666CCCCCCCCC76
    660F00F00F00666666666CCCCCCCCC76660000000000666666666CCCCCCCCC76
    660000000000666666666CCCCCCCCC76660000000000666666600CCCCCCC4476
    660BB0B0B0006666666004444444447666000000000066666660044444444476
    66666666666666666666644444444476666666666666666666666444B4744476
    6666666666666666666004444444447666666666666666666660044444444476
    66666666666666666660044444444476666996AA66EE66666666744444444477
    666996AA66EE6666666674444444444776666666666666666667444744444444
    77777777777777777774444444444B4444444444444444444444444444F44444
    444444444444444444444444444444444447444444444744444444444444F444
    444444444444444444B444F4444FFF4444444444444444444444444444FFC000
    0003800000010000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000080000001C0000003}
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 522
    Height = 321
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 3
      Top = 9
      Width = 273
      Height = 142
      Caption = 'Focuser 1'
      TabOrder = 0
      object StaticText1: TStaticText
        Left = 144
        Top = 10
        Width = 37
        Height = 18
        Caption = 'Slot 1:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object LongEditSl1: TLongEdit
        Tag = 1
        Left = 184
        Top = 9
        Width = 58
        Height = 17
        Hint = '0..30000'
        Color = clMoneyGreen
        MaxLength = 5
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Value = 1000
        MaxValue = 30000
      end
      object StaticText2: TStaticText
        Left = 144
        Top = 30
        Width = 37
        Height = 18
        Caption = 'Slot 2:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object LongEditSl2: TLongEdit
        Tag = 2
        Left = 184
        Top = 30
        Width = 58
        Height = 17
        Hint = '0..30000'
        Color = clMoneyGreen
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Value = 2000
        MaxValue = 30000
      end
      object StaticText3: TStaticText
        Left = 144
        Top = 51
        Width = 37
        Height = 18
        Caption = 'Slot 3:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object LongEditSl3: TLongEdit
        Tag = 3
        Left = 184
        Top = 50
        Width = 58
        Height = 17
        Hint = '0..30000'
        Color = clMoneyGreen
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        Value = 3000
        MaxValue = 30000
      end
      object StaticText4: TStaticText
        Left = 144
        Top = 71
        Width = 37
        Height = 18
        Caption = 'Slot 4:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object LongEditSl4: TLongEdit
        Tag = 4
        Left = 185
        Top = 71
        Width = 58
        Height = 17
        Hint = '0..30000'
        Color = clMoneyGreen
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        Value = 4000
        MaxValue = 30000
      end
      object StaticText5: TStaticText
        Left = 144
        Top = 92
        Width = 37
        Height = 18
        Caption = 'Slot 5:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object LongEditSl5: TLongEdit
        Tag = 5
        Left = 184
        Top = 91
        Width = 58
        Height = 17
        Hint = '0..30000'
        Color = clMoneyGreen
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        Value = 5000
        MaxValue = 30000
      end
      object StaticText6: TStaticText
        Left = 144
        Top = 113
        Width = 37
        Height = 18
        Caption = 'Slot 6:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object LongEditSl6: TLongEdit
        Tag = 6
        Left = 184
        Top = 112
        Width = 58
        Height = 17
        Hint = '0..30000'
        Color = clMoneyGreen
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        Value = 6000
        MaxValue = 30000
      end
      object StaticText11: TStaticText
        Left = 7
        Top = 95
        Width = 55
        Height = 18
        Caption = 'Low Spd:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object StaticText7: TStaticText
        Left = 7
        Top = 14
        Width = 57
        Height = 18
        Caption = 'Max Step:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
      end
      object LongEditSlMax: TLongEdit
        Left = 61
        Top = 13
        Width = 58
        Height = 17
        Hint = '0..30000'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        Value = 10000
        MaxValue = 30000
      end
      object StaticText8: TStaticText
        Left = 7
        Top = 34
        Width = 58
        Height = 18
        Caption = 'Step Size:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
      end
      object StaticText9: TStaticText
        Left = 7
        Top = 54
        Width = 63
        Height = 18
        Caption = 'Backslash:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
      end
      object LongEditslback: TLongEdit
        Left = 61
        Top = 54
        Width = 58
        Height = 17
        Hint = '0..3000'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
        Value = 0
        MaxValue = 3000
      end
      object StaticText10: TStaticText
        Left = 7
        Top = 74
        Width = 55
        Height = 18
        Caption = 'High Spd:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 18
      end
      object LongEdit8: TLongEdit
        Left = 61
        Top = 74
        Width = 58
        Height = 17
        Hint = '0..300000'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
        Value = 300
        MaxValue = 300000
      end
      object LongEdit10: TLongEdit
        Left = 61
        Top = 94
        Width = 58
        Height = 17
        TabOrder = 20
        Value = 30
      end
      object FloatEditSlsize: TFloatEdit
        Left = 61
        Top = 33
        Width = 58
        Height = 17
        MaxLength = 10
        TabOrder = 21
        Value = 1
        NumericType = ntFixed
      end
      object ButtonreadIC: TButton
        Left = 4
        Top = 119
        Width = 61
        Height = 19
        Caption = 'ReadIC'
        TabOrder = 22
        OnClick = ButtonreadICClick
      end
      object Button6: TButton
        Left = 68
        Top = 119
        Width = 61
        Height = 19
        Caption = 'To IC'
        TabOrder = 23
        OnClick = Button6Click
      end
    end
    object GroupBox3: TGroupBox
      Left = 2
      Top = 157
      Width = 273
      Height = 158
      Caption = 'Focuser 2'
      TabOrder = 1
      object StaticText12: TStaticText
        Left = 143
        Top = 12
        Width = 37
        Height = 18
        Caption = 'Slot 1:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object LongEditS1: TLongEdit
        Tag = 1
        Left = 183
        Top = 11
        Width = 58
        Height = 17
        Hint = '0..30000'
        Color = clMoneyGreen
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Value = 1000
        MaxValue = 30000
      end
      object StaticText13: TStaticText
        Left = 143
        Top = 32
        Width = 37
        Height = 18
        Caption = 'Slot 2:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object LongEdits2: TLongEdit
        Tag = 2
        Left = 183
        Top = 31
        Width = 58
        Height = 17
        Hint = '0..30000'
        Color = clMoneyGreen
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Value = 2000
        MaxValue = 30000
      end
      object StaticText14: TStaticText
        Left = 143
        Top = 52
        Width = 37
        Height = 18
        Caption = 'Slot 3:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object LongEdits3: TLongEdit
        Tag = 3
        Left = 184
        Top = 51
        Width = 58
        Height = 17
        Hint = '0..30000'
        Color = clMoneyGreen
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        Value = 3000
        MaxValue = 30000
      end
      object StaticText15: TStaticText
        Left = 143
        Top = 72
        Width = 37
        Height = 18
        Caption = 'Slot 4:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object LongEditS4: TLongEdit
        Tag = 4
        Left = 184
        Top = 71
        Width = 58
        Height = 17
        Hint = '0..30000'
        Color = clMoneyGreen
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        Value = 4000
        MaxValue = 30000
      end
      object StaticText16: TStaticText
        Left = 143
        Top = 92
        Width = 37
        Height = 18
        Caption = 'Slot 5:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object LongEditS5: TLongEdit
        Tag = 5
        Left = 184
        Top = 91
        Width = 58
        Height = 17
        Hint = '0..30000'
        Color = clMoneyGreen
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        Value = 5000
        MaxValue = 30000
      end
      object StaticText17: TStaticText
        Left = 143
        Top = 112
        Width = 37
        Height = 18
        Caption = 'Slot 6:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object LongEditS6: TLongEdit
        Tag = 6
        Left = 185
        Top = 111
        Width = 58
        Height = 17
        Hint = '0..30000'
        Color = clMoneyGreen
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        Value = 6000
        MaxValue = 30000
      end
      object StaticText18: TStaticText
        Left = 7
        Top = 95
        Width = 55
        Height = 18
        Caption = 'Low Spd:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object StaticText19: TStaticText
        Left = 7
        Top = 14
        Width = 57
        Height = 18
        Caption = 'Max Step:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
      end
      object LongEditsmax: TLongEdit
        Left = 61
        Top = 13
        Width = 58
        Height = 17
        Hint = '0..30000'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        Value = 10000
        MaxValue = 30000
      end
      object StaticText20: TStaticText
        Left = 7
        Top = 34
        Width = 58
        Height = 18
        Caption = 'Step Size:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
      end
      object StaticText21: TStaticText
        Left = 7
        Top = 54
        Width = 63
        Height = 18
        Caption = 'Backslash:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
      end
      object LongEditsback: TLongEdit
        Left = 61
        Top = 54
        Width = 58
        Height = 17
        Hint = '0..3000'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
        Value = 0
        MaxValue = 3000
      end
      object StaticText22: TStaticText
        Left = 7
        Top = 74
        Width = 55
        Height = 18
        Caption = 'High Spd:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 18
      end
      object LongEdit13: TLongEdit
        Left = 61
        Top = 74
        Width = 58
        Height = 17
        Hint = '0..30000'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
        Value = 300
        MaxValue = 30000
      end
      object LongEdit14: TLongEdit
        Left = 61
        Top = 94
        Width = 58
        Height = 17
        Hint = '0..30000'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 20
        Value = 30
        MaxValue = 30000
      end
      object FloatEditSsize: TFloatEdit
        Left = 61
        Top = 33
        Width = 58
        Height = 17
        MaxLength = 10
        TabOrder = 21
        Value = 1
        NumericType = ntFixed
      end
      object Button1: TButton
        Left = 5
        Top = 135
        Width = 61
        Height = 19
        Caption = 'ReadIC'
        TabOrder = 22
        OnClick = Button1Click
      end
      object Button7: TButton
        Left = 69
        Top = 134
        Width = 61
        Height = 19
        Caption = 'To IC'
        TabOrder = 23
        OnClick = Button7Click
      end
    end
    object GroupBox4: TGroupBox
      Left = 275
      Top = 9
      Width = 239
      Height = 256
      Caption = 'Filter'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label2: TLabel
        Left = 44
        Top = 48
        Width = 163
        Height = 13
        Caption = 'Filter name      Offset        Position'
      end
      object StaticText23: TStaticText
        Left = 5
        Top = 61
        Width = 37
        Height = 18
        Caption = 'Slot 1:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object PosLongEdit1: TLongEdit
        Tag = 1
        Left = 168
        Top = 60
        Width = 58
        Height = 20
        Hint = '0..30000'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Value = 1000
        MaxValue = 30000
      end
      object StaticText24: TStaticText
        Left = 5
        Top = 79
        Width = 37
        Height = 18
        Caption = 'Slot 2:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object PosLongEdit2: TLongEdit
        Tag = 2
        Left = 168
        Top = 78
        Width = 58
        Height = 20
        Hint = '0..30000'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Value = 2000
        MaxValue = 30000
      end
      object StaticText25: TStaticText
        Left = 5
        Top = 98
        Width = 37
        Height = 18
        Caption = 'Slot 3:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object PosLongEdit3: TLongEdit
        Tag = 3
        Left = 168
        Top = 97
        Width = 58
        Height = 20
        Hint = '0..30000'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        Value = 3000
        MaxValue = 30000
      end
      object StaticText26: TStaticText
        Left = 5
        Top = 116
        Width = 37
        Height = 18
        Caption = 'Slot 4:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object PosLongEdit4: TLongEdit
        Tag = 4
        Left = 168
        Top = 115
        Width = 58
        Height = 20
        Hint = '0..30000'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        Value = 4000
        MaxValue = 30000
      end
      object StaticText27: TStaticText
        Left = 5
        Top = 135
        Width = 37
        Height = 18
        Caption = 'Slot 5:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object PosLongEdit5: TLongEdit
        Tag = 5
        Left = 168
        Top = 134
        Width = 58
        Height = 20
        Hint = '0..30000'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        Value = 5000
        MaxValue = 30000
      end
      object StaticText28: TStaticText
        Left = 5
        Top = 153
        Width = 37
        Height = 18
        Caption = 'Slot 6:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object PosLongEdit6: TLongEdit
        Tag = 6
        Left = 168
        Top = 152
        Width = 58
        Height = 20
        Hint = '0..30000'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        Value = 6000
        MaxValue = 30000
      end
      object StaticText30: TStaticText
        Left = 3
        Top = 12
        Width = 53
        Height = 17
        Caption = 'Max Step:'
        TabOrder = 12
      end
      object LongEditfMax: TLongEdit
        Left = 52
        Top = 9
        Width = 58
        Height = 17
        Hint = '0..30000'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        Value = 10000
        MaxValue = 30000
      end
      object StaticText31: TStaticText
        Left = 3
        Top = 31
        Width = 52
        Height = 17
        Caption = 'Step Size:'
        TabOrder = 14
      end
      object StaticText32: TStaticText
        Left = 112
        Top = 10
        Width = 54
        Height = 17
        Caption = 'Backslash:'
        TabOrder = 15
      end
      object LongEditfback: TLongEdit
        Left = 162
        Top = 9
        Width = 41
        Height = 17
        Hint = '0..3000'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
        Value = 0
        MaxValue = 3000
      end
      object FloatEditfsize: TFloatEdit
        Left = 52
        Top = 30
        Width = 58
        Height = 17
        Hint = '0..100'
        MaxLength = 10
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
        Value = 1
        MaxValue = 100
        NumericType = ntFixed
      end
      object Button5: TButton
        Left = 67
        Top = 233
        Width = 61
        Height = 19
        Caption = 'To IC'
        TabOrder = 18
        OnClick = Button5Click
      end
      object StaticText29: TStaticText
        Left = 5
        Top = 172
        Width = 37
        Height = 18
        Caption = 'Slot 7:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 19
      end
      object PosLongEdit7: TLongEdit
        Tag = 5
        Left = 168
        Top = 171
        Width = 58
        Height = 20
        Hint = '0..30000'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 20
        Value = 5000
        MaxValue = 30000
      end
      object StaticText33: TStaticText
        Left = 5
        Top = 190
        Width = 37
        Height = 18
        Caption = 'Slot 8:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 21
      end
      object PosLongEdit8: TLongEdit
        Tag = 6
        Left = 168
        Top = 189
        Width = 58
        Height = 20
        Hint = '0..30000'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 22
        Value = 6000
        MaxValue = 30000
      end
      object OffLongEdit1: TLongEdit
        Tag = 1
        Left = 116
        Top = 61
        Width = 50
        Height = 20
        Hint = '0..30000'
        Color = clSkyBlue
        ParentShowHint = False
        ShowHint = True
        TabOrder = 23
        Value = 0
        MaxValue = 30000
      end
      object OffLongEdit2: TLongEdit
        Tag = 2
        Left = 116
        Top = 79
        Width = 50
        Height = 20
        Hint = '0..30000'
        Color = clSkyBlue
        ParentShowHint = False
        ShowHint = True
        TabOrder = 24
        Value = 0
        MaxValue = 30000
      end
      object OffLongEdit3: TLongEdit
        Tag = 3
        Left = 116
        Top = 98
        Width = 50
        Height = 20
        Hint = '0..30000'
        Color = clSkyBlue
        ParentShowHint = False
        ShowHint = True
        TabOrder = 25
        Value = 0
        MaxValue = 30000
      end
      object OffLongEdit4: TLongEdit
        Tag = 4
        Left = 116
        Top = 116
        Width = 50
        Height = 20
        Hint = '0..30000'
        Color = clSkyBlue
        ParentShowHint = False
        ShowHint = True
        TabOrder = 26
        Value = 0
        MaxValue = 30000
      end
      object OffLongEdit5: TLongEdit
        Tag = 5
        Left = 116
        Top = 135
        Width = 50
        Height = 20
        Hint = '0..30000'
        Color = clSkyBlue
        ParentShowHint = False
        ShowHint = True
        TabOrder = 27
        Value = 0
        MaxValue = 30000
      end
      object OffLongEdit6: TLongEdit
        Tag = 6
        Left = 116
        Top = 153
        Width = 50
        Height = 20
        Hint = '0..30000'
        Color = clSkyBlue
        ParentShowHint = False
        ShowHint = True
        TabOrder = 28
        Value = 0
        MaxValue = 30000
      end
      object OffLongEdit7: TLongEdit
        Tag = 5
        Left = 116
        Top = 172
        Width = 50
        Height = 20
        Hint = '0..30000'
        Color = clSkyBlue
        ParentShowHint = False
        ShowHint = True
        TabOrder = 29
        Value = 0
        MaxValue = 30000
      end
      object OffLongEdit8: TLongEdit
        Tag = 6
        Left = 116
        Top = 190
        Width = 50
        Height = 20
        Hint = '0..30000'
        Color = clSkyBlue
        ParentShowHint = False
        ShowHint = True
        TabOrder = 30
        Value = 0
        MaxValue = 30000
      end
      object FilterEdit1: TEdit
        Left = 42
        Top = 61
        Width = 68
        Height = 21
        Color = clInfoBk
        TabOrder = 31
        Text = 'Luminance'
      end
      object FilterEdit2: TEdit
        Left = 42
        Top = 79
        Width = 68
        Height = 21
        Color = clInfoBk
        TabOrder = 32
        Text = 'Red'
      end
      object FilterEdit3: TEdit
        Left = 42
        Top = 98
        Width = 68
        Height = 21
        Color = clInfoBk
        TabOrder = 33
        Text = 'Green'
      end
      object FilterEdit4: TEdit
        Left = 42
        Top = 116
        Width = 68
        Height = 21
        Color = clInfoBk
        TabOrder = 34
        Text = 'Blue'
      end
      object FilterEdit5: TEdit
        Left = 42
        Top = 135
        Width = 68
        Height = 21
        Color = clInfoBk
        TabOrder = 35
        Text = 'Ir'
      end
      object FilterEdit6: TEdit
        Left = 42
        Top = 153
        Width = 68
        Height = 21
        Color = clInfoBk
        TabOrder = 36
        Text = 'Ir Cut'
      end
      object FilterEdit7: TEdit
        Left = 42
        Top = 172
        Width = 68
        Height = 21
        Color = clInfoBk
        TabOrder = 37
        Text = 'Ha'
      end
      object FilterEdit8: TEdit
        Left = 42
        Top = 190
        Width = 68
        Height = 21
        Color = clInfoBk
        TabOrder = 38
        Text = 'P'
      end
      object StaticText34: TStaticText
        Left = 6
        Top = 209
        Width = 37
        Height = 18
        Caption = 'Slot 9:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 39
      end
      object FilterEdit9: TEdit
        Left = 42
        Top = 209
        Width = 68
        Height = 21
        Color = clInfoBk
        TabOrder = 40
        Text = 'OIII'
      end
      object PosLongEdit9: TLongEdit
        Tag = 6
        Left = 168
        Top = 208
        Width = 58
        Height = 20
        Hint = '0..30000'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 41
        Value = 6000
        MaxValue = 30000
      end
      object OffLongEdit9: TLongEdit
        Tag = 6
        Left = 116
        Top = 209
        Width = 50
        Height = 20
        Hint = '0..30000'
        Color = clSkyBlue
        ParentShowHint = False
        ShowHint = True
        TabOrder = 42
        Value = 0
        MaxValue = 30000
      end
      object Button2: TButton
        Left = 4
        Top = 233
        Width = 61
        Height = 19
        Caption = 'ReadIC'
        TabOrder = 43
        OnClick = Button2Click
      end
    end
    object GroupBox5: TGroupBox
      Left = 278
      Top = 265
      Width = 235
      Height = 50
      Caption = 'Rotator'
      TabOrder = 3
      object StaticText35: TStaticText
        Left = 7
        Top = 14
        Width = 57
        Height = 18
        Caption = 'Max Step:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object LongEdit1: TLongEdit
        Left = 61
        Top = 13
        Width = 58
        Height = 17
        Hint = '0..30000'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Value = 10000
        MaxValue = 30000
      end
      object StaticText36: TStaticText
        Left = 8
        Top = 30
        Width = 55
        Height = 18
        Caption = 'High Spd:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object LongEdit2: TLongEdit
        Left = 62
        Top = 31
        Width = 58
        Height = 17
        Hint = '0..300000'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Value = 300
        MaxValue = 300000
      end
    end
  end
  object Button3: TButton
    Left = 5
    Top = 325
    Width = 61
    Height = 19
    Caption = 'Read'
    TabOrder = 1
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 70
    Top = 325
    Width = 61
    Height = 19
    Caption = 'Save'
    TabOrder = 2
    OnClick = Button4Click
  end
  object Button8: TButton
    Left = 160
    Top = 325
    Width = 71
    Height = 18
    Caption = 'Button8'
    TabOrder = 3
    OnClick = Button8Click
  end
end
