object FormFechaPago: TFormFechaPago
  Left = 443
  Top = 187
  BorderStyle = bsToolWindow
  Caption = 'Seleccionar Fecha'
  ClientHeight = 198
  ClientWidth = 422
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 32
    Top = 32
    Width = 257
    Height = 81
    TabOrder = 3
    SkinData.SkinSection = 'PANEL'
    object Label1: TLabel
      Left = 42
      Top = 23
      Width = 38
      Height = 14
      Caption = 'Desde:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 47
      Top = 46
      Width = 33
      Height = 14
      Caption = 'Hasta:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object selFecha1: TDateTimePicker
      Left = 80
      Top = 20
      Width = 91
      Height = 21
      CalAlignment = dtaLeft
      Date = 40213.4904078704
      Time = 40213.4904078704
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 0
    end
    object selFecha2: TDateTimePicker
      Left = 80
      Top = 42
      Width = 91
      Height = 21
      CalAlignment = dtaLeft
      Date = 40213.4904078704
      Time = 40213.4904078704
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 1
    end
    object R1: TRadioButton
      Left = 177
      Top = 15
      Width = 72
      Height = 17
      Caption = 'Todos'
      Checked = True
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      TabStop = True
      Visible = False
    end
    object R2: TRadioButton
      Left = 177
      Top = 31
      Width = 72
      Height = 18
      Caption = 'Validas'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
    object R3: TRadioButton
      Left = 177
      Top = 47
      Width = 72
      Height = 18
      Caption = 'Anuladas'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      Visible = False
    end
  end
  object B1: TsBitBtn
    Left = 295
    Top = 30
    Width = 112
    Height = 29
    Caption = '&Vista Previa'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = B1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
      0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
      0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
      0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
      0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
      0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
      5555557FFFFF7755555555500000005555555577777775555555555555555555
      5555555555555555555555555555555555555555555555555555}
    NumGlyphs = 2
    SkinData.SkinSection = 'BUTTON'
  end
  object B3: TsBitBtn
    Left = 295
    Top = 134
    Width = 112
    Height = 29
    Caption = '&Imprimir'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Visible = False
    OnClick = B3Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
    SkinData.SkinSection = 'BUTTON'
  end
  object B4: TsBitBtn
    Left = 114
    Top = 150
    Width = 102
    Height = 29
    Caption = '&Salir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = B4Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
      0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
      0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
      0333337F777FFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
    SkinData.SkinSection = 'BUTTON'
  end
  object sPanel2: TsPanel
    Left = 0
    Top = 0
    Width = 422
    Height = 27
    Align = alTop
    TabOrder = 4
    SkinData.SkinSection = 'PANEL'
    object sLabelFX1: TsLabelFX
      Left = 1
      Top = 1
      Width = 420
      Height = 18
      Align = alTop
      Alignment = taCenter
      Caption = 'SELECCIONAR FECHA'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
    end
  end
  object B2: TsBitBtn
    Left = 295
    Top = 62
    Width = 112
    Height = 29
    Caption = '&Exportar...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = B2Click
    Glyph.Data = {
      FA090000424DFA09000000000000360000002800000019000000190000000100
      200000000000C409000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF003C7552C5275A3DE021593AE0235B3BE0235B3BE01F56
      38E01A5034E01A5034E01B5034E01A4F34E014422BE0133F29E0133F29E0123F
      29E0103B25E00B311EE00B321EE009321EE0072C1BE0062718E0092419E0091E
      18C5FFFFFF00FFFFFF00FFFFFF00427E56EC54A060FF40935BFF368951FF378A
      51FF33864EFF33864EFF2F814AFF2D7F49FF2C7946FF297444FF24713EFF2472
      3FFF1C6939FF1A6738FF166536FF136334FF0F5F31FF0F5E30FF146636FF0A53
      28FF082619ECFFFFFF00FFFFFF00FFFFFF00448359E05CA56BFF7F9F8FFF98AC
      A3FF93AA9FFF92AA9EFF92A99EFF91A89CFF8DA298FF8CA197FF8CA297FF8CA1
      97FF8BA096FF879B93FF859991FF859991FF849990FF849990FF899C93FF4E6E
      63FF0C572AFF062718E0FFFFFF00FFFFFF00FFFFFF0048875DE056A16CFFA9C3
      B2FFFFFFFDFFF4FBF2FFF1FAEFFFEFF8EEFFEEF8EDFFECF8EAFFEAF5E8FFE8F5
      E5FFE7F4E5FFE5F2E3FFE5F2E3FFE3F1E1FFE1F0DFFFE1F0DFFFDEEFDCFFE7F7
      E4FF5D7F71FF0A5729FF082F1CE0FFFFFF00FFFFFF00FFFFFF0049885EE059A2
      6DFFA4BFAEFFF5FAF3FFE8F1E8FFE7F1E7FFE5EFE4FFE2EEE3FFE1EEE2FFDFED
      DFFFDEEBDEFFDDEADCFFE2EDE1FFE7F4E6FFE7F5E6FFE4F3E4FFE3F2E3FFE3F3
      E3FFE0F1DFFF5A7C6EFF0C592BFF09321FE0FFFFFF00FFFFFF00FFFFFF00508F
      65E063A876FFA3BEADFFFFFFFFFFFAFFF9FFF7FFF6FFF6FEF6FFF3FDF3FFF1FC
      F1FFF0FBF0FFF0FAEEFFE7F6E7FFB9D7BBFF8EA091FF8B998BFF8A9A8BFF8899
      89FF819582FFB9CBB9FF628375FF105D2EFF0B321FE0FFFFFF00FFFFFF00FFFF
      FF00518F64E069AD79FFB1C9BAFFA5CDA5FF5D7862FF607665FF607665FF6076
      65FF607565FF607565FF627768FF4B7E55FF348438FF1E6625FF064E20FF1349
      26FF1A482CFF092A17FF829582FF6D8D7FFF135F30FF0C331FE0FFFFFF00FFFF
      FF00FFFFFF0058956AE071AE81FFB8CDC1FF8ABC8AFF04631FFF176A35FF1C66
      34FF246238FF2A5E3DFF355C49FF194F2AFF026105FF60A866FF63B36DFF2687
      44FF288346FF13762CFF4C904FFFE3ECE1FF5E7E70FF166233FF113D27E0FFFF
      FF00FFFFFF00FFFFFF005C976CE07AB486FFADC5B6FFF6FAF5FF7EB67FFF5FAE
      66FF77C181FF70BB79FF68B36FFF3F9743FF19791BFF7BBA83FF74B97DFF4195
      4AFF378E4EFF218036FF136418FFB9D7BBFFE5F1E4FF608272FF196635FF133F
      29E0FFFFFF00FFFFFF00FFFFFF005F9B70E07FB48BFFACC5B5FFFFFFFFFFEFF4
      EDFF7AB27CFF5CAB63FF6FB777FF3F9442FF177619FF79B983FF77BB7FFF4C9E
      52FF4B9E55FF318A39FF0E711AFF14652BFF6D9C70FFECF6EAFF668976FF206C
      39FF133F29E0FFFFFF00FFFFFF00FFFFFF0061A073E087BC93FFB3CCBAFFFFFF
      FEFFF9FCF9FFEDF4EDFF82B683FF3A903CFF157517FF82BD8BFF80C289FF51A2
      56FF54A559FF4B9A51FF25762BFF598963FF599268FF7AA17CFFECF7EBFF6588
      77FF1F6B38FF133E29E0FFFFFF00FFFFFF00FFFFFF0068A379E08DC098FFB4CD
      BAFFFFFFFEFFF5F9F4FFFDFDFDFFDCEBDDFF358736FF84BE8CFF89C892FF5BA9
      63FF57A95EFF519B56FF34773DFFD3DFD4FFEAF4EAFFE4F0E3FFE1EEE1FFE4F0
      E2FF678978FF256F3FFF16452DE0FFFFFF00FFFFFF00FFFFFF0064A176E093C2
      9DFFB5CDBCFFFFFFFFFFFEFEFCFFE6F2E7FF72B37BFF8FC395FF9ACEA2FF64AF
      6BFF61AD67FF57A05FFF548A58FF307531FF7AAC7AFFECF2EDFFE3F0E4FFE0ED
      E0FFE6F2E4FF668977FF287744FF1B5034E0FFFFFF00FFFFFF00FFFFFF00E3F0
      E6E09CC8A5FFB3CCBAFFFFFFFFFFE7F1E8FF77B77DFF8DC594FF9DCFA6FF70B9
      79FF6CB774FF5CA161FF5C9461FF69B271FF5BA061FF266E28FF76A976FFEEF4
      EFFFE4F0E5FFE7F3E6FF6B917CFF297B45FF1A4F34E0FFFFFF00FFFFFF00FFFF
      FF00FEFFFFE0A9D0B1FFB7D0BEFFEAF4ECFF7CBA84FF96CC9EFF9ED3A7FF77BE
      81FF79C183FF62AB6AFF629164FF63AB69FF74BE7EFF6DB976FF5CA161FF2770
      29FF77A876FFEDF3EEFFE9F4E8FF6C937DFF2B7D46FF1A5034E0FFFFFF00FFFF
      FF00FFFFFF00FAFEFAE0AAD2B2FFC3DACAFFA3D2A8FF97CC9EFFA6D6AFFF86C5
      90FF81C48CFF66AF72FF8AB68CFFD5E1D4FF85AF87FF62AC69FF71BC7BFF6BB9
      73FF5CA261FF246E26FF78AB78FFF5FBF5FF6D937EFF2E8049FF1B5135E0FFFF
      FF00FFFFFF00FFFFFF00FCFFFCE0B1D7B8FFC4DACAFFA5D5A9FF7FBF87FF75B7
      7BFF73B679FF6BA570FF8EB691FFF1F5F0FFFFFFFFFFE7EDE7FF86B188FF68A2
      6BFF6BA373FF61976BFF59845BFF729D74FFF8FDF7FF6D937EFF2F824AFF2059
      39E0FFFFFF00FFFFFF00FFFFFF00FCFFFCE0B2D8B9FFBAD5C0FFFFFFFFFFFAFD
      FAFFF9FDF8FFF8FCF8FFF7FAF8FFF9FBF9FFF9FCF8FFF5F9F5FFF6FAF6FFF4F8
      F3FFEEF5EEFFECF4ECFFECF3ECFFEAF2EAFFEAF2EAFFEFF6EEFF6E947FFF3486
      4EFF235B3BE0FFFFFF00FFFFFF00FFFFFF00FDFFFDE0B4D9BCFFBCD6C2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFEFFFCFEFBFFFBFE
      FAFFFAFCF9FFF9FCF8FFF6FBF5FFF4F9F3FFF3F9F2FFF1F7F0FFF8FCF5FF6E93
      81FF32864EFF235B3BE0FFFFFF00FFFFFF00FFFFFF00FDFFFEE0BBDCC3FF8CB5
      97FFA1C7AAFFA0C7A9FFA0C5A9FF9FC5A8FF9DC3A6FF96BAA0FF9BBDA5FF9EBF
      A6FF99BBA3FF92B59EFF91B69EFF90B59DFF8EB49BFF88AF96FF85AD93FF86AD
      94FF6C9E7DFF3A8C53FF205739E0FFFFFF00FFFFFF00FFFFFF00FBFDFBE0DCEF
      E0FFD6ECDAFFCFE9D4FFCEE8D3FFCBE6D0FFC5E3CBFFC4E2CAFFB9DDC0FF9ECC
      A8FF85BC92FF83BA90FF7DB388FF75B282FF6DAC7CFF65AA75FF60A674FF54A0
      69FF549F6AFF57A264FF478B57FF2C6042F3FFFFFF00FFFFFF00FFFFFF00FFFF
      FFEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FFFFFF7BFFFFFF7BFFFFFF7BFFFF
      FF7B95BCA17B4D8F637B57966B7B508D637B5089627B4D88607B47835E7B4982
      5E7B437C597B437C597B3E76557B3E77557B417B576CFFFFFF00FFFFFF00FFFF
      FF00FFFFFFC5FFFFFFE0FFFFFFE0FFFFFFE0FFFFFFBFFFFFFF1FFFFFFF1FFFFF
      FF1FFFFFFF1F95BBA11F4D8F631F57956A1F508C621F4F89621F4D88601F4782
      5E1F49815E1F437C591F437C591F3E76551F3E77551F417B571BFFFFFF00}
    SkinData.SkinSection = 'BUTTON'
  end
  object DBGExport: TDBGrid
    Left = 8
    Top = 184
    Width = 585
    Height = 177
    DataSource = DataExport
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'nit'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'razon_soc'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'num_fact'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'num_autoriz'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fecha_ven'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'importe'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ice'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'excento'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'neto'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'debito_fiscal'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estado_fact'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codigo_control'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'n_trans'
        Width = 50
        Visible = True
      end>
  end
  object Check1: TCheckBox
    Left = 296
    Top = 137
    Width = 113
    Height = 17
    Caption = 'Hallar NIT correcto'
    Enabled = False
    TabOrder = 7
  end
  object sBitBtn1: TsBitBtn
    Left = 295
    Top = 158
    Width = 112
    Height = 29
    Caption = '&Depurar'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = sBitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000000
      000557777777777777750BBBBBBBBBBBBBB07F5555FFFFFFF5570BBBB0000000
      BBB07F5557777777FF570BBB077BBB770BB07F557755555775570BBBBBBBBBBB
      BBB07F5555FFFFFFF5570BBBB0000000BBB07F5557777777F5570BBBB0FFFFF0
      BBB07F5557FFFFF7F5570BBBB0000000BBB07F555777777755570BBBBBBBBBBB
      BBB07FFFFFFFFFFFFFF700000000000000007777777777777777500FFFFFFFFF
      F005577FF555FFFFF7755500FFF00000005555775FF7777777F5550F777FFFFF
      F055557F777FFF5557F5550000000FFF00555577777775FF77F5550777777000
      7055557FFFFFF777F7F555000000000000555577777777777755}
    NumGlyphs = 2
    SkinData.SkinSection = 'BUTTON'
  end
  object Formato1: TRadioButton
    Left = 296
    Top = 96
    Width = 113
    Height = 17
    Caption = 'Formato Facilito'
    Checked = True
    TabOrder = 9
    TabStop = True
  end
  object Formato2: TRadioButton
    Left = 296
    Top = 112
    Width = 113
    Height = 17
    Caption = 'Formato DaVincci'
    TabOrder = 10
  end
  object CheckVentas: TCheckBox
    Left = 32
    Top = 115
    Width = 97
    Height = 17
    Caption = 'Ventas'
    Checked = True
    State = cbChecked
    TabOrder = 11
    Visible = False
  end
  object CheckServicios: TCheckBox
    Left = 32
    Top = 131
    Width = 97
    Height = 17
    Caption = 'Servicios'
    TabOrder = 12
    Visible = False
  end
  object Edit1: TEdit
    Left = 152
    Top = 120
    Width = 121
    Height = 19
    TabOrder = 13
    Text = 'Edit1'
    Visible = False
  end
  object ADOExport: TADOQuery
    Connection = FormLogin.ConexionBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      '  c.nit_clie AS nit,'
      '  c.nom_clie AS razon_soc,'
      '  f.num_fact,'
      '  t.numorden_talon AS num_autoriz,'
      '  v.fecha_ven,'
      '  (v.total_ven - v.desc_ven) AS importe,'
      '  0 AS ice,'
      '  0 AS excento,'
      '  (v.total_ven - v.desc_ven) AS neto,'
      '  (v.total_ven - v.desc_ven) * 0.13 AS debito_fiscal,'
      '  if(f.tipo_fact = '#39'N'#39', '#39'A'#39', '#39'V'#39') AS estado_fact,'
      '  f.`codcontrol_fact` as codigo_control,'
      '  v.id_ven as n_trans'
      'FROM'
      '  cliente c,'
      '  factura f,'
      '  talonario t,'
      '  venta v'
      'WHERE'
      '  v.id_clie = c.id_clie AND '
      '  v.id_fact = f.id_fact AND '
      '  f.id_talon = t.id_talon'
      'ORDER BY'
      '  v.id_ven DESC')
    Left = 2
    Top = 32
  end
  object DataExport: TDataSource
    DataSet = ADOExport
    Top = 72
  end
  object ExcelApp: TExcelApplication
    AutoConnect = True
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 56
    Top = 40
  end
end