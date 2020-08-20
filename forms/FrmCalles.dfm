object FormCalles: TFormCalles
  Left = 316
  Top = 317
  BorderStyle = bsToolWindow
  Caption = 'Clasificador de Calles'
  ClientHeight = 323
  ClientWidth = 618
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 14
  object Label18: TsLabelFX
    Left = 0
    Top = 0
    Width = 618
    Height = 28
    Align = alTop
    Alignment = taCenter
    Caption = 'ESTADOS'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
  end
  object sPanel1: TsPanel
    Left = 103
    Top = 64
    Width = 418
    Height = 217
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object Label2: TLabel
      Left = 10
      Top = 8
      Width = 107
      Height = 13
      Caption = 'Lista de Estado(s):'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 24
      Width = 262
      Height = 20
      BevelInner = bvNone
      BevelOuter = bvNone
      BevelKind = bkFlat
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'nombre_dir'
      DataSource = DataSource1
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 48
      Width = 377
      Height = 161
      Color = clGrayText
      DataSource = DataSource1
      FixedColor = clMaroon
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Color = clWhite
          Expanded = False
          FieldName = 'id_dir'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 56
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'nombre_dir'
          Title.Alignment = taCenter
          Title.Caption = 'Estado(s)'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 207
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'orden_dir'
          Title.Caption = 'Orden'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object DBEdit1: TDBEdit
      Left = 272
      Top = 24
      Width = 62
      Height = 20
      BevelInner = bvNone
      BevelOuter = bvNone
      BevelKind = bkFlat
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'orden_dir'
      DataSource = DataSource1
      ParentCtl3D = False
      TabOrder = 2
    end
  end
  object sBitBtn2: TsBitBtn
    Left = 146
    Top = 285
    Width = 105
    Height = 33
    Caption = '&Guardar'
    TabOrder = 1
    OnClick = sBitBtn2Click
    Kind = bkOK
    SkinData.SkinSection = 'BUTTON'
  end
  object sBitBtn5: TsBitBtn
    Left = 258
    Top = 285
    Width = 105
    Height = 33
    Caption = '&Salir'
    TabOrder = 2
    OnClick = sBitBtn5Click
    Kind = bkClose
    SkinData.SkinSection = 'BUTTON'
  end
  object DBNavigator1: TDBNavigator
    Left = 106
    Top = 36
    Width = 330
    Height = 25
    DataSource = DataSource1
    Flat = True
    TabOrder = 3
    OnClick = DBNavigator1Click
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = FormLogin.ConexionBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from direccion_orden'
      'order by orden_dir')
    Left = 40
    Top = 8
    object ADOQuery1orden_dir: TIntegerField
      FieldName = 'orden_dir'
    end
    object ADOQuery1id_dir: TAutoIncField
      FieldName = 'id_dir'
      ReadOnly = True
    end
    object ADOQuery1nombre_dir: TStringField
      FieldName = 'nombre_dir'
      Size = 250
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 72
    Top = 8
  end
end
