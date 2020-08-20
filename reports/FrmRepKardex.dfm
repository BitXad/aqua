object FormRepKardex: TFormRepKardex
  Left = 465
  Top = 80
  Width = 941
  Height = 780
  Caption = 'Kardex - Asociados'
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
    Top = 16
    Width = 816
    Height = 1058
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
      2799.4
      100
      2159
      100
      100
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
      Left = 38
      Top = 38
      Width = 740
      Height = 154
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
        407.458333333333
        1957.91666666667)
      BandType = rbTitle
      object DBLogo: TQRDBImage
        Left = 2
        Top = 2
        Width = 80
        Height = 60
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.75
          5.29166666666667
          5.29166666666667
          211.666666666667)
        DataField = 'logo_emp'
        DataSet = FormEmpresa.ADOPrime
        Stretch = True
      end
      object QRShape9: TQRShape
        Left = 526
        Top = 71
        Width = 213
        Height = 48
        Frame.Color = clSilver
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          127
          1391.70833333333
          187.854166666667
          563.5625)
        Brush.Color = clSilver
        Pen.Color = clSilver
        Shape = qrsRectangle
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 125
        Width = 739
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.4375
          0
          330.729166666667
          1955.27083333333)
        Brush.Color = clSilver
        Shape = qrsRectangle
      end
      object QRLabel6: TQRLabel
        Left = 132
        Top = 131
        Width = 110
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          349.25
          346.604166666667
          291.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NOMBRE COMPLETO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 6
        Top = 131
        Width = 12
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          15.875
          346.604166666667
          31.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N'#186
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRTitulo: TQRLabel
        Left = 0
        Top = 63
        Width = 521
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          0
          166.6875
          1378.47916666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'KARDEX DE ASOCIADO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRLabel9: TQRLabel
        Left = 32
        Top = 131
        Width = 43
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          84.6666666666667
          346.604166666667
          113.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CODIGO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 525
        Top = 126
        Width = 56
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1389.0625
          333.375
          148.166666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CONSUMO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBTelf: TQRDBText
        Left = 83
        Top = 49
        Width = 582
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          219.604166666667
          129.645833333333
          1539.875)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FormEmpresa.ADOPrime
        DataField = 'telefono_emp'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBDireccion: TQRDBText
        Left = 83
        Top = 38
        Width = 582
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          219.604166666667
          100.541666666667
          1539.875)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FormEmpresa.ADOPrime
        DataField = 'direccion_emp'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 6
      end
      object QRDBSucursal: TQRDBText
        Left = 83
        Top = 27
        Width = 582
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          219.604166666667
          71.4375
          1539.875)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FormEmpresa.ADOPrime
        DataField = 'sucursal_emp'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBEmpresa: TQRDBText
        Left = 83
        Top = 1
        Width = 582
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          219.604166666667
          2.64583333333333
          1539.875)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FormEmpresa.ADOPrime
        DataField = 'nombre_emp'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBEslogan: TQRDBText
        Left = 83
        Top = 17
        Width = 582
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          219.604166666667
          44.9791666666667
          1539.875)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FormEmpresa.ADOPrime
        DataField = 'eslogan_emp'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 62
        Width = 739
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          0
          164.041666666667
          1955.27083333333)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape5: TQRShape
        Left = 0
        Top = 93
        Width = 522
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          0
          246.0625
          1381.125)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape6: TQRShape
        Left = 520
        Top = 71
        Width = 3
        Height = 48
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          127
          1375.83333333333
          187.854166666667
          7.9375)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape7: TQRShape
        Left = 0
        Top = 64
        Width = 3
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.0208333333333
          0
          169.333333333333
          7.9375)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape8: TQRShape
        Left = 736
        Top = 1
        Width = 3
        Height = 62
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          164.041666666667
          1947.33333333333
          2.64583333333333
          7.9375)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRSysData4: TQRSysData
        Left = 233
        Top = 97
        Width = 50
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          616.479166666667
          256.645833333333
          132.291666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        FontSize = 7
      end
      object QRShape10: TQRShape
        Left = 0
        Top = 124
        Width = 739
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          0
          328.083333333333
          1955.27083333333)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape11: TQRShape
        Left = 0
        Top = 152
        Width = 739
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psDot
        Size.Values = (
          7.9375
          0
          402.166666666667
          1955.27083333333)
        Brush.Color = clBlack
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRLabel8: TQRLabel
        Left = 542
        Top = 138
        Width = 15
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1434.04166666667
          365.125
          39.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Bs'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRShape20: TQRShape
        Left = 479
        Top = 124
        Width = 1
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.6666666666667
          1267.35416666667
          328.083333333333
          2.64583333333333)
        Shape = qrsRectangle
      end
      object QRShape21: TQRShape
        Left = 581
        Top = 124
        Width = 1
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.6666666666667
          1537.22916666667
          328.083333333333
          2.64583333333333)
        Shape = qrsRectangle
      end
      object QRShape22: TQRShape
        Left = 633
        Top = 124
        Width = 1
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.6666666666667
          1674.8125
          328.083333333333
          2.64583333333333)
        Shape = qrsRectangle
      end
      object QRLabel15: TQRLabel
        Left = 181
        Top = 82
        Width = 160
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          478.895833333333
          216.958333333333
          423.333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'COBRO POR SERVICIOS DE AGUA '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDesde: TQRLabel
        Left = 528
        Top = 74
        Width = 39
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1397
          195.791666666667
          103.1875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Desde:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRFecha1: TQRLabel
        Left = 568
        Top = 74
        Width = 55
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1502.83333333333
          195.791666666667
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '01/04/2016'
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
      object QRFecha2: TQRLabel
        Left = 563
        Top = 87
        Width = 55
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1489.60416666667
          230.1875
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '03/04/2016'
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
      object QRLabel1: TQRLabel
        Left = 528
        Top = 87
        Width = 34
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1397
          230.1875
          89.9583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hasta:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 528
        Top = 101
        Width = 73
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1397
          267.229166666667
          193.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Impreso Por:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 393
        Top = 126
        Width = 12
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1039.8125
          333.375
          31.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N'#186
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 382
        Top = 138
        Width = 33
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1010.70833333333
          365.125
          87.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FACT.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 434
        Top = 138
        Width = 32
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1148.29166666667
          365.125
          84.6666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LECT.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel16: TQRLabel
        Left = 445
        Top = 126
        Width = 12
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1177.39583333333
          333.375
          31.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N'#186
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel17: TQRLabel
        Left = 306
        Top = 131
        Width = 47
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          809.625
          346.604166666667
          124.354166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'GESTI'#211'N'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel18: TQRLabel
        Left = 0
        Top = 113
        Width = 151
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          0
          298.979166666667
          399.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Expresado en moneda nacional (Bs)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel19: TQRLabel
        Left = 483
        Top = 126
        Width = 34
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1277.9375
          333.375
          89.9583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CONS.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel20: TQRLabel
        Left = 492
        Top = 138
        Width = 20
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1301.75
          365.125
          52.9166666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'mt'#179
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRShape24: TQRShape
        Left = 523
        Top = 124
        Width = 1
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.6666666666667
          1383.77083333333
          328.083333333333
          2.64583333333333)
        Shape = qrsRectangle
      end
      object QRLabel11: TQRLabel
        Left = 582
        Top = 126
        Width = 51
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1539.875
          333.375
          134.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'APORTES'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 599
        Top = 138
        Width = 15
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1584.85416666667
          365.125
          39.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Bs'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 634
        Top = 126
        Width = 48
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1677.45833333333
          333.375
          127)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RECARG.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel21: TQRLabel
        Left = 651
        Top = 138
        Width = 15
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1722.4375
          365.125
          39.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Bs'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRShape25: TQRShape
        Left = 682
        Top = 124
        Width = 1
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.6666666666667
          1804.45833333333
          328.083333333333
          2.64583333333333)
        Shape = qrsRectangle
      end
      object QRLabel22: TQRLabel
        Left = 691
        Top = 126
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1828.27083333333
          333.375
          100.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TOTAL'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel23: TQRLabel
        Left = 704
        Top = 138
        Width = 15
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1862.66666666667
          365.125
          39.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Bs'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBUsuario: TQRDBText
        Left = 602
        Top = 101
        Width = 61
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1592.79166666667
          267.229166666667
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FormLogin.ADOUsuario
        DataField = 'nombre_usu'
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
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 192
      Width = 740
      Height = 17
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
        44.9791666666667
        1957.91666666667)
      BandType = rbDetail
      object QRExpr8: TQRExpr
        Left = 629
        Top = 1
        Width = 48
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1664.22916666667
          2.64583333333333
          127)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
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
        Expression = 'formatnumeric('#39'#,#0.00'#39',ADOReporte.totalrecargos_fact)'
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 18
        Top = 1
        Width = 60
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          47.625
          2.64583333333333
          158.75)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ADOReporte
        DataField = 'codigo_asoc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRSysData3: TQRSysData
        Left = -34
        Top = 1
        Width = 50
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          -89.9583333333333
          2.64583333333333
          132.291666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDetailNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        FontSize = 8
      end
      object QRExpr1: TQRExpr
        Left = 81
        Top = 1
        Width = 210
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          214.3125
          2.64583333333333
          555.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
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
        Expression = 'ADOReporte.razon_fact'
        FontSize = 8
      end
      object QRExpr2: TQRExpr
        Left = 375
        Top = 1
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          992.1875
          2.64583333333333
          129.645833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
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
        Expression = 'ADOReporte.num_fact'
        FontSize = 8
      end
      object QRShape16: TQRShape
        Left = 0
        Top = 0
        Width = 739
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          0
          0
          1955.27083333333)
        Shape = qrsRectangle
      end
      object QRShape17: TQRShape
        Left = 479
        Top = -2
        Width = 1
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.0208333333333
          1267.35416666667
          -5.29166666666667
          2.64583333333333)
        Shape = qrsRectangle
      end
      object QRShape18: TQRShape
        Left = 581
        Top = -2
        Width = 1
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.0208333333333
          1537.22916666667
          -5.29166666666667
          2.64583333333333)
        Shape = qrsRectangle
      end
      object QRShape19: TQRShape
        Left = 633
        Top = -2
        Width = 1
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.0208333333333
          1674.8125
          -5.29166666666667
          2.64583333333333)
        Shape = qrsRectangle
      end
      object QRExpr3: TQRExpr
        Left = 427
        Top = 1
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1129.77083333333
          2.64583333333333
          129.645833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
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
        Expression = 
          'ADOReporte.actual_lec+'#39' - '#39'+ADOReporte.anterior_lec+'#39'='#39'+ADORepor' +
          'te.consumo_lec'
        FontSize = 8
      end
      object QRExpr4: TQRExpr
        Left = 285
        Top = 1
        Width = 90
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          754.0625
          2.64583333333333
          238.125)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
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
        Expression = 'ADOReporte.mes_lec+'#39'/'#39'+ADOReporte.gestion_lec'
        FontSize = 8
      end
      object QRExpr5: TQRExpr
        Left = 482
        Top = 1
        Width = 39
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1275.29166666667
          2.64583333333333
          103.1875)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
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
        Expression = 'ADOReporte.consumo_lec'
        FontSize = 8
      end
      object QRShape23: TQRShape
        Left = 523
        Top = -2
        Width = 1
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.0208333333333
          1383.77083333333
          -5.29166666666667
          2.64583333333333)
        Shape = qrsRectangle
      end
      object QRExpr6: TQRExpr
        Left = 524
        Top = 1
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1386.41666666667
          2.64583333333333
          140.229166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
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
        Expression = 'formatnumeric('#39'#,#0.00'#39',ADOReporte.totalconsumo_fact)'
        FontSize = 8
      end
      object QRExpr7: TQRExpr
        Left = 580
        Top = 1
        Width = 48
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1534.58333333333
          2.64583333333333
          127)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
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
        Expression = 'formatnumeric('#39'#,#0.00'#39',ADOReporte.totalaportes_fact)'
        FontSize = 8
      end
      object QRShape26: TQRShape
        Left = 682
        Top = -2
        Width = 1
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.0208333333333
          1804.45833333333
          -5.29166666666667
          2.64583333333333)
        Shape = qrsRectangle
      end
      object QRExpr9: TQRExpr
        Left = 683
        Top = 1
        Width = 51
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1807.10416666667
          2.64583333333333
          134.9375)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'formatnumeric('#39'#,#0.00'#39',ADOReporte.montototal_fact)'
        FontSize = 8
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 209
      Width = 740
      Height = 78
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
        206.375
        1957.91666666667)
      BandType = rbSummary
      object QRLabel3: TQRLabel
        Left = 122
        Top = 65
        Width = 101
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.75
          322.791666666667
          171.979166666667
          267.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FIRMA RESPONSABLE'
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
      object QRShape1: TQRShape
        Left = 83
        Top = 64
        Width = 176
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          219.604166666667
          169.333333333333
          465.666666666667)
        Shape = qrsRectangle
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 0
        Width = 739
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          0
          0
          1955.27083333333)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape13: TQRShape
        Left = 72
        Top = 27
        Width = 3
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333
          190.5
          71.4375
          7.9375)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape14: TQRShape
        Left = 0
        Top = 0
        Width = 3
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875
          0
          0
          7.9375)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape15: TQRShape
        Left = 0
        Top = 50
        Width = 74
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          0
          132.291666666667
          195.791666666667)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape27: TQRShape
        Left = 320
        Top = 17
        Width = 419
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          846.666666666667
          44.9791666666667
          1108.60416666667)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRExpr10: TQRExpr
        Left = 524
        Top = 2
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1386.41666666667
          5.29166666666667
          140.229166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
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
        Expression = 'formatnumeric('#39'#,#0.00'#39',sum(ADOReporte.totalconsumo_fact))'
        FontSize = 8
      end
      object QRExpr11: TQRExpr
        Left = 580
        Top = 2
        Width = 48
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1534.58333333333
          5.29166666666667
          127)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
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
        Expression = 'formatnumeric('#39'#,#0.00'#39',sum(ADOReporte.totalaportes_fact))'
        FontSize = 8
      end
      object QRExpr12: TQRExpr
        Left = 629
        Top = 2
        Width = 48
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1664.22916666667
          5.29166666666667
          127)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
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
        Expression = 'formatnumeric('#39'#,#0.00'#39',sum(ADOReporte.totalrecargos_fact))'
        FontSize = 8
      end
      object QRExpr13: TQRExpr
        Left = 317
        Top = 21
        Width = 417
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          838.729166666667
          55.5625
          1103.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 
          #39'TOTAL Bs         '#39'+formatnumeric('#39'#,#0.00'#39',sum(ADOReporte.monto' +
          'total_fact))'
        FontSize = 12
      end
      object QRExpr14: TQRExpr
        Left = 482
        Top = 1
        Width = 39
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1275.29166666667
          2.64583333333333
          103.1875)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
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
        Expression = 'sum(ADOReporte.consumo_lec)'
        FontSize = 8
      end
      object QRUsuario: TQRLabel
        Left = 731
        Top = 42
        Width = 7
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          1934.10416666667
          111.125
          18.5208333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '  '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 287
      Width = 740
      Height = 14
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
        37.0416666666667
        1957.91666666667)
      BandType = rbPageFooter
      object QRSysData2: TQRSysData
        Left = 0
        Top = 1
        Width = 52
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          0
          2.64583333333333
          137.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Pag.'
        Transparent = False
        FontSize = 7
      end
      object QRSysData1: TQRSysData
        Left = 662
        Top = 0
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1751.54166666667
          0
          132.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        FontSize = 7
      end
      object QRShape12: TQRShape
        Left = 0
        Top = 0
        Width = 739
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          0
          0
          1955.27083333333)
        Shape = qrsRectangle
      end
    end
  end
  object ADOReporte: TADOQuery
    Connection = FormLogin.ConexionBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM  asociado a,  lectura l,  factura f'
      
        'WHERE   a.id_asoc = l.id_asoc AND l.id_lec = f.id_lec AND f.esta' +
        'do_fact = '#39'CANCELADA'#39' AND'
      '  f.fecha_fact>='#39'2016-05-02'#39' AND f.fecha_fact<='#39'2016-05-02'#39)
    Left = 400
    Top = 24
    object ADOReporteid_asoc: TAutoIncField
      FieldName = 'id_asoc'
      ReadOnly = True
    end
    object ADOReporteid_emp: TIntegerField
      FieldName = 'id_emp'
    end
    object ADOReporteestado: TStringField
      FieldName = 'estado'
      FixedChar = True
      Size = 30
    end
    object ADOReportetipo_asoc: TStringField
      FieldName = 'tipo_asoc'
    end
    object ADOReporteciudad: TStringField
      FieldName = 'ciudad'
    end
    object ADOReportenombres_asoc: TStringField
      FieldName = 'nombres_asoc'
      Size = 100
    end
    object ADOReporteapellidos_asoc: TStringField
      FieldName = 'apellidos_asoc'
      Size = 100
    end
    object ADOReporteci_asoc: TStringField
      FieldName = 'ci_asoc'
    end
    object ADOReportedireccion_asoc: TStringField
      FieldName = 'direccion_asoc'
      Size = 250
    end
    object ADOReportefechanac_asoc: TDateField
      FieldName = 'fechanac_asoc'
    end
    object ADOReportetelefono_asoc: TStringField
      FieldName = 'telefono_asoc'
      Size = 100
    end
    object ADOReportecodigo_asoc: TStringField
      FieldName = 'codigo_asoc'
    end
    object ADOReportenit_asoc: TStringField
      FieldName = 'nit_asoc'
      Size = 30
    end
    object ADOReporterazon_asoc: TStringField
      FieldName = 'razon_asoc'
      Size = 100
    end
    object ADOReportefoto_asoc: TBlobField
      FieldName = 'foto_asoc'
    end
    object ADOReportefechahora_asoc: TDateTimeField
      FieldName = 'fechahora_asoc'
    end
    object ADOReportezona_asoc: TStringField
      FieldName = 'zona_asoc'
      Size = 150
    end
    object ADOReportemedidor_asoc: TStringField
      FieldName = 'medidor_asoc'
      Size = 50
    end
    object ADOReporteservicios_asoc: TStringField
      FieldName = 'servicios_asoc'
      Size = 250
    end
    object ADOReportecategoria_asoc: TStringField
      FieldName = 'categoria_asoc'
      Size = 150
    end
    object ADOReporteid_lec: TAutoIncField
      FieldName = 'id_lec'
      ReadOnly = True
    end
    object ADOReporteid_usu: TIntegerField
      FieldName = 'id_usu'
    end
    object ADOReportemes_lec: TStringField
      FieldName = 'mes_lec'
    end
    object ADOReportegestion_lec: TStringField
      FieldName = 'gestion_lec'
    end
    object ADOReporteanterior_lec: TFloatField
      FieldName = 'anterior_lec'
    end
    object ADOReporteactual_lec: TFloatField
      FieldName = 'actual_lec'
    end
    object ADOReportefechaant_lec: TDateField
      FieldName = 'fechaant_lec'
    end
    object ADOReporteconsumo_lec: TFloatField
      FieldName = 'consumo_lec'
    end
    object ADOReportefecha_lec: TDateField
      FieldName = 'fecha_lec'
    end
    object ADOReportehora_lec: TTimeField
      FieldName = 'hora_lec'
    end
    object ADOReportetotalcons_lec: TFloatField
      FieldName = 'totalcons_lec'
    end
    object ADOReportefechahora_lec: TDateTimeField
      FieldName = 'fechahora_lec'
    end
    object ADOReportemonto_lec: TFloatField
      FieldName = 'monto_lec'
    end
    object ADOReporteestado_lec: TStringField
      FieldName = 'estado_lec'
    end
    object ADOReportetotalmultas_: TIntegerField
      FieldName = 'totalmultas_'
    end
    object ADOReportecantfact_lec: TIntegerField
      FieldName = 'cantfact_lec'
    end
    object ADOReportemontofact_lec: TFloatField
      FieldName = 'montofact_lec'
    end
    object ADOReporteid_fact: TAutoIncField
      FieldName = 'id_fact'
      ReadOnly = True
    end
    object ADOReportenum_fact: TIntegerField
      FieldName = 'num_fact'
    end
    object ADOReportenit_fact: TStringField
      FieldName = 'nit_fact'
      Size = 30
    end
    object ADOReporterazon_fact: TStringField
      FieldName = 'razon_fact'
      Size = 100
    end
    object ADOReporteorden_fact: TStringField
      FieldName = 'orden_fact'
      Size = 30
    end
    object ADOReportenitemisor_fact: TStringField
      FieldName = 'nitemisor_fact'
      Size = 30
    end
    object ADOReportellave_fact: TStringField
      FieldName = 'llave_fact'
      Size = 250
    end
    object ADOReportefecha_fact: TDateField
      FieldName = 'fecha_fact'
    end
    object ADOReportehora_fact: TTimeField
      FieldName = 'hora_fact'
    end
    object ADOReportefechaemision_fact: TDateField
      FieldName = 'fechaemision_fact'
    end
    object ADOReportemontoparc_fact: TFloatField
      FieldName = 'montoparc_fact'
    end
    object ADOReportedesc_fact: TFloatField
      FieldName = 'desc_fact'
    end
    object ADOReportecadenaqr_fact: TStringField
      FieldName = 'cadenaqr_fact'
      Size = 250
    end
    object ADOReportecodcontrol_fact: TStringField
      FieldName = 'codcontrol_fact'
      Size = 250
    end
    object ADOReporteliteral_fact: TStringField
      FieldName = 'literal_fact'
      Size = 250
    end
    object ADOReportefechahora_fact: TDateTimeField
      FieldName = 'fechahora_fact'
    end
    object ADOReportetipo_fact: TIntegerField
      FieldName = 'tipo_fact'
    end
    object ADOReportefechavenc_fact: TDateField
      FieldName = 'fechavenc_fact'
    end
    object ADOReportetotalconsumo_fact: TFloatField
      FieldName = 'totalconsumo_fact'
    end
    object ADOReportetotalaportes_fact: TFloatField
      FieldName = 'totalaportes_fact'
    end
    object ADOReportetotalrecargos_fact: TFloatField
      FieldName = 'totalrecargos_fact'
    end
    object ADOReportemontototal_fact: TFloatField
      FieldName = 'montototal_fact'
    end
    object ADOReporteestado_fact: TStringField
      FieldName = 'estado_fact'
      Size = 30
    end
  end
  object DataReporte: TDataSource
    DataSet = ADOReporte
    Left = 432
    Top = 24
  end
end
