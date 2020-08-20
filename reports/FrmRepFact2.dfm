object FormRepfact2: TFormRepfact2
  Left = 558
  Top = 80
  Width = 882
  Height = 780
  VertScrollBar.Position = 115
  Caption = 'Factura Boucher'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 8
    Top = -99
    Width = 313
    Height = 841
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = ADODetalle
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      50
      2225.1
      50
      828.1
      50
      50
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = First
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand1: TQRBand
      Left = 19
      Top = 488
      Width = 275
      Height = 241
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        637.645833333333
        727.604166666667)
      BandType = rbPageFooter
      object QRExpr13: TQRExpr
        Left = 1
        Top = 54
        Width = 254
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          2.64583333333333
          142.875
          672.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 
          'if(ADODetalle.tipo_fact=1,'#39'C'#211'DIGO DE CONTROL:  '#39'+ADODetalle.codc' +
          'ontrol_fact,'#39' '#39')'
        FontSize = 7
      end
      object QRExpr18: TQRExpr
        Left = 1
        Top = 66
        Width = 254
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          2.64583333333333
          174.625
          672.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 
          'if(ADODetalle.tipo_fact=1,'#39'FECHA LIMITE DE EMISI'#211'N: '#39'+ADODetalle' +
          '.fechaemision_fact,'#39' '#39')'
        FontSize = 7
      end
      object QRExpr27: TQRExpr
        Left = 0
        Top = 20
        Width = 250
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          0
          52.9166666666667
          661.458333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 
          #39'TOTAL A PAGAR Bs         '#39'+FORMATNUMERIC('#39'#,#0.00'#39',ADODetalle.m' +
          'ontototal_fact)'
        FontSize = 11
      end
      object QRExpr17: TQRExpr
        Left = 1
        Top = 80
        Width = 123
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          2.64583333333333
          211.666666666667
          325.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = #39'TRANS: '#39'+ADODetalle.id_lec'
        FontSize = 7
      end
      object Image1: TQRImage
        Left = 67
        Top = 95
        Width = 102
        Height = 104
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          275.166666666667
          177.270833333333
          251.354166666667
          269.875)
        Picture.Data = {
          0A544A504547496D6167655E0C0000FFD8FFE000104A46494600010101006000
          600000FFE1005A4578696600004D4D002A000000080005030100050000000100
          00004A0303000100000001000000005110000100000001010000005111000400
          00000100000EC4511200040000000100000EC400000000000186A00000B18FFF
          DB00430002010102010102020202020202020305030303030306040403050706
          07070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E
          0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0CFFC00011080128012803012200021101031101FFC4001F
          0000010501010101010100000000000000000102030405060708090A0BFFC400
          B5100002010303020403050504040000017D0102030004110512213141061351
          6107227114328191A1082342B1C11552D1F02433627282090A161718191A2526
          2728292A3435363738393A434445464748494A535455565758595A6364656667
          68696A737475767778797A838485868788898A92939495969798999AA2A3A4A5
          A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DA
          E1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101
          010101010000000000000102030405060708090A0BFFC400B511000201020404
          0304070504040001027700010203110405213106124151076171132232810814
          4291A1B1C109233352F0156272D10A162434E125F11718191A262728292A3536
          3738393A434445464748494A535455565758595A636465666768696A73747576
          7778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2
          B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7
          E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFCA28A2800
          A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
          A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
          A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
          A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
          A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803F803A28A
          FEFF002803F803A2BFBFCA2803F803A2BFBFCA2803F803AFEFF2BF803AFEFF00
          2803F803A28A2800AFEFF2BF803AFEFF002800AFE00EBFBFCAFE00E800A2BFBF
          CA2800AFE00E8A2800A2BFBFCA2803F803AFEFF2BF803AFEFF002803F803A28A
          FEFF002803F803A2BFBFCA2803F803A2BFBFCA2803F803AFEFF2BF803AFEFF00
          2800A28A2800A28A2800A28A2800A28A2803F803AFEFF2BF803AFEFF002803F8
          03A28A2800AFEFF2BF803AFEFF002803F803AFEFF2BF803AFEFF002800AFE00E
          8A2803FBFCA2BF803A2800AFEFF2BF803AFEFF002800A2BF803A2800AFEFF28A
          FE00E800A2BFBFCAFE00E800AFEFF28A2803F803AFEFF2BF803AFEFF002803F8
          03A28A2800AFEFF2BF803AFEFF002803F803AFEFF2BF803AFEFF002800A28A28
          00A28A2800A28A2800A28A2803F803AFEFF2BF803AFEFF002803F803A2BFBFCA
          2803F803AFEFF28A2803F803AFEFF2BF803AFEFF002800AFE00EBFBFCAFE00E8
          00AFEFF28A2803F803AFEFF2BF803A2800AFEFF28AFE00E800A28A2800A28A28
          03FBFCA2BF803AFEFF002803F803AFEFF2BF803AFEFF002803F803A2BFBFCA28
          03F803AFEFF28A2803F803AFEFF2BF803AFEFF002800A28A2800A28A2800A28A
          2800A28A2803F803A2BFBFCA2803F803A2BFBFCA2803F803A2BFBFCA2803F803
          AFEFF28A2803F803AFEFF2BF803AFEFF002803F803AFEFF2BF803A2800AFEFF2
          BF803AFEFF002803F803AFEFF28AFE00E800AFEFF2BF803A2800AFEFF28AFE00
          E800AFEFF28A2803F803A2BFBFCA2803F803A2BFBFCA2803F803A2BFBFCA2803
          F803AFEFF28A2800A28A2800A28A2800A28A2800A28A2803F803AFEFF2BF803A
          FEFF002803F803A2BFBFCA2800AFE00E8AFEFF002803F803A2BFBFCA2800AFE0
          0EBFBFCA2800AFE00EBFBFCA2803F803A2BFBFCAFE00E803FBFCAFE00E8A2803
          FBFCAFE00EBFBFCAFE00E800AFEFF2BF803A2803FBFCA2BF803A2800AFEFF2BF
          803A2803FBFCAFE00E8AFEFF002800AFE00EBFBFCA2803F803AFEFF2BF803AFE
          FF002800A28A2800A28A2800A28A2800A28A2803F803A28AFEFF002803F803AF
          EFF28A2803F803A28AFEFF002803F803A2BFBFCA2800AFE00EBFBFCA2803F803
          A2BFBFCAFE00E800A2BFBFCA2800A28A2803F803A28AFEFF002800A2BF803AFE
          FF002803F803AFEFF28AFE00E803FBFCAFE00E8AFEFF002800A28AFE00E800A2
          BFBFCA2800A2BF803AFEFF002800A28A2800A28A2800A28A2800A28A2803F803
          AFEFF28A2803F803AFEFF2BF803A2803FBFCAFE00EBFBFCA2803F803A2BFBFCA
          FE00E800A28AFEFF002800A2BF803A2800AFEFF28A2803F803A28AFEFF002800
          AFE00E8A2803FBFCA28AFE00E803FBFCA28AFE00E803FBFCAFE00E8AFEFF0028
          00AFE00EBFBFCA2803F803AFEFF28AFE00E803FBFCA2BF803AFEFF002800A28A
          2800A28A2800A28A2800A28A2803F803AFEFF2BF803A2800AFEFF2BF803A2800
          A28AFEFF002803F803AFEFF28A2800AFE00EBFBFCAFE00E800AFEFF28AFE00E8
          00A28AFEFF002800AFE00E8AFEFF002803F803AFEFF2BF803AFEFF002800AFE0
          0EBFBFCA2800A2BF803AFEFF002803F803AFEFF2BF803A2800A2BFBFCA2803F8
          03A2BFBFCAFE00E800AFEFF28A2800A28A2800A28A2800A28A2800A28A2803F8
          03A28AFEFF002800A2BF803AFEFF002800A2BF803A2800AFEFF28A2803F803AF
          EFF28A2800A28A2800A28A2803F803A28AFEFF002803F803AFEFF2BF803A2803
          FBFCA28A2803F803A28A2803FBFCAFE00EBFBFCA2803F803AFEFF28A2800AFE0
          0E8A2803FBFCA28A2800A28A2800A28A2800A28A2800A28A2800AFE00E8A2803
          FBFCAFE00E8A2800AFEFF2BF803A2800AFEFF28AFE00E803FBFCAFE00EBFBFCA
          2800AFE00E8A2803FBFCAFE00E8A2800A28AFEFF002803F803A2BFBFCAFE00E8
          03FBFCA28AFE00E803FBFCAFE00E8A2803FBFCAFE00E8AFEFF002800AFE00EBF
          BFCA2803F803AFEFF2BF803AFEFF002800A28A2800A28A2800A28A2800A28A28
          00A28A2803F803AFEFF28A2803F803A2BFBFCA2800AFE00EBFBFCA2803F803AF
          EFF28A2803F803A28A2803FBFCA28AFE00E803FBFCAFE00EBFBFCA2803F803AF
          EFF28AFE00E800A28AFEFF002803F803A28A2800A28AFEFF002803F803A2BFBF
          CA2803F803A28A2800AFEFF2BF803A2803FBFCA2BF803AFEFF002800A28A2800
          A28A2800A28A2800A28A2803F803A28AFEFF002803F803A2BFBFCA2803F803A2
          BFBFCA2803F803AFEFF2BF803AFEFF002803F803AFEFF2BF803AFEFF002800A2
          8A2800A28AFE00E800A28A2803FBFCA28A2800AFE00E8AFEFF002803F803AFEF
          F2BF803AFEFF002803F803AFEFF28A2803F803A28AFEFF002800AFE00EBFBFCA
          2800A28A2800A28A2800A28A2800A28A2800A28A2803F803AFEFF2BF803AFEFF
          002803F803A28A2800AFEFF2BF803AFEFF002803F803AFEFF2BF803AFEFF0028
          00A2BF803AFEFF002803F803AFEFF2BF803A2803FBFCA28AFE00E803FBFCA28A
          2800AFE00EBFBFCA2800A28AFE00E800A2BFBFCAFE00E800A2BFBFCA2803F803
          A28A2800AFEFF2BF803A2800AFEFF28A2800A28A2800A28A2800A28A2800A28A
          2803F803AFEFF2BF803AFEFF002803F803A2BFBFCA2803F803AFEFF28A2803F8
          03AFEFF2BF803AFEFF002803F803AFEFF28A2800A2BF803AFEFF002800AFE00E
          BFBFCAFE00E803FBFCA28AFE00E803FBFCAFE00E8AFEFF002803F803AFEFF28A
          2803F803A28AFEFF002800AFE00EBFBFCAFE00E803FBFCA28AFE00E800AFEFF2
          8AFE00E800AFEFF28A2800A28A2800A28A2800A28A2800A28A2803F803A2BFBF
          CA2803F803A2BFBFCA2803F803A2BFBFCA2803F803AFEFF28A2803F803A2BFBF
          CA2800AFE00EBFBFCA2800AFE00EBFBFCA2800AFE00EBFBFCA2800A28A2803F8
          03A2BFBFCA2803F803A2BFBFCA2803F803AFEFF28A2800AFE00EBFBFCA2800AF
          E00EBFBFCA2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
          8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
          8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
          8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
          8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
          8A2800A28A2800A28A2803FFD9}
        Stretch = True
      end
      object QRExpr44: TQRExpr
        Left = 1
        Top = 189
        Width = 254
        Height = 48
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          127
          2.64583333333333
          500.0625
          672.041666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 
          'if(ADODetalle.tipo_fact=0,'#39'CUIDAR EL AGUA, ES CUIDAR LA VIDA...!' +
          #39','#39'"ESTA FACTURA CONTRIBUYE AL DESARROLLO DEL PAIS. EL USO ILICI' +
          'TO DE '#201'STA SER'#193' SANCIONADO DE ACUERDO A LEY"'#39')'
        FontSize = 7
      end
      object QRExpr61: TQRExpr
        Left = 0
        Top = 37
        Width = 250
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          0
          97.8958333333333
          661.458333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = #39'SON: '#39'+ADODetalle.literal_fact'
        FontSize = 7
      end
      object QRExpr11: TQRExpr
        Left = 1
        Top = 92
        Width = 73
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          2.64583333333333
          243.416666666667
          193.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = #39'CAJERO: Caja1'#39
        FontSize = 7
      end
      object QRShape9: TQRShape
        Left = 1
        Top = 0
        Width = 253
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          2.64583333333333
          0
          669.395833333333)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRExpr4: TQRExpr
        Left = 144
        Top = 92
        Width = 63
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          381
          243.416666666667
          166.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'DATE+'#39' '#39'+TIME'
        FontSize = 7
      end
      object QRShape10: TQRShape
        Left = 1
        Top = 49
        Width = 254
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.5833333333333
          2.64583333333333
          129.645833333333
          672.041666666667)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRExpr5: TQRExpr
        Left = 0
        Top = 7
        Width = 250
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          0
          18.5208333333333
          661.458333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 
          #39'IMPORTE BASE PARA CREDITO FISCAL Bs         '#39'+FORMATNUMERIC('#39'#,' +
          '#0.00'#39',ADODetalle.montototal_fact - ADODetalle.exento_fact - ADO' +
          'Detalle.ice_fact)'
        FontSize = 7
      end
    end
    object TitleBand1: TQRBand
      Left = 19
      Top = 19
      Width = 275
      Height = 452
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        1195.91666666667
        727.604166666667)
      BandType = rbTitle
      object QRShape3: TQRShape
        Left = 1
        Top = 426
        Width = 254
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          2.64583333333333
          1127.125
          672.041666666667)
        Shape = qrsRectangle
      end
      object QRShape5: TQRShape
        Left = 185
        Top = 427
        Width = 7
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.0833333333333
          489.479166666667
          1129.77083333333
          18.5208333333333)
        Shape = qrsVertLine
      end
      object QRExpr41: TQRExpr
        Left = 1
        Top = 218
        Width = 256
        Height = 46
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          121.708333333333
          2.64583333333333
          576.791666666667
          677.333333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ADOEmpresa.actividad_emp'
        FontSize = 8
      end
      object QRShape2: TQRShape
        Left = 1
        Top = 363
        Width = 254
        Height = 60
        Frame.Color = clMenu
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.75
          2.64583333333333
          960.4375
          672.041666666667)
        Shape = qrsRectangle
      end
      object QRExpr43: TQRExpr
        Left = 1
        Top = 303
        Width = 88
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          2.64583333333333
          801.6875
          232.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = #39'SE'#209'OR(ES): '#39
        FontSize = 7
      end
      object QRExpr8: TQRExpr
        Left = 57
        Top = 302
        Width = 198
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          150.8125
          799.041666666667
          523.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ADODetalle.razon_fact'
        FontSize = 7
      end
      object QRExpr45: TQRExpr
        Left = 1
        Top = 289
        Width = 88
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          2.64583333333333
          764.645833333333
          232.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = #39'C'#211'DIGO: '#39
        FontSize = 7
      end
      object QRExpr42: TQRExpr
        Left = 1
        Top = 317
        Width = 88
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          2.64583333333333
          838.729166666667
          232.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'if(ADODetalle.tipo_fact=1,'#39'NIT/CI: '#39','#39'C.I.: '#39')'
        FontSize = 7
      end
      object QRExpr34: TQRExpr
        Left = 1
        Top = 266
        Width = 88
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          2.64583333333333
          703.791666666667
          232.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = #39'LUGAR Y FECHA: '#39
        FontSize = 7
      end
      object QRExpr40: TQRExpr
        Left = 1
        Top = 208
        Width = 254
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.75
          2.64583333333333
          550.333333333333
          672.041666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = #39'N'#186' DOC.: 00'#39'+ADODetalle.num_fact'
        FontSize = 7
      end
      object QRTipo: TQRExpr
        Left = 1
        Top = 167
        Width = 254
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          2.64583333333333
          441.854166666667
          672.041666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'if(ADODetalle.tipo_fact=1,'#39'ORIGINAL'#39','#39' '#39')'
        FontSize = 7
      end
      object QRExpr7: TQRExpr
        Left = 81
        Top = 267
        Width = 174
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          214.3125
          706.4375
          460.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ADOEmpresa.ubicacion_emp+'#39', '#39'+ADODetalle.fecha_fact'
        FontSize = 7
      end
      object QRExpr9: TQRExpr
        Left = 36
        Top = 316
        Width = 219
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          95.25
          836.083333333333
          579.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ADODetalle.nit_asoc'
        FontSize = 7
      end
      object QRExpr39: TQRExpr
        Left = 1
        Top = 197
        Width = 254
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.75
          2.64583333333333
          521.229166666667
          672.041666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 
          'if(ADODetalle.tipo_fact=1,'#39'AUTORIZACION: '#39'+ADODetalle.orden_fact' +
          ','#39' '#39')'
        FontSize = 7
      end
      object QRExpr37: TQRExpr
        Left = 0
        Top = 119
        Width = 256
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          0
          314.854166666667
          677.333333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ADOEmpresa.ubicacion_emp'
        FontSize = 7
      end
      object QRExpr6: TQRExpr
        Left = 0
        Top = 57
        Width = 256
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          0
          150.8125
          677.333333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ADOEmpresa.nombre_emp'
        FontSize = 8
      end
      object QRExpr1: TQRExpr
        Left = 0
        Top = 97
        Width = 256
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          0
          256.645833333333
          677.333333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ADOEmpresa.direccion_emp'
        FontSize = 7
      end
      object QRExpr36: TQRExpr
        Left = 0
        Top = 108
        Width = 256
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          0
          285.75
          677.333333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ADOEmpresa.telefono_emp'
        FontSize = 7
      end
      object QRExpr14: TQRExpr
        Left = 1
        Top = 329
        Width = 88
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          2.64583333333333
          870.479166666667
          232.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = #39'DIRECCI'#211'N: '#39
        FontSize = 7
      end
      object QRExpr15: TQRExpr
        Left = 63
        Top = 328
        Width = 192
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          166.6875
          867.833333333333
          508)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ADODetalle.direccion_asoc'
        FontSize = 7
      end
      object QRExpr23: TQRExpr
        Left = 47
        Top = 288
        Width = 208
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          124.354166666667
          762
          550.333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ADODetalle.codigo_asoc'
        FontSize = 7
      end
      object QRExpr35: TQRExpr
        Left = 0
        Top = 84
        Width = 256
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          0
          222.25
          677.333333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ADOEmpresa.sucursal_emp'
        FontSize = 8
      end
      object QRExpr46: TQRExpr
        Left = 6
        Top = 366
        Width = 217
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          15.875
          968.375
          574.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = #39'LECT. ACTUAL ['#39'+ADODetalle.fecha_lec+'#39']: '#39
        FontSize = 7
      end
      object QRExpr47: TQRExpr
        Left = 134
        Top = 366
        Width = 95
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          354.541666666667
          968.375
          251.354166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ADODetalle.actual_lec'
        FontSize = 7
      end
      object QRExpr49: TQRExpr
        Left = 150
        Top = 380
        Width = 95
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          396.875
          1005.41666666667
          251.354166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ADODetalle.anterior_lec'
        FontSize = 7
      end
      object QRExpr48: TQRExpr
        Left = 6
        Top = 380
        Width = 230
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          15.875
          1005.41666666667
          608.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = #39'LECT. ANTERIOR ['#39'+ADODetalle.fecha_lec+'#39']: '#39
        FontSize = 7
      end
      object QRExpr50: TQRExpr
        Left = 6
        Top = 394
        Width = 118
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          15.875
          1042.45833333333
          312.208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = #39'CONSUMO M3: '#39
        FontSize = 7
      end
      object QRExpr51: TQRExpr
        Left = 80
        Top = 394
        Width = 95
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          211.666666666667
          1042.45833333333
          251.354166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ADODetalle.consumo_lec'
        FontSize = 7
      end
      object QRExpr53: TQRExpr
        Left = 63
        Top = 278
        Width = 192
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          166.6875
          735.541666666667
          508)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ADODetalle.categoria_asoc'
        FontSize = 7
      end
      object QRExpr52: TQRExpr
        Left = 1
        Top = 278
        Width = 61
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          2.64583333333333
          735.541666666667
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = #39'CATEGORIA: '#39
        FontSize = 7
      end
      object QRExpr54: TQRExpr
        Left = 1
        Top = 346
        Width = 100
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          2.64583333333333
          915.458333333333
          264.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = #39'MES DE COBRANZA: '#39
        FontSize = 7
      end
      object QRExpr55: TQRExpr
        Left = 101
        Top = 346
        Width = 156
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          267.229166666667
          915.458333333333
          412.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ADODetalle.mes_lec+'#39'/'#39'+ADODetalle.gestion_lec'
        FontSize = 7
      end
      object QRExpr56: TQRExpr
        Left = 6
        Top = 407
        Width = 122
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          15.875
          1076.85416666667
          322.791666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = #39'VENCIMIENTO:'#39
        FontSize = 7
      end
      object QRExpr57: TQRExpr
        Left = 80
        Top = 407
        Width = 121
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          211.666666666667
          1076.85416666667
          320.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ADODetalle.fechavenc_fact'
        FontSize = 7
      end
      object QRLabel2: TQRLabel
        Left = 2
        Top = 430
        Width = 20
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          5.29166666666667
          1137.70833333333
          52.9166666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CANT'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 6
      end
      object QRLabel3: TQRLabel
        Left = 63
        Top = 430
        Width = 67
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          166.6875
          1137.70833333333
          177.270833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DESCRIPCI'#211'N'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel4: TQRLabel
        Left = 191
        Top = 430
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          505.354166666667
          1137.70833333333
          71.4375)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'P.UNIT.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel5: TQRLabel
        Left = 221
        Top = 430
        Width = 32
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          584.729166666667
          1137.70833333333
          84.6666666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SUBTOT'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRShape4: TQRShape
        Left = 18
        Top = 427
        Width = 7
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.0833333333333
          47.625
          1129.77083333333
          18.5208333333333)
        Shape = qrsVertLine
      end
      object QRShape6: TQRShape
        Left = 215
        Top = 427
        Width = 7
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.0833333333333
          568.854166666667
          1129.77083333333
          18.5208333333333)
        Shape = qrsVertLine
      end
      object QRExpr12: TQRExpr
        Left = 1
        Top = 144
        Width = 254
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          2.64583333333333
          381
          672.041666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'if(ADODetalle.tipo_fact=1,'#39'FACTURA'#39','#39'RECIBO'#39')'
        FontSize = 16
      end
      object QRShape8: TQRShape
        Left = 1
        Top = 451
        Width = 253
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          2.64583333333333
          1193.27083333333
          669.395833333333)
        Shape = qrsRectangle
      end
      object QRExpr2: TQRExpr
        Left = 0
        Top = 70
        Width = 256
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          0
          185.208333333333
          677.333333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ADOEmpresa.eslogan_emp'
        FontSize = 8
      end
      object QRDBImage1: TQRDBImage
        Left = 59
        Top = 0
        Width = 137
        Height = 58
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          153.458333333333
          156.104166666667
          0
          362.479166666667)
        DataField = 'logo_emp'
        DataSet = ADOEmpresa
        Stretch = True
      end
      object QRShape18: TQRShape
        Left = 1
        Top = 181
        Width = 254
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          2.64583333333333
          478.895833333333
          672.041666666667)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape19: TQRShape
        Left = 1
        Top = 340
        Width = 254
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          2.64583333333333
          899.583333333333
          672.041666666667)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRExpr10: TQRExpr
        Left = 0
        Top = 134
        Width = 256
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          0
          354.541666666667
          677.333333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ADOEmpresa.sis_emp'
        FontSize = 7
      end
      object QRExpr38: TQRExpr
        Left = 1
        Top = 185
        Width = 254
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          2.64583333333333
          489.479166666667
          672.041666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'if(ADODetalle.tipo_fact=1,'#39'NIT: '#39'+ADODetalle.nitemisor_fact,'#39' '#39')'
        FontSize = 7
      end
      object QRShape7: TQRShape
        Left = 1
        Top = 262
        Width = 254
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          2.64583333333333
          693.208333333333
          672.041666666667)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
    end
    object QRBand2: TQRBand
      Left = 19
      Top = 471
      Width = 275
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        44.9791666666667
        727.604166666667)
      BandType = rbDetail
      object QRExpr98: TQRExpr
        Left = 189
        Top = 0
        Width = 29
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          500.0625
          0
          76.7291666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'formatnumeric('#39'#,#0.00'#39',ADODetalle.punit_detfact)'
        FontSize = 8
      end
      object QRExpr107: TQRExpr
        Left = 217
        Top = 0
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          574.145833333333
          0
          87.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'formatnumeric('#39'#,#0.00'#39',ADODetalle.total_detfact)'
        FontSize = 8
      end
      object QRExpr97: TQRExpr
        Left = 23
        Top = 0
        Width = 166
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          60.8541666666667
          0
          439.208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ADODetalle.descip_detfact'
        FontSize = 7
      end
      object QRExpr3: TQRExpr
        Left = 4
        Top = 0
        Width = 14
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          10.5833333333333
          0
          37.0416666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ADODetalle.cant_detfact'
        FontSize = 7
      end
      object QRShape15: TQRShape
        Left = 18
        Top = 0
        Width = 7
        Height = 150
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          396.875
          47.625
          0
          18.5208333333333)
        Shape = qrsVertLine
      end
      object QRShape16: TQRShape
        Left = 185
        Top = 0
        Width = 7
        Height = 150
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          396.875
          489.479166666667
          0
          18.5208333333333)
        Shape = qrsVertLine
      end
      object QRShape17: TQRShape
        Left = 215
        Top = 0
        Width = 7
        Height = 150
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          396.875
          568.854166666667
          0
          18.5208333333333)
        Shape = qrsVertLine
      end
      object QRShape11: TQRShape
        Left = -2
        Top = 0
        Width = 7
        Height = 150
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          396.875
          -5.29166666666667
          0
          18.5208333333333)
        Shape = qrsVertLine
      end
      object QRShape12: TQRShape
        Left = 250
        Top = 0
        Width = 7
        Height = 150
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          396.875
          661.458333333333
          0
          18.5208333333333)
        Shape = qrsVertLine
      end
      object QRShape14: TQRShape
        Left = 1
        Top = 16
        Width = 253
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          2.64583333333333
          42.3333333333333
          669.395833333333)
        Shape = qrsRectangle
      end
    end
  end
  object ADOEmpresa: TADOQuery
    Active = True
    Connection = FormLogin.ConexionBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from empresa')
    Left = 253
    Top = 24
  end
  object ADODetalle: TADOQuery
    Connection = FormLogin.ConexionBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from asociado a, lectura l, factura f, detalle_factura ' +
        'd'
      
        'where a.id_asoc=l.id_asoc and l.id_lec=f.id_lec and f.id_fact=d.' +
        'id_fact and l.id_lec=4138'
      'order by d.id_detfact ')
    Left = 357
    Top = 168
  end
  object DataSource1: TDataSource
    DataSet = ADODetalle
    Left = 397
    Top = 168
  end
end
