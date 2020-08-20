object FormZonas: TFormZonas
  Left = 900
  Top = 228
  BorderStyle = bsToolWindow
  Caption = 'Clasificador de Zonas'
  ClientHeight = 323
  ClientWidth = 524
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
    Width = 524
    Height = 28
    Align = alTop
    Alignment = taCenter
    Caption = 'ZONAS'
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
    Width = 340
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
      DataField = 'zona_med'
      DataSource = DataSource1
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 48
      Width = 323
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
          Title.Alignment = taCenter
          Title.Caption = 'N'#186
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 40
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'zona_med'
          Title.Alignment = taCenter
          Title.Caption = 'Estado(s)'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 207
          Visible = True
        end>
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
    Connection = FormLogin.ConexionBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from zonas')
    Left = 40
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 72
    Top = 8
  end
end
