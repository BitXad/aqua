object FormRepfact3: TFormRepfact3
  Left = 459
  Top = 116
  Width = 882
  Height = 614
  Caption = 'Factura Media Carta'
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
    Left = 24
    Top = 8
    Width = 813
    Height = 528
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
      1397
      50
      2151.1
      100
      100
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
      Left = 38
      Top = 276
      Width = 737
      Height = 115
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
        304.270833333333
        1949.97916666667)
      BandType = rbPageFooter
      object QRExpr13: TQRExpr
        Left = 133
        Top = 40
        Width = 362
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          351.895833333333
          105.833333333333
          957.791666666667)
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
        Expression = 
          'if(ADODetalle.tipo_fact=1,'#39'C'#211'DIGO DE CONTROL:  '#39'+ADODetalle.codc' +
          'ontrol_fact,'#39' '#39')'
        FontSize = 7
      end
      object QRExpr18: TQRExpr
        Left = 133
        Top = 52
        Width = 392
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          351.895833333333
          137.583333333333
          1037.16666666667)
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
        Expression = 
          'if(ADODetalle.tipo_fact=1,'#39'FECHA LIMITE DE EMISI'#211'N: '#39'+ADODetalle' +
          '.fechaemision_fact,'#39' '#39')'
        FontSize = 7
      end
      object QRExpr27: TQRExpr
        Left = 224
        Top = 1
        Width = 472
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          592.666666666667
          2.64583333333333
          1248.83333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 
          'if(ADODetalle.tipo_fact=1,'#39'IMPORTE BASE PARA CREDITO FISCAL Bs  ' +
          '       '#39'+FORMATNUMERIC('#39'#,#0.00'#39',ADODetalle.montototal_fact - AD' +
          'ODetalle.exento_fact - ADODetalle.ice_fact),'#39#39')'
        FontSize = 9
      end
      object QRExpr17: TQRExpr
        Left = 133
        Top = 66
        Width = 123
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          351.895833333333
          174.625
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
      object QRShape9: TQRShape
        Left = 3
        Top = 18
        Width = 99
        Height = 33
        Frame.Color = clWhite
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          87.3125
          7.9375
          47.625
          261.9375)
        Pen.Style = psClear
        Shape = qrsRectangle
      end
      object Image1: TQRImage
        Left = 19
        Top = 3
        Width = 102
        Height = 104
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          275.166666666667
          50.2708333333333
          7.9375
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
        Left = 133
        Top = 90
        Width = 574
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          351.895833333333
          238.125
          1518.70833333333)
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
        WordWrap = False
        Expression = 
          'if(ADODetalle.tipo_fact=0,'#39' '#39','#39' "ESTA FACTURA CONTRIBUYE AL DESA' +
          'RROLLO DEL PAIS. EL USO ILICITO DE '#201'STA SER'#193' SANCIONADO DE ACUER' +
          'DO A LEY" '#39')'
        FontSize = 7
      end
      object QRExpr61: TQRExpr
        Left = 135
        Top = 18
        Width = 167
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          357.1875
          47.625
          441.854166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = #39'SON: '#39'+ADODetalle.literal_fact'
        FontSize = 9
      end
      object QRShape13: TQRShape
        Left = 19
        Top = 0
        Width = 701
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          50.2708333333333
          0
          1854.72916666667)
        Shape = qrsRectangle
      end
      object QRExpCajero: TQRExpr
        Left = 133
        Top = 78
        Width = 157
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          351.895833333333
          206.375
          415.395833333333)
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
        Expression = #39'CAJERO: '#39'+ADODetalle.nombre_usu'
        FontSize = 7
      end
      object QRExpr16: TQRExpr
        Left = 173
        Top = 101
        Width = 535
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          457.729166666667
          267.229166666667
          1415.52083333333)
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
        WordWrap = False
        Expression = 
          'if(ADODetalle.tipo_fact=0,'#39' '#39','#39'Ley No. 453:Los productos deben s' +
          'uministrarse en condiciones de inocuidad, calidad y seguridad.'#39')'
        FontSize = 7
      end
      object QRExpr11: TQRExpr
        Left = 293
        Top = 78
        Width = 116
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          775.229166666667
          206.375
          306.916666666667)
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
        Expression = 'if(ADODetalle.tipo_fact<>1,'#39'RECIBI CONFORME'#39','#39' '#39')'
        FontSize = 7
      end
      object QRExpr19: TQRExpr
        Left = 283
        Top = 68
        Width = 136
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          748.770833333333
          179.916666666667
          359.833333333333)
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
        Expression = 'if(ADODetalle.tipo_fact<>1,'#39'___________________________'#39','#39' '#39')'
        FontSize = 7
      end
      object QRExpr20: TQRExpr
        Left = 452
        Top = 68
        Width = 136
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          1195.91666666667
          179.916666666667
          359.833333333333)
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
        Expression = 'if(ADODetalle.tipo_fact<>1,'#39'___________________________'#39','#39' '#39')'
        FontSize = 7
      end
      object QRExpr21: TQRExpr
        Left = 462
        Top = 78
        Width = 116
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          1222.375
          206.375
          306.916666666667)
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
        Expression = 'if(ADODetalle.tipo_fact<>1,'#39'ENTREGUE CONFORME'#39','#39' '#39')'
        FontSize = 7
      end
      object QRExpr22: TQRExpr
        Left = 224
        Top = 18
        Width = 472
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          592.666666666667
          47.625
          1248.83333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 
          #39'TOTAL A PAGAR Bs         '#39'+FORMATNUMERIC('#39'#,#0.00'#39',ADODetalle.m' +
          'ontototal_fact)'
        FontSize = 9
      end
      object QRShape10: TQRShape
        Left = 134
        Top = 35
        Width = 586
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          354.541666666667
          92.6041666666667
          1550.45833333333)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
    end
    object TitleBand1: TQRBand
      Left = 38
      Top = 19
      Width = 737
      Height = 242
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
        640.291666666667
        1949.97916666667)
      BandType = rbTitle
      object QRExpr43: TQRExpr
        Left = 33
        Top = 174
        Width = 88
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          87.3125
          460.375
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
        Left = 89
        Top = 173
        Width = 391
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          235.479166666667
          457.729166666667
          1034.52083333333)
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
      object QRExpr42: TQRExpr
        Left = 33
        Top = 188
        Width = 88
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          87.3125
          497.416666666667
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
        Left = 33
        Top = 149
        Width = 88
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          87.3125
          394.229166666667
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
      object QRExpr41: TQRExpr
        Left = 488
        Top = 69
        Width = 228
        Height = 46
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          121.708333333333
          1291.16666666667
          182.5625
          603.25)
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
        Expression = 'ADOEmpresa.actividad_emp'
        FontSize = 8
      end
      object QRShape1: TQRShape
        Left = 492
        Top = 24
        Width = 227
        Height = 43
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          113.770833333333
          1301.75
          63.5
          600.604166666667)
        Shape = qrsRectangle
      end
      object QRExpr40: TQRExpr
        Left = 588
        Top = 39
        Width = 127
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.75
          1555.75
          103.1875
          336.020833333333)
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
        Expression = #39'000'#39'+ADODetalle.num_fact'
        FontSize = 7
      end
      object QRExpr5: TQRExpr
        Left = 508
        Top = 39
        Width = 89
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.75
          1344.08333333333
          103.1875
          235.479166666667)
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
        Expression = 'if(ADODetalle.tipo_fact=1,'#39'FACTURA No: '#39','#39'REC. N'#186': '#39')'
        FontSize = 7
      end
      object QRExpr3: TQRExpr
        Left = 508
        Top = 28
        Width = 89
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.75
          1344.08333333333
          74.0833333333333
          235.479166666667)
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
        Expression = 'if(ADODetalle.tipo_fact=1,'#39'NIT: '#39','#39' '#39')'
        FontSize = 7
      end
      object QRTipo: TQRExpr
        Left = 285
        Top = 60
        Width = 198
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          754.0625
          158.75
          523.875)
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
      object QRExpr4: TQRExpr
        Left = 508
        Top = 51
        Width = 89
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.75
          1344.08333333333
          134.9375
          235.479166666667)
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
        Expression = 'if(ADODetalle.tipo_fact=1,'#39'AUTORIZACION: '#39','#39' '#39')'
        FontSize = 7
      end
      object QRExpr7: TQRExpr
        Left = 113
        Top = 150
        Width = 367
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          298.979166666667
          396.875
          971.020833333333)
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
        Left = 68
        Top = 187
        Width = 412
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          179.916666666667
          494.770833333333
          1090.08333333333)
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
        Expression = 'ADODetalle.nit_fact'
        FontSize = 7
      end
      object QRExpr39: TQRExpr
        Left = 588
        Top = 51
        Width = 127
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.75
          1555.75
          134.9375
          336.020833333333)
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
        Expression = 'if(ADODetalle.tipo_fact=1,ADODetalle.orden_fact,'#39' '#39')'
        FontSize = 7
      end
      object QRExpr37: TQRExpr
        Left = 0
        Top = 119
        Width = 286
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
          756.708333333333)
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
        Width = 286
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
          756.708333333333)
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
        Width = 286
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
          756.708333333333)
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
        Width = 286
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
          756.708333333333)
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
      object QRExpr35: TQRExpr
        Left = 0
        Top = 84
        Width = 286
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
          756.708333333333)
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
      object QRShape7: TQRShape
        Left = 20
        Top = 135
        Width = 698
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          52.9166666666667
          357.1875
          1846.79166666667)
        Shape = qrsHorLine
      end
      object QRShape3: TQRShape
        Left = 19
        Top = 216
        Width = 701
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          50.2708333333333
          571.5
          1854.72916666667)
        Shape = qrsRectangle
      end
      object QRLabel2: TQRLabel
        Left = 28
        Top = 220
        Width = 28
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.75
          74.0833333333333
          582.083333333333
          74.0833333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CANT.'
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
      object QRLabel3: TQRLabel
        Left = 273
        Top = 220
        Width = 67
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.75
          722.3125
          582.083333333333
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
        Left = 557
        Top = 220
        Width = 35
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.75
          1473.72916666667
          582.083333333333
          92.6041666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'P.UNIT.'
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
      object QRLabel5: TQRLabel
        Left = 646
        Top = 220
        Width = 49
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.75
          1709.20833333333
          582.083333333333
          129.645833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SUBTOTAL'
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
      object QRShape4: TQRShape
        Left = 63
        Top = 217
        Width = 7
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.0833333333333
          166.6875
          574.145833333333
          18.5208333333333)
        Shape = qrsVertLine
      end
      object QRShape5: TQRShape
        Left = 530
        Top = 217
        Width = 7
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.0833333333333
          1402.29166666667
          574.145833333333
          18.5208333333333)
        Shape = qrsVertLine
      end
      object QRShape6: TQRShape
        Left = 607
        Top = 217
        Width = 7
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.0833333333333
          1606.02083333333
          574.145833333333
          18.5208333333333)
        Shape = qrsVertLine
      end
      object QRExpr12: TQRExpr
        Left = 289
        Top = 35
        Width = 200
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          764.645833333333
          92.6041666666667
          529.166666666667)
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
        Left = 19
        Top = 241
        Width = 701
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          50.2708333333333
          637.645833333333
          1854.72916666667)
        Shape = qrsRectangle
      end
      object QRExpr2: TQRExpr
        Left = 0
        Top = 70
        Width = 286
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
          756.708333333333)
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
        Left = 74
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
          195.791666666667
          0
          362.479166666667)
        DataField = 'logo_emp'
        DataSet = ADOEmpresa
        Stretch = True
      end
      object QRExpr38: TQRExpr
        Left = 588
        Top = 28
        Width = 127
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          1555.75
          74.0833333333333
          336.020833333333)
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
        Expression = 'if(ADODetalle.tipo_fact=1,ADODetalle.nitemisor_fact,'#39' '#39')'
        FontSize = 7
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 261
      Width = 737
      Height = 15
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
        39.6875
        1949.97916666667)
      BandType = rbDetail
      object QRExpr10: TQRExpr
        Left = -18
        Top = 0
        Width = 65
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          -47.625
          0
          171.979166666667)
        Alignment = taRightJustify
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
        Expression = 'ADODetalle.cant_detfact'
        FontSize = 8
      end
      object QRShape15: TQRShape
        Left = 63
        Top = 0
        Width = 7
        Height = 131
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          346.604166666667
          166.6875
          0
          18.5208333333333)
        Shape = qrsVertLine
      end
      object QRShape16: TQRShape
        Left = 530
        Top = 0
        Width = 7
        Height = 131
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          346.604166666667
          1402.29166666667
          0
          18.5208333333333)
        Shape = qrsVertLine
      end
      object QRShape17: TQRShape
        Left = 607
        Top = 0
        Width = 7
        Height = 131
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          346.604166666667
          1606.02083333333
          0
          18.5208333333333)
        Shape = qrsVertLine
      end
      object QRExpr98: TQRExpr
        Left = 534
        Top = 0
        Width = 65
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1412.875
          0
          171.979166666667)
        Alignment = taRightJustify
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
        Expression = 'formatnumeric('#39'#,#0.00'#39',ADODetalle.punit_detfact)'
        FontSize = 8
      end
      object QRExpr107: TQRExpr
        Left = 618
        Top = 0
        Width = 78
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1635.125
          0
          206.375)
        Alignment = taRightJustify
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
        Expression = 'formatnumeric('#39'#,#0.00'#39',ADODetalle.total_detfact)'
        FontSize = 8
      end
      object QRExpr97: TQRExpr
        Left = 75
        Top = 0
        Width = 454
        Height = 146
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          386.291666666667
          198.4375
          0
          1201.20833333333)
        Alignment = taLeftJustify
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
        Expression = 'ADODetalle.descip_detfact'
        FontSize = 8
      end
      object QRShape11: TQRShape
        Left = 16
        Top = 0
        Width = 7
        Height = 130
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          343.958333333333
          42.3333333333333
          0
          18.5208333333333)
        Shape = qrsVertLine
      end
      object QRShape12: TQRShape
        Left = 716
        Top = 0
        Width = 7
        Height = 131
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          346.604166666667
          1894.41666666667
          0
          18.5208333333333)
        Shape = qrsVertLine
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
    Left = 277
    Top = 16
  end
  object ADODetalle: TADOQuery
    Active = True
    Connection = FormLogin.ConexionBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from factura f, detalle_factura d, usuario u '
      
        'where  f.id_fact = d.id_fact and f.id_ing = 10 and f.id_usu = u.' +
        'id_usu '
      'order by d.id_detfact')
    Left = 765
    Top = 184
  end
  object DataSource1: TDataSource
    DataSet = ADODetalle
    Left = 805
    Top = 160
  end
end
