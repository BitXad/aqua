object FormNotificacion: TFormNotificacion
  Left = 357
  Top = 176
  BorderStyle = bsToolWindow
  Caption = 'Clasificador de Servicios'
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
    Caption = 'NOTIFICACI'#211'N '
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBnotifiacion: TDBMemo
      Left = 8
      Top = 24
      Width = 321
      Height = 185
      DataField = 'anuncio_emp'
      DataSource = DataSource1
      TabOrder = 0
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
    Width = 320
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
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
      'select * from empresa')
    Left = 40
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 72
    Top = 8
  end
end
