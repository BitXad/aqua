object FormParametros: TFormParametros
  Left = 322
  Top = 274
  BorderStyle = bsToolWindow
  Caption = 'Par'#225'metros'
  ClientHeight = 313
  ClientWidth = 629
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 14
  object Panel: TsPanel
    Left = 0
    Top = 0
    Width = 629
    Height = 24
    Align = alTop
    Caption = 'PAR'#193'METROS'
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
    Width = 629
    Height = 207
    Align = alClient
    Color = clSilver
    DataSource = DataOpcion
    FixedColor = clMaroon
    Options = [dgEditing, dgTitles, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'N'#186
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descip_param'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Par'#225'metro'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 291
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estado'
        PickList.Strings = (
          'ACTIVO'
          'INACTIVO')
        Title.Alignment = taCenter
        Title.Caption = 'Estado'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'dias_param'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'monto_param'
        Title.Alignment = taRightJustify
        Title.Caption = 'Multa'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'detalle_param'
        Title.Alignment = taCenter
        Title.Caption = 'Descipci'#243'n'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end>
  end
  object sPanel2: TsPanel
    Left = 0
    Top = 231
    Width = 629
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
      Left = 324
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
      Left = 469
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
      Width = 279
      Height = 81
      TabOrder = 2
      SkinData.SkinSection = 'PANEL'
    end
  end
  object ADOConf: TADOQuery
    Active = True
    Connection = FormLogin.ConexionBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from parametros')
    Left = 208
    Top = 1
    object ADOConfid_param: TAutoIncField
      FieldName = 'id_param'
      ReadOnly = True
    end
    object ADOConfdescip_param: TStringField
      FieldName = 'descip_param'
      Size = 150
    end
    object ADOConfdias_param: TIntegerField
      FieldName = 'dias_param'
    end
    object ADOConfmonto_param: TFloatField
      FieldName = 'monto_param'
      DisplayFormat = '#,#0.00'
    end
    object ADOConfestado: TStringField
      FieldName = 'estado'
      Size = 30
    end
    object ADOConfdetalle_param: TStringField
      FieldName = 'detalle_param'
      Size = 150
    end
  end
  object DataOpcion: TDataSource
    DataSet = ADOConf
    Left = 240
  end
end
