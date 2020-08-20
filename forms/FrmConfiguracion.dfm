object FormConfigurar: TFormConfigurar
  Left = 225
  Top = 125
  BorderStyle = bsToolWindow
  Caption = 'Configuraci'#243'n'
  ClientHeight = 612
  ClientWidth = 638
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel: TsPanel
    Left = 0
    Top = 0
    Width = 638
    Height = 24
    Align = alTop
    Caption = 'CONFIGURACION'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnDblClick = PanelDblClick
    SkinData.SkinSection = 'PANEL'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 24
    Width = 638
    Height = 506
    Align = alClient
    Color = clWhite
    DataSource = DataOpcion
    FixedColor = clMaroon
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Color = clSilver
        Expanded = False
        FieldName = 'num'
        Title.Caption = 'NUM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 40
        Visible = True
      end
      item
        Color = clSilver
        Expanded = False
        FieldName = 'opcion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'OPCIONES'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 493
        Visible = True
      end
      item
        Color = clSilver
        Expanded = False
        FieldName = 'valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'SI/NO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 50
        Visible = True
      end>
  end
  object sPanel2: TsPanel
    Left = 0
    Top = 530
    Width = 638
    Height = 82
    Align = alBottom
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    SkinData.SkinSection = 'PANEL'
    object sBitBtn4: TsBitBtn
      Left = 420
      Top = 10
      Width = 138
      Height = 63
      Caption = 'Guardar Configuracion'
      TabOrder = 0
      OnClick = sBitBtn4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
      SkinData.SkinSection = 'BUTTON'
    end
    object sBitBtn1: TsBitBtn
      Left = 557
      Top = 10
      Width = 76
      Height = 63
      Caption = 'C&errar'
      ModalResult = 3
      TabOrder = 1
      OnClick = sBitBtn1Click
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
    object sPanel1: TsPanel
      Left = 2
      Top = 1
      Width = 412
      Height = 81
      TabOrder = 2
      SkinData.SkinSection = 'PANEL'
      object Label2: TLabel
        Left = 5
        Top = 34
        Width = 92
        Height = 14
        Caption = 'Porcent. Interes:'
        FocusControl = DBEdit2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
      object Label1: TLabel
        Left = 49
        Top = 12
        Width = 47
        Height = 14
        Caption = 'Moneda:'
        FocusControl = DBEdit1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
      object Label3: TLabel
        Left = 146
        Top = 13
        Width = 116
        Height = 14
        Caption = 'Porcent Tarj. Credito:'
        FocusControl = DBinteres
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 132
        Top = 33
        Width = 132
        Height = 14
        Caption = 'Unidades Stock Minimo:'
        FocusControl = DBEdit4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
      object Label5: TLabel
        Left = 6
        Top = 54
        Width = 91
        Height = 14
        Caption = 'Omitir categoria:'
        FocusControl = Eid_cat
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
      object Label6: TLabel
        Left = 131
        Top = 54
        Width = 135
        Height = 14
        Caption = '(Ingrese ID de categoria)'
        FocusControl = Eid_cat
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
      object Label7: TLabel
        Left = 307
        Top = 12
        Width = 64
        Height = 14
        Caption = 'Margen Izq:'
        FocusControl = DBEdit5
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 302
        Top = 32
        Width = 69
        Height = 14
        Caption = 'Margen Der.:'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
      object DBEdit2: TDBEdit
        Left = 98
        Top = 30
        Width = 32
        Height = 20
        Hint = 'El % se aplicar'#225' a las ventas a cr'#233'dito'
        DataField = 'PORC_INT'
        DataSource = DataSource1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 98
        Top = 9
        Width = 32
        Height = 20
        DataField = 'MONEDA'
        DataSource = DataSource1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object DBinteres: TDBEdit
        Left = 265
        Top = 9
        Width = 32
        Height = 20
        Hint = 'El % aplicado a las cventas realizadas con tarjetas de cr'#233'dito'
        DataField = 'TARJ_CRED'
        DataSource = DataSource1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 265
        Top = 30
        Width = 32
        Height = 20
        DataField = 'STOCK_MIN'
        DataSource = DataSource1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object Eid_cat: TDBEdit
        Left = 98
        Top = 51
        Width = 32
        Height = 20
        Hint = 
          'OMITIRA el ingreso de esta categoria  en los reportes de movimie' +
          'nto diario'
        DataField = 'id_cat'
        DataSource = DataSource1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object DBEdit3: TDBEdit
        Left = 372
        Top = 30
        Width = 32
        Height = 20
        Hint = 'Margen aplicable a facturas peque'#241'as (boucher)'
        DataField = 'margender'
        DataSource = DataSource1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object DBEdit5: TDBEdit
        Left = 372
        Top = 9
        Width = 32
        Height = 20
        Hint = 'Margen aplicable a facturas peque'#241'as (boucher)'
        DataField = 'margenizq'
        DataSource = DataSource1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
    end
  end
  object ADOConf: TADOQuery
    Active = True
    Connection = FormLogin.ConexionBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from configuracion')
    Left = 208
    Top = 1
  end
  object DataOpcion: TDataSource
    DataSet = ADOConf
    Left = 240
  end
  object ADOQuery1: TADOQuery
    Connection = FormLogin.ConexionBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from moneda')
    Left = 264
    Top = 337
    object ADOQuery1MONEDA: TWideStringField
      FieldName = 'MONEDA'
      Size = 50
    end
    object ADOQuery1PORC_INT: TFloatField
      FieldName = 'PORC_INT'
    end
    object ADOQuery1TARJ_CRED: TFloatField
      FieldName = 'TARJ_CRED'
    end
    object ADOQuery1STOCK_MIN: TIntegerField
      FieldName = 'STOCK_MIN'
    end
    object ADOQuery1id_cat: TIntegerField
      FieldName = 'id_cat'
    end
    object ADOQuery1margenizq: TIntegerField
      FieldName = 'margenizq'
    end
    object ADOQuery1margender: TIntegerField
      FieldName = 'margender'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 296
    Top = 336
  end
end
