object FormRepCertificado: TFormRepCertificado
  Left = 353
  Top = 87
  Width = 939
  Height = 780
  Caption = 'Certificado de aportaci'#243'n'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 14
  object QuickRep1: TQuickRep
    Left = 24
    Top = 8
    Width = 816
    Height = 694
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = ADOReporte
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
      100
      1836.20833333333
      100
      2159
      50
      50
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = Native
    Zoom = 100
    object QRBand1: TQRBand
      Left = 19
      Top = 38
      Width = 778
      Height = 619
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1637.77083333333
        2058.45833333333)
      BandType = rbTitle
      object QRLabel9: TQRLabel
        Left = 2
        Top = 283
        Width = 953
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          5.29166666666667
          748.770833333333
          2521.47916666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'A favor del (la) Asociado(a):...................................' +
          '................................................................' +
          '................................................................' +
          '............................. con'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object DBLogo: TQRDBImage
        Left = 2
        Top = 6
        Width = 98
        Height = 109
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          288.395833333333
          5.29166666666667
          15.875
          259.291666666667)
        DataField = 'logo_emp'
        DataSet = FormEmpresa.ADOPrime
        Stretch = True
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 125
        Width = 779
        Height = 8
        Frame.Color = clRed
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          21.1666666666667
          0
          330.729166666667
          2061.10416666667)
        Brush.Color = clRed
        Pen.Color = clRed
        Shape = qrsRectangle
      end
      object QRLabel15: TQRLabel
        Left = 105
        Top = 45
        Width = 567
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          277.8125
          119.0625
          1500.1875)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Personalidad Juridica N'#186' 5018/90 - Registro Nal. N'#186' 3809'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 133
        Width = 779
        Height = 8
        Frame.Color = clYellow
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          21.1666666666667
          0
          351.895833333333
          2061.10416666667)
        Brush.Color = clYellow
        Pen.Color = clYellow
        Shape = qrsRectangle
      end
      object QRShape5: TQRShape
        Left = 0
        Top = 141
        Width = 779
        Height = 8
        Frame.Color = clGreen
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          21.1666666666667
          0
          373.0625
          2061.10416666667)
        Brush.Color = clGreen
        Pen.Color = clGreen
        Shape = qrsRectangle
      end
      object QRLabel5: TQRLabel
        Left = 105
        Top = 4
        Width = 567
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          277.8125
          10.5833333333333
          1500.1875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'COOPERATIVA DE SERVICIOS PUBLICOS DE AGUA POTABLE Y ALCANTARILLA' +
          'DO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 13
      end
      object QRLabel7: TQRLabel
        Left = 105
        Top = 22
        Width = 567
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          277.8125
          58.2083333333333
          1500.1875)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '"SAN LORENZO" R.L.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 14
      end
      object QRDBImage1: TQRDBImage
        Left = 677
        Top = 6
        Width = 98
        Height = 109
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          288.395833333333
          1791.22916666667
          15.875
          259.291666666667)
        DataField = 'logo_emp'
        DataSet = FormEmpresa.ADOPrime
        Stretch = True
      end
      object QRLabel8: TQRLabel
        Left = 105
        Top = 62
        Width = 567
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          277.8125
          164.041666666667
          1500.1875)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Fundada el 23 de marzo de 1990'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
      object QRLabel10: TQRLabel
        Left = 105
        Top = 80
        Width = 567
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          277.8125
          211.666666666667
          1500.1875)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Cochabamba - Bolivia'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
      object QRLabel2: TQRLabel
        Left = 105
        Top = 208
        Width = 567
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          277.8125
          550.333333333333
          1500.1875)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CERTIFICADO DE APORTACI'#211'N'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 20
      end
      object QRLabel3: TQRLabel
        Left = 2
        Top = 300
        Width = 774
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          5.29166666666667
          793.75
          2047.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'Carnet de Identidad N'#186' .........................................' +
          '.............................................expedido en .......' +
          '.................................; conforme'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 2
        Top = 318
        Width = 947
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          5.29166666666667
          841.375
          2505.60416666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'Resoluci'#243'n Administrativa N'#186' ...................................' +
          '........................................... con el C'#243'digo de Reg' +
          'istro N'#186'. ......................................................' +
          '.................'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 2
        Top = 337
        Width = 945
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          5.29166666666667
          891.645833333333
          2500.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'cuyo valor del Certificado de Aportacion es de Bs. .............' +
          '................................................................' +
          '................................................................' +
          '......................'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 2
        Top = 357
        Width = 778
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          5.29166666666667
          944.5625
          2058.45833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'que se encuentra totalmente cancelado, en cumplimiento a los dis' +
          'puesto por el Estatuto Org'#225'nico y el Reglamento de la Cooperativ' +
          'a, '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 2
        Top = 376
        Width = 644
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          5.29166666666667
          994.833333333333
          1703.91666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'ley 356, Ley General de Cooperativas y su Decreto Supremo 1995, ' +
          'en cumplimiento de  los requisitos vigentes.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 14
        Top = 156
        Width = 48
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          37.0416666666667
          412.75
          127)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Otorga el:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 208
        Top = 280
        Width = 73
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          550.333333333333
          740.833333333333
          193.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FormAsociados.ADOPrime
        DataField = 'nombres_asoc'
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 408
        Top = 280
        Width = 73
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1079.5
          740.833333333333
          193.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FormAsociados.ADOPrime
        DataField = 'apellidos_asoc'
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 208
        Top = 297
        Width = 39
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          550.333333333333
          785.8125
          103.1875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FormAsociados.ADOPrime
        DataField = 'ci_asoc'
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 561
        Top = 297
        Width = 33
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1484.3125
          785.8125
          87.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FormAsociados.ADOPrime
        DataField = 'ciudad'
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object Image1: TQRImage
        Left = 595
        Top = 435
        Width = 174
        Height = 158
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          418.041666666667
          1574.27083333333
          1150.9375
          460.375)
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
      object QRLabel1: TQRLabel
        Left = 205
        Top = 316
        Width = 46
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          542.395833333333
          836.083333333333
          121.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '001/2017'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 669
        Top = 316
        Width = 13
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1770.0625
          836.083333333333
          34.3958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '73'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel17: TQRLabel
        Left = 302
        Top = 334
        Width = 187
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          799.041666666667
          883.708333333333
          494.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '200.00 (Doscientos 00/100 Bolivianos)'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRExpr1: TQRExpr
        Left = 595
        Top = 408
        Width = 181
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1574.27083333333
          1079.5
          478.895833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = #39'Cochabamba, 20 de Agosto de 2020'#39
        FontSize = 8
      end
      object QRExpr2: TQRExpr
        Left = 62
        Top = 533
        Width = 157
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          164.041666666667
          1410.22916666667
          415.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = #39'Dr. Jaime Fernandez Padilla'#39
        FontSize = 8
      end
      object QRExpr3: TQRExpr
        Left = 105
        Top = 545
        Width = 59
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          277.8125
          1441.97916666667
          156.104166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = #39'Tesorero'#39
        FontSize = 8
      end
      object QRExpr5: TQRExpr
        Left = 362
        Top = 533
        Width = 181
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          957.791666666667
          1410.22916666667
          478.895833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = #39'Prof. Nirthza Padilla Bustamante'#39
        FontSize = 8
      end
      object QRExpr4: TQRExpr
        Left = 403
        Top = 545
        Width = 68
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1066.27083333333
          1441.97916666667
          179.916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = #39'Presidente'#39
        FontSize = 8
      end
    end
  end
  object ADOReporte: TADOQuery
    Connection = FormLogin.ConexionBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from ingreso_egreso')
    Left = 400
    Top = 8
  end
  object DataReporte: TDataSource
    DataSet = ADOReporte
    Left = 440
    Top = 65528
  end
end
