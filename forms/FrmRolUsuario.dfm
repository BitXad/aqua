object FormRolUsuario: TFormRolUsuario
  Left = 400
  Top = 331
  Width = 890
  Height = 513
  Caption = 'Usuarios - Roles'
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel2: TsPanel
    Left = 0
    Top = 0
    Width = 874
    Height = 27
    Align = alTop
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object sLabelFX1: TsLabelFX
      Left = 1
      Top = 1
      Width = 872
      Height = 24
      Align = alTop
      Alignment = taCenter
      Caption = 'ROLES DE USUARIO'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
    end
  end
  object sPanel1: TsPanel
    Left = 0
    Top = 27
    Width = 241
    Height = 401
    Align = alLeft
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    object sPanel4: TsPanel
      Left = 1
      Top = 1
      Width = 239
      Height = 32
      Align = alTop
      Caption = 'Seleccionar Usuario'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      SkinData.SkinSection = 'PANEL'
    end
    object Usuario: TDBLookupComboBox
      Left = 7
      Top = 40
      Width = 208
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      KeyField = 'LOGIN_USU'
      ListField = 'LOGIN_USU'
      ListSource = DataUsuario
      ParentFont = False
      TabOrder = 1
      OnClick = UsuarioClick
    end
    object sBitBtn1: TsBitBtn
      Left = 23
      Top = 72
      Width = 186
      Height = 33
      Caption = '&Asignar Nuevos Roles'
      TabOrder = 2
      OnClick = sBitBtn1Click
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000C40E0000C40E00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000E80AAFF0E80AAFF0E80AAFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000E80AAFFA1D2E2FFD5FDFFFF93E4F5FF1887AFFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000E80AAFF5DBFDBFFA0CEDFFFB2FBFFFF6DD4EDFF0E80AAFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000E80AAFF4EBEDCFF9ECDDDFF98F7FFFF2FA7CCFF0E80AAFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000E80AAFF3FBDDEFFA1D2E2FF1BD5FFFF1BD5FFFF0E80
        AAFF0E80AAFF0E80AAFF0E80AAFF0E80AAFF0000000000000000000000000000
        00000000000000000000000000000E80AAFF2EBADEFF49DCFEFF52DDFEFF5BDF
        FEFF64E2FFFF6DE3FEFF7AE8FFFF88F0FFFF0E80AAFF00000000000000000000
        0000000000000000000000000000000000000E80AAFF6DE3FEFF77E5FFFF82E7
        FFFF88E8FFFFA2F1FFFF98E4F7FFAEF5FFFF0E80AAFF00000000000000000000
        0000000000000000000000000000000000000E80AAFF98ECFFFFA1EEFFFFAAEF
        FFFFC0F9FFFFD6F1F5FF2E8EB2FFD5FDFFFF0E80AAFF00000000000000000000
        0000000000000000000000000000000000000E80AAFFBDF3FFFFC3F3FFFFD9FD
        FFFFDFF5F7FF248AB0FF0E80AAFFD9FDFFFF0E80AAFF00000000000000000000
        0000000000000000000000000000000000000E80AAFFCDF7FFFFCEF8FFFFAEDB
        E7FF2086ADFF0E80AAFF077CA7FFD9FDFFFF0E80AAFF00000000000000000000
        0000000000000000000000000000000000000E80AAFFF1FFFFFFD9FDFFFFA1DD
        EEFFA1DDEEFFB6EAF7FFCDF7FFFFD5FDFFFF0E80AAFF00000000000000000000
        000000000000000000000000000000000000000000000E80AAFF0E80AAFF0E80
        AAFF0E80AAFF0E80AAFF077CA7FF0E80AAFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      SkinData.SkinSection = 'BUTTON'
    end
    object Id_usu: TDBEdit
      Left = 8
      Top = 64
      Width = 17
      Height = 19
      DataField = 'id_usu'
      DataSource = DataUsuario
      ReadOnly = True
      TabOrder = 3
      Visible = False
    end
    object sBitBtn4: TsBitBtn
      Left = 23
      Top = 112
      Width = 186
      Height = 65
      Caption = 'Guardar Roles'
      TabOrder = 4
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
    object sBitBtn2: TsBitBtn
      Left = 214
      Top = 38
      Width = 23
      Height = 28
      TabOrder = 5
      OnClick = sBitBtn2Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
        33333333333F8888883F33330000324334222222443333388F3833333388F333
        000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
        F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
        223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
        3338888300003AAAAAAA33333333333888888833333333330000333333333333
        333333333333333333FFFFFF000033333333333344444433FFFF333333888888
        00003A444333333A22222438888F333338F3333800003A2243333333A2222438
        F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
        22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
        33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
        3333333333338888883333330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object sPanel3: TsPanel
    Left = 241
    Top = 27
    Width = 633
    Height = 401
    Align = alClient
    TabOrder = 2
    SkinData.SkinSection = 'PANEL'
    object DBGrid1: TDBGrid
      Left = 1
      Top = 33
      Width = 631
      Height = 367
      Align = alClient
      DataSource = DataRol
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'id_rol'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'ID.ROL'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'rol'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'NOMBRE DEL ROL'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 500
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'estado_rol'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'PERMISO'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 50
          Visible = True
        end>
    end
    object sPanel5: TsPanel
      Left = 1
      Top = 1
      Width = 631
      Height = 32
      Align = alTop
      Alignment = taLeftJustify
      Caption = 'Seleccionar Roles'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      SkinData.SkinSection = 'PANEL'
      object DBNavigator1: TDBNavigator
        Left = 32
        Top = 8
        Width = 240
        Height = 25
        DataSource = DataRol
        TabOrder = 0
        Visible = False
      end
      object sButton1: TsButton
        Left = 562
        Top = 2
        Width = 25
        Height = 27
        Caption = '[ ]'
        TabOrder = 1
        OnClick = sButton1Click
        SkinData.SkinSection = 'BUTTON'
      end
      object sButton2: TsButton
        Left = 588
        Top = 2
        Width = 25
        Height = 27
        Caption = '[x]'
        TabOrder = 2
        OnClick = sButton2Click
        SkinData.SkinSection = 'BUTTON'
      end
    end
  end
  object sPanel6: TsPanel
    Left = 0
    Top = 428
    Width = 874
    Height = 27
    Align = alBottom
    TabOrder = 3
    SkinData.SkinSection = 'PANEL'
  end
  object ADOUsuario: TADOQuery
    Active = True
    Connection = FormLogin.ConexionBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from usuario where estado_usu<>'#39'N'#39' order by login_usu a' +
        'sc')
    Left = 64
    Top = 9
  end
  object DataUsuario: TDataSource
    DataSet = ADOUsuario
    Left = 104
    Top = 8
  end
  object ADORol: TADOQuery
    Active = True
    Connection = FormLogin.ConexionBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from bolsarol order by rol asc')
    Left = 208
    Top = 1
  end
  object DataRol: TDataSource
    DataSet = ADORol
    Left = 240
  end
  object ADOQuery: TADOQuery
    Active = True
    Connection = FormLogin.ConexionBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from bolsarol order by rol asc')
    Left = 328
    Top = 1
  end
  object MainMenu1: TMainMenu
    Left = 40
    Top = 48
    object Archivo1: TMenuItem
      Caption = '&Archivo'
      object Salir1: TMenuItem
        Caption = '&Salir'
        OnClick = Salir1Click
      end
    end
  end
end
