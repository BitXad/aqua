object FormExportar: TFormExportar
  Left = 530
  Top = 279
  Width = 870
  Height = 500
  Caption = 'FormExportar'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 16
    Top = 96
    Width = 809
    Height = 337
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PROD'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC_PROD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INDUS_PROD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARCA_PROD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_PROD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDAD_PROD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_PROD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMAGEN_PROD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PREC_UNID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PREC_CAJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDSXCAJA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRESTAMO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COSTO_CAJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COSTO_UNID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODB_CAJA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODB_UNID'
        Width = 70
        Visible = True
      end>
  end
  object Exportar: TButton
    Left = 288
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Exportar'
    TabOrder = 1
    OnClick = ExportarClick
  end
  object ADOQuery1: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Producto')
    Left = 80
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 128
    Top = 32
  end
end
