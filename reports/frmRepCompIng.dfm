object FormRepCompIng: TFormRepCompIng
  Left = 245
  Top = 206
  Width = 916
  Height = 784
  Caption = 'Ingresos'
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
    Left = 32
    Top = 37
    Width = 816
    Height = 528
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = ADO1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Courier New'
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
      150
      1397
      150
      2159
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
    object TitleBand1: TQRBand
      Left = 38
      Top = 57
      Width = 740
      Height = 427
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
        1129.77083333333
        1957.91666666667)
      BandType = rbTitle
      object QRDBTelf: TQRDBText
        Left = 83
        Top = 50
        Width = 351
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          219.604166666667
          132.291666666667
          928.6875)
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
        Top = 39
        Width = 351
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          219.604166666667
          103.1875
          928.6875)
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
        Top = 28
        Width = 351
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          219.604166666667
          74.0833333333333
          928.6875)
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
      object QRDBEslogan: TQRDBText
        Left = 83
        Top = 18
        Width = 351
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          219.604166666667
          47.625
          928.6875)
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
      object QRDBEmpresa: TQRDBText
        Left = 83
        Top = 2
        Width = 351
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          219.604166666667
          5.29166666666667
          928.6875)
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
      object QRShape11: TQRShape
        Left = 100
        Top = 218
        Width = 581
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          264.583333333333
          576.791666666667
          1537.22916666667)
        Brush.Color = clSilver
        Pen.Width = 3
        Shape = qrsRectangle
      end
      object QRShape26: TQRShape
        Left = 100
        Top = 289
        Width = 357
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          264.583333333333
          764.645833333333
          944.5625)
        Brush.Color = clSilver
        Pen.Width = 3
        Shape = qrsRectangle
      end
      object QRShape17: TQRShape
        Left = 100
        Top = 138
        Width = 226
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          264.583333333333
          365.125
          597.958333333333)
        Brush.Color = clSilver
        Pen.Width = 3
        Shape = qrsRectangle
      end
      object QRShape12: TQRShape
        Left = 100
        Top = 178
        Width = 581
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          264.583333333333
          470.958333333333
          1537.22916666667)
        Brush.Color = clSilver
        Pen.Width = 3
        Shape = qrsRectangle
      end
      object QRLabel3: TQRLabel
        Left = 258
        Top = 92
        Width = 136
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          682.625
          243.416666666667
          359.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'APELLIDOS Y NOMBRE:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel5: TQRLabel
        Left = 5
        Top = 94
        Width = 45
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          13.2291666666667
          248.708333333333
          119.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'FECHA:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel2: TQRLabel
        Left = 112
        Top = 183
        Width = 80
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          296.333333333333
          484.1875
          211.666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'DETALLE:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel12: TQRLabel
        Left = 112
        Top = 143
        Width = 79
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          296.333333333333
          378.354166666667
          209.020833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'MONTO:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 111
        Width = 201
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          0
          293.6875
          531.8125)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRDBText12: TQRDBText
        Left = 52
        Top = 95
        Width = 151
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          137.583333333333
          251.354166666667
          399.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ADO1
        DataField = 'fechahora_ing'
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
      object QRExpr2: TQRExpr
        Left = 304
        Top = 35
        Width = 565
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          804.333333333333
          92.6041666666667
          1494.89583333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          #39'N'#186' 00'#39'+if(ADO1.tipo_ing='#39'INGRESO'#39',ADO1.numrec_ing,ADO1.numrec_e' +
          'gr)'
        FontSize = 12
      end
      object QRExpr3: TQRExpr
        Left = 196
        Top = 183
        Width = 229
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          518.583333333333
          484.1875
          605.895833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ADO1.detalle_ing+'#39' ('#39'+ADO1.descripcion_ing+'#39')'#39
        FontSize = 8
      end
      object QRExpr4: TQRExpr
        Left = 398
        Top = 92
        Width = 89
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1053.04166666667
          243.416666666667
          235.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'ADO1.nombre_ing'
        FontSize = 8
      end
      object QRExpr5: TQRExpr
        Left = 196
        Top = 143
        Width = 125
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          518.583333333333
          378.354166666667
          330.729166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = #39'Bs. '#39'+formatnumeric('#39'#,0.00'#39',ADO1.monto_ing)'
        FontSize = 8
      end
      object QRLabel1: TQRLabel
        Left = 111
        Top = 293
        Width = 80
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          293.6875
          775.229166666667
          211.666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CAJERO(A):'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRExpr6: TQRExpr
        Left = 195
        Top = 294
        Width = 93
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          515.9375
          777.875
          246.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ADO1.nombre_usu'
        FontSize = 8
      end
      object QLiteral: TQRLabel
        Left = 194
        Top = 223
        Width = 5
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          513.291666666667
          590.020833333333
          13.2291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '-'
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
      object Monto: TDBEdit
        Left = 608
        Top = 160
        Width = 49
        Height = 22
        DataField = 'monto_ing'
        DataSource = Data1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object QRLabel7: TQRLabel
        Left = 162
        Top = 393
        Width = 80
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          428.625
          1039.8125
          211.666666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'INTERESADO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape3: TQRShape
        Left = 88
        Top = 391
        Width = 230
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          232.833333333333
          1034.52083333333
          608.541666666667)
        Shape = qrsRectangle
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 95
        Width = 2
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          0
          251.354166666667
          5.29166666666667)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape5: TQRShape
        Left = 716
        Top = 112
        Width = 2
        Height = 300
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          793.75
          1894.41666666667
          296.333333333333
          5.29166666666667)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape6: TQRShape
        Left = 20
        Top = 113
        Width = 2
        Height = 299
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          791.104166666667
          52.9166666666667
          298.979166666667
          5.29166666666667)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape2: TQRShape
        Left = 20
        Top = 410
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
          1084.79166666667
          1846.79166666667)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape7: TQRShape
        Left = 1
        Top = 68
        Width = 740
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          2.64583333333333
          179.916666666667
          1957.91666666667)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape8: TQRShape
        Left = 249
        Top = 111
        Width = 491
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          658.8125
          293.6875
          1299.10416666667)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape9: TQRShape
        Left = 249
        Top = 95
        Width = 2
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          658.8125
          251.354166666667
          5.29166666666667)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape13: TQRShape
        Left = 21
        Top = 190
        Width = 80
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          55.5625
          502.708333333333
          211.666666666667)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape16: TQRShape
        Left = 21
        Top = 150
        Width = 80
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          55.5625
          396.875
          211.666666666667)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape22: TQRShape
        Left = 434
        Top = 2
        Width = 2
        Height = 67
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          177.270833333333
          1148.29166666667
          5.29166666666667
          5.29166666666667)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape23: TQRShape
        Left = 434
        Top = 1
        Width = 305
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          1148.29166666667
          2.64583333333333
          806.979166666667)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape24: TQRShape
        Left = 21
        Top = 341
        Width = 696
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          55.5625
          902.229166666667
          1841.5)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRExpr1: TQRExpr
        Left = 23
        Top = 414
        Width = 152
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          60.8541666666667
          1095.375
          402.166666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Century Gothic'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = False
        Expression = #39'CCA: Sis.Inf.SIAAC | '#39'+Date+'#39'-'#39'+Time'
        FontSize = 6
      end
      object QRShape25: TQRShape
        Left = 425
        Top = 391
        Width = 230
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          1124.47916666667
          1034.52083333333
          608.541666666667)
        Shape = qrsRectangle
      end
      object QRLabel6: TQRLabel
        Left = 452
        Top = 393
        Width = 178
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1195.91666666667
          1039.8125
          470.958333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CAJERO(A)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape27: TQRShape
        Left = 21
        Top = 301
        Width = 80
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          55.5625
          796.395833333333
          211.666666666667)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRShape10: TQRShape
        Left = 21
        Top = 230
        Width = 80
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          55.5625
          608.541666666667
          211.666666666667)
        Brush.Color = clBlack
        Shape = qrsRectangle
      end
      object QRLabel4: TQRLabel
        Left = 112
        Top = 223
        Width = 79
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          296.333333333333
          590.020833333333
          209.020833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'SON:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRExpr7: TQRExpr
        Left = 474
        Top = 15
        Width = 222
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1254.125
          39.6875
          587.375)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = #39'RECIBO DE '#39'+ADO1.tipo_ing'
        FontSize = 12
      end
      object QRExpr8: TQRExpr
        Left = 439
        Top = 53
        Width = 114
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          1161.52083333333
          140.229166666667
          301.625)
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
        Transparent = False
        WordWrap = True
        Expression = #39'N'#186' Trans. 00'#39'+ADO1.id_ing'
        FontSize = 7
      end
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
    end
  end
  object ADO1: TADOQuery
    Connection = FormLogin.ConexionBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select i.*,u.* '
      'from ingreso_egreso i,usuario u'
      'where'
      #9'i.id_usu=u.id_usu'
      'order by id_ing')
    Left = 208
    Top = 24
    object ADO1id_ing: TAutoIncField
      FieldName = 'id_ing'
      ReadOnly = True
    end
    object ADO1id_usu: TIntegerField
      FieldName = 'id_usu'
    end
    object ADO1detalle_ing: TStringField
      FieldName = 'detalle_ing'
      Size = 255
    end
    object ADO1nombre_ing: TStringField
      FieldName = 'nombre_ing'
      Size = 255
    end
    object ADO1fechahora_ing: TDateTimeField
      FieldName = 'fechahora_ing'
    end
    object ADO1monto_ing: TFloatField
      FieldName = 'monto_ing'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
    end
    object ADO1estado_ing: TStringField
      FieldName = 'estado_ing'
      Size = 255
    end
    object ADO1id_usu_1: TAutoIncField
      FieldName = 'id_usu_1'
      ReadOnly = True
    end
    object ADO1nombre_usu: TStringField
      FieldName = 'nombre_usu'
      Size = 50
    end
    object ADO1tipo_usu: TStringField
      FieldName = 'tipo_usuario'
      Size = 50
    end
    object ADO1login_usu: TStringField
      FieldName = 'login_usu'
      Size = 50
    end
    object ADO1clave_usu: TStringField
      FieldName = 'clave_usu'
      Size = 50
    end
    object ADO1fechahabil_usu: TDateTimeField
      FieldName = 'fechahora_usu'
    end
    object ADO1imagen_usu: TBlobField
      FieldName = 'imagen_usu'
    end
    object ADO1estado_usu: TStringField
      FieldName = 'estado_usu'
      Size = 50
    end
    object ADO1terminal_usu: TIntegerField
      FieldName = 'terminal_usu'
    end
    object ADO1descripcion_ing: TStringField
      FieldName = 'descripcion_ing'
      Size = 250
    end
    object ADO1tipo_ing: TStringField
      FieldName = 'tipo_ing'
    end
    object ADO1numrec_ing: TIntegerField
      FieldName = 'numrec_ing'
    end
    object ADO1numrec_egr: TIntegerField
      FieldName = 'numrec_egr'
    end
  end
  object Data1: TDataSource
    DataSet = ADO1
    Left = 248
    Top = 24
  end
end
