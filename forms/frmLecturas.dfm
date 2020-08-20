object FormLecturas: TFormLecturas
  Left = 230
  Top = 78
  Width = 1077
  Height = 779
  Caption = 'Lecturas'
  Color = clWindow
  Ctl3D = False
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object PanelLista: TsPanel
    Left = 0
    Top = 101
    Width = 729
    Height = 600
    Align = alLeft
    TabOrder = 2
    SkinData.SkinSection = 'PANEL'
    object DBGAsoc: TDBGrid
      Left = 1
      Top = 28
      Width = 727
      Height = 571
      Align = alClient
      Color = clGrayText
      DataSource = DataPrime
      FixedColor = clMaroon
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGAsocCellClick
      OnDrawColumnCell = DBGPrimeDrawColumnCell
      OnDblClick = DBGAsocDblClick
      OnKeyDown = DBGAsocKeyDown
      OnKeyPress = DBGAsocKeyPress
      Columns = <
        item
          Alignment = taRightJustify
          Color = clWhite
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
          Color = clWhite
          Expanded = False
          FieldName = 'codigo_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Color = clSkyBlue
          Expanded = False
          FieldName = 'apellidos_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'Apellidos'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 120
          Visible = True
        end
        item
          Color = clSkyBlue
          Expanded = False
          FieldName = 'nombres_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'Nombre(s)'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 120
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'ci_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'C.I.'
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
          Color = clWhite
          Expanded = False
          FieldName = 'ciudad'
          Title.Alignment = taCenter
          Title.Caption = 'Exp'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 40
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'direccion_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'Direcci'#243'n'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'zona_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'Zona'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'tipo_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo Asoc.'
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
          Color = clWhite
          Expanded = False
          FieldName = 'fechanac_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha Nac.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'telefono_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'Telefono(s)'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'nit_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'N.I.T.'
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
          Color = clWhite
          Expanded = False
          FieldName = 'foto_soc'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'fechahora_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha Reg.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'medidor_asoc'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'Medidor'
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
          Color = clWhite
          Expanded = False
          FieldName = 'servicios_asoc'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'Servicios'
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
          Color = clWhite
          Expanded = False
          FieldName = 'id_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'Identific.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'estado'
          Title.Alignment = taCenter
          Title.Caption = 'Estado'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = False
        end>
    end
    object DBGPrime: TDBGrid
      Left = 1
      Top = 28
      Width = 727
      Height = 571
      Align = alClient
      Color = clGrayText
      DataSource = DataPrime
      FixedColor = clMaroon
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGPrimeCellClick
      OnDrawColumnCell = DBGPrimeDrawColumnCell
      OnDblClick = DBGPrimeDblClick
      OnKeyPress = DBGPrimeKeyPress
      Columns = <
        item
          Alignment = taRightJustify
          Color = clWhite
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
          Color = clWhite
          Expanded = False
          FieldName = 'codigo_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Color = clSkyBlue
          Expanded = False
          FieldName = 'apellidos_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'Apellidos'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 120
          Visible = True
        end
        item
          Color = clSkyBlue
          Expanded = False
          FieldName = 'nombres_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'Nombre(s)'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 120
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'direccion_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'Direcci'#243'n'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 140
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'ci_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'C.I.'
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
          Color = clWhite
          Expanded = False
          FieldName = 'ciudad'
          Title.Alignment = taCenter
          Title.Caption = 'Exp'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 40
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'tipo_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo Asoc.'
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
          Color = clWhite
          Expanded = False
          FieldName = 'fechanac_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha Nac.'
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
          Color = clWhite
          Expanded = False
          FieldName = 'telefono_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'Telefono(s)'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'nit_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'N.I.T.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'razon_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'Razon Soc.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'foto_soc'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'fechahora_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha Reg.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 130
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'medidor_asoc'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'Medidor'
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
          Color = clWhite
          Expanded = False
          FieldName = 'servicios_asoc'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'Servicios'
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
          Color = clWhite
          Expanded = False
          FieldName = 'id_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'Identific.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'estado'
          Title.Alignment = taCenter
          Title.Caption = 'Estado'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 727
      Height = 27
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Color = clBlack
      TabOrder = 2
      object sLabelFX1: TsLabelFX
        Left = 0
        Top = 0
        Width = 106
        Height = 25
        Align = alLeft
        Caption = ' Asociados'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      object ComboBox1: TComboBox
        Left = 176
        Top = 3
        Width = 109
        Height = 22
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvNone
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 14
        ParentFont = False
        TabOrder = 0
        Text = 'CODIGO'
        OnClick = CestadoClick
        Items.Strings = (
          'CODIGO'
          'APELLIDO(S)'
          'NOMBRE(S)')
      end
      object param: TsEdit
        Left = 287
        Top = 3
        Width = 180
        Height = 20
        CharCase = ecUpperCase
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = paramClick
        OnKeyPress = paramKeyPress
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
    end
    object Memo2: TMemo
      Left = 656
      Top = 88
      Width = 185
      Height = 89
      TabOrder = 3
      Visible = False
    end
  end
  object panelImportar: TsPanel
    Left = 15
    Top = 151
    Width = 649
    Height = 441
    TabOrder = 6
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 647
      Height = 27
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Color = clBlack
      TabOrder = 0
      object sLabelFX9: TsLabelFX
        Left = 0
        Top = 0
        Width = 170
        Height = 25
        Align = alLeft
        Caption = 'Importar Lecturas'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
    end
    object sPanel1: TsPanel
      Left = 1
      Top = 28
      Width = 647
      Height = 61
      Align = alTop
      TabOrder = 1
      SkinData.SkinSection = 'PANEL'
      object PB1: TsGauge
        Left = 17
        Top = 44
        Width = 607
        Height = 14
        SkinData.SkinSection = 'GAUGE'
        ForeColor = clBlack
        Progress = 0
        Suffix = '% Cargando datos...'
      end
      object ArchivoImportar: TEdit
        Left = 17
        Top = 23
        Width = 607
        Height = 20
        Color = clWindowFrame
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = '-'
      end
      object sBitBtn5: TsBitBtn
        Left = 17
        Top = 1
        Width = 123
        Height = 21
        Caption = '&Abrir Archivo'
        TabOrder = 1
        OnClick = sBitBtn5Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555555FFFFFFFFFF55555000000000055555577777777775F55500B8B8B8B8
          B05555775F555555575F550F0B8B8B8B8B05557F75F555555575550BF0B8B8B8
          B8B0557F575FFFFFFFF7550FBF0000000000557F557777777777500BFBFBFBFB
          0555577F555555557F550B0FBFBFBFBF05557F7F555555FF75550F0BFBFBF000
          55557F75F555577755550BF0BFBF0B0555557F575FFF757F55550FB700007F05
          55557F557777557F55550BFBFBFBFB0555557F555555557F55550FBFBFBFBF05
          55557FFFFFFFFF7555550000000000555555777777777755555550FBFB055555
          5555575FFF755555555557000075555555555577775555555555}
        NumGlyphs = 2
        SkinData.SkinSection = 'BUTTON'
      end
    end
    object sPanel2: TsPanel
      Left = 1
      Top = 397
      Width = 647
      Height = 43
      Align = alBottom
      TabOrder = 2
      SkinData.SkinSection = 'PANEL'
      object sBitBtn3: TsBitBtn
        Left = 352
        Top = 1
        Width = 158
        Height = 40
        Caption = '&Procesar Lecturas'
        TabOrder = 0
        OnClick = sBitBtn3Click
        Glyph.Data = {
          760A0000424D760A000000000000360400002800000028000000280000000100
          0800000000004006000000000000000000000001000000010000000000000000
          5500000080000000AA000000D5000000FF00002A0000002A5500002A8000002A
          AA00002AD500002AFF000055000000555500005580000055AA000055D5000055
          FF000080000000805500008080000080AA000080D5000080FF0000AA000000AA
          550000AA800000AAAA0000AAD50000AAFF0000D5000000D5550000D5800000D5
          AA0000D5D50000D5FF0000FF000000FF550000FF800000FFAA0000FFD50000FF
          FF005500000055005500550080005500AA005500D5005500FF00552A0000552A
          5500552A8000552AAA00552AD500552AFF005555000055555500555580005555
          AA005555D5005555FF005580000055805500558080005580AA005580D5005580
          FF0055AA000055AA550055AA800055AAAA0055AAD50055AAFF0055D5000055D5
          550055D5800055D5AA0055D5D50055D5FF0055FF000055FF550055FF800055FF
          AA0055FFD50055FFFF008000000080005500800080008000AA008000D5008000
          FF00802A0000802A5500802A8000802AAA00802AD500802AFF00805500008055
          5500805580008055AA008055D5008055FF008080000080805500808080008080
          AA008080D5008080FF0080AA000080AA550080AA800080AAAA0080AAD50080AA
          FF0080D5000080D5550080D5800080D5AA0080D5D50080D5FF0080FF000080FF
          550080FF800080FFAA0080FFD50080FFFF00AA000000AA005500AA008000AA00
          AA00AA00D500AA00FF00AA2A0000AA2A5500AA2A8000AA2AAA00AA2AD500AA2A
          FF00AA550000AA555500AA558000AA55AA00AA55D500AA55FF00AA800000AA80
          5500AA808000AA80AA00AA80D500AA80FF00AAAA0000AAAA5500AAAA8000AAAA
          AA00AAAAD500AAAAFF00AAD50000AAD55500AAD58000AAD5AA00AAD5D500AAD5
          FF00AAFF0000AAFF5500AAFF8000AAFFAA00AAFFD500AAFFFF00D5000000D500
          5500D5008000D500AA00D500D500D500FF00D52A0000D52A5500D52A8000D52A
          AA00D52AD500D52AFF00D5550000D5555500D5558000D555AA00D555D500D555
          FF00D5800000D5805500D5808000D580AA00D580D500D580FF00D5AA0000D5AA
          5500D5AA8000D5AAAA00D5AAD500D5AAFF00D5D50000D5D55500D5D58000D5D5
          AA00D5D5D500D5D5FF00D5FF0000D5FF5500D5FF8000D5FFAA00D5FFD500D5FF
          FF00FF000000FF005500FF008000FF00AA00FF00D500FF00FF00FF2A0000FF2A
          5500FF2A8000FF2AAA00FF2AD500FF2AFF00FF550000FF555500FF558000FF55
          AA00FF55D500FF55FF00FF800000FF805500FF808000FF80AA00FF80D500FF80
          FF00FFAA0000FFAA5500FFAA8000FFAAAA00FFAAD500FFAAFF00FFD50000FFD5
          5500FFD58000FFD5AA00FFD5D500FFD5FF00FFFF0000FFFF5500FFFF8000FFFF
          AA00FFFFD5003F3F3F006A6A6A0095959500C0C0C000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000000000000000000000000000000000000000000000000000FFFFFFFF
          FFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000
          0000000000FFFFFFFFFFFFFFFFFFFF6800000000000000000000000000000000
          00000000000000000000000000FFFFFFFFFFFFFFFFFF6854545454545400FEFE
          FEFEFEFEFEFEFEFEFEFE00545454D2545400000000FFFFFFFFFFFFFFFF685454
          545454545400FEFEFFFFFFFFFFFEFEFEFEFE00545454D2545454000000FFFFFF
          FFFFFFFFFF545454545454545400FEFE00686868FFFEFEFEFEFE00545454D254
          5454000000FFFFFFFFFFFFFFFF545454545454545400FEFE00686868FFFEFEFE
          FEFE00545454D2545454000000FFFFFFFFFFFFFFFF545454545454545400FEFE
          00686868FFFEFEFEFEFE00545454D2545454000000FFFFFFFFFFFFFFFF545454
          545454545400FEFE00686868FFFEFEFEFEFE00545454D2545454000000FFFFFF
          FFFFFFFFFF545454545454545400FEFE00000000FFFEFEFEFEFE00545454D254
          5454000000FFFFFFFFFFFFFFFF545454545454545400FEFEFEFEFEFEFEFEFEFE
          FEFE00545454D2545454000000FFFFFFFFFFFFFFFF545454545454545400FEFE
          FEFEFEFEFEFEFEFEFEFE005454D2D2545454000000FFFFFFFFFFFFFFFF545454
          5454545454000000000000000000000000000000000054545454000000FFFFFF
          FFFFFFFFFF545454545454545454545454545454545454545454545454545454
          5454000000FFFFFFFFFFFFFFFF54545454545454545454545454545454545454
          54545454545454545454000000FFFFFFFFFFFFFFFF5454545454545454545454
          545454545454545454545454545454545454000000FFFFFFFFFFFFFFFF545454
          D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2545454000000FFFFFF
          FFFFFFFFFF54545400545454545454545454545454545454545454545454D254
          5454000000FFFFFFFFFFFFFFFF5454540054FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF54D2545454000000FFFFFFFFFFFFFFFF5454540054FF5454545454
          545454545454545454545454FF54D2545454000000FFFFFFFFFFFFFFFF545454
          0054FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54D2545454000000FFFFFF
          FFFFFFFFFF5454540054FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54D254
          5454000000FFFFFFFFFFFFFFFF5454540054FF54545454545454545454545454
          54545454FF54D2545454000000FFFFFFFFFFFFFFFF5454540054FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF54D2545454000000FFFFFFFFFFFFFFFF545454
          0054FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54D2545454000000FFFFFF
          FFFFFFFFFF5454540054FF5454545454545454545454545454545454FF54D254
          5454000000FFFFFFFFFFFFFFFF5454540054FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF54D2545454000000FFFFFFFFFFFFFFFF5454540054FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF54D2545454000000FFFFFFFFFFFFFFFF545454
          0054FF5454545454545454545454545454545454FF54D2545454000000FFFFFF
          FFFFFFFFFF5454540054FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54D254
          5454000000FFFFFFFFFFFFFFFF5454540054FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF54D25454540000FFFFFFFFFFFFFFFFFFFF54540054545454545454
          5454545454545454545454545454D2545454FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        SkinData.SkinSection = 'BUTTON'
      end
      object sBitBtn4: TsBitBtn
        Left = 514
        Top = 1
        Width = 123
        Height = 40
        Caption = '&Salir'
        TabOrder = 1
        OnClick = sBitBtn4Click
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2
          FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF000000000000000000B1E2FFB1
          E2FF48B8FF48B8FFB1E2FFB1E2FFFFFFFFFFFFFFFFFFFFFFFFFFB1E2FFB1E2FF
          48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8
          FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FF000000006499005F92000000B1
          E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFFFFFFFFFFFFFB1E2FFB1E2FF
          B1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2
          FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF00000000659B00609400436900
          000048B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FF48B8FF48B8FF
          B1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2
          FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FF00000000679D006296004A7400
          466D00000048B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FF
          48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8
          FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FF0000000068A0006399004A7300
          4E79004A730000000092DC48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FFB1E2FF
          B1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2
          FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF000000006AA200659B004A7300
          4A73004A7300456C0000000092DC0092DC48B8FF48B8FFB1E2FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00B1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FF000000006CA400679D004A7300
          4369004A73004C77004871000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
          0048B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF000000006DA70068A0004A7300
          4870003F63004A7300507C000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
          000092DC0092DC48B8FF48B8FFB1E2FFB1E2FF000000006FA9006AA2004A7300
          4D7700446B003C5E004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
          000000000000000000000000000000000000000000000071AB006CA4004A7300
          527F004A73004166004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0C0C0C00000
          00B5BDC2B3BABEB1B7BBAFB4B7ADB1B4ACAEB10000000072AE006DA7004A7300
          5786004F7A00466D004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000C0C0C00000
          00B6BFC5B4BCC1B2B9BEB0B6BAAEB3B7ADB0B40000000074B0006FA9003E6200
          4A73005481004B74004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000027FF0000000000
          00B8C2C8B6BFC4B4BCC1B2B9BDB0B6BAAFB3B70000000076B20071AB004E7900
          456C004A7300507C004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000034FF002DFF0000
          00BAC5CCB8C2C8B6BFC5B4BCC1B2B9BEB1B6BB0000000077B50072AE005D8F00
          0000000000004A73004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA4A0A0A4A0A0A4A0A0A4A0A0A4A0A00000000042FF003BFF0034
          FF000000B9C5CBB7C2C8B6BFC4B4BCC1B3B9BE0000000079B70074B00000008E
          FFFF000000003A5C004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFA4A0A0A4A0A0A4A0A0A4A0A0A4A0A0A4A0A0000000004FFF0048FF0042
          FF003BFF000000B9C4CBB7C1C7B5BEC4B4BCC1000000007BBA0076B3000000B1
          FFFF000000003F63003757000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          000000000000000000000000000000000000000000000000005DFF0056FF004F
          FF0049FF0042FF000000B9C4CBB7C1C8B6BFC5000000007CBC0077B500558400
          000000000000446B003C5E000000C0C0C0808080FFFFFFFFFFFFFFFFFF000000
          00A0FF0099FF0092FF008BFF0085FF007EFF0077FF0071FF006AFF0063FF005C
          FF0056FF004FFF0048FF000000B9C4CBB8C2C8000000007EBE0079B7004A7300
          527F004A73004A73004166000000C0C0C0808080FFFFFFFFFFFFFFFFFF000000
          00AEFF00A7FF00A0FF0099FF0093FF008CFF0085FF007FFF0078FF0071FF006A
          FF0064FF005DFF0056FF0050FF000000BAC5CB000000007FC1007ABA004A7300
          4A73004F7A004F7A00466D000000C0C0C0808080FFFFFFFFFFFFFFFFFF000000
          00AEFF00A7FF00A0FF0099FF0093FF008CFF0085FF007FFF0078FF0071FF006A
          FF0064FF005DFF0056FF0050FF000000BCC8CF0000000081C3007CBC004A7300
          4369004A73005481004B74000000C0C0C0808080FFFFFFFFFFFFFFFFFF000000
          00BBFF00B4FF00ADFF00A6FF00A0FF0099FF0092FF008CFF0085FF007EFF0077
          FF0071FF006AFF0063FF000000BDCAD2BCC8CF0000000083C6007EBF004A7300
          4870003F63004A7300507C000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000092FF008BFF0084
          FF007EFF0077FF000000C0CFD8BECCD5BDCAD20000000084C8007FC1004A7300
          4D7700446B003C5E004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000A0FF0099FF0092
          FF008CFF000000C3D5DFC2D2DBC0CFD8BFCDD50000000086CB0081C4004A7300
          527F004A73004166004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000ADFF00A6FF009F
          FF000000C7DBE6C5D8E3C4D5DFC2D2DCC1D0D90000000088CD0083C6004A7300
          5786004F7A00466D004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000BAFF00B3FF0000
          00CBE1EDC9DEE9C7DBE6C5D8E2C3D5DFC2D3DC0000000089CF0084C800436900
          4A73005481004B74004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000C8FF0000000000
          00CCE4F1CAE1EDC8DEE9C7DBE6C5D8E2C4D5DFC2D2DB0000000086CB0081C400
          466D004A7300507C004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000F0FBFF0000
          00CEE7F4CCE4F0CAE1EDC9DEE9C7DBE6C6D8E3C4D5DFC2D2DB0000000083C600
          7FC0004A73004A73004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
          00D0EAF8CEE7F4CCE4F0CAE1EDC8DEE9C7DBE6C5D8E2C3D5DEC1D2DB00000000
          80C3007BBC004C77004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
          00D2EDFBD0EAF7CEE7F3CCE4F0CAE1ECC9DEE9C7DBE5C5D8E1C3D5DEC1D2DA00
          0000007DBE0079B700507C000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
          00D4F0FFD2EDFBD0EAF7CEE7F4CCE4F0CBE1EDC9DEE9C7DBE5C5D8E2C3D5DEC2
          D2DB000000007BBA0077B4000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FBFFF0FB
          FFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0
          FBFFF0FBFFF0FBFFF0FBFFF0FBFFC0C0C0FFFFFFFFFFFFFFFFFF}
        SkinData.SkinSection = 'BUTTON'
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 89
      Width = 647
      Height = 308
      Align = alClient
      Color = clGrayText
      DataSource = DataImport
      FixedColor = clMaroon
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Color = clWhite
          Expanded = False
          FieldName = 'num'
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
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'codigo'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Color = clSkyBlue
          Expanded = False
          FieldName = 'nombre_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'Nombre Completo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 200
          Visible = True
        end
        item
          Color = clSkyBlue
          Expanded = False
          FieldName = 'direccion'
          Title.Alignment = taCenter
          Title.Caption = 'Direcci'#243'n'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 120
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'servicio'
          Title.Alignment = taCenter
          Title.Caption = 'Servicio(S)'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'mes'
          Title.Alignment = taCenter
          Title.Caption = 'Mes'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'gestion'
          Title.Alignment = taCenter
          Title.Caption = 'Gesti'#243'n'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 50
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clYellow
          Expanded = False
          FieldName = 'lectura_act'
          Title.Alignment = taCenter
          Title.Caption = 'Lect.Act.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clYellow
          Expanded = False
          FieldName = 'lectura_ant'
          Title.Alignment = taCenter
          Title.Caption = 'Lect.Ant.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clYellow
          Expanded = False
          FieldName = 'consumo'
          Title.Alignment = taCenter
          Title.Caption = 'Cons.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'fecha'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha'
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
          Color = clWhite
          Expanded = False
          FieldName = 'hora'
          Title.Alignment = taCenter
          Title.Caption = 'Hora'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'estado'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Medidor'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Servicios'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'id_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'Identific.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'estado'
          Title.Alignment = taCenter
          Title.Caption = 'Estado'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end>
    end
  end
  object PanelTitulo: TPanel
    Left = 0
    Top = 0
    Width = 1061
    Height = 27
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = clBlack
    TabOrder = 0
    object Ltitulo: TsLabelFX
      Left = 0
      Top = 0
      Width = 91
      Height = 25
      Align = alLeft
      Caption = ' Lecturas'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
    end
    object Edit1: TEdit
      Left = 392
      Top = 8
      Width = 121
      Height = 20
      TabOrder = 0
      Text = 'Edit1'
      Visible = False
    end
  end
  object PanelOperaciones: TPanel
    Left = 0
    Top = 27
    Width = 1061
    Height = 74
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = clWhite
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 3
      Top = 4
      Width = 60
      Height = 62
      Flat = True
      Glyph.Data = {
        76380000424D763800000000000036000000280000003C0000003C0000000100
        200000000000403800000000000000000000000000000000000000602FDC0E55
        2CED6C0F19ED750918ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED740A18ED750918ED1B4A
        29ED00622FED015E2EDC00602FF10E552CFF6C0F19FF750918FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF740A18FF750918FF1B4A29FF00622FFF015E2EF100602FED0E55
        2CFF6C0F19FF750918FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF720816FF700413FF730A
        18FF730A18FF730A18FF710614FF700513FF730A18FF730A18FF6F0312FF6F03
        13FF710715FF710614FF730A19FF720917FF6F0312FF6E0111FF710715FF730A
        18FF730A18FF720917FF6F0313FF720917FF730A18FF730A18FF730917FF6F03
        13FF6E0111FF720816FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF740A18FF750918FF1B4A
        29FF00622FFF015E2EED00602FED0E552CFF6C0F19FF750918FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF720917FF781220FF822331FF730917FF730A18FF710714FF791423FF8122
        2FFF720917FF6F0413FF8A313EFF8B3340FF781321FF7E1C2AFF700814FF6F04
        13FF8B3440FF93424DFF76101DFF6F0313FF730918FF740B19FF842734FF740C
        1AFF730917FF720917FF6E0211FF89303DFF923F4BFF740B19FF700413FF730B
        19FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF740A18FF750918FF1B4A29FF00622FFF015E2EED00602FED0E55
        2CFF6C0F19FF750918FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF6E0110FF944450FFE0C9CCFF7106
        14FF710715FF700513FFDEC4C9FFD5B5B9FF670005FFAB6B74FFEFE4E5FFD5B3
        B8FFDFC7CAFFBB8990FF690209FFC5999FFFE6D3D6FFDBBFC3FFE3CDD0FF872D
        39FF6A010AFF903D49FFFEFDFDFF9A4C57FF6C010EFF6E0210FFB67F87FFE8D7
        DAFFDEC4C8FFDABCC1FF7C1826FF710614FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF740A18FF750918FF1B4A
        29FF00622FFF015E2EED00602FED0E552CFF6C0F19FF750918FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF6E0110FF954652FFE3CED1FF710614FF690009FFAC6E77FFFFFFFFFFD2AE
        B3FF690009FFDDC1C5FFA15963FF670005FFD1ADB2FFBD8B93FF954450FFE0C9
        CCFF6F0513FF640001FFA86771FF9C515CFF660003FFBD8B92FFEBDCDEFFC79B
        A1FF670006FF882F3BFFEADADDFF80212FFF6A000AFFCFAAAFFFBA868EFF6B00
        0CFF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF740A18FF750918FF1B4A29FF00622FFF015E2EED00602FED0E55
        2CFF6C0F19FF750918FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF6E0110FF954551FFE2CCCFFF6C01
        0EFF832532FFEDE0E2FFC4989FFFD3B0B4FF6B000CFFD6B6BBFF903C48FF6600
        03FFAE7179FFBB878FFFAB6C75FFE3CED1FFBE8E94FFC4979DFFBC8990FF9C51
        5CFF740B1AFFDEC4C8FF984954FFE3CFD2FF740D1AFF9E555FFFCFAAAFFF6A00
        0BFF6B000CFFA15A64FFD1ACB1FF6C000EFF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF740A18FF750918FF1B4A
        29FF00622FFF015E2EED00602FED0E552CFF6C0F19FF750918FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF6E0110FF954551FFE1CBCEFF6B000BFFD8B9BDFFBB8790FF9B515BFFD7B8
        BDFF6B000CFFD6B6BBFF92404CFF670005FFB0757DFFBC8890FFA15964FFE0C9
        CDFFA05962FF9F5760FFD5B5B9FFC19198FF94444FFFD6B7BBFF690008FFDABD
        C1FF9B4F5AFF903B47FFDEC3C7FF6B000DFF630000FFB1777FFFCAA0A6FF6C00
        0DFF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF740A18FF750918FF1B4A29FF00622FFF015E2EED00602FED0E55
        2CFF6C0F19FF750918FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF6E0110FF954551FFDABDC1FFA560
        6AFFECDEE0FF6F0913FFA25C66FFD7B8BDFF6B000CFFDCC0C5FF94434FFF6600
        04FFB47B83FFC5999FFF76131DFFDEC4C9FFAF727AFFA35D67FFE1CACDFF8A32
        3DFFCFAAAFFFAE7079FF630000FFB0757DFFD4B1B6FF6E0611FFDFC5CAFFC599
        9FFFAB6D74FFEDDFE1FF93424EFF6E0210FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF740A18FF750918FF1B4A
        29FF00622FFF015E2EED00602FED0E552CFF6C0F19FF750918FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF6E0110FF92404CFFECDEE0FFF0E4E6FF9A4E58FF640001FFA4606AFFD8B8
        BDFF6C000EFFA7646EFF842734FF6D040EFF93424DFF9D535DFF6A010BFF872C
        39FFC4979DFFCAA0A6FF92404CFF6F0412FFAE717AFF7F1E2CFF6E0411FF8121
        2FFFAF727AFF710714FF7E1D2BFFBF8F96FFCDA6ABFF974853FF6E0110FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF740A18FF750918FF1B4A29FF00622FFF015E2EED00602FED0E55
        2CFF6C0F19FF750918FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF6E0110FF913E4AFFFFFFFFFFC89D
        A3FF6B000BFF6B000CFFA7656EFFDDC3C8FF6D0010FF6D000EFF710715FF740B
        19FF6F0413FF6E0211FF740B19FF6F0413FF6B000BFF6B000BFF6E0211FF730A
        18FF6D000FFF710715FF740B19FF710615FF6D000EFF730A19FF700514FF6B00
        0CFF6B000BFF6E0110FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF740A18FF750918FF1B4A
        29FF00622FFF015E2EED00602FED0E552CFF6C0F19FF750918FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF700413FF862A37FFC4999FFF7D1B29FF700513FF6F0312FF913F4BFFB176
        7FFF6F0413FF730918FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF740A18FF750918FF1B4A29FF00622FFF015E2EED00602FED0E55
        2CFF700C18FF790617FF770717FF770717FF770717FF770717FF770717FF7707
        17FF770717FF770717FF770717FF770717FF770718FF760415FF70000CFF7503
        14FF770818FF770818FF740313FF720010FF770818FF770717FF770717FF7707
        17FF770717FF770717FF770717FF770717FF770717FF770717FF770717FF7707
        17FF770717FF770717FF770717FF770717FF770717FF770717FF770717FF7707
        17FF770717FF770717FF770717FF770717FF770717FF770717FF770717FF7707
        17FF770717FF770717FF770717FF770717FF770717FF780717FF790617FF1C49
        29FF00622FFF015E2EED00602FED0C572CFF591C1DFF61171CFF5F181CFF5F18
        1CFF5F181CFF5F181CFF5F181CFF5F181CFF5F181CFF5F181CFF5F181CFF5F18
        1CFF5F181CFF5F181CFF5F181CFF5F181CFF5F181CFF5F181CFF5F181CFF5F18
        1CFF5F181CFF5F181CFF5F181CFF5F181CFF5F181CFF5F181CFF5F181CFF5F18
        1CFF5F181CFF5F181CFF5F181CFF5F181CFF5F181CFF5F181CFF5F181CFF5F18
        1CFF5F181CFF5F181CFF5F181CFF5F181CFF5F181CFF5F181CFF5F181CFF5F18
        1CFF5F181CFF5F181CFF5F181CFF5F181CFF5F181CFF5F181CFF5F181CFF5F18
        1CFF5F181CFF60181CFF61171CFF164E2AFF00612FFF015E2EED015E2EED015E
        2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D
        2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D
        2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D
        2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D
        2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D
        2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D
        2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D2EFF025D2EFF015E
        2EFF015E2EFF015E2EED015E2EED015E2EFF005F2EFF005F2EFF005F2EFF005F
        2EFF005F2EFF005F2EFF005F2EFF005E2DFF005E2EFF005F2EFF005F2EFF005F
        2EFF005F2EFF005F2EFF005F2EFF005F2EFF005F2EFF005F2EFF005F2EFF005F
        2EFF005F2EFF005F2EFF005F2EFF005F2EFF005F2EFF005F2EFF005F2EFF005F
        2EFF005F2EFF005F2EFF005F2EFF005F2EFF005F2EFF005F2EFF005F2EFF005F
        2EFF005F2EFF005F2EFF005F2EFF005F2EFF005F2EFF005F2EFF005F2EFF005F
        2EFF005F2EFF005F2EFF005F2EFF005F2EFF005F2EFF005F2EFF005F2EFF005F
        2EFF005F2EFF005F2EFF005F2EFF015E2EFF015E2EFF015E2EED015E2EED015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF025F2FFF025F
        2FFF005725FF005522FF005623FF005927FF005B2BFF005D2DFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EED015E2EED015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF005C2CFF0A6436FFB2CFC0FFAACAB9FF7DAD94FF529271FF2D7A
        52FF0F673AFF005B2AFF005523FF005522FF005724FF005A28FF005D2DFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EED015E2EED015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF005D2DFF005A29FFC4DA
        D0FFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFCFFE4EEE9FFC1D9CDFF99BEABFF6CA2
        87FF448865FF26764DFF0B6436FF015D2DFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EED015E2EED015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF005522FF91B9A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7E6DFFF1C6D42FF0053
        20FF005B2BFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EED015E2EED015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF005522FF659E
        81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE1EDE7FF2C774FFF00521FFF519271FF12693CFF005927FF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EED015E2EED015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF005725FF3D8460FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0ECE6FF29754CFF004C16FF6FA489FFFFFF
        FFFFB7D3C4FF0B6131FF005927FF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EED015E2EED015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF005A29FF1B6F
        44FFF2F7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1ECE7FF2975
        4CFF004C16FF6FA489FFFFFFFFFFFFFFFFFFFFFFFFFFB5D1C3FF0B6132FF0059
        28FF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EED015E2EED015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF005C2CFF056030FFD4E4DCFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE0ECE6FF29754CFF004C16FF6EA489FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFB6D2C3FF0A6132FF005927FF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EED015E2EED015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF005E2EFF0057
        25FFADCCBCFFFFFFFFFFFFFFFFFFFFFFFFFFE0ECE6FF29754CFF004C16FF6EA4
        89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5D1
        C3FF0B6131FF005927FF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EED015E2EED015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF005522FF82B099FFFFFFFFFFFFFFFFFFE0EC
        E7FF29754CFF004C16FF6FA489FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5D1C3FF0B6132FF005928FF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EED015E2EED015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF0056
        23FF579575FFFFFFFFFFE1ECE6FF29754CFF004C16FF6EA489FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB6D2C3FF0A6132FF005927FF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EED015E2EED015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF005826FF38815BFFDDEAE3FF2A774EFF004C
        16FF6EA489FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5D1C3FF0B61
        31FF005927FF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EED015E2EED015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015D
        2CFF11683BFF207248FF00501CFF6FA489FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB5D1C3FF0B6132FF005928FF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EED015E2EED015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF005C2CFF00531FFF619C7EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB6D2C3FF0A6132FF005927FF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EED015E2EED015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF005A29FF2D784FFFD9E7E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5D1C3FF0B6131FF0059
        27FF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EED015E2EED015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2FFF005624FF2070
        45FFD7E6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFB5D1C3FF0B6132FF005928FF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EED015E2EED015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2FFF005624FF207045FFD7E6DFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6D2
        C3FF0A6132FF005927FF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EED015E2EED015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2FFF005624FF217045FFD7E6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5D1C3FF0B6131FF005927FF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EED015E2EED015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2FFF005624FF207045FFD7E6
        DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB5D1C3FF0B6132FF005928FF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EED015E2EED015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2FFF005624FF207045FFD7E6DEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6D2C3FF0B61
        32FF005927FF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EED015E2EED015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2FFF0056
        24FF217045FFD7E6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB5D2C3FF0B6131FF005927FF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EED015E2EED015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2FFF005624FF207045FFD7E6DFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB5D1C3FF0B6132FF005928FF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EED015E2EED015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2FFF005624FF207045FFD7E6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6D2C3FF0A6132FF0059
        27FF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EED015E2EED015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2FFF005624FF2170
        45FFD7E6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFB5D2C3FF0B6131FF005927FF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EED015E2EED015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2FFF005624FF207045FFD7E6DFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5D1
        C3FF0F6334FF005B2AFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EED015E2EED015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2FFF005624FF217045FFD7E6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAECDBDFF025B29FF005C2CFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EED015E2EED015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2FFF005624FF217045FFD7E6
        DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F8
        F6FF508F6EFF005623FF005C2BFF005B2AFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EED015E2EED015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2FFF005624FF207045FFD7E7DFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF3F8F6FF468966FF004A13FF629C7EFFAECDBDFF0B63
        34FF005928FF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EED015E2EED015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2FFF0056
        24FF217045FFD7E6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F8F6FF468966FF0049
        13FF599677FFFBFCFCFFFFFFFFFFB6D2C3FF0B6132FF005927FF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EED015E2EED015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2FFF005624FF217045FFD7E6DFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF3F8F6FF478966FF004913FF5A9677FFFBFDFCFFFFFFFFFFFFFFFFFFFFFF
        FFFFB5D2C3FF0B6131FF005927FF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EED015E2EED015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2FFF005624FF207045FFD7E7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F8F6FF468966FF004A13FF599677FFFCFD
        FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5D1C3FF0E6233FF005B
        2AFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EED015E2EED015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2FFF005624FF2170
        45FFD7E6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F8F6FF4689
        66FF004913FF599677FFFBFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFA3C5B4FF015928FF005D2DFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EED015E2EED015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2FFF005624FF217045FFD7E6DFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF3F8F6FF478966FF004913FF5A9677FFFBFDFCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEEAE4FF025F
        2FFF005C2CFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EED015E2EED015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2FFF005624FF207045FFD7E6DFFFFFFFFFFFF3F7F5FF468966FF004913FF5996
        77FFFCFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF72A68BFF005725FF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EED015E2EED015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2FFF005624FF217349FFC2D9
        CEFF4C8E6CFF004913FF599677FFFBFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83B19AFF005826FF015D
        2DFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EED015E2EED015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2FFF005A29FF025E2FFF005724FF609A7CFFFBFDFCFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF84B19AFF005624FF005C2CFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EED015E2EED015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF005B
        29FF0B6233FFD3E4DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF84B19AFF005624FF005C2BFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EED015E2EED015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF005A28FF237247FFD7E6DFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83B19AFF0056
        24FF005C2BFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EED015E2EED015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2FFF005624FF207045FFD7E6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF84B19AFF005624FF005C2CFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EED015E2EED015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2FFF005624FF2070
        45FFD8E6DFFFFFFFFFFFFFFFFFFFFFFFFFFF84B19AFF005624FF005C2BFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EED015E2EED015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2FFF005624FF1F7045FFBAD4C7FFDDEAE3FF76A8
        8FFF005826FF005C2BFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EED015E2EED015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2FFF005928FF005D2DFF0A6436FF005725FF005D2DFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EED015E2EF1015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF005D2DFF005C2BFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E2EFF015E
        2EFF015E2EFF015E2EF1015E2EDC015E2EED015E2EED015E2EED015E2EED015E
        2EED015E2EED015E2EED015E2EED015E2EED015E2EED015E2EED015E2EED015E
        2EED015E2EED015E2EED015E2EED015E2EED015E2EED015E2EED015E2EED015E
        2EED015E2EED015E2EED015E2EED015E2EED015E2EED015E2EED015E2EED015E
        2EED015E2EED015E2EED015E2EED015E2EED015E2EED015E2EED015E2EED015E
        2EED015E2EED015E2EED015E2EED015E2EED015E2EED015E2EED015E2EED015E
        2EED015E2EED015E2EED015E2EED015E2EED015E2EED015E2EED015E2EED015E
        2EED015E2EED015E2EED015E2EED015E2EED015E2EED015E2EDC}
      OnClick = SpeedButton1Click
    end
    object BModificar: TSpeedButton
      Left = 65
      Top = 4
      Width = 60
      Height = 62
      Flat = True
      Glyph.Data = {
        76380000424D763800000000000036000000280000003C0000003C0000000100
        2000000000004038000000000000000000000000000000000000A50865DC9F08
        5BED760A1DED720A17ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED720A17ED9808
        51EDA60866EDA40863DCA50865F19F085BFF760A1DFF720A17FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF720A17FF980851FFA60866FFA40863F1A50865ED9F08
        5BFF760A1DFF720A17FF730A18FF730A18FF730A18FF730A18FF730A18FF7208
        16FF700513FF730A19FF710715FF6F0313FF730A18FF720816FF700513FF730A
        18FF730A18FF710614FF6E0111FF700513FF730A18FF730A18FF730A18FF6F03
        12FF6F0313FF710614FF710715FF720917FF700513FF730A19FF700514FF7208
        16FF730917FF700513FF730A18FF730A18FF700514FF6E0111FF710614FF730A
        18FF720917FF6E0211FF6F0312FF720816FF700513FF730A18FF710614FF7107
        15FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF720A17FF9808
        51FFA60866FFA40863EDA50865ED9F085BFF760A1DFF720A17FF730A18FF730A
        18FF730A18FF730A18FF720917FF791321FF81212FFF710915FF7A1524FF8326
        33FF710715FF791321FF81212FFF730918FF6E0211FF7B1826FF94434FFF8020
        2EFF6D0010FF730917FF6E0211FF8B323FFF8A323FFF7A1524FF7B1826FF7610
        1DFF80202EFF720916FF7F1E2CFF791423FF750D1BFF81222FFF740B19FF6E01
        10FF7F1E2CFF94434FFF7B1826FF6E0210FF720816FF8F3B47FF8E3844FF7209
        17FF812230FF740C1AFF7D1B29FF7B1625FF720916FF730A18FF730A18FF730A
        18FF730A18FF730A18FF720A17FF980851FFA60866FFA40863EDA50865ED9F08
        5BFF760A1DFF720A17FF730A18FF730A18FF730A18FF730A18FF6D000FFF9C53
        5DFFD7B9BDFF670005FFBF8F96FFFAF6F7FF781220FF9A4D58FFD7B9BDFF6B01
        0BFF8C3541FFE7D4D7FFD9BDC0FFE8D7DAFF9E555FFF670006FFB1777FFFE9D8
        DAFFD8BABEFFE9D7DAFFAB6B74FF8A313DFFD5B4B8FF680007FFCDA4AAFFA15B
        65FF80202DFFDABCC0FF710615FF964752FFE8D6D8FFD8BBBEFFE6D2D5FF882F
        3AFFB8828AFFE7D4D7FFD9BABEFFDABEC1FFDDC2C7FF6D040FFFC19399FFAA6A
        73FF6C000DFF730A18FF730A18FF730A18FF730A18FF730A18FF720A17FF9808
        51FFA60866FFA40863EDA50865ED9F085BFF760A1DFF720A17FF730A18FF730A
        18FF730A18FF730A18FF6D000FFF9D555FFFD9BCC0FF700613FFDABDC1FFEBDB
        DDFF9B505AFF974853FFDABEC1FF6A0109FFD6B5BAFFB1767EFF660004FF994C
        58FFE3CDD0FF882F3AFFE7D5D8FF812330FF6F0612FFE1CACEFFB0747CFF8A32
        3EFFD8B9BDFF680007FFCFA9AEFFA25D67FF80202DFFDCC0C3FF750D1BFFDFC5
        C9FF9E5660FF650003FFB1757EFFC19399FFE1CACDFF984B55FF650001FFBB88
        8FFFDEC4C8FF660004FFC4989FFFAC6D76FF6C000DFF730A18FF730A18FF730A
        18FF730A18FF730A18FF720A17FF980851FFA60866FFA40863EDA50865ED9F08
        5BFF760A1DFF720A17FF730A18FF730A18FF730A18FF730A18FF6D000FFF9D54
        5EFFD5B4B8FF8B323FFFD8B9BDFFAA6A73FFC4999FFF964651FFD8BABEFF7309
        18FFDEC4C8FF832633FF6D0010FF750E1CFFDABDC1FFAE727BFFD1ACB1FF6C00
        0DFF690008FFBA868EFFB17880FF8A323EFFD7B7BBFF680007FFCEA7ACFFA25C
        66FF80202DFFD9BBBFFF822330FFDEC4C9FF7B1624FF700513FF6F0312FF7007
        14FFA46069FFE1C9CDFFD5B5B9FFD7B8BCFFD7B7BCFF670006FFC3969DFFAA6A
        73FF6C000DFF730A18FF730A18FF730A18FF730A18FF730A18FF720A17FF9808
        51FFA60866FFA40863EDA50865ED9F085BFF760A1DFF720A17FF730A18FF730A
        18FF730A18FF730A18FF6D000FFF9D545EFFD1ADB2FFB17780FFBF8E95FF7C19
        28FFDCC1C4FFA35D67FFD7B8BCFF6E0411FFDFC5C9FF913E4AFF630000FF7D1B
        29FFE1CACDFF9E5460FFDBBEC2FF6C000DFF640001FFCDA6ABFFB1767EFF8A32
        3EFFD7B8BCFF650002FFCBA2A8FF9D535EFF7D1B28FFDABDC1FF7C1826FFE2CB
        CEFF832532FF660003FF81212FFF842634FF842734FF872C39FF852E36FFC091
        97FFDCC0C4FF670006FFC5999FFFB1777FFF630000FF720716FF730A18FF730A
        18FF730A18FF730A18FF720A17FF980851FFA60866FFA40863EDA50865ED9F08
        5BFF760A1DFF720A17FF730A18FF730A18FF730A18FF730A18FF6D000FFF9D53
        5EFFD5B3B8FFD5B4B8FF9A4E59FF690009FFD5B3B8FFC09198FFD4B2B7FF6800
        07FFAF747CFFE6D3D6FFA46569FFD9BBBFFFC4969DFF6E0711FFDCC0C4FFC091
        98FFB27880FFF8F2F3FFAB6B75FF8C3541FFD9BBBFFF812630FFE4CFD2FFCBA4
        A9FF9A4D58FFDEC4C9FF700413FFBD8B93FFDBBFC3FFA46569FFEBDBDEFF9F57
        61FFB37981FFDCBFC3FF9A555AFFD7B7BBFFCDA6ACFF640002FFC59AA0FFEADA
        DCFFA96971FF7F1E2CFF710615FF730A18FF730A18FF730A18FF720A17FF9808
        51FFA60866FFA40863EDA50865ED9F085BFF760A1DFF720A17FF730A18FF730A
        18FF730A18FF730A18FF6D000FFF9A4F59FFEADADCFFDFC7CBFF7B1625FF6900
        08FFB27981FFEAD9DCFFD2AEB2FF6E0211FF700513FFA7656FFFCFA9AFFFB37A
        82FF750D1BFF6E0410FF80202EFFC2959BFFBA888EFFC99EA4FFB27780FF7A17
        23FF9E555FFF8B343FFFECDFE1FFD7B6BBFF93434DFFA15963FF730B19FF730B
        19FFB0757DFFCFA9AFFFA8666FFF700413FF730B19FFAD6F78FFCFA9AFFFBD8B
        92FF7E1D2AFF6D040FFF984A55FFAB6B74FFC99FA5FF842734FF700513FF730A
        18FF730A18FF730A18FF720A17FF980851FFA60866FFA40863EDA50865ED9F08
        5BFF760A1DFF720A17FF730A18FF730A18FF730A18FF730A18FF6D000EFF994C
        57FFFFFFFFFFCEA7ACFF6B000CFF6E0211FF8C3542FFFFFFFFFFDCC1C5FF6E02
        11FF720816FF6C000EFF6A000BFF6C000DFF720816FF740B19FF700513FF6B00
        0BFF620000FFBF8E95FFB8838BFF76111CFF964652FF670004FFC99FA5FFC090
        97FF842833FF964752FF740D1BFF710715FF6C000DFF6A000BFF6C000EFF730A
        18FF720817FF6C000DFF6B000BFF6B000CFF710614FF740B19FF6F0312FF6C00
        0EFF6B000BFF710715FF730B19FF730A18FF730A18FF730A18FF720A17FF9808
        51FFA60866FFA40863EDA50865ED9F085BFF760A1DFF720A17FF730A18FF730A
        18FF730A18FF730A18FF6F0413FF8A313DFFCCA4AAFF954450FF6E0310FF7208
        16FF750E1CFFC2949AFFB27981FF700513FF730917FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF6E0311FFA15963FF994C57FF8325
        33FFB57E85FF6E0411FF8C3542FFDBBEC2FFC4989EFFB47C84FF750E1CFF7209
        17FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF720A17FF980851FFA60866FFA40863EDA50865ED9F08
        5BFF740A1BFF700A14FF710A15FF710A15FF710A15FF710A15FF720B16FF6F07
        13FF6A000BFF6E0411FF720B16FF710A16FF710914FF6A000BFF6C010EFF720A
        16FF710A15FF710A15FF710A15FF710A15FF710A15FF710A15FF710A15FF710A
        15FF720B16FF6D0310FF6E0411FF700814FF6C020EFF720B16FF6E0410FF6D03
        10FF6F0613FF6C010EFF710A15FF710A15FF710A15FF710A15FF710A15FF710A
        15FF710A15FF710A15FF710A15FF710A15FF710A15FF710A15FF710A15FF710A
        15FF710A15FF710A15FF710A15FF710A15FF710A15FF710A15FF700A14FF9808
        50FFA60866FFA40863EDA50865EDA0085CFF7E0A29FF7B0A24FF7C0A25FF7C0A
        25FF7C0A25FF7C0A25FF7C0A25FF7C0A25FF7B0925FF7C0A25FF7C0A25FF7C0A
        25FF7C0A25FF7B0925FF7B0A25FF7C0A25FF7C0A25FF7C0A25FF7C0A25FF7C0A
        25FF7C0A25FF7C0A25FF7C0A25FF7C0A25FF7C0A25FF7C0A25FF7C0A25FF7C0A
        25FF7B0A25FF7C0A25FF7C0A25FF7B0924FF7B0925FF7C0A25FF7C0A25FF7C0A
        25FF7C0A25FF7C0A25FF7C0A25FF7C0A25FF7C0A25FF7C0A25FF7C0A25FF7C0A
        25FF7C0A25FF7C0A25FF7C0A25FF7C0A25FF7C0A25FF7C0A25FF7C0A25FF7C0A
        25FF7C0A25FF7C0A25FF7B0A24FF9A0854FFA60866FFA40863EDA40863EDA408
        63FFA40862FFA40862FFA40862FFA40862FFA40862FFA40862FFA40862FFA408
        62FFA40862FFA30862FFA30762FFA30762FFA30762FFA30762FFA30762FFA307
        62FFA30762FFA30762FFA30762FFA30762FFA30762FFA30762FFA30762FFA307
        62FFA30762FFA30762FFA30762FFA30762FFA30762FFA30762FFA30762FFA307
        62FFA30762FFA30762FFA30762FFA30762FFA30762FFA30762FFA30762FFA307
        62FFA30762FFA30762FFA30762FFA30762FFA30762FFA30862FFA40862FFA408
        62FFA40862FFA40862FFA40862FFA40862FFA40862FFA40862FFA40862FFA408
        63FFA40863FFA40863EDA40863EDA40863FFA40864FFA40864FFA40864FFA408
        64FFA40864FFA40864FFA40864FFA50864FFA30360FFA0005CFFA20160FFA202
        60FFA20260FFA20260FFA20260FFA20260FFA20260FFA20260FFA20260FFA202
        60FFA20260FFA20260FFA20260FFA20260FFA20260FFA20260FFA20260FFA202
        60FFA20260FFA20260FFA20260FFA20260FFA20260FFA20260FFA20260FFA202
        60FFA20260FFA20260FFA20260FFA20260FFA20260FFA20260FFA20260FFA202
        60FFA2015FFFA0005CFFA30361FFA50864FFA40864FFA40864FFA40864FFA408
        64FFA40864FFA40864FFA40864FFA40863FFA40863FFA40863EDA40863EDA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA101
        5EFFAB186EFFD589B5FFE9C3DAFFEBC9DDFFEBC8DCFFEBC8DCFFEBC8DCFFEBC8
        DCFFEBC8DCFFEBC8DCFFEBC8DCFFEBC8DCFFEBC8DCFFEBC8DCFFEBC8DCFFEBC8
        DCFFEBC8DCFFEBC8DCFFEBC8DCFFEBC8DCFFEBC8DCFFEBC8DCFFEBC8DCFFEBC8
        DCFFEBC8DCFFEBC8DCFFEBC8DCFFEBC8DCFFEBC8DCFFEBC8DCFFEBC8DCFFEBC8
        DCFFEBC8DCFFEBC8DCFFEBC8DCFFEBC9DDFFE9C2DAFFD385B2FFA9156BFFA202
        5FFFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863EDA40863EDA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA20460FFAA186DFFEED1E2FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFECCBDEFFA8136AFFA30461FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863EDA40863EDA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FF9F005AFFD487
        B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD07D
        ADFF9F005BFFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863EDA40863EDA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA0005BFFE5B6D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE5B7D3FFA1005DFFA40763FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863EDA40863EDA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA0005BFFE4B3
        D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6BB
        D5FFA1005EFFA40762FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863EDA40863EDA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA0005BFFE4B3D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF7EAF2FFE2AFCEFFE3B1CFFFE3B2CFFFE3B2CFFFE3B2CFFFE3B2CFFFE3B2
        CFFFE3B2CFFFE3B2CFFFE3B2CFFFE3B2CFFFE3B2CFFFE3B2CFFFE3B2CFFFE3B2
        CFFFE3B2CFFFE3B2CFFFE3B2CFFFE3B2CFFFE3B2CFFFE3B2CFFFE3B2CFFFE3B2
        CFFFE3B2CFFFE3B2CFFFE3B2CFFFE3B2CFFFE3B1CFFFE3B0CEFFF8EDF3FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE6BAD4FFA1005EFFA40762FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863EDA40863EDA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA0005BFFE4B3
        D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6B8D3FF9E0059FFA1005DFFA100
        5EFFA1005EFFA1005EFFA1005EFFA1005EFFA1005EFFA1005EFFA1005EFFA100
        5EFFA1005EFFA1005EFFA1005EFFA1005EFFA1005EFFA1005EFFA1005EFFA100
        5EFFA1005EFFA1005EFFA1005EFFA1005EFFA1005EFFA1005EFFA1005EFFA100
        5EFFA0005DFFA0005BFFE8C1D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6BA
        D4FFA1005EFFA40762FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863EDA40863EDA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA0005BFFE4B3D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE7BBD5FFA1005EFFA40661FFA40762FFA40762FFA40762FFA40762FFA407
        62FFA40762FFA40762FFA40762FFA40762FFA40762FFA40762FFA40762FFA407
        62FFA40762FFA40762FFA40762FFA40762FFA40762FFA40762FFA40762FFA407
        62FFA40762FFA40762FFA40762FFA40762FFA30561FFA30360FFE9C3DAFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE6BAD4FFA1005EFFA40762FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863EDA40863EDA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA0005BFFE4B3
        D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BBD5FFA1015FFFA40762FFA408
        63FFA1015FFFA0005CFFA0005BFFA0005BFFA0005BFFA0005BFFA0005BFF9F00
        5BFFA20360FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA30662FFA30461FFE9C3DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6BA
        D4FFA1005EFFA40762FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863EDA40863EDA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA0005BFFE4B3D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE7BBD5FFA1015FFFA40762FFA1035EFFC45E9AFFDD9FC3FFDC9EC2FFDC9E
        C2FFDC9EC2FFDC9EC2FFDC9FC2FFD995BCFFB02878FFA20460FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA30662FFA30461FFE9C3DAFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE6BAD4FFA1005EFFA40762FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863EDA40863EDA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA0005BFFE4B3
        D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BBD5FFA1015FFFA40762FF9F00
        5BFFDC9DC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD385B2FF9F005AFFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA30662FFA30461FFE9C3DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6BA
        D4FFA1005EFFA40762FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863EDA40863EDA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA0005BFFE4B3D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE7BBD5FFA1015FFFA40762FF9F005BFFD995BCFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8ECF3FFAE2475FFA2035FFFA1005EFFA202
        5FFFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA30662FFA30461FFE9C3DAFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE6BAD4FFA1005EFFA40762FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863EDA40863EDA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA0005BFFE4B3
        D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BBD5FFA1015FFFA40762FF9F00
        5BFFD995BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC867
        A0FF9F005AFFA1005DFFB73C84FFAF2777FFA0005DFFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA30662FFA30461FFE9C3DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6BA
        D4FFA1005EFFA40762FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863EDA40863EDA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA0005BFFE4B3D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE7BBD5FFA1015FFFA40762FF9F005BFFD995BCFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDC9DC1FFA0015DFFA1015EFFA81369FFF5E2EDFFF0D5
        E5FFAB1B6FFFA0005CFFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA30662FFA30461FFE9C3DAFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE6BAD4FFA1005EFFA40762FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863EDA40863EDA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA0005BFFE4B3
        D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BBD5FFA1015FFFA40762FF9F00
        5BFFD995BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2AFCDFFA40A63FFA101
        5FFFA0005CFFDEA4C7FFFFFFFFFFFFFFFFFFEDCEE1FFAB1B6FFFA0005CFFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA30662FFA30461FFE9C3DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6BA
        D4FFA1005EFFA40762FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863EDA40863EDA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA0005BFFE4B3D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE7BBD5FFA1015FFFA40762FF9F005BFFDA97BEFFFFFFFFFFFFFFFFFFFFFF
        FFFFDB9AC0FFA40963FFA1015EFF9E005AFFD17FAEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEDCDE0FFAB1B6FFFA0005CFFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA30662FFA30461FFE9C3DAFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE6BAD4FFA1005EFFA40762FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863EDA40863EDA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA0005BFFE4B3
        D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BBD5FFA1015FFFA40762FF9F00
        5BFFD68DB7FFFFFFFFFFF6E7F0FFC7649DFFA0005DFFA1005EFF9F005AFFCC73
        A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCEE0FFAB1B
        6FFFA0005CFFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA30662FFA30461FFE9C3DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6BA
        D4FFA1005EFFA40762FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863EDA40863EDA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA0005BFFE4B3D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE7BBD5FFA1015FFFA40762FFA30560FFAD2073FFCE78AAFFAE2274FF9F00
        5AFFA1005DFFA1015EFFD282B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFEECFE1FFAB1B6FFFA0005CFFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA30662FFA30461FFEBC8DDFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE6BAD4FFA1005EFFA40762FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863EDA40863EDA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA0005BFFE4B3
        D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BBD5FFA1015FFFA40762FFA408
        63FFA30460FF9F005AFFA20360FFA1005DFFAA1A6EFFE0A9CAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEDCEE0FFAB1B6FFFA0005CFFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40762FFA1025EFFE3B1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6BA
        D4FFA1005EFFA40762FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863EDA40863EDA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA0005BFFE4B3D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE7BBD5FFA1015FFFA40762FFA40863FFA40863FFA40863FFA1025EFFB941
        87FFF6E7F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCEE0FFAB1B6FFFA000
        5CFFA40863FFA40863FFA40863FFA40863FFA40863FFA20460FFAB1D6FFFEDCD
        E0FFFFFFFFFFFFFFFFFFFFFFFFFFE6BAD4FFA1005EFFA40762FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863EDA40863EDA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA0005BFFE4B3
        D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BBD5FFA1015FFFA40762FFA408
        63FFA40863FFA40863FFA20460FFAD2173FFECCBDFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFEECFE1FFAB1B6FFFA0005CFFA40863FFA40863FFA408
        63FFA40863FFA40863FFA0005CFFAA1A6EFFEDCEE1FFFFFFFFFFFFFFFFFFE6BA
        D4FFA1005EFFA40762FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863EDA40863EDA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA0005BFFE4B3D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE7BBD5FFA1015FFFA40762FFA40863FFA40863FFA40863FFA40863FFA100
        5DFFA8146AFFEAC3DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCE
        E0FFAB1B6FFFA0005CFFA40863FFA40863FFA40863FFA40863FFA40863FFA000
        5CFFAB1C6FFFEED0E2FFFFFFFFFFE6BAD4FFA1005EFFA40762FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863EDA40863EDA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA0005BFFE4B3
        D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BBD5FFA1015FFFA40762FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA0005DFFA8146AFFEAC3DAFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCEE0FFAB1B6FFFA0005CFFA408
        63FFA40863FFA40863FFA40863FFA40863FFA0005CFFAB1D70FFF1D9E7FFEBC9
        DDFFA1005EFFA40762FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863EDA40863EDA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA0005BFFE4B3D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE7BBD5FFA1015FFFA40762FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA1005DFFA8146AFFEAC3DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEECFE1FFAB1B6FFFA0005CFFA40863FFA40863FFA40863FFA408
        63FFA40863FFA0005CFFB12A78FFD791B9FFA40763FFA40762FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863EDA40863EDA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA0005BFFE4B3
        D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BBD5FFA1015FFFA40762FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA1005DFFA814
        6AFFEAC3DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCEE0FFAB1B
        6FFFA0005CFFA40863FFA40863FFA40863FFA40863FFA40863FFA2025FFFA50B
        65FFA50A64FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863EDA40863EDA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA0005BFFE4B3D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE7BBD5FFA1015FFFA40762FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA0005DFFA8146AFFE9C3DAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCEE0FFAB1B6FFFA0005CFFA40863FFA408
        63FFA40863FFA40863FFA40863FFA30662FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863EDA40863EDA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA0005BFFE4B3
        D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BBD5FFA1015FFFA40762FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA1005DFFA8146AFFEAC3DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEECFE1FFAB1B6FFFA0005CFFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863EDA40863EDA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA0005BFFE4B3D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE7BBD5FFA1015FFFA40762FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA1005DFFA8146AFFE9C3
        DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCEE0FFAB1D70FFA203
        5FFFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863EDA40863EDA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA0005BFFE4B3
        D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BBD5FFA1015FFFA40762FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA0005DFFA8136AFFE9C2DAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFEDCEE1FFA61167FFA30561FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863EDA40863EDA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA0005BFFE4B3D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE7BBD5FFA1015FFFA40762FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA100
        5DFFA8146AFFEAC3DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5B7D2FFA307
        61FFA30562FFA30561FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863EDA40863EDA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA0005BFFE4B3
        D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BBD5FFA1015FFFA40762FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA1005DFFA8146AFFE9C3DAFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFAF3F7FFB12C7AFFA1015DFFA40762FFA60D66FFA2025FFFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863EDA40863EDA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA0005BFFE4B3D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE7BBD5FFA1015FFFA40762FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA0005DFFA8136AFFE9C3DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC869A0FF9F005AFF9F00
        5BFFBB478CFFE9C3DAFFAC1D71FFA0005CFFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863EDA40863EDA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA0005BFFE4B3
        D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BBD5FFA1015FFFA40762FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA1005DFFA814
        6AFFEAC3DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD68DB7FFA0005CFFA1005EFFA71369FFF0D6E5FFFFFFFFFFEDCFE1FFAC1F
        71FFA20460FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863EDA40863EDA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA0005BFFE4B3D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE7BBD5FFA0005EFFA30561FFA30662FFA30662FFA30662FFA30662FFA306
        62FFA30662FFA30662FFA30662FFA30662FFA30662FFA40762FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA1005DFFA8146AFFE9C3DAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD58BB6FFA1025EFFA1015EFFA2045FFFE1AB
        CBFFFFFFFFFFFFFFFFFFFFFFFFFFE1ACCCFFA0005CFFA40763FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863EDA40863EDA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA0005BFFE4B3
        D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BAD5FFA1015FFFA40762FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA30460FFA2025FFFA40863FFA40863FFA40863FFA40863FFA408
        63FFA0005DFFA8146AFFE9C2DAFFFFFFFFFFFFFFFFFFF9EFF5FFC8679EFFA000
        5CFFA1015EFFA0005DFFD994BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1AD
        CCFFA0005CFFA40763FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863EDA40863EDA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA0005BFFE4B3D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFAF1F6FFEBCADEFFECCBDFFFECCBDFFFECCBDFFFECCBDFFFECCBDFFFECCB
        DFFFECCBDFFFECCBDFFFECCBDFFFECCBDFFFEDCDDFFFE6BAD4FFAF2677FFA000
        5BFFA40863FFA40863FFA40863FFA40863FFA40863FFA1005DFFA8156BFFE9C0
        D8FFE3B0CEFFB12B79FF9F005AFFA1005DFFA20560FFD996BDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD282B0FF9F005AFFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863EDA40863EDA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA0005BFFE4B4
        D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF1D8E7FFAE2474FFA0005CFFA40863FFA40863FFA408
        63FFA40863FFA40863FFA2025FFFA50C65FFA30461FFA1005EFF9F005AFFA918
        6DFFE2AFCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBA45
        8AFFA0005DFFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863EDA40863EDA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA0005BFFE4B5D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1D9
        E7FFAE2475FFA0005BFFA40863FFA40863FFA40863FFA40863FFA40863FFA305
        61FFA30561FFA40763FFC05493FFF2DDEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFEED0E1FFA40A63FFA30562FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863EDA40863EDA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FF9F005AFFCF7B
        ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1D9E7FFAE2475FFA0005BFFA408
        63FFA40863FFA40863FFA40863FFA40863FFA30561FFA50D65FFEAC4DAFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7FAFFBA4388FFA000
        5CFFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863EDA40863EDA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA30561FFA61067FFE7BBD5FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6E6EFFFB3327DFFA2035FFFA40863FFA40863FFA40863FFA408
        63FFA40863FFA2035FFFA9156BFFE9C2D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEAC5DCFFB94187FFA0005CFFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863EDA40863EDA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA203
        5FFFA60C66FFCA6DA3FFE0A9CAFFE2AFCDFFE2AECDFFE2AECDFFE2AECDFFE2AE
        CDFFE2AECDFFE2AECDFFE2AECDFFE2AECDFFE2AECDFFE2AECDFFE2AECDFFE2AE
        CDFFE2AECDFFE2AECDFFE2AECDFFE2AECDFFE2AECDFFE5B6D2FFD489B5FFA50B
        65FFA30662FFA40863FFA40863FFA40863FFA40863FFA40863FFA0005DFFAA17
        6DFFDB9CC0FFDEA3C5FFCF7AABFFB83F86FFA40863FFA0005CFFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863EDA40863EDA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA30561FF9F005BFF9F005BFFA000
        5BFFA0005BFFA0005BFFA0005BFFA0005BFFA0005BFFA0005BFFA0005BFFA000
        5BFFA0005BFFA0005BFFA0005BFFA0005BFFA0005BFFA0005BFFA0005BFFA000
        5BFFA0005BFFA0005BFFA2025FFFA40964FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA20460FF9F005BFF9F005BFF9F005AFFA000
        5DFFA30662FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863EDA40863F1A408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA40863FFA408
        63FFA40863FFA40863F1A40863DCA40863EDA40863EDA40863EDA40863EDA408
        63EDA40863EDA40863EDA40863EDA40863EDA40863EDA40863EDA40863EDA408
        63EDA40863EDA40863EDA40863EDA40863EDA40863EDA40863EDA40863EDA408
        63EDA40863EDA40863EDA40863EDA40863EDA40863EDA40863EDA40863EDA408
        63EDA40863EDA40863EDA40863EDA40863EDA40863EDA40863EDA40863EDA408
        63EDA40863EDA40863EDA40863EDA40863EDA40863EDA40863EDA40863EDA408
        63EDA40863EDA40863EDA40863EDA40863EDA40863EDA40863EDA40863EDA408
        63EDA40863EDA40863EDA40863EDA40863EDA40863EDA40863DC}
      OnClick = BModificarClick
    end
    object BEliminar: TSpeedButton
      Left = 189
      Top = 4
      Width = 60
      Height = 62
      Flat = True
      Glyph.Data = {
        76380000424D763800000000000036000000280000003C0000003C0000000100
        2000000000004038000000000000000000000000000000000000EE7B1CDCDE6C
        1CED7A1118ED710818ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED720918ED710918EDCF5E
        1BEDF07D1CEDEB781CDCEE7B1CF1DE6C1CFF7A1118FF710818FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF720918FF710918FFCF5E1BFFF07D1CFFEB781CF1EE7B1CEDDE6C
        1CFF7A1118FF710818FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF720917FF6F0312FF6F0312FF6F0312FF6F0312FF6F0312FF7107
        15FF730A18FF700513FF730917FF700513FF730917FF710614FF710715FF730A
        19FF710716FF700514FF730A19FF720917FF700513FF730A18FF700513FF7209
        17FF700614FF720816FF730A19FF720816FF700514FF730A19FF720816FF6E01
        11FF6F0313FF720816FF700513FF730917FF700513FF730917FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF720918FF710918FFCF5E
        1BFFF07D1CFFEB781CEDEE7B1CEDDE6C1CFF7A1118FF710818FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF720917FF750E1CFF862A37FF8B34
        40FF8B3441FF8B3440FF8B3440FF7E1D2BFF730A18FF81222FFF750D1BFF8121
        2FFF750D1BFF7D1B29FF7B1826FF710915FF7A1523FF7F1E2CFF710915FF7610
        1DFF81222FFF730A18FF80202EFF77101EFF7F1D2BFF791322FF710915FF7914
        23FF7F1F2CFF710814FF730A18FF913E4AFF8B323FFF720917FF812230FF750E
        1CFF81222FFF740D1AFF730917FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF720918FF710918FFCF5E1BFFF07D1CFFEB781CEDEE7B1CEDDE6C
        1CFF7A1118FF710818FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF6F0313FF862A37FFF4EBECFFE0C8CBFFDFC5CAFFDFC5CAFFDFC5CAFFA45F
        69FF78121FFFDABDC1FF81222FFFD7B8BCFF7F1E2CFFBE8E94FFAF737BFF6400
        01FFA5616BFFCDA5ACFF670005FF8B323EFFDBBEC2FF720917FFD3B1B6FF8D35
        41FFC99EA4FF9D545FFF660004FFA25C66FFCCA5AAFF6A020AFFC89DA2FFE3CE
        D1FFD9BBBFFFDDC1C5FFD2AFB4FF7A1524FFDBBEC2FF7E1C2AFF710614FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF720918FF710918FFCF5E
        1BFFF07D1CFFEB781CEDEE7B1CEDDE6C1CFF7A1118FF710818FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF6F0313FF89313DFFE8D7D9FF750E
        1CFF700413FF710715FF710715FF700413FF7E1C2AFFDDC2C7FF81222FFFDABD
        C1FF7F1E2CFFC09197FFB1767EFF640001FFA7636DFFCFAAB0FF670005FF8B33
        3FFFDEC3C8FF720917FFD6B6BBFF8D3642FFCBA3A7FF9E5661FF660004FFA45E
        68FFCDA7ACFF740C1AFFEDDFE1FF8C3441FF670005FFCAA1A7FFCFAAAFFF7710
        1DFFDEC4C9FF7E1C2AFF710614FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF720918FF710918FFCF5E1BFFF07D1CFFEB781CEDEE7B1CEDDE6C
        1CFF7A1118FF710818FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF6F0313FF89303DFFE6D3D5FF700413FF6A000AFF6B000CFF6C000DFF7004
        13FF7E1C2AFFDCC0C4FF81222FFFD9BBBFFF7F1E2CFFBF9096FFAF737BFF6400
        01FFA6626CFFCDA6ACFF670004FF8B333FFFDDC1C5FF720917FFD5B4B9FF8D36
        42FFCAA0A5FF9D535EFF660004FFA25C66FFCEA8AEFF680007FFAE7179FFE1CA
        CDFFD4B2B6FFDCC0C4FFCAA0A6FF77111EFFDCC1C5FF7D1B29FF710614FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF720918FF710918FFCF5E
        1BFFF07D1CFFEB781CEDEE7B1CEDDE6C1CFF7A1118FF710818FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF6F0313FF872C39FFF3E9EAFFCCA3
        A9FFC99FA5FFCAA1A6FFC3969CFF791322FF7C1827FFDCC0C4FF81222FFFD9BB
        BFFF7F1E2CFFC09198FFBA878EFF5C0000FFA25C66FFD8B9BEFF620000FF862A
        37FFDFC5CAFF720917FFD5B4B9FF8D3642FFCDA6ABFFA46069FF5D0000FFA15A
        64FFD1ADB2FF6B000BFF882F3BFF862A37FF87323AFFCBA3A8FFCFA8AEFF760F
        1CFFE3CED1FF7D1B29FF6A000AFF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF720918FF710918FFCF5E1BFFF07D1CFFEB781CEDEE7B1CEDDE6C
        1CFF7A1118FF710818FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF6F0313FF872D3AFFEEE2E3FFAC6D76FFA86670FFA96972FFA5616BFF760F
        1CFF7D1A28FFDCC0C4FF81222FFFDFC7CAFF801F2DFFC09097FFEFE4E5FFA669
        6DFFDABBC0FFE9D9DBFFAF737CFFC99FA4FFD8BABEFF6D020FFFDCBFC3FF8E38
        44FFCFA9AFFFE8D7D9FFA4676AFFE3CDD0FFBA878EFF650002FFC79BA1FFD3B0
        B5FF9A565AFFE0C9CCFFBD8B92FF740C1AFFF3E9EAFFC89CA2FF9C515CFF7208
        16FF730A18FF730A18FF730A18FF730A18FF730A18FF720918FF710918FFCF5E
        1BFFF07D1CFFEB781CEDEE7B1CEDDE6C1CFF7A1118FF710818FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF6F0313FF89313EFFE5D2D4FF6900
        0AFF640000FF650002FF660003FF6E0110FF7F1D2BFFDCC1C5FF801F2DFFA25C
        66FF791321FF984B56FFA05863FFC09098FFBE8C93FF7F1F2BFFB9848BFFC79C
        A2FF872C38FF6F0512FFA25C66FF7F1F2CFF9E545EFFA35E68FFC89CA3FFBB87
        8EFF791422FF6F0713FF77111FFFB37A82FFCFA9AFFFB8838AFF781321FF7712
        1FFFA46069FFB9848BFFB68088FF710715FF720917FF730A18FF730A18FF730A
        18FF730A18FF720918FF710918FFCF5E1BFFF07D1CFFEB781CEDEE7B1CEDDE6C
        1CFF7A1118FF710818FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF6F0313FF89303DFFF4EBECFFA6636CFFA25B66FFA35D67FFA35E68FF8021
        2EFF7C1827FFE2CCD0FF801F2DFF95454FFF7B1624FF6D0010FF6D000FFF6B00
        0CFF6B000CFF700513FF6C000DFF6B000BFF6F0313FF730918FF964651FF7E1D
        2BFF6C000EFF6D000FFF6B000BFF6B000CFF710715FF740B19FF710716FF6B00
        0DFF6B000BFF6B000CFF710715FF730918FF6D000FFF6B000DFF6C000EFF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF720918FF710918FFCF5E
        1BFFF07D1CFFEB781CEDEE7B1CEDDE6C1CFF7A1118FF710818FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF710614FF7E1D2BFFC79CA2FFCFA9
        AEFFCFA9AEFFCFA9AEFFD0ABB0FF8F3B47FF750E1CFFB47C84FF7C1A27FFB780
        88FF81212FFF710614FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF720917FF720816FFB57E85FF882E3BFF700413FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF720918FF710918FFCF5E1BFFF07D1CFFEB781CEDEE7B1CEDDE6C
        1CFF760D18FF6D0418FF6F0618FF6F0618FF6F0618FF6F0618FF6F0618FF6F06
        18FF6F0618FF6E0416FF68000EFF68000EFF68000EFF68000EFF68000EFF6D02
        14FF6F0618FF6A0010FF6E0517FF6A0011FF6E0416FF6F0618FF6F0618FF6F06
        18FF6F0618FF6F0618FF6F0618FF6F0618FF6F0618FF6F0618FF6A0011FF6D03
        15FF6F0718FF6F0618FF6F0618FF6F0618FF6F0618FF6F0618FF6F0618FF6F06
        18FF6F0618FF6F0618FF6F0618FF6F0618FF6F0618FF6F0618FF6F0618FF6F06
        18FF6F0618FF6F0618FF6F0618FF6F0618FF6F0618FF6E0518FF6D0518FFCE5D
        1BFFF07D1CFFEB781CEDEE7B1CEDE06E1CFF8D2219FF861B19FF881C19FF881C
        19FF881C19FF881C19FF881C19FF881C19FF881C19FF881C19FF881C19FF881C
        19FF881C19FF881C19FF881C19FF881C19FF881C19FF881C19FF881C19FF881C
        19FF881C19FF881C19FF881C19FF881C19FF881C19FF881C19FF881C19FF881C
        19FF881C19FF881C19FF881C19FF881C19FF881C19FF881C19FF881C19FF881C
        19FF881C19FF881C19FF881C19FF881C19FF881C19FF881C19FF881C19FF881C
        19FF881C19FF881C19FF881C19FF881C19FF881C19FF881C19FF881C19FF881C
        19FF881C19FF871C19FF861C19FFD4631BFFEF7C1CFFEB781CEDEB781CEDEB78
        1CFFEA771CFFEA771CFFEA771CFFEA771CFFEA771CFFEA771CFFEA771CFFEA77
        1CFFEA771CFFEA771CFFEA771CFFEA771CFFEA771CFFEA771CFFEA771CFFEA77
        1BFFEA771BFFEA771BFFEA771BFFEA771BFFEA771BFFEA771BFFEA771BFFEA77
        1BFFEA771BFFEA771BFFEA771BFFEA771BFFEA771BFFEA771BFFEA771BFFEA77
        1BFFEA771BFFEA771BFFEA771BFFEA771BFFEA771BFFEA771BFFEA771BFFEA77
        1CFFEA771CFFEA771CFFEA771CFFEA771CFFEA771CFFEA771CFFEA771CFFEA77
        1CFFEA771CFFEA771CFFEA771CFFEA771CFFEA771CFFEA771CFFEA771CFFEB78
        1CFFEB781CFFEB781CEDEB781CEDEB781CFFEC791CFFEC791CFFEC791CFFEC79
        1CFFEC791CFFEC791CFFEC791CFFEC791CFFEC791CFFEC791CFFEC791CFFEC79
        1CFFEC791CFFEC791CFFEC7819FFEC7617FFEC7616FFEC7616FFEC7616FFEC76
        16FFEC7616FFEC7616FFEC7616FFEC7616FFEC7616FFEC7616FFEC7616FFEC76
        16FFEC7616FFEC7616FFEC7616FFEC7616FFEC7616FFEC7616FFEC7616FFEC76
        16FFEC7616FFEC7617FFEC7616FFEC781BFFEC791CFFEC791CFFEC791CFFEC79
        1CFFEC791CFFEC791CFFEC791CFFEC791CFFEC791CFFEC791CFFEC791CFFEC79
        1CFFEC791CFFEC791CFFEC791CFFEB781CFFEB781CFFEB781CEDEB781CEDEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEA7313FFF09C58FFFBE2
        CEFFFAE1CCFFFAE1CCFFFAE1CCFFFAE1CCFFFAE1CCFFFAE1CCFFFAE1CCFFFAE1
        CCFFFAE1CCFFFAE1CCFFFAE1CCFFFAE1CCFFFAE1CCFFFAE1CCFFFAE1CCFFFAE1
        CCFFFAE1CCFFFAE1CCFFFAE1CCFFFAE1CCFFFAE1CCFFFAE1CDFFFADFC8FFEE8B
        3BFFEA7516FFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CEDEB781CEDEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEA7010FFF4B584FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF09B57FFEA7213FFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CEDEB781CEDEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEA7110FFF6C299FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2A6
        69FFEA7112FFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CEDEB781CEDEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781BFFEA7313FFF8D0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFDF5EDFFFDEEE2FFFFFCF9FFFFFFFFFFFFFFFFFFFFFEFDFFFDEFE4FFFDF2
        E9FFFFFFFFFFFFFFFFFFFFFFFFFFFEF8F3FFFCEDE1FFFEF8F3FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4B684FFEA7110FFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CEDEB781CEDEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB771BFFEB7618FFFADFC9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3AD76FFEB7A20FFFCE9DAFFFFFF
        FFFFFFFFFFFFFDF4ECFFED8430FFF09751FFFFFFFFFFFFFFFFFFFFFFFFFFF8D2
        B2FFEA7313FFF7CAA4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C2
        9AFFEA7111FFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CEDEB781CEDEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB7719FFEB7B21FFFCEADCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF1A060FFEA7415FFFCEDE0FFFFFFFFFFFFFFFFFFFDF3EBFFEC7B22FFEF90
        44FFFFFFFFFFFFFFFFFFFFFFFFFFF8D5B8FFE96A05FFF5BC8EFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D2B1FFEA7314FFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CEDEB781CEDEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB7518FFED832EFFFEF4ECFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF09954FFEC7B21FFFDF2E9FFFFFF
        FFFFFFFFFFFFFDF3EBFFEC7D25FFEF9247FFFFFFFFFFFFFFFFFFFFFFFFFFFADD
        C4FFEA6F0DFFF4B381FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE0
        CAFFEB771AFFEB771BFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CEDEB781CEDEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEA7415FFEE8C3EFFFFFCFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
        FEFFEE9045FFED822DFFFEF6F1FFFFFFFFFFFFFFFFFFFDF3EBFFEC7D25FFEF92
        47FFFFFFFFFFFFFFFFFFFFFFFFFFFBE5D3FFEA7112FFF3AC74FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE9DBFFEC7C23FFEB7619FFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CEDEB781CEDEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEA7213FFF09852FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCF9FFED8838FFEE8A3AFFFFFBF9FFFFFF
        FFFFFFFFFFFFFDF3EBFFEC7D25FFEF9247FFFFFFFFFFFFFFFFFFFFFFFFFFFCEC
        DEFFEB7517FFF1A568FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF4
        EDFFED8532FFEB7517FFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CEDEB781CEDEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEA7011FFF2A567FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF8
        F3FFED842FFFEF9045FFFFFEFEFFFFFFFFFFFFFFFFFFFDF3EBFFEC7D25FFEF92
        47FFFFFFFFFFFFFFFFFFFFFFFFFFFDF2E8FFEB7A1FFFF19C5AFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAFFEE8E41FFEA7415FFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CEDEB781CEDEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEA7010FFF4B37FFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF3EBFFEC7E26FFEF964FFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDF3EBFFEC7D25FFEF9247FFFFFFFFFFFFFFFFFFFFFFFFFFFEF5
        EEFFEC7F28FFF0944BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF09955FFEA7213FFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CEDEB781CEDEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEA7111FFF6C299FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED
        E1FFEB781DFFF19F5DFFFFFFFFFFFFFFFFFFFFFFFFFFFDF3EBFFEC7D25FFEF92
        47FFFFFFFFFFFFFFFFFFFFFFFFFFFEF9F5FFED8633FFEE8C3DFFFFFDFBFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2A86CFFEA7111FFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CEDEB781CEDEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEA7212FFF8D1B0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE7D7FFEA7213FFF2A96EFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDF3EBFFEC7D25FFEF9247FFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
        FBFFEE8C3EFFED8633FFFEFAF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF4B481FFEA7110FFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CEDEB781CEDEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB77
        1AFFEB7618FFFADEC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE2
        CDFFEA6F0FFFF3B17CFFFFFFFFFFFFFFFFFFFFFFFFFFFDF3EBFFEC7D25FFEF92
        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF9349FFEC802AFFFEF6EFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C49BFFEA7111FFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CEDEB781CEDEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB7619FFEC7B22FFFCEADCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFADBC2FFE96E0BFFF5B989FFFFFFFFFFFFFF
        FFFFFFFFFFFFFDF3EBFFEC7D25FFEF9247FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF19B57FFEB7B20FFFDEFE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF8D2B3FFEA7313FFEB781BFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CEDEB781CEDEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB75
        18FFED822EFFFDF3ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D3
        B3FFE96C09FFF6C095FFFFFFFFFFFFFFFFFFFFFFFFFFFDF3EBFFEC7D25FFEF92
        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2A466FFEA7416FFFCE9DAFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADEC8FFEB771AFFEB771AFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CEDEB781CEDEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEA7415FFEE8E41FFFEFBF9FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7CAA4FFE96B08FFF7C9A3FFFFFFFFFFFFFF
        FFFFFFFFFFFFFDF3EBFFEC7D25FFEF9247FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF3AB74FFEA7111FFFBE4D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFCECDFFFEC7C23FFEB7619FFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CEDEB781CEDEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEA72
        13FFF09852FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C1
        97FFE96C09FFF8D2B3FFFFFFFFFFFFFFFFFFFFFFFFFFFDF3EBFFEC7D25FFEF92
        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4B480FFEA6E0CFFFADEC8FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF4EEFFED8430FFEB7517FFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CEDEB781CEDEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEA7112FFF2A568FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5BA8BFFE96D0AFFFADAC0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFDF3EBFFEC7D25FFEF9247FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF5BD90FFE96D09FFF9D6B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFCF9FFEE8E41FFEA7415FFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CEDEB781CEDEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEA71
        10FFF4B582FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B2
        7DFFEA6F0EFFFAE0CBFFFFFFFFFFFFFFFFFFFFFFFFFFFDF3EBFFEC7D25FFEF92
        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C59EFFE96B07FFF8CDA9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF09A54FFEA7213FFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CEDEB781CEDEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEA7011FFF6C198FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2A86EFFEA7313FFFBE6D4FFFFFFFFFFFFFF
        FFFFFFFFFFFFFDF3EBFFEC7D25FFEF9247FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF8CEACFFE96B07FFF6C49CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF2A76AFFEA7112FFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CEDEB781CEDEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781BFFEA73
        14FFF8D1B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A0
        5FFFEB781CFFFCECDFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF3EBFFEC7D25FFEF92
        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D6B9FFE96B08FFF6BD91FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4B582FFEA7010FFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CEDEB781CEDEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB771BFFEB7618FFFADEC8FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFEF9750FFEC7D24FFFDF2EAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDF3EBFFEC7D25FFEF9247FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFADDC5FFE96E0CFFF4B684FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6C39BFFEA7110FFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CEDEB781CEDEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB7719FFEB7B
        21FFFBE9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFEF91
        46FFEC822DFFFEF7F2FFFFFFFFFFFFFFFFFFFFFFFFFFFDF3EBFFEC7D25FFEF92
        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE5D2FFEA7111FFF3AC74FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D2B2FFEA7213FFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CEDEB781CEDEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB7517FFED8430FFFEF4ECFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFBF9FFEE8A3AFFED8735FFFEFAF7FFFFFFFFFFFFFF
        FFFFFFFFFFFFFDF3EBFFEC7D25FFEF9247FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFCEADBFFEB7617FFF2A364FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFBE0CAFFEA7618FFEB771BFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CEDEB781CEDEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEA7415FFEE8C
        3EFFFFFBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF7F2FFED83
        2EFFEE8F44FFFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDF3EBFFEC7D25FFEF92
        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF0E6FFEC7A1FFFF09B57FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEBDDFFEC7C22FFEB76
        19FFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CEDEB781CEDEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEA7313FFF09953FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFDF3EAFFEB7C22FFF09852FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDF3EBFFEC7D25FFEF9247FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFDF5EEFFEC7E27FFEF954DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEF4EDFFED832FFFEB7517FFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CEDEB781CEDEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEA7111FFF2A6
        6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEEE2FFEB77
        1BFFF1A05FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF3EBFFEC7D25FFEF92
        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF9F6FFED8430FFEE8E41FFFFFD
        FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFFEE8D3FFFEA74
        15FFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CEDEB781CEDEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEA7110FFF4B27EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFCE8D8FFEA7314FFF2A76AFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDF3EBFFEC7D25FFEF9247FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFDFCFFEE8C3DFFED8634FFFEF9F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF09A55FFEA7213FFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CEDEB781CEDEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEA7112FFF6C3
        9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE1CCFFEA70
        0FFFF3AF78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF3EBFFEC7D25FFEF92
        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFEF944BFFEC7F27FFFDF5
        EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2A669FFEA71
        11FFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CEDEB781CEDEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEA7213FFF8D1B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFADAC0FFE96D0BFFF5B787FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDF3EBFFEC7D25FFEF9247FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF09C58FFEB7A1FFFFDF0E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF4B481FFEA7110FFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CEDEB781CEDEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB771AFFEB7719FFFADD
        C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D3B4FFE96B
        07FFF6C298FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF3EBFFEC7D25FFEF92
        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A264FFEB7619FFFCEC
        DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C39BFFEA71
        11FFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CEDEB781CEDEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB7619FFEC7C24FFFCEEE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF7CCA8FFE96701FFF8CCA8FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDF6F1FFEC7B21FFEF9145FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF2AB72FFEA6F0EFFFBE6D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF9D5B7FFEA7213FFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CEDEB781CEDEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB7618FFED812BFFFBE1
        CCFFFCEDE0FFFCECDEFFFCECDEFFFCECDEFFFCECDEFFFCEDE0FFF6C096FFEC80
        2AFFF7C9A4FFFCEDE0FFFCECDEFFFCECDEFFFCECDFFFFBE3D1FFEF8D40FFF19D
        5AFFFCECDFFFFCECDFFFFCECDEFFFCECDEFFFCEDE0FFF4B380FFED832EFFF9D4
        B5FFFCEDE0FFFCECDEFFFCECDEFFFCECDEFFFCECDEFFFCEDE1FFF8D0AEFFEB77
        1AFFEB771AFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CEDEB781CEDEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781DFFEB7517FFEA7213FFEB7619FFEB771AFFEB7619FFEB7619FFEB76
        19FFEB7619FFEB7719FFEB7A1EFFEC7E26FFEB7A1FFFEB7719FFEB7619FFEB76
        19FFEB7619FFEB771BFFEC7D24FFEC7C23FFEB771AFFEB7619FFEB7619FFEB76
        19FFEB7719FFEB7B21FFEC7D25FFEB781CFFEB7719FFEB7619FFEB7619FFEB76
        19FFEB7619FFEB771AFFEB7618FFEA7212FFEB7619FFEB781DFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CEDEB781CEDEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB7618FFED8532FFF2A568FFF1A4
        66FFF1A365FFF1A365FFF1A365FFF1A365FFF1A365FFF1A365FFF1A365FFF1A3
        65FFF1A365FFF1A365FFF1A365FFF1A365FFF1A365FFF1A365FFF1A365FFF1A3
        65FFF1A365FFF1A365FFF1A365FFF1A365FFF1A365FFF1A365FFF1A365FFF1A3
        65FFF1A365FFF1A365FFF1A365FFF1A365FFF1A365FFF1A365FFF1A467FFF2A4
        66FFEC822DFFEB7619FFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CEDEB781CEDEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1BFFEA7414FFF9D3B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4B785FFEA6F0FFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CEDEB781CEDEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB771AFFEB791DFFFCE9DAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF5BD90FFEA6F0EFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CEDEB781CEDEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB77
        1BFFEB7516FFFADCC4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5BB8DFFEA6F0EFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CEDEB781CEDEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEA7516FFEF9145FFF5BD90FFF5BC
        90FFF5BC8FFFF5BC8FFFF5BC8FFFF5BC8FFFF5BC8FFFF5BC8FFFF5BC8FFFF5BC
        8FFFF5BC8FFFF5BB8DFFFDF2E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE5D3FFF5B988FFF5BC8FFFF5BC8FFFF5BC
        8FFFF5BC8FFFF5BC8FFFF5BC8FFFF5BC8FFFF5BC8FFFF5BC8FFFF5BD90FFF5BB
        8DFFEE8A3BFFEB7517FFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CEDEB781CEDEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781DFFEA7416FFEA7111FFEA7111FFEA7111FFEA7111FFEA7111FFEA71
        11FFEA7111FFEA7111FFEA7111FFEA7111FFEA7111FFE96B07FFF5BB8CFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFF19F
        5EFFE96A06FFEA7111FFEA7111FFEA7111FFEA7111FFEA7111FFEA7111FFEA71
        11FFEA7111FFEA7111FFEA7111FFEA7111FFEB7517FFEB781DFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CEDEB781CEDEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB771AFFEB791EFFF09A55FFF1A161FFF1A161FFF1A161FFF1A1
        61FFF1A161FFF1A161FFEF944CFFEB7619FFEB781BFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CEDEB781CF1EB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB771AFFEA72
        13FFEA7111FFEA7111FFEA7111FFEA7111FFEA7111FFEA7111FFEA7313FFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB781CFFEB78
        1CFFEB781CFFEB781CF1EB781CDCEB781CEDEB781CEDEB781CEDEB781CEDEB78
        1CEDEB781CEDEB781CEDEB781CEDEB781CEDEB781CEDEB781CEDEB781CEDEB78
        1CEDEB781CEDEB781CEDEB781CEDEB781CEDEB781CEDEB781CEDEB781CEDEB78
        1CEDEB781CEDEB781CEDEB781CEDEB781CEDEB781CEDEB781CEDEB781CEDEB78
        1CEDEB781CEDEB781CEDEB781CEDEB781CEDEB781CEDEB781CEDEB781CEDEB78
        1CEDEB781CEDEB781CEDEB781CEDEB781CEDEB781CEDEB781CEDEB781CEDEB78
        1CEDEB781CEDEB781CEDEB781CEDEB781CEDEB781CEDEB781CEDEB781CEDEB78
        1CEDEB781CEDEB781CEDEB781CEDEB781CEDEB781CEDEB781CDC}
      OnClick = BEliminarClick
    end
    object SpeedButton4: TSpeedButton
      Left = 127
      Top = 4
      Width = 60
      Height = 62
      Flat = True
      Glyph.Data = {
        76380000424D763800000000000036000000280000003C0000003C0000000100
        2000000000004038000000000000000000000000000000000000003299DC0D2D
        88ED6C0C20ED750916ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED740A17ED750916ED1A28
        78ED00339BED003196DC003299F10D2D88FF6C0C20FF750916FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF740A17FF750916FF1A2878FF00339BFF003196F1003299ED0D2D
        88FF6C0C20FF750916FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF710715FF6E0110FF6D000FFF700513FF730A18FF730A18FF7309
        17FF6F0212FF6E0211FF720816FF700513FF720917FF700513FF720816FF730A
        19FF710715FF710614FF730A19FF720917FF6F0212FF6E0211FF720917FF730A
        18FF730A18FF700514FF6E0111FF700413FF730A18FF730A18FF700513FF730A
        18FF710715FF6E0111FF700513FF720716FF700514FF730A18FF700513FF7209
        17FF730A18FF730A18FF730A18FF730A18FF730A18FF740A17FF750916FF1A28
        78FF00339BFF003196ED003299ED0D2D88FF6C0C20FF750916FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730B19FF6E0212FF77111FFF974853FF9D53
        5EFF7F1F2DFF6D000FFF730918FF700514FF8C3642FF913D49FF730A18FF8020
        2EFF77101EFF801F2DFF77111FFF710915FF7B1826FF7E1C2AFF710814FF7004
        13FF8D3643FF903B47FF710615FF720816FF6E0110FF7F1D2BFF954450FF8326
        33FF6D000FFF740C1AFF812230FF720816FF781220FF93424EFF832633FF750D
        1BFF81212FFF730A18FF81222FFF760F1CFF730917FF730A18FF730A18FF730A
        18FF730A18FF740A17FF750916FF1A2878FF00339BFF003196ED003299ED0D2D
        88FF6C0C20FF750916FF730A18FF730A18FF730A18FF730A18FF730A18FF6F03
        12FF862B38FFE6D2D5FFDABCC0FFD3B0B4FFECDDDFFF9D545EFF670006FFB177
        7FFFE9D9DBFFD8BABEFFD9BBBFFFE3CDD1FF791322FFD3B0B5FF913F4BFF6700
        05FFAF737BFFC19299FF680108FFC2949AFFE3CED1FFE2CBCEFFCBA3A8FF6E04
        10FF994C57FFEAD9DBFFD8BBBDFFE8D8DAFFAB6D75FF791321FFD9BBC0FF8325
        33FFD8B9BDFFDCC1C4FFD9BBBFFFE1C9CDFFBC8A91FF6E0212FFDABCC0FF872B
        38FF700413FF730A18FF730A18FF730A18FF730A18FF740A17FF750916FF1A28
        78FF00339BFF003196ED003299ED0D2D88FF6C0C20FF750916FF730A18FF730A
        18FF730A18FF730A18FF720917FF700713FFDCC0C3FFB78088FF6C000DFF6A00
        09FF9D535DFFF6EFF0FF7D1D29FFDDC2C7FFA6646DFF640000FFAD6F78FFE8D6
        D9FF700513FFD7B7BBFF92414DFF670005FFB1767EFFBE8E95FF8D3743FFE5D0
        D3FF750E1BFF730A18FFD7B8BCFF93424DFFDEC5C9FF964752FF610000FF8428
        35FFB47D84FF7F1D2BFFD9BBBFFF9A4E59FFE9D9DBFF781220FF6F0513FFE1CB
        CEFFB37A82FF6E0111FFDDC1C5FF872C39FF700413FF730A18FF730A18FF730A
        18FF730A18FF740A17FF750916FF1A2878FF00339BFF003196ED003299ED0D2D
        88FF6C0C20FF750916FF730A18FF730A18FF730A18FF730A18FF6F0312FF8C34
        40FFE7D5D8FF740C1AFF700614FF720917FF700413FFAD6F78FF801F2DFF984A
        55FFE0C8CCFFD8B9BCFFD3B2B6FFE0C8CBFF710615FFD6B4B8FF913E4AFF6700
        05FFAF747CFFBC8990FFA5626BFFC3969CFF6A0009FF710614FF6E0110FF8428
        34FFEDDFE1FFC3959BFFC3959DFFBF8F96FFB27780FF832633FFDBBEC2FF7E1D
        2AFFBE8D94FFDFC5C9FFD0ABAFFFE6D3D6FFB0757DFF6E0111FFDBBEC2FF862B
        38FF700413FF730A18FF730A18FF730A18FF730A18FF740A17FF750916FF1A28
        78FF00339BFF003196ED003299ED0D2D88FF6C0C20FF750916FF730A18FF730A
        18FF730A18FF730A18FF6D000FFF9E555FFFD9BDC1FF6E0110FF730917FF730A
        18FF730A18FF6C000EFF6F0413FF842633FF892F3BFF842A34FFB67F86FFE5D1
        D3FF710614FFDABCC0FF964753FF5E0000FFAF747CFFBE8E95FF9C505BFFD3B0
        B4FF660003FF6D000FFF8A323EFF822330FFE8D6D9FFAF737BFFA05A62FFB175
        7EFFEDDFE1FF852936FFDBBEC2FF7F1E2BFF8A313DFF832533FF8D3A43FFDFC5
        CAFFB47B83FF6D000FFFE1CACDFF882E3BFF680007FF730A18FF730A18FF730A
        18FF730A18FF740A17FF750916FF1A2878FF00339BFF003196ED003299ED0D2D
        88FF6C0C20FF750916FF730A18FF730A18FF730A18FF730A18FF6D000FFF9A4E
        58FFE0C9CCFF6F0312FF730917FF730A18FF710715FF6D000EFF6B000DFFAD6F
        77FFE3CED1FF9C575BFFCDA6ABFFD9BBBFFF6C010DFFE0C8CCFFDFC7CBFFA466
        69FFEBDBDDFFAB6C75FF740F1AFFE6D3D6FFB8838BFFB88289FFE9D8DBFF7613
        1DFFBB888FFFCEA8ADFF9A5258FFCEA8ADFFBB878FFF781321FFDCC0C4FF7E1C
        29FFDABCC0FFBF9096FFA05B62FFEEE2E4FFA35E67FF6E0211FFEBDBDDFFD0AB
        B0FFA05862FF740C1AFF730917FF730A18FF730A18FF740A17FF750916FF1A28
        78FF00339BFF003196ED003299ED0D2D88FF6C0C20FF750916FF730A18FF730A
        18FF730A18FF730A18FF700513FF7F1E2DFFEDE0E2FF862A37FF690008FF6B00
        0DFF7A1523FFC2949BFF7C1827FF700513FFA7646EFFCFA9AFFFC19299FF8326
        33FF6F0513FFA45F69FFA45F69FFCBA1A8FFB57C84FF750F1CFF6D0310FF872C
        39FFC4989EFFC89DA3FF8B333FFF6E0310FF730B19FFB0757DFFCFA9AFFFAF72
        7BFF710714FF7C1A28FFDDC2C7FF7B1725FF7E1C29FFBD8B92FFCFA9AFFFAC6E
        77FF720A17FF750D1BFFA25C66FFB47C84FFBD8C93FF740C1AFF720816FF730A
        18FF730A18FF740A17FF750916FF1A2878FF00339BFF003196ED003299ED0D2D
        88FF6C0C20FF750916FF730A18FF730A18FF730A18FF730A18FF730A18FF6C00
        0EFFB57E85FFE7D4D7FF984B56FF8E3B45FFD7B7BBFFD8BABEFF710815FF7207
        16FF6C000EFF6B000BFF6B000BFF700413FF740B19FF6E0010FF6D000FFF6B00
        0BFF6B000CFF720816FF740B19FF6F0413FF6B000BFF6B000BFF6F0312FF740B
        19FF720816FF6C000DFF6B000BFF6C000DFF700413FF7F1D2BFFE3CDD0FF7F1E
        2CFF6E0110FF6B000CFF6A000BFF6C000DFF720917FF730A18FF6D0010FF6C00
        0DFF6C000DFF730A18FF730A18FF730A18FF730A18FF740A17FF750916FF1A28
        78FF00339BFF003196ED003299ED0D2D88FF6C0C20FF750916FF730A18FF730A
        18FF730A18FF730A18FF730A18FF720917FF6F0312FFA6636CFFD7B7BCFFDBBE
        C2FFBE8C94FF77121FFF700614FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF720816FF7A1524FFB57D85FF7A1524FF720816FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF740A17FF750916FF1A2878FF00339BFF003196ED003299ED0D2D
        88FF700B1CFF790813FF770914FF770914FF770914FF770914FF770914FF7709
        14FF770813FF700009FF73010DFF750511FF700008FF750511FF770914FF7709
        14FF770914FF770914FF770914FF770914FF770914FF770914FF770914FF7709
        14FF770914FF770914FF770914FF770914FF770914FF770914FF770914FF7709
        14FF770914FF770914FF770914FF770914FF770914FF760813FF72000CFF7608
        13FF770914FF770914FF770914FF770914FF770914FF770914FF770914FF7709
        14FF770914FF770914FF770914FF770914FF770914FF780913FF790813FF1B28
        77FF00339BFF003196ED003299ED0B2E8AFF591335FF60102CFF5F112EFF5F11
        2EFF5F112EFF5F112EFF5F112EFF5F112EFF5F112EFF5F112EFF5E102EFF5E10
        2DFF5F112EFF5F112EFF5F112EFF5F112EFF5F112EFF5F112EFF5F112EFF5F11
        2EFF5F112EFF5F112EFF5F112EFF5F112EFF5F112EFF5F112EFF5F112EFF5F11
        2EFF5F112EFF5F112EFF5F112EFF5F112EFF5F112EFF5E102EFF5B0E2DFF5A0D
        2CFF5A0D2CFF5A0D2CFF5A0D2CFF5C0F2DFF5F112EFF5F112EFF5F112EFF5F11
        2EFF5F112EFF5F112EFF5F112EFF5F112EFF5F112EFF5F112EFF5F112EFF5F11
        2EFF5F112EFF60112DFF60102CFF152A7DFF00339AFF003196ED003196ED0031
        96FF013195FF013195FF013195FF013195FF013195FF013195FF013195FF0131
        95FF013195FF013195FF013195FF013195FF013195FF013195FF013195FF0131
        95FF013195FF013195FF013195FF013195FF013195FF013195FF013195FF0131
        95FF013195FF013195FF013195FF013195FF013195FF013195FF013195FF002E
        94FF00268FFF002991FF0C3A99FF133F9CFF133F9CFF133F9CFF123F9CFF0433
        96FF00258FFF002991FF003095FF013195FF013195FF013195FF013195FF0131
        95FF013195FF013195FF013195FF013195FF013195FF013195FF013195FF0031
        96FF003196FF003196ED003196ED003196FF003197FF003197FF003197FF0031
        97FF003197FF003197FF003197FF003197FF003197FF003197FF003197FF0031
        97FF003197FF003197FF003197FF003197FF003197FF003197FF003197FF0031
        97FF003197FF003197FF003197FF003197FF003197FF003197FF003197FF0031
        97FF003297FF003197FF002792FF063699FF5777BBFFABBCDFFFDFE7F4FFECF1
        F9FFECF1F9FFECF1F9FFECF1F9FFCED9EDFF8BA2D1FF3057AAFF002892FF002C
        94FF003297FF003197FF003197FF003197FF003197FF003197FF003197FF0031
        97FF003197FF003197FF003197FF003196FF003196FF003196ED003196ED0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF002E95FF002791FF4E6EB5FFD1DA
        ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFAFBFDFF9DB0D7FF1A439FFF002791FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196ED003196ED003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF002E
        94FF002C93FF889FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8DFEFFFAABA
        DDFF91A5D2FF99ACD5FFBCC9E4FFEEF1F8FFFFFFFFFFFFFFFFFFFFFFFFFFE0E7
        F2FF3C60AEFF002690FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196ED003196ED0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0030
        96FF002B93FF002B93FF002B93FF002B93FF002B93FF002B93FF002B93FF002B
        93FF002B93FF002B93FF002B93FF002B93FF002B93FF002B93FF002B93FF002B
        93FF002B93FF002B93FF002992FF002891FF92A7D3FFFFFFFFFFFFFFFFFFFFFF
        FFFFB5C3E1FF4364B0FF073598FF002791FF002690FF002690FF002B93FF1B44
        9FFF6E89C3FFE4EAF4FFFFFFFFFFFFFFFFFFF2F5FAFF3A5FAEFF002690FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196ED003196ED003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003096FF053598FF234EA5FF244FA5FF244FA5FF244F
        A5FF244FA5FF244FA5FF244FA5FF244FA5FF244FA5FF244FA5FF244FA5FF244F
        A5FF244FA5FF244FA5FF244FA5FF244FA5FF244FA5FF244FA5FF2346A1FF748F
        C7FFFFFFFFFFFFFFFFFFFCFDFEFF6C88C2FF002A93FF002691FF002E95FF0031
        96FF003196FF003196FF003096FF002C93FF00238FFF1C44A0FFB7C7E2FFFFFF
        FFFFFFFFFFFFE2E8F3FF18439FFF002C93FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196ED003196ED0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF002B93FF204C
        A4FFF3F5FAFFF7F9FCFFF7F8FCFFF7F8FCFFF7F8FCFFF7F8FCFFF7F8FCFFF7F8
        FCFFF7F8FCFFF7F8FCFFF7F8FCFFF7F8FCFFF7F8FCFFF7F8FCFFF7F8FCFFF7F8
        FCFFF7F8FCFFF7F8FCFFF6F8FBFFFFFFFFFFFFFFFFFFFEFEFEFF5B7CBCFF0022
        8EFF002F95FF002C93FF002992FF002F95FF003196FF003196FF002C93FF0029
        92FF002F95FF002992FF093296FFB8C7E2FFFFFFFFFFFFFFFFFFA0B3D9FF0027
        91FF003096FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196ED003196ED003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF002B93FF214DA4FFFEFFFEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF92A7D3FF00238FFF003096FF002590FF3E63AFFF8DA3D1FF012F
        95FF002D94FF002690FF355DACFF8EA4D1FF043196FF002D94FF002992FF1844
        A0FFE7EBF5FFFFFFFFFFFBFCFDFF2E57A9FF002992FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196ED003196ED0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF002B93FF214D
        A4FFFBFCFDFFFFFFFFFFA9BADCFF7C93C9FF8098CCFF8098CCFF8098CCFF8098
        CCFF8098CCFF8098CCFF8098CCFF8098CCFF8098CCFF8098CCFF8098CCFF8098
        CCFF7E96CAFF8DA3D1FFF8FAFCFFFFFFFFFFE9EDF6FF14419EFF002B93FF002A
        92FF365BABFFE9EEF6FFFFFFFFFF9BAED7FF002590FF2B52A7FFE5EAF4FFFFFF
        FFFFA2B5DAFF073297FF002F95FF00238FFF6E8AC3FFFFFFFFFFFFFFFFFF8DA3
        D1FF002590FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196ED003196ED003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF002B93FF214DA4FFFBFCFDFFFFFFFFFF476BB4FF0019
        8AFF002590FF002590FF002590FF002590FF002590FF002590FF002590FF0025
        90FF002590FF002590FF002590FF002590FF001B8BFF385FADFFFDFEFEFFFFFF
        FFFF97ABD5FF002490FF002C94FF1A45A0FFEFF2F9FFFFFFFFFFFFFFFFFFFFFF
        FFFFA9BADCFFDCE3F1FFFFFFFFFFFFFFFFFFFFFFFFFF90A7D3FF002892FF002B
        93FF16449FFFEFF2F8FFFFFFFFFFD1DAECFF053297FF002F95FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196ED003196ED0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF002B93FF214D
        A4FFFBFCFDFFFFFFFFFF5274B8FF002691FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF002590FF7792C8FFFFFFFFFFFFFFFFFF5374B8FF002691FF003095FF0630
        95FF8199CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2E8F3FF355AABFF002C93FF003095FF002B93FFBCCAE4FFFFFFFFFFF1F4
        F9FF1846A1FF002C93FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196ED003196ED003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF002B93FF214DA4FFFBFCFDFFFFFFFFFF5274B8FF0026
        91FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF002690FF8EA4D2FFFFFFFFFFFDFE
        FEFF325AABFF002992FF003196FF002F95FF002791FF748FC7FFF8F9FCFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD5DDEEFF284FA5FF002691FF003196FF0031
        96FF002691FF9AAED6FFFFFFFFFFFBFCFDFF224CA4FF002B93FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196ED003196ED0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF002B93FF214D
        A4FFFBFCFDFFFFFFFFFF5274B8FF002691FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF002690FF8FA4D2FFFFFFFFFFFBFCFEFF2B55A8FF002A93FF003196FF0032
        96FF00248FFF2952A7FFEEF1F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7B8
        DBFF002590FF002D94FF003196FF003196FF002590FF93A8D3FFFFFFFFFFFAFB
        FDFF214CA4FF002B93FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196ED003196ED003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF002B93FF214DA4FFFBFCFDFFFFFFFFFF5274B8FF0026
        91FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF002590FF859DCEFFFFFFFFFFFFFF
        FFFF4267B1FF002891FF003196FF002992FF2F55A8FFE3E8F4FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BAFD7FF053095FF002F95FF0031
        96FF002892FFACBCDEFFFFFFFFFFFAFBFDFF214CA4FF002B93FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196ED003196ED0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF002B93FF214D
        A4FFFBFCFDFFFFFFFFFF5274B8FF002691FF003096FF002D94FF002D94FF002D
        94FF002D94FF002D94FF002D94FF002D94FF002D94FF002D94FF002D94FF002D
        94FF00218EFF5C7CBCFFFFFFFFFFFFFFFFFF7590C7FF00248FFF002D94FF1A44
        9FFFEAEEF7FFFFFFFFFFFFFFFFFFFFFFFFFFF1F5FAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF8DA5D2FF002892FF002E94FF063698FFDBE2F0FFFFFFFFFFFAFB
        FDFF214CA4FF002B93FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196ED003196ED003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF002B93FF214DA4FFFBFCFDFFFFFFFFFF5274B8FF0026
        90FF043498FF15429FFF15439FFF15439FFF15439FFF15439FFF15439FFF1543
        9FFF15439FFF15439FFF15439FFF15439FFF153E9CFF325AABFFFAFBFDFFFFFF
        FFFFC9D4E9FF002E95FF002E94FF083196FF88A0CFFFFFFFFFFFFFFFFFFFE0E7
        F3FF2A4FA5FF748FC7FFFFFFFFFFFFFFFFFFE7ECF5FF3D60AEFF002C93FF0026
        90FF4166B1FFFFFEFFFFFFFFFFFFFAFBFDFF214CA4FF002B93FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196ED003196ED0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF002B93FF214D
        A4FFFBFCFDFFFFFFFFFF5274B8FF001F8DFF2D57A9FFECF0F7FFEEF1F8FFEDF1
        F8FFEDF1F8FFEDF1F8FFEDF1F8FFEDF1F8FFEDF1F8FFEDF1F8FFEDF1F8FFEDF1
        F8FFEFF3F9FF6382BFFFB1C0E0FFFFFFFFFFFFFFFFFF5072B7FF00248FFF002F
        95FF002791FF8AA0D0FFE0E6F2FF2A52A7FF00248FFF002791FF8199CCFFE2E8
        F3FF3259ABFF002590FF002F95FF002A92FFBAC8E3FFFFFFFFFFFFFFFFFFFAFB
        FDFF214CA4FF002B93FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196ED003196ED003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF002B93FF214DA4FFFBFCFDFFFFFFFFFF5274B8FF001F
        8DFF325AAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6683C0FF3C63B0FFFFFF
        FFFFFFFFFFFFE1E7F3FF1A45A0FF002791FF002F95FF003196FF15439FFF002A
        92FF003296FF002F95FF003096FF1744A0FF002A92FF003096FF00228FFF6F8C
        C4FFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFDFF214CA4FF002B93FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196ED003196ED0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF002B93FF214D
        A4FFFBFCFDFFFFFFFFFF5274B8FF001F8DFF3159AAFFFEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF6F8BC3FF001F8DFFAEBFDFFFFFFFFFFFFFFFFFFFCCD6EAFF1D45
        A0FF00248FFF002E94FF002D94FF003196FF003196FF003196FF003095FF002C
        94FF002B93FF00248FFF6180BEFFFCFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFAFB
        FDFF214CA4FF002B93FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196ED003196ED003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF002B93FF214DA4FFFBFCFDFFFFFFFFFF5274B8FF001F
        8DFF3159AAFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF708CC4FF001F8DFF1842
        9EFFDCE3F1FFFFFFFFFFFFFFFFFFE0E7F3FF5472B7FF022E95FF00248FFF0027
        91FF002A92FF002992FF002690FF002590FF1A429FFF92A7D3FFFFFFFFFFFFFF
        FFFFFFFFFFFFE1E7F3FFFFFFFFFFFAFBFDFF214CA4FF002B93FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196ED003196ED0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF002B93FF214D
        A4FFFBFCFDFFFFFFFFFF5274B8FF001F8DFF3159AAFFFEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF708CC4FF002590FF002891FF2950A6FFDBE3F0FFFFFFFFFFFFFF
        FFFFFFFFFFFFC9D3E9FF7790C7FF4568B2FF2C55A8FF335BABFF5876B9FF9AAC
        D5FFEAEEF7FFFFFFFFFFFFFFFFFFFFFFFFFF8199CCFF738EC5FFFFFFFFFFFAFB
        FDFF214CA4FF002B93FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196ED003196ED003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF002B93FF214DA4FFFBFCFDFFFFFFFFFF5274B8FF001F
        8DFF3159AAFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF708CC4FF002590FF0032
        96FF002891FF19419EFFC0CDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFEFF718D
        C5FF001B8BFF748FC7FFFFFFFFFFFAFBFDFF214CA4FF002B93FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196ED003196ED0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF002B93FF214D
        A4FFFBFCFDFFFFFFFFFF5274B8FF001F8DFF3159AAFFFEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF708CC4FF002590FF003196FF003196FF001F8DFF849CCEFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF1B47A1FF001D8CFF7792C8FFFFFFFFFFFAFB
        FDFF214CA4FF002B93FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196ED003196ED003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF002B93FF214DA4FFFBFCFDFFFFFFFFFF5274B8FF001F
        8DFF3159AAFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF708CC4FF002590FF0031
        96FF003196FF002A93FF486CB4FF8DA3D1FF8DA3D1FF8DA3D1FF8DA3D1FF8DA3
        D1FF8DA3D1FF8DA3D1FF8DA3D1FF8DA3D1FF8DA3D1FF8DA3D1FF879FCFFF1341
        9EFF00228EFF7792C8FFFFFFFFFFFAFBFDFF214CA4FF002B93FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196ED003196ED0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF002B93FF214D
        A4FFFBFCFDFFFFFFFFFF5274B8FF001F8DFF3159AAFFFEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF708CC4FF002590FF003196FF003196FF003296FF002992FF0022
        8EFF00228EFF00228EFF00228EFF00228EFF00228EFF00228EFF00228EFF0022
        8EFF00228EFF00228EFF00238FFF002F95FF002590FF7792C8FFFFFFFFFFFAFB
        FDFF214CA4FF002B93FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196ED003196ED003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF002B93FF214DA4FFFBFCFDFFFFFFFFFF5274B8FF001F
        8DFF3159AAFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF708CC4FF002590FF0031
        96FF003196FF003096FF063698FF0C3B9BFF0B3A9AFF0B3A9AFF0B3A9AFF0B3A
        9AFF0B3A9AFF0B3A9AFF0B3A9AFF0B3A9AFF0B3A9AFF0B3A9BFF0B3A9AFF0232
        97FF002590FF7792C8FFFFFFFFFFFAFBFDFF214CA4FF002B93FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196ED003196ED0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF002B93FF214D
        A4FFFBFCFDFFFFFFFFFF5274B8FF001F8DFF3159AAFFFEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF708CC4FF002590FF003196FF003196FF002791FF738EC5FFDFE5
        F2FFDEE4F1FFDEE4F1FFDEE4F1FFDEE4F1FFDEE4F1FFDEE4F1FFDEE4F1FFDEE4
        F1FFDEE4F1FFDEE5F2FFD6DFEEFF1F4AA2FF00208DFF7792C8FFFFFFFFFFFAFB
        FDFF214CA4FF002B93FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196ED003196ED003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF002B93FF214DA4FFFBFCFDFFFFFFFFFF5274B8FF001F
        8DFF345BABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7791C8FF002490FF0031
        96FF003196FF00248FFF8EA4D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2650
        A5FF001E8DFF7792C8FFFFFFFFFFFAFBFDFF214CA4FF002B93FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196ED003196ED0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF002B93FF214D
        A4FFFBFCFDFFFFFFFFFF5274B8FF00228EFF1D49A2FF96AAD4FF97ABD5FF96AA
        D4FF96AAD4FF96AAD4FF96AAD4FF96AAD4FF96AAD4FF96AAD4FF96AAD4FF96AA
        D4FF9AAED6FF4267B1FF002A93FF003196FF003196FF002A92FF4D70B6FF9AAE
        D6FF96AAD4FF96AAD4FF96AAD4FF96AAD4FF96AAD4FF96AAD4FF96AAD4FF96AA
        D4FF96AAD4FF97ABD5FF91A7D3FF14429FFF00228EFF7792C8FFFFFFFFFFFAFB
        FDFF214CA4FF002B93FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196ED003196ED003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF002B93FF214DA4FFFBFCFDFFFFFFFFFF5274B8FF0026
        91FF002F95FF002690FF002590FF002590FF002590FF002590FF002590FF0025
        90FF002590FF002590FF002590FF002590FF002590FF002C93FF003296FF0031
        96FF003196FF003296FF002B93FF002590FF002590FF002590FF002590FF0025
        90FF002590FF002590FF002590FF002590FF002590FF002590FF002690FF002F
        95FF002590FF7792C8FFFFFFFFFFFAFBFDFF214CA4FF002B93FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196ED003196ED0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF002B93FF214D
        A4FFFBFCFDFFFFFFFFFF5274B8FF002691FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF002590FF7792C8FFFFFFFFFFFAFB
        FDFF214CA4FF002B93FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196ED003196ED003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF002B93FF214DA4FFFBFCFDFFFFFFFFFF5274B8FF0026
        91FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF002590FF7792C8FFFFFFFFFFFAFBFDFF214CA4FF002B93FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196ED003196ED0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF002B93FF214D
        A4FFFBFCFDFFFFFFFFFF496CB4FF001A8BFF002690FF002690FF002690FF0026
        90FF002690FF002690FF002690FF002690FF002690FF002690FF002690FF0026
        90FF002690FF002690FF002690FF002690FF002690FF002690FF002690FF0026
        90FF002690FF002690FF002690FF002690FF002690FF002690FF002690FF0026
        90FF002690FF002690FF002690FF002690FF00198AFF708CC4FFFFFFFFFFFAFB
        FDFF214CA4FF002B93FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196ED003196ED003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF002B93FF214DA4FFFBFCFDFFFFFFFFFF91A7D3FF5B77
        BAFF5E7DBDFF5E7DBDFF5E7DBDFF5E7DBDFF5E7DBDFF5E7DBDFF5E7DBDFF5E7D
        BDFF5E7DBDFF5E7DBDFF5E7DBDFF5E7DBDFF5E7DBDFF5E7DBDFF5E7DBDFF5E7D
        BDFF5E7DBDFF5E7DBDFF5E7DBDFF5E7DBDFF5E7DBDFF5E7DBDFF5E7DBDFF5E7D
        BDFF5E7DBDFF5E7DBDFF5E7DBDFF5E7DBDFF5E7DBDFF5E7DBDFF5E7DBDFF5E7D
        BDFF5A76B9FFA9BADDFFFFFFFFFFFAFBFDFF214CA4FF002B93FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196ED003196ED0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF002B93FF214D
        A4FFFBFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFB
        FDFF214CA4FF002B93FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196ED003196ED003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF002B93FF214DA4FFFBFCFDFFFFFFFFFFFFFFFFFFFEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFF
        FFFFFEFFFFFFFFFFFFFFFFFFFFFFFAFBFDFF214CA4FF002B93FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196ED003196ED0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF002B93FF214D
        A4FFFBFCFDFFFFFFFFFF728DC5FF2A49A2FF5778BAFFFEFEFFFFFFFFFFFF7893
        C8FF2A49A2FF5072B7FFFBFCFDFFFFFFFFFF829BCDFF2C4EA5FF2F58AAFF2F58
        AAFF2F58AAFF2F58AAFF2F58AAFF2F58AAFF2F58AAFF2F58AAFF2F58AAFF2F58
        AAFF2F58AAFF2F58AAFF2C4DA5FF90A5D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFA3B5DAFF2C4EA5FF2F58AAFF2F58AAFF2C4FA5FF8099CCFFFFFFFFFFFAFB
        FDFF214CA4FF002B93FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196ED003196ED003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF002B93FF214DA4FFFBFCFDFFFFFFFFFF4368B2FF000D
        83FF1F4BA3FFFEFEFFFFFFFFFFFF4B6EB5FF000D83FF15439FFFFAFBFDFFFFFF
        FFFF5979BBFF001386FF001F8DFF001F8DFF001F8DFF001F8DFF001F8DFF001F
        8DFF001F8DFF001F8DFF001F8DFF001F8DFF001F8DFF001F8DFF001286FF6B89
        C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF859CCDFF001386FF001F8DFF001F
        8DFF001386FF5677B9FFFFFFFFFFFAFBFDFF214CA4FF002B93FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196ED003196ED0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF002B93FF214D
        A4FFFBFCFDFFFFFFFFFF8AA0D0FF5069B3FF748FC7FFFEFEFFFFFFFFFFFF90A5
        D2FF5069B3FF6E8BC4FFFCFCFEFFFFFFFFFF98ACD5FF516DB4FF5375B9FF5375
        B9FF5375B9FF5375B9FF5375B9FF5375B9FF5375B9FF5375B9FF5375B9FF5375
        B9FF5375B9FF5375B9FF516CB4FFA3B5DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB3C2E0FF516DB4FF5375B9FF5375B9FF516DB5FF96AAD5FFFFFFFFFFFAFB
        FDFF214CA4FF002B93FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196ED003196ED003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF002B93FF214DA4FFFDFDFEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFEFF214CA4FF002B93FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196ED003196ED0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF002B93FF214D
        A4FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE
        FEFF214DA4FF002B93FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196ED003196ED003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003095FF073799FF3159AAFF325AABFF325AABFF325A
        ABFF325AABFF325AABFF325AABFF325AABFF325AABFF325AABFF325AABFF325A
        ABFF325AABFF325AABFF325AABFF325AABFF325AABFF325AABFF325AABFF325A
        ABFF325AABFF325AABFF325AABFF325AABFF325AABFF325AABFF325AABFF325A
        ABFF325AABFF325AABFF325AABFF325AABFF325AABFF325AABFF325AABFF325A
        ABFF325AABFF325AABFF325AABFF3159AAFF073699FF003095FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196ED003196ED0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0030
        95FF002992FF002992FF002992FF002992FF002992FF002992FF002992FF0029
        92FF002992FF002992FF002992FF002992FF002992FF002992FF002992FF0029
        92FF002992FF002992FF002992FF002992FF002992FF002992FF002992FF0029
        92FF002992FF002992FF002992FF002992FF002992FF002992FF002992FF0029
        92FF002992FF002992FF002992FF002992FF002992FF002992FF002992FF0029
        92FF003095FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196ED003196ED003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196ED003196F10031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196FF003196FF003196FF003196FF003196FF003196FF0031
        96FF003196FF003196F1003196DC003196ED003196ED003196ED003196ED0031
        96ED003196ED003196ED003196ED003196ED003196ED003196ED003196ED0031
        96ED003196ED003196ED003196ED003196ED003196ED003196ED003196ED0031
        96ED003196ED003196ED003196ED003196ED003196ED003196ED003196ED0031
        96ED003196ED003196ED003196ED003196ED003196ED003196ED003196ED0031
        96ED003196ED003196ED003196ED003196ED003196ED003196ED003196ED0031
        96ED003196ED003196ED003196ED003196ED003196ED003196ED003196ED0031
        96ED003196ED003196ED003196ED003196ED003196ED003196DC}
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 251
      Top = 4
      Width = 60
      Height = 62
      Flat = True
      Glyph.Data = {
        76380000424D763800000000000036000000280000003C0000003C0000000100
        2000000000004038000000000000000000000000000000000000480776DC4E07
        6AED700A1EED740A16ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730B19ED6F0313ED700513ED730B
        19ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A
        18ED730A18ED730A18ED730A18ED730A18ED730A18ED730A17ED740A17ED5308
        5EED470778ED490774DC480776F14E076AFF700A1EFF740A16FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF710714FF8A323EFF852835FF710715FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A17FF740A17FF53085EFF470778FF490774F1480776ED4E07
        6AFF700A1EFF740A16FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF700513FF720816FF720816FF700513FF730A18FF7309
        17FF700413FF730A18FF730A18FF700513FF6A000AFFC79BA1FFB27880FF6600
        05FF700413FF730A18FF730A18FF700513FF720816FF730A18FF720816FF7005
        13FF720917FF700513FF730A18FF730A18FF700413FF730917FF730A18FF7005
        13FF720816FF720716FF710614FF730A18FF700513FF730917FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A17FF740A17FF5308
        5EFF470778FF490774ED480776ED4E076AFF700A1EFF740A16FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF720917FF81212FFF7913
        21FF781220FF80202DFF720916FF750D1BFF822331FF740B19FF730917FF8121
        2FFF6F0612FFC2949BFFAF737BFF88313CFF852835FF6D0010FF730918FF8021
        2EFF77111FFF720916FF77111FFF801F2DFF77101EFF81212FFF730917FF740B
        19FF822331FF750D1BFF720916FF80202DFF781220FF7A1523FF7E1C2AFF730B
        19FF81222FFF740D1AFF730917FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A17FF740A17FF53085EFF470778FF490774ED480776ED4E07
        6AFF700A1EFF740A16FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF6D000FFFD8B9BDFF9C515CFF944450FFD2AFB3FF6C000DFF8021
        2EFFE1CACDFF77111FFF710614FFD9BBBFFF872C39FFB8838BFFEBDBDDFFDABE
        C2FFE8D7D9FFA35F69FF6B000BFFD5B4B8FF913F4BFF6A0009FF913F4BFFD0AC
        B1FF8D3643FFD8BABEFF710614FF77111FFFE1CACDFF80212EFF6C000DFFD2AF
        B3FF94434FFFA4616AFFC09198FF76101EFFDBBFC3FF7E1C2AFF710614FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A17FF740A17FF5308
        5EFF470778FF490774ED480776ED4E076AFF700A1EFF740A16FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF6D000FFFDBBEC2FF9D53
        5EFF954652FFD5B4B8FF6C000DFF80212EFFE4CFD2FF77111FFF710614FFDCC0
        C4FF872D3AFFBD8C93FFD6B7BBFF6A000AFF8C3642FFE6D3D5FF791523FFD6B5
        B9FF92414DFF6A0009FF92414DFFD3B1B6FF8D3744FFDBBFC3FF710614FF7711
        1FFFE4CFD2FF80212EFF6C000DFFD5B4B8FF954551FFA6636CFFC2949BFF7610
        1EFFDEC4C9FF7E1C2AFF710614FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A17FF740A17FF53085EFF470778FF490774ED480776ED4E07
        6AFF700A1EFF740A16FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF6D000FFFDABCC0FF9D525DFF954551FFD3B0B4FF6C000CFF8021
        2EFFE2CCCFFF760F1EFF710614FFDBBEC2FF872D3AFFBE8E95FFAD7078FF6A00
        09FF6F0313FFDBBEC2FF8E3845FFD2AEB3FF913E4AFF6A0009FF92404CFFD2AF
        B4FF8D3744FFD9BBBFFF700513FF77111FFFE2CCCFFF7F1F2CFF6C000DFFD4B2
        B6FF954450FFA5626BFFC1939AFF76101EFFDCC1C5FF7D1B29FF710614FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A17FF740A17FF5308
        5EFF470778FF490774ED480776ED4E076AFF700A1EFF740A16FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF6D000FFFDABCC0FF9D52
        5DFF94434FFFDEC3C8FF680006FF7A1624FFEADADCFF781220FF690008FFDCC0
        C4FF882F3BFFBF8E95FFC19198FF620000FF730A18FFE3CDD0FF852937FFD7B8
        BCFF954551FF610000FF923F4BFFD2AFB4FF8C3542FFE4CED1FF6F0313FF7005
        13FFE9D8DAFF832632FF630000FFD4B2B7FF964652FFA5626BFFC1939AFF750E
        1CFFE3CED1FF7D1B29FF6A000AFF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A17FF740A17FF53085EFF470778FF490774ED480776ED4E07
        6AFF700A1EFF740A16FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF6D000FFFDABCC0FF9D515CFF92404CFFFAF7F7FFB47B83FFBD8C
        93FFF2E7E9FFBF9096FFAF737BFFEFE3E4FF791622FFBF8F96FFF5EEEFFFAD71
        79FFCDA5ABFFD3B1B6FF6D020EFFE0C8CBFFD9BBBFFF9E5A60FF984A55FFD7B7
        BBFF8A323FFFFAF7F7FFBB888FFFB57E86FFF3EAEBFFC59AA0FFAA6B72FFF1E6
        E7FF842834FFAA6A73FFC79BA2FF740C19FFF3E9EAFFC89CA2FF9C515CFF7208
        16FF730A18FF730A18FF730A18FF730A18FF730A18FF730A17FF740A17FF5308
        5EFF470778FF490774ED480776ED4E076AFF700A1EFF740A16FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF6D000FFFDABCC0FFA057
        62FF80222EFFA6636DFFAF727BFFCAA1A7FF882E3BFFA25B65FFCEA7ACFF9D52
        5DFF6B020CFF9A4E59FFA15963FFC3959CFFC09097FF7B1725FF700613FFA058
        62FFB0757DFFC19299FF882D3AFF9E555FFF80212EFFA7656FFFA96972FFCCA5
        AAFF8E3844FF9A4D58FFCEA7ACFFA46069FF6C030FFF8E3844FF984B56FF760F
        1CFFA46069FFB9848BFFB68088FF710715FF720917FF730A18FF730A18FF730A
        18FF730A18FF730A17FF740A17FF53085EFF470778FF490774ED480776ED4E07
        6AFF700A1EFF740A16FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF6D000EFFE0C7CAFFA6626CFF69000AFF6D000FFF6C000EFF6B00
        0BFF6F0313FF6D0010FF6B000BFF6D0010FF740B19FF6F0212FF6D000FFF6B00
        0CFF6B000CFF710614FF730B19FF6E0110FF6C000DFF6A0009FF7D1B29FF9646
        52FF710614FF6C000EFF6D000EFF6B000BFF6F0212FF6E0111FF6B000BFF6D00
        0EFF700614FF872C39FF903B47FF700513FF6D000FFF6B000DFF6C000EFF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A17FF740A17FF5308
        5EFF470778FF490774ED480776ED4E076AFF700A1EFF740A16FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF6F0413FFB27880FF913D
        49FF6F0312FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF700413FF882E3BFFB57E85FF720816FF720917FF730A18FF730A
        18FF730A18FF730A18FF730A18FF730A18FF6E0311FF994C57FFA96872FF6E03
        11FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A18FF730A
        18FF730A18FF730A17FF740A17FF53085EFF470778FF490774ED480776ED4E07
        6AFF710A1BFF760A13FF740A15FF740A15FF740A15FF740A15FF740A15FF740A
        15FF740A15FF750B15FF6F010DFF720612FF750B15FF740A15FF740A15FF740A
        15FF740A15FF740A15FF740A15FF740A15FF740A15FF740A15FF740A15FF740A
        15FF740A15FF740A15FF740A15FF740A15FF740A15FF750A15FF730713FF7002
        0EFF750A15FF750A15FF740A15FF740A15FF740A15FF740A15FF740A15FF740A
        15FF750B15FF720511FF70030FFF750B15FF740A15FF740A15FF740A15FF740A
        15FF740A15FF740A15FF740A15FF740A15FF740A15FF740A14FF760A14FF5308
        5DFF470778FF490774ED480776ED4D076CFF690A2DFF6C0A27FF6C0A28FF6C0A
        28FF6C0A28FF6C0A28FF6C0A28FF6C0A28FF6C0A28FF6C0A28FF6C0928FF6C0A
        28FF6C0A28FF6C0A28FF6C0A28FF6A0827FF680526FF680526FF690526FF6905
        26FF690526FF690526FF690526FF690526FF690526FF690526FF690526FF6905
        26FF690526FF690526FF680526FF680526FF690526FF690526FF690526FF6905
        26FF690526FF690526FF680526FF6A0727FF6C0A28FF6C0A28FF6C0A28FF6C0A
        28FF6C0A28FF6C0A28FF6C0A28FF6C0A28FF6C0A28FF6C0A28FF6C0A28FF6C0A
        28FF6C0A28FF6C0A27FF6C0A27FF510862FF470777FF490774ED490774ED4907
        74FF490773FF490773FF490773FF490773FF490773FF490773FF490773FF4907
        73FF490773FF490773FF490773FF490773FF490773FF4A0774FF460371FF4805
        72FF55167CFF54157CFF54157CFF54157CFF54157CFF54157CFF54157CFF5415
        7CFF54157CFF54157CFF54157CFF54157CFF54157CFF54157CFF54157CFF5415
        7CFF54157CFF54157CFF54157CFF54157CFF54157CFF54157CFF55177CFF4A08
        74FF450270FF4A0774FF490773FF490773FF490773FF490773FF490773FF4907
        73FF490773FF490773FF490773FF490773FF490773FF490773FF490773FF4907
        74FF490774FF490774ED490774ED490774FF490775FF490775FF490775FF4907
        75FF490775FF490775FF490775FF490775FF490775FF490775FF490775FF4907
        75FF490775FF460473FF52137CFFCAB5D8FFF3EFF7FFF5F2F8FFF5F1F8FFF5F1
        F8FFF5F1F8FFF5F1F8FFF5F1F8FFF5F1F8FFF5F1F8FFF5F1F8FFF5F1F8FFF5F1
        F8FFF5F1F8FFF5F1F8FFF5F1F8FFF5F1F8FFF5F1F8FFF5F1F8FFF5F1F8FFF5F1
        F8FFF5F1F8FFF5F2F8FFF4F1F8FFD3C3DFFF5A1E82FF450372FF490775FF4907
        75FF490775FF490775FF490775FF490775FF490775FF490775FF490775FF4907
        75FF490775FF490775FF490775FF490774FF490774FF490774ED490774ED4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF3F006DFF8659A2FFFFFF
        FFFFF6F2F8FFE6DDECFFE7DFEDFFE7DFEDFFE7DFEDFFE7DFEDFFE7DFEDFFE7DF
        EDFFE7DFEDFFE7DFEDFFE7DFEDFFE7DFEDFFE7DFEDFFE7DFEDFFE7DFEDFFE7DF
        EDFFE7DFEDFFE7DFEDFFE7DFEDFFE7DFEDFFE7DFEDFFE6DDECFFF3EEF6FFFFFF
        FFFF9771B0FF3F006CFF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774ED490774ED490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF3F006CFF8E65A9FFFFFFFFFFAA8CBFFF430670FF4E0E78FF4E0E
        78FF4E0E78FF4E0E78FF4E0E78FF4E0E78FF4E0E78FF4E0E78FF4E0E78FF4E0E
        78FF4E0E78FF4E0E78FF4E0E78FF4E0E78FF4E0E78FF4E0E78FF4E0E78FF4E0E
        78FF4E0E78FF430670FF9974B1FFFFFFFFFFA17EB6FF3F006CFF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774ED490774ED4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF3F006CFF8D63A8FFFFFF
        FFFFA788BCFF3C006AFF470472FF470472FF470472FF470472FF470472FF4704
        72FF470472FF470472FF470472FF470472FF470472FF470472FF470472FF4704
        72FF470472FF470472FF470472FF470472FF470472FF3C006AFF956EAEFFFFFF
        FFFF9F7CB5FF3F006CFF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774ED490774ED490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF3F006CFF8D63A8FFFFFFFFFFA889BDFF3E006CFF490774FF4907
        74FF40006DFF3E006CFF3F006CFF3F006CFF3F006CFF3F006CFF3F006CFF3F00
        6CFF3F006CFF3F006CFF3F006CFF3F006CFF3F006CFF3E006CFF40006DFF4806
        74FF490774FF3E006CFF9670AFFFFFFFFFFF9F7CB5FF3F006CFF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774ED490774ED4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF3F006CFF8D63A8FFFFFF
        FFFFA889BDFF3E006CFF480673FF4A0875FF926BACFFA381B9FFA280B8FFA280
        B8FFA280B8FFA280B8FFA280B8FFA280B8FFA280B8FFA280B8FFA280B8FFA280
        B8FFA280B8FFA381B8FF9973B1FF4E0E78FF470573FF3E006CFF9670AFFFFFFF
        FFFF9F7CB5FF3F006CFF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774ED490774ED490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF3F006CFF8D63A8FFFFFFFFFFA889BDFF3E006CFF470573FF4B0A
        75FFF0EBF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF5416
        7DFF460372FF3E006CFF9670AFFFFFFFFFFF9F7CB5FF3F006CFF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774ED490774ED4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF3F006CFF8D63A8FFFFFF
        FFFFA889BDFF3E006CFF480674FF4A0875FF875AA3FF956EAEFF946CADFF946C
        ADFF946CADFF946CADFF946CADFF946CADFF946CADFF946CADFF946CADFF946C
        ADFF946CADFF946DADFF8C62A7FF4D0D77FF480573FF3E006CFF9670AFFFFFFF
        FFFF9F7CB5FF3F006CFF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774ED490774ED490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF3F006CFF8D63A8FFFFFFFFFFA889BDFF3E006CFF490774FF4907
        74FF40006DFF3E006CFF3F006CFF3F006CFF3F006CFF3F006CFF3F006CFF3F00
        6CFF3F006CFF3F006CFF3F006CFF3F006CFF3F006CFF3E006CFF40006DFF4806
        74FF490774FF3E006CFF9670AFFFFFFFFFFF9F7CB5FF3F006CFF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774ED490774ED4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF470573FF4602
        71FF460271FF460271FF460271FF460271FF460271FF3B0069FF8B60A6FFFFFF
        FFFFA889BDFF3E006CFF490774FF490774FF460372FF460271FF460271FF4602
        71FF460271FF460271FF460271FF460271FF460271FF460271FF460271FF4602
        71FF460271FF460271FF460372FF490774FF490774FF3E006CFF9670AFFFFFFF
        FFFF9D7AB4FF3C0069FF460271FF460271FF460271FF460271FF460271FF4602
        71FF470472FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774ED490774ED490774FF490774FF490774FF490774FF4907
        74FF490774FF450171FF4B0975FF56177EFF55177DFF55177DFF55177DFF5517
        7DFF55177DFF4C1076FF946DAEFFFFFFFFFFA889BDFF3E006CFF490774FF4907
        74FF53147CFF56177EFF55177DFF55177DFF55177DFF55177DFF55177DFF5517
        7DFF55177DFF55177DFF55177DFF55177DFF55177DFF56177EFF54157CFF4A08
        75FF490774FF3E006CFF9670AFFFFFFFFFFFA584BAFF4C1076FF55177DFF5517
        7DFF55177DFF55177DFF55177DFF56187EFF4D0C77FF440070FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774ED490774ED4907
        74FF490774FF490774FF490774FF490774FF440370FF622887FFD8CAE2FFEEE8
        F2FFEEE8F2FFEEE8F2FFEEE8F2FFEEE8F2FFEEE8F2FFEDE6F1FFF4F0F7FFFFFF
        FFFFA888BCFF3E006CFF470573FF4B0975FFD6C5DFFFF3EFF6FFF3EFF6FFF3EF
        F6FFF3EFF6FFF3EFF6FFF3EFF6FFF3EFF6FFF3EFF6FFF3EFF6FFF3EFF6FFF3EF
        F6FFF3EFF6FFF3EFF6FFE2D7E9FF53137BFF460372FF3E006CFF9670AFFFFFFF
        FFFFF6F3F8FFEDE6F1FFEEE8F2FFEEE8F2FFEEE8F2FFEEE8F2FFEEE8F2FFEFE8
        F2FFDED2E6FF6C368FFF430270FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774ED490774ED490774FF490774FF490774FF490774FF4907
        74FF3D006BFF9F7CB6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA888BCFF3E006CFF470573FF4B09
        75FFD1BEDCFFEEE8F2FFECE6F1FFECE6F1FFECE6F1FFECE6F1FFECE6F1FFECE6
        F1FFECE6F1FFECE6F1FFECE6F1FFECE6F1FFECE6F1FFEDE7F2FFDCCFE4FF5213
        7BFF460372FF3E006CFF9670AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB296C4FF3E006CFF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774ED490774ED4907
        74FF490774FF490774FF490774FF490774FF3D006BFFA17EB7FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFA888BCFF3E006CFF490774FF490774FF4E0E78FF50117AFF501079FF5010
        79FF501079FF501079FF501079FF501079FF501079FF501079FF501079FF5010
        79FF501079FF501179FF4F0F79FF490874FF490774FF3E006CFF9670AFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB397C5FF3E006CFF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774ED490774ED490774FF490774FF490774FF490774FF4907
        74FF3D006BFFA07DB6FFFFFFFFFFFFFFFFFFFFFFFFFFD8C9E1FFCBB6D7FFCDB9
        D8FFCDB9D8FFCAB6D6FFE0D4E7FFFFFFFFFFA888BCFF3E006CFF490774FF4907
        74FF470472FF460472FF470472FF470472FF470472FF470472FF470472FF4704
        72FF470472FF470472FF470472FF470472FF470472FF470472FF470472FF4907
        74FF490774FF3E006CFF9670AFFFFFFFFFFFE5DBEBFFCAB6D6FFCDB9D8FFCDB9
        D8FFCBB7D7FFD4C3DEFFFDFDFEFFFFFFFFFFFFFFFFFFB296C4FF3E006CFF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774ED490774ED4907
        74FF490774FF490774FF490774FF490774FF3D006BFFA07DB6FFFFFFFFFFFFFF
        FFFFFFFFFFFF6D378FFF3C0069FF43006FFF43006FFF390067FF895EA5FFFFFF
        FFFFA889BDFF3E006CFF490774FF490774FF40006DFF3E006BFF3E006CFF3E00
        6CFF3E006CFF3E006CFF3E006CFF3E006CFF3E006CFF3E006CFF3E006CFF3E00
        6CFF3E006CFF3E006BFF3F006CFF480674FF490774FF3E006CFF9670AFFFFFFF
        FFFF9C77B3FF390067FF43006FFF43006FFF3E006BFF5F2485FFFAF8FBFFFFFF
        FFFFFFFFFFFFB296C4FF3E006CFF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774ED490774ED490774FF490774FF490774FF490774FF4907
        74FF3D006BFFA07DB6FFFFFFFFFFFFFFFFFFFFFFFFFF723E93FF41006EFF4806
        74FF480674FF3E006CFF8D63A8FFFFFFFFFFA889BDFF3E006CFF480674FF4A08
        74FF8E64A8FF9D7AB4FF9C78B3FF9C78B3FF9C78B3FF9C78B3FF9C78B3FF9C78
        B3FF9C78B3FF9C78B3FF9C78B3FF9C78B3FF9C78B3FF9D79B4FF936CADFF4E0E
        78FF480573FF3E006CFF9670AFFFFFFFFFFF9F7CB5FF3E006CFF480674FF4806
        74FF430070FF642A89FFFAF8FBFFFFFFFFFFFFFFFFFFB296C4FF3E006CFF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774ED490774ED4907
        74FF490774FF490774FF490774FF490774FF3D006BFFA07DB6FFFFFFFFFFFFFF
        FFFFFFFFFFFF723E93FF42006EFF490774FF490774FF3F006CFF8D63A8FFFFFF
        FFFFA889BDFF3E006CFF470573FF4B0A75FFF1EBF4FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF54167DFF460372FF3E006CFF9670AFFFFFFF
        FFFF9F7CB5FF3F006CFF490774FF490774FF440070FF642B89FFFAF8FBFFFFFF
        FFFFFFFFFFFFB296C4FF3E006CFF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774ED490774ED490774FF490774FF490774FF490774FF4907
        74FF3D006BFFA07DB6FFFFFFFFFFFFFFFFFFFFFFFFFF723E93FF42006EFF4907
        74FF490774FF3F006CFF8D63A8FFFFFFFFFFA889BDFF3E006CFF480673FF4A08
        75FF8A5FA6FF9973B1FF9872B0FF9872B0FF9872B0FF9872B0FF9872B0FF9872
        B0FF9872B0FF9872B0FF9872B0FF9872B0FF9872B0FF9873B0FF9067AAFF4E0D
        78FF480573FF3E006CFF9670AFFFFFFFFFFF9F7CB5FF3F006CFF490774FF4907
        74FF440070FF642B89FFFAF8FBFFFFFFFFFFFFFFFFFFB296C4FF3E006CFF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774ED490774ED4907
        74FF490774FF490774FF490774FF490774FF3D006BFFA07DB6FFFFFFFFFFFFFF
        FFFFFFFFFFFF723E93FF42006EFF490774FF490774FF3F006CFF8D63A8FFFFFF
        FFFFA889BDFF3E006CFF490774FF490774FF41006EFF3F006CFF3F006CFF3F00
        6CFF3F006CFF3F006CFF3F006CFF3F006CFF3F006CFF3F006CFF3F006CFF3F00
        6CFF3F006CFF3F006CFF40006DFF480674FF490774FF3E006CFF9670AFFFFFFF
        FFFF9F7CB5FF3F006CFF490774FF490774FF440070FF642B89FFFAF8FBFFFFFF
        FFFFFFFFFFFFB296C4FF3E006CFF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774ED490774ED490774FF490774FF490774FF490774FF4907
        74FF3D006BFFA07DB6FFFFFFFFFFFFFFFFFFFFFFFFFF723E93FF42006EFF4907
        74FF480674FF3C006AFF8B60A7FFFFFFFFFFA787BCFF3B006AFF460372FF4603
        72FF460372FF460372FF460372FF460372FF460372FF460372FF460372FF4603
        72FF460372FF460372FF460372FF460372FF460372FF460372FF460372FF4603
        72FF460372FF3B006AFF946EAEFFFFFFFFFF9D7AB4FF3C0069FF480673FF4907
        74FF440070FF642B89FFFAF8FBFFFFFFFFFFFFFFFFFFB296C4FF3E006CFF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774ED490774ED4907
        74FF490774FF490774FF490774FF490774FF3D006BFFA07DB6FFFFFFFFFFFFFF
        FFFFFFFFFFFF723E93FF42006EFF490674FF4B0A76FF4A0E74FF936BADFFFFFF
        FFFFAD8FC0FF490E74FF53147CFF53147CFF53147CFF53147CFF53147CFF5314
        7CFF53147CFF53147CFF53147CFF53147CFF53147CFF53147CFF53147CFF5314
        7CFF53147CFF53147CFF53147CFF53147CFF53147CFF490E74FF9C78B3FFFFFF
        FFFFA483B9FF4A0E74FF4C0B76FF490674FF440070FF642B89FFFAF8FBFFFFFF
        FFFFFFFFFFFFB296C4FF3E006CFF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774ED490774ED490774FF490774FF490774FF490774FF4907
        74FF3D006BFFA07DB6FFFFFFFFFFFFFFFFFFFFFFFFFF723E93FF42006EFF4301
        6FFF6B358EFFE9E1EEFFF2EDF5FFFFFFFFFFF5F1F7FFE9E1EEFFEAE2EFFFEAE2
        EFFFEAE2EFFFEAE2EFFFEAE2EFFFEAE2EFFFEAE2EFFFEAE2EFFFEAE2EFFFEAE2
        EFFFEAE2EFFFEAE2EFFFEAE2EFFFEAE2EFFFEAE2EFFFEAE2EFFFEAE2EFFFEAE2
        EFFFEAE2EFFFE9E1EEFFF3EFF6FFFFFFFFFFF4F0F7FFE9E2EFFF784798FF4100
        6EFF440070FF642B89FFFAF8FBFFFFFFFFFFFFFFFFFFB296C4FF3E006CFF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774ED490774ED4907
        74FF490774FF490774FF490774FF490774FF3D006BFFA07DB6FFFFFFFFFFFFFF
        FFFFFFFFFFFF723E93FF42006EFF42006FFF703B92FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF7F509DFF40006DFF440070FF642B89FFFAF8FBFFFFFF
        FFFFFFFFFFFFB296C4FF3E006CFF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774ED490774ED490774FF490774FF490774FF490774FF4907
        74FF3D006BFFA07DB6FFFFFFFFFFFFFFFFFFFFFFFFFF723E93FF42006EFF4200
        6FFF713C92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80519EFF4000
        6DFF440070FF642B89FFFAF8FBFFFFFFFFFFFFFFFFFFB296C4FF3E006CFF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774ED490774ED4907
        74FF490774FF490774FF490774FF490774FF3D006BFFA07DB6FFFFFFFFFFFFFF
        FFFFFFFFFFFF723E93FF42006EFF440170FF652D89FFCFBCDAFFCFBDDBFFCFBC
        DBFFCFBCDBFFCFBCDBFFCFBCDBFFCFBCDAFFCFBCDBFFCFBCDBFFCFBCDBFFCFBC
        DBFFCFBCDBFFCFBCDBFFCFBCDAFFCFBCDAFFCFBCDAFFCFBCDBFFCFBCDBFFCFBC
        DBFFCFBCDBFFCFBCDBFFCFBCDBFFCFBCDAFFCFBCDBFFCFBCDBFFCFBCDBFFCFBC
        DBFFCFBDDBFFD1BEDBFF703C92FF43016FFF440070FF642B89FFFAF8FBFFFFFF
        FFFFFFFFFFFFB296C4FF3E006CFF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774ED490774ED490774FF490774FF490774FF490774FF4907
        74FF3D006BFFA07DB6FFFFFFFFFFFFFFFFFFFFFFFFFF723E93FF42006EFF4907
        74FF480573FF430070FF440070FF430070FF430070FF430070FF430070FF4300
        70FF430070FF430070FF430070FF430070FF430070FF430070FF430070FF4300
        70FF430070FF430070FF430070FF430070FF430070FF430070FF430070FF4300
        70FF430070FF430070FF430070FF430070FF440070FF440070FF470573FF4907
        74FF440070FF642B89FFFAF8FBFFFFFFFFFFFFFFFFFFB296C4FF3E006CFF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774ED490774ED4907
        74FF490774FF490774FF490774FF490774FF3D006BFFA07DB6FFFFFFFFFFFFFF
        FFFFFFFFFFFF723E93FF42006EFF490774FF490774FF480673FF480674FF4806
        74FF480674FF480673FF480673FF480674FF480674FF480674FF480674FF4806
        74FF480674FF480674FF480674FF480674FF480674FF480674FF480674FF4806
        74FF480674FF480674FF480674FF480674FF480674FF480674FF480674FF4806
        74FF480674FF480673FF490774FF490774FF440070FF642B89FFFAF8FBFFFFFF
        FFFFFFFFFFFFB296C4FF3E006CFF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774ED490774ED490774FF490774FF490774FF490774FF4907
        74FF3D006BFFA07DB6FFFFFFFFFFFFFFFFFFFFFFFFFF723E93FF43006EFF4400
        70FF3F006DFF3F006DFF470472FF4A0774FF480673FF40006DFF3F006DFF4200
        6FFF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF440070FF642B89FFFAF8FBFFFFFFFFFFFFFFFFFFB296C4FF3E006CFF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774ED490774ED4907
        74FF490774FF490774FF490774FF490774FF3D006BFFA07DB6FFFFFFFFFFFFFF
        FFFFFFFFFFFF723E93FF3D006BFF662E8AFFB499C5FFA685BBFF50117AFF4505
        71FF490874FF946DADFFBBA2CCFF7A4999FF440170FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF440070FF642B89FFFAF8FBFFFFFF
        FFFFFFFFFFFFB296C4FF3E006CFF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774ED490774ED490774FF490774FF490774FF490774FF4907
        74FF3D006BFFA07DB6FFFFFFFFFFFFFFFFFFFFFFFFFF703B92FF450771FFE0D4
        E7FFFFFFFFFFFFFFFFFFAE91C1FF370066FF895EA5FFFFFFFFFFFFFFFFFFF9F6
        FAFF622988FF440170FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF440070FF642B89FFFAF8FBFFFFFFFFFFFFFFFFFFB296C4FF3E006CFF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774ED490774ED4907
        74FF490774FF490774FF490774FF490774FF3D006BFFA07DB6FFFFFFFFFFFFFF
        FFFFFFFFFFFF6E3990FF4F0F78FFF6F2F8FFFFFFFFFFFFFFFFFFCBB7D8FF3600
        66FFA27FB8FFFFFFFFFFFFFFFFFFFFFFFFFF744195FF41006EFF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF440070FF642B89FFFAF8FBFFFFFF
        FFFFFFFFFFFFB296C4FF3E006CFF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774ED490774ED490774FF490774FF490774FF490774FF4907
        74FF3D006BFFA07DB6FFFFFFFFFFFFFFFFFFFFFFFFFF723D93FF3D006BFFA585
        BAFFF7F4F9FFEDE6F1FF794899FF3D016BFF622886FFDFD4E7FFF8F5F9FFC2AB
        D1FF4B0B75FF470573FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF440070FF642B89FFFAF8FBFFFFFFFFFFFFFFFFFFB296C4FF3E006CFF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774ED490774ED4907
        74FF490774FF490774FF490774FF490774FF3D006BFFA07DB6FFFFFFFFFFFFFF
        FFFFFFFFFFFF6E3890FF3B0069FF40006DFF591C80FF51127AFF3E006CFF4400
        70FF3E006CFF4B0975FF5A1D81FF43006FFF41006EFF430070FF430070FF4300
        70FF430070FF430070FF430070FF430070FF430070FF430070FF430070FF4300
        70FF430070FF430070FF430070FF430070FF430070FF430070FF430070FF4300
        70FF430070FF430070FF430070FF430070FF3E006BFF5F2485FFFAF8FBFFFFFF
        FFFFFFFFFFFFB296C4FF3E006CFF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774ED490774ED490774FF490774FF490774FF490774FF4907
        74FF3D006BFFA07DB6FFFFFFFFFFFFFFFFFFFFFFFFFF885CA4FF602785FF652C
        89FF612786FF622887FF662D8AFF662D8AFF662D8AFF632A88FF612786FF642B
        89FF662D8AFF662D8AFF662D8AFF662D8AFF662D8AFF662D8AFF662D8AFF662D
        8AFF662D8AFF662D8AFF662D8AFF662D8AFF662D8AFF662D8AFF662D8AFF662D
        8AFF662D8AFF662D8AFF662D8AFF662D8AFF662D8AFF662D8AFF662D8AFF662D
        8AFF622787FF7C4C9BFFFAF9FCFFFFFFFFFFFFFFFFFFB296C4FF3E006CFF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774ED490774ED4907
        74FF490774FF490774FF490774FF490774FF3D006BFFA07DB6FFFFFFFFFFFFFF
        FFFFFFFFFFFFFCFBFDFFFBF9FCFFFBFAFCFFFBFAFCFFFBFAFCFFFBFAFCFFFBFA
        FCFFFBFAFCFFFBFAFCFFFBFAFCFFFBFAFCFFFBFAFCFFFBFAFCFFFBFAFCFFFBFA
        FCFFFBFAFCFFFBFAFCFFFBFAFCFFFBFAFCFFFBFAFCFFFBFAFCFFFBFAFCFFFBFA
        FCFFFBFAFCFFFBFAFCFFFBFAFCFFFBFAFCFFFBFAFCFFFBFAFCFFFBFAFCFFFBFA
        FCFFFBFAFCFFFBFAFCFFFBFAFCFFFBFAFCFFFBF9FCFFFCFAFCFFFFFFFFFFFFFF
        FFFFFFFFFFFFB296C4FF3E006CFF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774ED490774ED490774FF490774FF490774FF490774FF4907
        74FF3D006BFFA381B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB59AC7FF3E006CFF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774ED490774ED4907
        74FF490774FF490774FF490774FF490774FF3F006CFF8F65A9FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFA17EB7FF3F006CFF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774ED490774ED490774FF490774FF490774FF490774FF4907
        74FF480573FF4C0B76FF9873B1FFB599C7FFB397C5FFB397C5FFB397C5FFB397
        C5FFB397C5FFAF93C2FFD0BDDBFFFFFFFFFFDBCEE4FFAE93C1FFB397C5FFB397
        C5FFB397C5FFB397C5FFB397C5FFB397C5FFB397C5FFB397C5FFB397C5FFB397
        C5FFB397C5FFB397C5FFB397C5FFB397C5FFB397C5FFB397C5FFB397C5FFB397
        C5FFB397C5FFAE93C1FFD4C3DEFFFFFFFFFFD7C8E1FFAF93C1FFB397C5FFB397
        C5FFB397C5FFB397C5FFB397C5FFB599C7FF9E7BB5FF50117AFF470572FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774ED490774ED4907
        74FF490774FF490774FF490774FF490774FF490774FF480573FF40006DFF3F00
        6DFF3F006DFF3F006DFF3F006DFF3F006DFF3F006DFF350064FF875BA3FFFFFF
        FFFFA383B9FF340064FF3F006DFF3F006DFF3F006DFF3F006DFF3F006DFF3F00
        6DFF3F006DFF3F006DFF3F006DFF3F006DFF3F006DFF3F006DFF3F006DFF3F00
        6DFF3F006DFF3F006DFF3F006DFF3F006DFF3F006DFF340064FF9068ABFFFFFF
        FFFF9A75B1FF350064FF3F006DFF3F006DFF3F006DFF3F006DFF3F006DFF3F00
        6DFF3F006DFF470472FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774ED490774ED490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF3F006CFF8D63A8FFFFFFFFFFA788BDFF3D006BFF480573FF4805
        73FF480573FF480573FF480573FF480573FF480573FF480573FF480573FF4805
        73FF480573FF480573FF480573FF480573FF480573FF480573FF480573FF4805
        73FF480573FF3D006BFF956FAFFFFFFFFFFF9F7CB5FF3F006CFF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774ED490774ED4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF3F006CFF8E65A9FFFFFF
        FFFFA787BCFF3C006AFF470473FF470473FF470473FF470473FF470473FF4704
        73FF470473FF470473FF470473FF470473FF470473FF470473FF470473FF4704
        73FF470473FF470473FF470473FF470473FF470473FF3C006AFF956EAEFFFFFF
        FFFFA07EB6FF3F006CFF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774ED490774ED490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF3F006CFF895DA5FFFFFFFFFFEDE7F2FFD5C5DFFFD8C9E1FFD8C9
        E1FFD8C9E1FFD8C9E1FFD8C9E1FFD8C9E1FFD8C9E1FFD8C9E1FFD8C9E1FFD8C9
        E1FFD8C9E1FFD8C9E1FFD8C9E1FFD8C9E1FFD8C9E1FFD8C9E1FFD8C9E1FFD8C9
        E1FFD8C9E1FFD5C7DFFFE9E1EEFFFFFFFFFF9B76B3FF3F006CFF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774ED490774F14907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF450371FF571A7FFFD8CA
        E2FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1D6
        E8FF602786FF440270FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774FF490774FF490774FF490774FF490774FF490774FF4907
        74FF490774FF490774F1490774DC490774ED490774ED490774ED490774ED4907
        74ED490774ED490774ED490774ED490774ED490774ED490774ED490774ED4907
        74ED490774ED490774ED450271ED4E0E78ED602686ED5F2585ED5F2585ED5F25
        85ED5F2585ED5F2585ED5F2585ED5F2585ED5F2585ED5F2585ED5F2585ED5F25
        85ED5F2585ED5F2585ED5F2585ED5F2585ED5F2585ED5F2585ED5F2585ED5F25
        85ED5F2585ED5F2585ED602686ED51117AED450271ED490774ED490774ED4907
        74ED490774ED490774ED490774ED490774ED490774ED490774ED490774ED4907
        74ED490774ED490774ED490774ED490774ED490774ED490774DC}
      OnClick = SpeedButton5Click
    end
    object GroupBuscar: TGroupBox
      Left = 419
      Top = 1
      Width = 733
      Height = 71
      Caption = 'Busqueda'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object SBuscar: TSpeedButton
        Left = 559
        Top = 12
        Width = 80
        Height = 52
        Flat = True
        Glyph.Data = {
          263D0000424D263D00000000000036000000280000004E000000320000000100
          200000000000F03C000000000000000000000000000000000000FF49CEDFFF49
          CEF4FF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49
          CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49
          CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49
          CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49
          CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49
          CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49
          CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49
          CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49
          CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49
          CEEFFF49CEEFFF49CEEFFF49CEF4FF49CEDFFF49CEEEFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEEEFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEEEFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF48CEFFFF45CDFFFF45
          CDFFFF45CDFFFF45CDFFFF45CDFFFF45CDFFFF48CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF44CDFFFF42CCFFFF47CDFFFF47CEFFFF45CDFFFF47CEFFFF49
          CEFFFF49CEFFFF46CDFFFF42CCFFFF42CCFFFF44CCFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF48CEFFFF43CCFFFF42CCFFFF45CDFFFF49CEFFFF49CEFFFF49
          CEFFFF47CEFFFF42CCFFFF43CCFFFF48CEFFFF47CEFFFF45CDFFFF48CEFFFF49
          CEFFFF45CDFFFF45CDFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF48CEFFFF4CCFFFFF57D2FFFF57D2FFFF57D2FFFF57
          D2FFFF57D2FFFF55D1FFFF46CDFFFF43CCFFFF4ACEFFFF49CEFFFF44CDFFFF63
          D5FFFF74D9FFFF50D0FFFF49CEFFFF59D3FFFF50D0FFFF48CEFFFF41CCFFFF51
          D0FFFF70D9FFFF76DBFFFF62D5FFFF44CDFFFF46CDFFFF4ACEFFFF45CDFFFF47
          CDFFFF6AD7FFFF76DAFFFF5DD4FFFF43CCFFFF48CEFFFF45CDFFFF4ACEFFFF6F
          D8FFFF6ED8FFFF48CDFFFF4DCFFFFF5AD3FFFF4FD0FFFF4ACEFFFF57D2FFFF55
          D2FFFF4ACEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF43CCFFFF6BD7FFFFF5FDFFFFF9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7
          FDFFFFD3F3FFFF6ED8FFFF42CCFFFF42CCFFFF90E1FFFFFDFEFFFFFFFFFFFFE1
          F7FFFFB7ECFFFFFFFFFFFF9FE6FFFF3ACAFFFF88DFFFFFEEFAFFFFFFFFFFFFFF
          FFFFFFFDFFFFFFB9ECFFFF4DD0FFFF43CCFFFF56D2FFFFCDF1FFFFFFFFFFFFFF
          FFFFFFFBFEFFFFABE9FFFF45CDFFFF50D0FFFFCFF2FFFFFFFFFFFFFFFFFFFFCD
          F1FFFFCEF2FFFFF9FEFFFF66D6FFFF56D1FFFFF1FBFFFFE0F7FFFF4FD0FFFF46
          CDFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEEEFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF43CCFFFF6D
          D8FFFFFFFFFFFFF8FDFFFFBDEDFFFFBBEDFFFFBAEDFFFFDBF5FFFFFFFFFFFFE8
          F9FFFF54D1FFFF4BCFFFFFE5F8FFFFFFFFFFFF9CE5FFFF89DFFFFFF0FBFFFFFF
          FFFFFF9FE5FFFF59D2FFFFF6FDFFFFF7FDFFFF7DDCFFFF57D2FFFFB5EBFFFFFF
          FFFFFF9CE4FFFF39CAFFFFBDEDFFFFFFFFFFFFB0EAFFFF7ADCFFFFDFF6FFFFFF
          FFFFFF82DEFFFF84DEFFFFFFFFFFFFD3F3FFFF73D9FFFFBFEEFFFFFFFFFFFFE8
          F8FFFF4ECFFFFF5BD3FFFFF9FDFFFFE9F9FFFF50D0FFFF46CDFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEEEFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF43CCFFFF6DD8FFFFFFFFFFFFE6
          F8FFFF43CCFFFF3FCCFFFF40CCFFFF46CDFFFFD9F5FFFFFFFFFFFF7CDCFFFF53
          D1FFFFF6FDFFFFEFFBFFFF4DCFFFFF33C8FFFFA6E7FFFFFFFFFFFFA2E6FFFF48
          CEFFFF68D6FFFF64D6FFFF59D3FFFF7DDCFFFFCAF1FFFFFFFFFFFFADE9FFFF52
          D0FFFFF7FDFFFFEEFBFFFF4ED0FFFF37C9FFFF72D9FFFFA7E8FFFF66D6FFFF84
          DEFFFFFFFFFFFFC3EFFFFF45CDFFFF55D1FFFFF9FDFFFFE6F8FFFF4BCFFFFF5B
          D3FFFFF9FDFFFFE7F9FFFF4FD0FFFF46CDFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF43CCFFFF6DD8FFFFFFFFFFFFE6F8FFFF42CCFFFF3E
          CCFFFF3ECBFFFF4DCFFFFFDFF6FFFFFFFFFFFF75DAFFFF54D1FFFFF7FDFFFFEA
          F9FFFF51D0FFFF3DCBFFFF94E3FFFFFFFFFFFFA4E7FFFF38CAFFFF67D6FFFFCF
          F2FFFFFCFEFFFFFFFFFFFFFFFFFFFFEFFBFFFF68D6FFFF63D5FFFFFFFFFFFFD7
          F4FFFF48CEFFFF48CEFFFF41CCFFFF3ACAFFFF41CCFFFF4ECFFFFFBBEDFFFFFD
          FFFFFFF9FDFFFFDDF6FFFFFEFFFFFFE4F8FFFF4BCFFFFF5BD3FFFFF9FDFFFFEB
          F9FFFF4FD0FFFF46CDFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF43CCFFFF6DD8FFFFFFFFFFFFF9FDFFFFC5EFFFFFC3EFFFFFC4EFFFFFE4
          F8FFFFFFFFFFFFBAECFFFF45CDFFFF5AD3FFFFF7FDFFFFEBFAFFFF51D0FFFF3C
          CBFFFF96E3FFFFFFFFFFFFA1E6FFFF45CDFFFFDFF6FFFFFFFFFFFFEAF9FFFFBA
          EDFFFF8EE1FFFF55D1FFFF3CCAFFFF60D4FFFFFBFEFFFFE4F8FFFF48CEFFFF40
          CCFFFF56D2FFFF5FD4FFFF4FCFFFFF46CDFFFF45CDFFFF63D5FFFF82DEFFFFB7
          ECFFFFFFFFFFFFE5F8FFFF4CCFFFFF5BD3FFFFF6FDFFFFFDFEFFFF5ED4FFFF3A
          CAFFFF48CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEEEFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF43CCFFFF6D
          D8FFFFFEFFFFFFFFFFFFFFF5FCFFFFF5FCFFFFF7FDFFFFFFFFFFFFEBFAFFFF5C
          D3FFFF3ECBFFFF5BD3FFFFF7FDFFFFEBFAFFFF52D0FFFF3CCBFFFF96E3FFFFFF
          FFFFFFA0E6FFFF4ECFFFFFF1FBFFFFF8FDFFFF6BD7FFFF4BCFFFFFB8ECFFFFD0
          F2FFFF63D5FFFF42CCFFFFD0F2FFFFFFFFFFFF8BE0FFFF54D1FFFFCEF2FFFFFF
          FFFFFF7FDCFFFF4CCFFFFFD4F3FFFFCDF2FFFF52D1FFFF72D9FFFFFFFFFFFFE1
          F7FFFF49CEFFFF5BD3FFFFF4FCFFFFFFFFFFFFD4F3FFFFACE9FFFF63D5FFFF44
          CDFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEEEFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF43CCFFFF6DD8FFFFFFFFFFFFE9
          F9FFFF57D1FFFF53D0FFFF51D0FFFF93E2FFFFFFFFFFFFC5F0FFFF41CCFFFF5B
          D3FFFFF7FDFFFFEBFAFFFF52D0FFFF3CCBFFFF97E3FFFFFFFFFFFFA4E7FFFF3A
          CAFFFFA4E7FFFFFFFFFFFFF6FDFFFFF5FDFFFFFFFFFFFFCCF1FFFF4DCFFFFF41
          CCFFFF6AD7FFFFEBFAFFFFFFFFFFFFFCFEFFFFFFFFFFFFCCF1FFFF4ECFFFFF42
          CCFFFFAEE9FFFFFFFFFFFFFDFFFFFFFEFFFFFFFFFFFFFFA6E7FFFF3DCBFFFF5D
          D3FFFFF6FDFFFFF1FBFFFFE8F9FFFFFFFFFFFF91E2FFFF3FCBFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF43CCFFFF6DD8FFFFFFFFFFFFE6F8FFFF42CBFFFF3E
          CBFFFF39C9FFFF6CD8FFFFFFFFFFFFE7F9FFFF51D0FFFF4BCFFFFF76DBFFFF73
          D9FFFF4BCFFFFF46CDFFFF5ED4FFFF7DDCFFFF62D5FFFF45CDFFFF44CDFFFF72
          D9FFFF9BE4FFFF9CE5FFFF7BDCFFFF4BCFFFFF46CDFFFF4ACEFFFF42CCFFFF56
          D2FFFF8BE0FFFF9FE5FFFF7FDDFFFF4CCFFFFF46CDFFFF48CEFFFF46CDFFFF76
          DAFFFF9CE5FFFF9BE4FFFF75DAFFFF48CEFFFF47CDFFFF4ED0FFFF77DBFFFF6D
          D8FFFF63D5FFFF96E3FFFF62D5FFFF46CDFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF43CCFFFF6DD8FFFFFFFFFFFFF9FDFFFFC8F0FFFFC5F0FFFFC8F0FFFFEF
          FBFFFFFFFFFFFFBEEEFFFF44CDFFFF48CEFFFF41CCFFFF42CCFFFF49CEFFFF4A
          CEFFFF45CDFFFF40CCFFFF45CDFFFF4ACEFFFF48CEFFFF41CCFFFF3FCBFFFF3F
          CBFFFF40CBFFFF47CEFFFF49CEFFFF49CEFFFF49CEFFFF45CDFFFF3FCBFFFF3F
          CBFFFF40CCFFFF47CDFFFF49CEFFFF49CEFFFF48CEFFFF41CCFFFF3FCBFFFF3F
          CBFFFF41CCFFFF48CEFFFF49CEFFFF48CEFFFF41CCFFFF42CCFFFF44CCFFFF3E
          CBFFFF45CDFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEEEFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF43CCFFFF69
          D7FFFFE9F9FFFFEDFAFFFFF3FCFFFFF3FCFFFFF4FCFFFFE8F9FFFFB5ECFFFF53
          D1FFFF45CDFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEEEFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF4BCFFFFF53D1FFFF53
          D1FFFF53D1FFFF53D1FFFF53D1FFFF4ECFFFFF41CCFFFF46CDFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF48CEFFFF46CDFFFF46CDFFFF46CDFFFF46
          CDFFFF46CDFFFF47CDFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF47CDFFFF45CDFFFF45CDFFFF47CDFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEEEFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF47CDFFFF4BCEFFFF5BD3FFFF5CD3FFFF4DCFFFFF48CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEEEFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF45CDFFFF49CEFFFFB2
          EBFFFFFBFEFFFFFCFEFFFFB8ECFFFF49CEFFFF48CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF45CDFFFF4CCFFFFFB1EAFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFE7F9FFFF50D0FFFF46CDFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF45
          CDFFFF49CEFFFFB6ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F9FFFF50
          D0FFFF46CDFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEEEFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF47CEFFFF43CCFFFF41CCFFFF42CCFFFF43CDFFFF42CCFFFF41
          CCFFFF45CDFFFF48CEFFFF49CEFFFF49CEFFFF45CDFFFF4ACEFFFFB2EAFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEE9FFFF48CEFFFF48CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEEEFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF47CDFFFF42CCFFFF4A
          CEFFFF70D9FFFF8FE1FFFF9FE5FFFFA4E7FFFF9BE4FFFF87DFFFFF60D4FFFF45
          CDFFFF44CDFFFF44CCFFFF4DCFFFFFB8ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFACE9FFFF49CEFFFF47CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF43CCFFFF4ECFFFFF8BE0FFFFCEF2FFFFF5FCFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAF9FFFFB9ECFFFF6FD8FFFF4E
          CFFFFFB2EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEE9FFFF4A
          CEFFFF45CDFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF43
          CCFFFF6BD7FFFFCDF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FBFFFFD5F4FFFFFDFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9E8FFFF48CEFFFF45CDFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEEEFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF41CCFFFF75DAFFFFECFAFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFF0FBFFFFEBFAFFFFF4FCFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFADE9FFFF47CEFFFF46CDFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEEEFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF42CCFFFF66D6FFFFE8F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4
          FCFFFFB5EBFFFF7FDDFFFF68D7FFFF63D5FFFF6DD8FFFF8DE0FFFFCDF2FFFFFD
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFA7E8FFFF48CEFFFF46
          CDFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF46CDFFFF4F
          CFFFFFCCF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8F4FFFF71D9FFFF44CDFFFF41
          CCFFFF43CCFFFF44CDFFFF43CCFFFF41CCFFFF4BCEFFFF8FE1FFFFF2FCFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFC2EFFFFF45CDFFFF46CDFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF42CCFFFF8DE0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFDBF5FFFF5CD3FFFF40CBFFFF48CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF47CDFFFF40CCFFFF83DEFFFFF7FDFFFFFFFFFFFFFF
          FFFFFFDFF6FFFF5DD3FFFF45CDFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEEEFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF47CDFFFF50D0FFFFD0F3FFFFFFFFFFFFFFFFFFFFF7FDFFFF75
          DAFFFF40CCFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF48CEFFFF40CCFFFF9FE6FFFFFFFFFFFFFFFFFFFFFFFFFFFF97
          E3FFFF42CCFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEEEFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF43
          CCFFFF6ED8FFFFF1FBFFFFFFFFFFFFFFFFFFFFBDEEFFFF46CDFFFF48CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF44CDFFFF5AD3FFFFE5F8FFFFFFFFFFFFFFFFFFFFCAF0FFFF4CCFFFFF47
          CDFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF40CCFFFF89DFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF81DDFFFF41CCFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF48CEFFFF45
          CDFFFFB9ECFFFFFFFFFFFFFFFFFFFFE5F8FFFF57D2FFFF45CDFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF3FCBFFFF96E3FFFFFFFFFFFFFFFFFFFFF3
          FCFFFF6CD7FFFF43CCFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF43CCFFFFA0E6FFFFFF
          FFFFFFFFFFFFFFF1FBFFFF69D7FFFF44CDFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEEEFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF3FCBFFFF97E3FFFFFFFFFFFFFFFFFFFFF0FBFFFF6AD7FFFF43
          CCFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF48CEFFFF43CCFFFF9DE5FFFFFFFFFFFFFFFFFFFFF4
          FCFFFF70D9FFFF43CCFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEEEFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF3F
          CBFFFF90E1FFFFFFFFFFFFFFFFFFFFFBFEFFFF75DAFFFF42CCFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF48CEFFFF43CDFFFFACE9FFFFFFFFFFFFFFFFFFFFEBFAFFFF5CD4FFFF45
          CDFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF42CCFFFF7CDCFFFFF9
          FDFFFFFFFFFFFFFFFFFFFF9EE5FFFF42CCFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF46CDFFFF4C
          CFFFFFD2F3FFFFFFFFFFFFFFFFFFFFDAF5FFFF51D0FFFF46CDFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF45CDFFFF5CD3FFFFE2F7FFFFFFFFFFFFFF
          FFFFFFE3F8FFFF58D2FFFF44CDFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF40CCFFFF7BDCFFFFFAFEFFFFFF
          FFFFFFFFFFFFFFADE9FFFF46CDFFFF48CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEEEFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF48CEFFFF45CDFFFFAAE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFB1
          EAFFFF44CDFFFF45CDFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF42CCFFFF59D3FFFFDCF6FFFFFFFFFFFFFFFFFFFFF9FDFFFF76
          DAFFFF42CCFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEEEFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF44CDFFFF66D5FFFFECFAFFFFFFFFFFFFFFFFFFFFFDFFFFFF9FE5FFFF49
          CEFFFF41CCFFFF46CDFFFF48CEFFFF48CEFFFF48CEFFFF44CDFFFF3FCBFFFF5B
          D3FFFFCCF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFC2EFFFFF4ACEFFFF47CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF42
          CCFFFF8EE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7F0FFFF78DBFFFF51
          D0FFFF46CDFFFF45CDFFFF47CEFFFF5AD3FFFF8FE1FFFFE1F7FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFEBFAFFFF68D6FFFF43CCFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF47CEFFFF46CDFFFFAB
          E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FDFFFFD9F5FFFFBFEEFFFFB6
          ECFFFFC5F0FFFFE4F8FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FBFFFF7C
          DCFFFF42CCFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEEEFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF46CDFFFF4ACEFFFFA2E6FFFFF8
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F8FFFF7BDCFFFF42CCFFFF48CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEEEFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF46CDFFFF44CCFFFF76DAFFFFCDF1FFFFFC
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2
          FCFFFFB0EAFFFF5FD4FFFF42CCFFFF48CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF48CEFFFF42CCFFFF4ECFFFFF7DDCFFFFAEE9FFFFD1
          F3FFFFDFF6FFFFE1F6FFFFDDF6FFFFC7F0FFFF9FE5FFFF6CD7FFFF45CDFFFF44
          CDFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEEEFF49CEEEFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF47CDFFFF43CCFFFF44CDFFFF48CEFFFF49CEFFFF49
          CEFFFF49CEFFFF47CDFFFF43CCFFFF44CCFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEEEFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF48CEFFFF48CEFFFF48CEFFFF48CEFFFF48CEFFFF48
          CEFFFF48CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEFFFF49
          CEFFFF49CEFFFF49CEFFFF49CEFFFF49CEEEFF49CEDFFF49CEF4FF49CEEFFF49
          CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49
          CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49
          CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49
          CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49
          CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49
          CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49
          CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49
          CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49
          CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49CEEFFF49
          CEEFFF49CEF4FF49CEDF}
        OnClick = SBuscarClick
      end
      object sLabelFX4: TsLabelFX
        Left = 2
        Top = 18
        Width = 55
        Height = 18
        Caption = 'Afiliados:'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      object sLabelFX5: TsLabelFX
        Left = 6
        Top = 41
        Width = 51
        Height = 18
        Caption = 'Del Mes:'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      object sLabelFX6: TsLabelFX
        Left = 167
        Top = 18
        Width = 83
        Height = 18
        Caption = 'Ordenado por:'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      object sLabelFX7: TsLabelFX
        Left = 199
        Top = 41
        Width = 50
        Height = 18
        Caption = 'Gesti'#243'n:'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      object Bimp: TSpeedButton
        Left = 640
        Top = 12
        Width = 80
        Height = 52
        Flat = True
        Glyph.Data = {
          263D0000424D263D00000000000036000000280000004E000000320000000100
          200000000000F03C000000000000000000000000000000000000FFAF49DFFFAF
          49F4FFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF
          49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF
          49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF
          49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF
          49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF
          49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF
          49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF
          49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF
          49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF
          49EFFFAF49EFFFAF49EFFFAF49F4FFAF49DFFFAF49EEFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAE48FFFFAE48FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF4AFFFFAF
          4AFFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49EEFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAD45FFFFB75CFFFFEFDAFFFFE6C5FFFFB04CFFFFAE
          47FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49EEFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAE47FFFFAD45FFFFAE47FFFFAF49FFFFAD46FFFFAD45FFFFAF
          48FFFFAF49FFFFAE47FFFFAD45FFFFAE47FFFFAF49FFFFAF48FFFFAD45FFFFAD
          46FFFFAD44FFFFBA61FFFFFEFDFFFFF4E6FFFFB04DFFFFAB40FFFFAC43FFFFAE
          48FFFFAF49FFFFAF49FFFFAE47FFFFAD45FFFFAE47FFFFAF49FFFFAF49FFFFAF
          49FFFFAD45FFFFAD45FFFFAF49FFFFAE47FFFFAD44FFFFAE47FFFFAF49FFFFAF
          49FFFFAD45FFFFAD45FFFFAF49FFFFAF49FFFFAE46FFFFAD45FFFFAE48FFFFAF
          49FFFFAE46FFFFAD45FFFFAF48FFFFAF49FFFFAE46FFFFAD45FFFFAF48FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF48FFFFB2
          51FFFFB659FFFFB250FFFFAF48FFFFB455FFFFB557FFFFB04BFFFFAE48FFFFB2
          50FFFFB659FFFFB250FFFFAF48FFFFB04BFFFFB557FFFFB455FFFFAD44FFFFB9
          61FFFFFEFDFFFFF2E1FFFFB04BFFFFBE6CFFFFBF6CFFFFAE46FFFFAE45FFFFAF
          49FFFFB250FFFFB659FFFFB250FFFFAF48FFFFAF49FFFFB04BFFFFB556FFFFB4
          56FFFFAF49FFFFB14FFFFFB659FFFFB250FFFFAE48FFFFB04BFFFFB557FFFFB4
          55FFFFAF4AFFFFAF48FFFFB352FFFFB558FFFFB14DFFFFAF48FFFFB352FFFFB6
          58FFFFB14DFFFFAF48FFFFB453FFFFB558FFFFB14CFFFFAF48FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAB40FFFFD8A4FFFFFFFFFFFFD5
          9EFFFFAA3DFFFFEED9FFFFFDFAFFFFB961FFFFA83AFFFFD296FFFFFFFFFFFFD6
          9FFFFFA93BFFFFB85EFFFFF9F1FFFFEFDAFFFFAF48FFFFB85FFFFFFDFAFFFFF6
          EAFFFFEACFFFFFFFFFFFFFFFFFFFFFE5C2FFFFB14EFFFFAA3DFFFFD59EFFFFFF
          FFFFFFD398FFFFAB3FFFFFAD45FFFFB75BFFFFF8F0FFFFF2E2FFFFAD45FFFFCE
          8EFFFFFFFFFFFFD8A4FFFFA83AFFFFB75BFFFFF8EFFFFFF2E2FFFFB250FFFFAB
          40FFFFDFB5FFFFFFFFFFFFC77DFFFFA93AFFFFE1B8FFFFFFFFFFFFC77DFFFFAA
          3DFFFFE7C9FFFFFFFFFFFFC070FFFFAC42FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49EEFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAB40FFFFDAA9FFFFFFFFFFFFD8A3FFFFA93CFFFFF2
          E1FFFFFFFFFFFFBA62FFFFA839FFFFD49BFFFFFFFFFFFFD8A4FFFFA93AFFFFB9
          5FFFFFFDFAFFFFF3E2FFFFAF49FFFFB85EFFFFFBF7FFFFFFFFFFFFE8C9FFFFC3
          76FFFFE6C7FFFFFFFFFFFFD8A5FFFFA736FFFFD7A2FFFFFFFFFFFFD59EFFFFAA
          3EFFFFAD45FFFFB75CFFFFFCF8FFFFF6EAFFFFAD45FFFFD092FFFFFFFFFFFFDA
          A9FFFFA839FFFFB75CFFFFFCF8FFFFF6EAFFFFB251FFFFAB3FFFFFE2BBFFFFFF
          FFFFFFC880FFFFA839FFFFE3BEFFFFFFFFFFFFC881FFFFA93CFFFFEAD0FFFFFF
          FFFFFFC172FFFFAC41FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49EEFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAB40FFFFDAA9FFFFFFFFFFFFD7A3FFFFA93CFFFFF2E1FFFFFFFFFFFFBA
          62FFFFA839FFFFD49BFFFFFFFFFFFFD8A4FFFFA93AFFFFB95FFFFFFDFAFFFFF2
          E2FFFFAF49FFFFB85EFFFFFDFAFFFFFCF8FFFFB658FFFFA735FFFFBB64FFFFFF
          FFFFFFF0DDFFFFAC42FFFFD6A0FFFFFFFFFFFFD49CFFFFAA3FFFFFAD45FFFFB7
          5CFFFFFCF8FFFFF6EAFFFFAD45FFFFD092FFFFFFFFFFFFDAA9FFFFA839FFFFB7
          5CFFFFFCF8FFFFF6EAFFFFB250FFFFAB3FFFFFE2BBFFFFFFFFFFFFC880FFFFA8
          39FFFFE3BEFFFFFFFFFFFFC880FFFFA93CFFFFEAD0FFFFFFFFFFFFC071FFFFAC
          42FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAB40FFFFDA
          A9FFFFFFFFFFFFD7A3FFFFA93CFFFFF2E1FFFFFFFFFFFFB961FFFFA839FFFFD4
          9AFFFFFFFFFFFFD7A2FFFFA93AFFFFB95FFFFFFDFAFFFFF2E2FFFFAF49FFFFB8
          5EFFFFFEFDFFFFF3E3FFFFB04BFFFFAD44FFFFB557FFFFFAF3FFFFF8EFFFFFB0
          4AFFFFD59FFFFFFFFFFFFFD69FFFFFAA3DFFFFAD44FFFFB75CFFFFFCF8FFFFF6
          EAFFFFAD45FFFFD092FFFFFFFFFFFFD9A8FFFFA839FFFFB75BFFFFFCF7FFFFF6
          E9FFFFB250FFFFAB3FFFFFE2BAFFFFFFFFFFFFC880FFFFA839FFFFE3BEFFFFFF
          FFFFFFC880FFFFA93CFFFFEACFFFFFFFFFFFFFC173FFFFAC41FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAB40FFFFDAA9FFFFFFFFFFFFD7
          A3FFFFA93CFFFFF2E0FFFFFFFFFFFFBC66FFFFA533FFFFD298FFFFFFFFFFFFDB
          ABFFFFA635FFFFB75BFFFFFDFAFFFFF3E3FFFFAF49FFFFB85EFFFFFDFBFFFFF7
          EEFFFFB14DFFFFA93BFFFFB95EFFFFFEFDFFFFF3E4FFFFAD45FFFFD69FFFFFFF
          FFFFFFE2BCFFFFA738FFFFAA3EFFFFB75CFFFFFCF8FFFFF6EAFFFFAD45FFFFD0
          92FFFFFFFFFFFFDDAFFFFFA635FFFFB557FFFFFBF7FFFFF8F0FFFFB250FFFFA8
          39FFFFE1B9FFFFFFFFFFFFC881FFFFA839FFFFE3BEFFFFFFFFFFFFC880FFFFA9
          3CFFFFEACEFFFFFFFFFFFFCE8DFFFFA635FFFFAD46FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49EEFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAB40FFFFDAA9FFFFFFFFFFFFD7A3FFFFA93CFFFFF1
          DFFFFFFFFFFFFFDFB5FFFFB250FFFFE3BEFFFFFFFFFFFFF6EBFFFFBB64FFFFCB
          87FFFFFFFFFFFFEFD9FFFFAD45FFFFB95FFFFFFCF7FFFFFFFFFFFFD8A4FFFFB2
          51FFFFDDB1FFFFFFFFFFFFE1B9FFFFA737FFFFD7A1FFFFFFFFFFFFFDFBFFFFE0
          B7FFFFD093FFFFB659FFFFFCF8FFFFF6EAFFFFAD45FFFFD092FFFFFFFFFFFFF6
          EBFFFFBC67FFFFC77DFFFFFFFFFFFFFFFFFFFFD49BFFFFB559FFFFF1DFFFFFFF
          FFFFFFC378FFFFA93AFFFFE3BEFFFFFFFFFFFFC881FFFFA93CFFFFEACEFFFFFF
          FFFFFFF6EBFFFFDDB1FFFFC880FFFFAC42FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49EEFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAB40FFFFDAA9FFFFFFFFFFFFD7A3FFFFA93CFFFFF1E0FFFFFFFFFFFFEC
          D4FFFFFCF9FFFFFFFFFFFFF6EBFFFFE3BEFFFFFEFDFFFFFFFFFFFFFFFFFFFFD4
          9BFFFFA93CFFFFB961FFFFFDFAFFFFF8EEFFFFF0DEFFFFFEFDFFFFFFFFFFFFF5
          E8FFFFBA61FFFFA83AFFFFD7A2FFFFFFFFFFFFF2E0FFFFFFFFFFFFF5E7FFFFBB
          66FFFFFBF5FFFFF6EAFFFFAD45FFFFD092FFFFFFFFFFFFF0DDFFFFF5E8FFFFFF
          FFFFFFFFFFFFFFE4BFFFFFF5E7FFFFFFFFFFFFFFFFFFFFEFDAFFFFB251FFFFAB
          3FFFFFE3BEFFFFFFFFFFFFC881FFFFA93CFFFFEAD0FFFFFFFFFFFFF2E0FFFFFF
          FFFFFFE6C4FFFFAC42FFFFAF48FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAB40FFFFDA
          A9FFFFFFFFFFFFD7A3FFFFAA3EFFFFC170FFFFC477FFFFB250FFFFC983FFFFD4
          9BFFFFBB65FFFFAB40FFFFC378FFFFD49DFFFFC479FFFFAE46FFFFAE47FFFFB2
          4FFFFFC478FFFFBF6DFFFFB352FFFFCF90FFFFD195FFFFB659FFFFAC43FFFFAE
          47FFFFBA60FFFFC77DFFFFB85CFFFFC881FFFFCB85FFFFB351FFFFC06FFFFFBF
          6DFFFFAE48FFFFB85CFFFFC87EFFFFB75CFFFFBB65FFFFD49CFFFFC982FFFFAD
          44FFFFB65AFFFFD297FFFFCF90FFFFB456FFFFAD44FFFFAE48FFFFBB64FFFFC3
          76FFFFB456FFFFAE46FFFFBF6CFFFFC478FFFFB75BFFFFCF8FFFFFC375FFFFAE
          47FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAB40FFFFDAAAFFFFFFFFFFFFD8
          A5FFFFAA3EFFFFAC42FFFFAB41FFFFAE47FFFFAB41FFFFAB3EFFFFAD43FFFFAF
          49FFFFAC41FFFFAB3EFFFFAC41FFFFAF49FFFFAF49FFFFAE48FFFFAB41FFFFAC
          43FFFFAE46FFFFAB3FFFFFAB3FFFFFAD45FFFFAF49FFFFAF49FFFFAD45FFFFAB
          40FFFFAD45FFFFAC41FFFFAA3EFFFFB455FFFFE1BAFFFFDDB1FFFFB24FFFFFAD
          44FFFFAA40FFFFAD45FFFFAD44FFFFAB3EFFFFAB40FFFFAF48FFFFAD45FFFFAB
          3FFFFFAB3FFFFFAE46FFFFAF49FFFFAD44FFFFD195FFFFE8C9FFFFBF6EFFFFAC
          43FFFFAC43FFFFAB41FFFFAD45FFFFAB3FFFFFAC43FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49EEFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAB41FFFFD69FFFFFFEFBFFFFD399FFFFAB40FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAD45FFFFB75BFFFFF7EDFFFFF1DFFFFFB250FFFFAE46FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF48FFFFAC42FFFFE0B6FFFFFFFFFFFFC77EFFFFAB40FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49EEFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFB24FFFFFB554FFFFB14EFFFFAF48FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          4AFFFFB453FFFFB352FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFB250FFFFB454FFFFB04CFFFFAF48FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAE
          47FFFFAE46FFFFAE48FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAE48FFFFAB40FFFFAA3EFFFFAA
          3EFFFFAA3EFFFFAA3EFFFFAA3EFFFFAA3EFFFFAA3EFFFFAA3EFFFFAA3EFFFFAA
          3EFFFFAA3EFFFFAA3EFFFFAA3EFFFFAA3EFFFFAA3EFFFFAA3EFFFFA93BFFFFA9
          3BFFFFAA3EFFFFAA3EFFFFAA3EFFFFAA3EFFFFAA3EFFFFAA3EFFFFAA3EFFFFAA
          3EFFFFAA3EFFFFAC43FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAE47FFFFAE
          46FFFFAF48FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAE47FFFFB250FFFFD398FFFFE3BEFFFFE6C4FFFFE6C4FFFFE6
          C4FFFFE6C4FFFFE6C4FFFFE6C4FFFFE6C4FFFFE6C4FFFFE6C4FFFFE6C4FFFFE6
          C4FFFFE6C4FFFFE6C4FFFFE6C4FFFFE6C4FFFFE6C4FFFFE6C4FFFFE6C4FFFFE6
          C4FFFFE6C4FFFFE6C4FFFFE6C4FFFFE6C4FFFFE6C4FFFFE5C3FFFFDFB6FFFFC3
          78FFFFAE46FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49EEFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAC
          41FFFFC57BFFFFFFFFFFFFFBF7FFFFDFB6FFFFDDB2FFFFDEB3FFFFDEB3FFFFDE
          B3FFFFDEB3FFFFDEB3FFFFDEB3FFFFDEB3FFFFDEB3FFFFDEB3FFFFDEB3FFFFDE
          B3FFFFDEB3FFFFDEB3FFFFDEB3FFFFDEB3FFFFDEB3FFFFDEB3FFFFDEB3FFFFDE
          B3FFFFDEB3FFFFDEB3FFFFDCAFFFFFE9CDFFFFFFFFFFFFEED8FFFFB251FFFFAE
          47FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49EEFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAB41FFFFC77EFFFFFF
          FFFFFFF1DDFFFFAF48FFFFAA3CFFFFAB3FFFFFAB3EFFFFA838FFFFA838FFFFA8
          38FFFFA838FFFFA838FFFFA838FFFFA838FFFFA838FFFFA838FFFFA838FFFFA8
          38FFFFA838FFFFA838FFFFA838FFFFA838FFFFA838FFFFA93BFFFFAB3FFFFFAB
          3FFFFFA838FFFFC376FFFFFFFFFFFFF0DBFFFFB353FFFFAE46FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAB41FFFFC77DFFFFFFFFFFFFF2DFFFFFB3
          52FFFFAE46FFFFAF48FFFFB14FFFFFC070FFFFC173FFFFC172FFFFC172FFFFC1
          72FFFFC172FFFFC172FFFFC172FFFFC172FFFFC172FFFFC172FFFFC172FFFFC1
          72FFFFC172FFFFC172FFFFC275FFFFB961FFFFAE48FFFFAF49FFFFAC43FFFFC7
          7EFFFFFFFFFFFFEFDBFFFFB352FFFFAE46FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAB41FFFFC77DFFFFFFFFFFFFF2DFFFFFB352FFFFAE46FFFFAD
          44FFFFBA61FFFFF7EEFFFFFCF9FFFFFBF6FFFFFBF6FFFFFBF6FFFFFBF6FFFFFB
          F6FFFFFBF6FFFFFBF6FFFFFBF6FFFFFBF6FFFFFBF6FFFFFBF6FFFFFBF6FFFFFB
          F6FFFFFFFEFFFFDBACFFFFAD44FFFFAF48FFFFAC43FFFFC77EFFFFFFFFFFFFEF
          DBFFFFB352FFFFAE46FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49EEFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAB
          41FFFFC77DFFFFFFFFFFFFF2DFFFFFB352FFFFAE46FFFFAF48FFFFB04CFFFFB9
          5FFFFFB960FFFFB960FFFFB960FFFFB960FFFFB960FFFFB960FFFFB960FFFFB9
          60FFFFB960FFFFB960FFFFB960FFFFB960FFFFB960FFFFB960FFFFB961FFFFB5
          56FFFFAF48FFFFAF49FFFFAC43FFFFC77EFFFFFFFFFFFFEFDBFFFFB352FFFFAE
          46FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49EEFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAE46FFFFAB40FFFFAC41FFFFAC
          41FFFFAC41FFFFAC41FFFFAC41FFFFAC41FFFFAC41FFFFA839FFFFC376FFFFFF
          FFFFFFF2DFFFFFB352FFFFAE46FFFFAF49FFFFAE47FFFFAA3DFFFFAA3CFFFFAA
          3CFFFFAA3CFFFFAA3CFFFFAA3CFFFFAA3CFFFFAA3CFFFFAA3CFFFFAA3CFFFFAA
          3CFFFFAA3CFFFFAA3CFFFFAA3CFFFFAA3CFFFFAA3CFFFFAC42FFFFAF49FFFFAF
          49FFFFAC43FFFFC77EFFFFFFFFFFFFEED8FFFFAF4AFFFFAB3EFFFFAC41FFFFAC
          41FFFFAC41FFFFAC41FFFFAC41FFFFAC41FFFFAC40FFFFAC41FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAE46FFFFB659FFFFD7A2FFFFE0B6FFFFDFB4FFFFDFB4FFFFDF
          B4FFFFDFB4FFFFDFB4FFFFDFB4FFFFDEB1FFFFE8C9FFFFFFFFFFFFF1DFFFFFB3
          52FFFFAE46FFFFAD46FFFFB65AFFFFE1B8FFFFE4C0FFFFE3BEFFFFE3BEFFFFE3
          BEFFFFE3BEFFFFE3BEFFFFE3BEFFFFE3BEFFFFE3BEFFFFE3BEFFFFE3BEFFFFE3
          BEFFFFE3BEFFFFE3BEFFFFE6C4FFFFCE8DFFFFAE46FFFFAF48FFFFAC43FFFFC7
          7EFFFFFFFFFFFFF9F0FFFFE0B7FFFFDEB3FFFFDFB4FFFFDFB4FFFFDFB4FFFFDF
          B4FFFFDFB4FFFFDFB5FFFFDFB5FFFFCA85FFFFAE47FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAB
          3FFFFFD8A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1DEFFFFB352FFFFAE46FFFFAD
          45FFFFB75BFFFFE3BEFFFFE7C5FFFFE6C3FFFFE6C3FFFFE6C3FFFFE6C3FFFFE6
          C3FFFFE6C3FFFFE6C3FFFFE6C3FFFFE6C3FFFFE6C3FFFFE6C3FFFFE6C3FFFFE6
          C3FFFFE8CAFFFFCF90FFFFAE46FFFFAF48FFFFAC43FFFFC77EFFFFFEFDFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFF3E3FFFFB04BFFFFAE47FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49EEFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAA3FFFFFD9A8FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF7EDFFFFEBD1FFFFECD3FFFFECD3FFFFECD3FFFFEB
          D1FFFFF1DFFFFFFFFFFFFFF1DFFFFFB352FFFFAE46FFFFAF49FFFFAE47FFFFAA
          3EFFFFAA3EFFFFAA3EFFFFAA3EFFFFAA3EFFFFAA3EFFFFAA3EFFFFAA3EFFFFAA
          3EFFFFAA3EFFFFAA3EFFFFAA3EFFFFAA3EFFFFAA3EFFFFAA3EFFFFAA3DFFFFAC
          42FFFFAF49FFFFAF49FFFFAC43FFFFC77EFFFFFFFFFFFFFBF7FFFFECD5FFFFEC
          D2FFFFECD3FFFFECD3FFFFEBD2FFFFEED8FFFFFDF9FFFFFFFFFFFFFFFFFFFFF2
          E2FFFFB04BFFFFAE47FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49EEFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAA3FFFFFD9A7FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFDFB4FFFFAB3FFFFFAE47FFFFAE47FFFFAE47FFFFAA3EFFFFC57AFFFFFF
          FFFFFFF2DFFFFFB352FFFFAE46FFFFAF48FFFFB04CFFFFB75BFFFFB75CFFFFB7
          5CFFFFB75CFFFFB75CFFFFB75CFFFFB75CFFFFB75CFFFFB75CFFFFB75CFFFFB7
          5CFFFFB75CFFFFB75CFFFFB75CFFFFB75CFFFFB85DFFFFB454FFFFAF49FFFFAF
          49FFFFAC43FFFFC77EFFFFFFFFFFFFEED9FFFFB14FFFFFAD44FFFFAE47FFFFAE
          47FFFFAC43FFFFB65BFFFFF4E7FFFFFFFFFFFFFFFFFFFFF2E2FFFFB04BFFFFAE
          47FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAA3FFFFFD9A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0B6FFFFAC
          41FFFFAF47FFFFAF48FFFFAF48FFFFAB40FFFFC57CFFFFFFFFFFFFF2DFFFFFB3
          52FFFFAE46FFFFAD44FFFFBA61FFFFF5E8FFFFF9F1FFFFF8EFFFFFF8EFFFFFF8
          EFFFFFF8EFFFFFF8EFFFFFF8EFFFFFF8EFFFFFF8EFFFFFF8EFFFFFF8EFFFFFF8
          EFFFFFF8EFFFFFF8EFFFFFFBF7FFFFDAA9FFFFAD45FFFFAF48FFFFAC43FFFFC7
          7EFFFFFFFFFFFFEFDAFFFFB351FFFFAE45FFFFAF48FFFFAF48FFFFAD44FFFFB8
          5DFFFFF5E8FFFFFFFFFFFFFFFFFFFFF2E2FFFFB04BFFFFAE47FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAA
          3FFFFFD9A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0B6FFFFAC43FFFFAF48FFFFAF
          49FFFFAF49FFFFAB41FFFFC77DFFFFFFFFFFFFF2DFFFFFB352FFFFAE46FFFFAF
          48FFFFB14EFFFFC06FFFFFC172FFFFC171FFFFC171FFFFC171FFFFC171FFFFC1
          71FFFFC171FFFFC171FFFFC171FFFFC171FFFFC171FFFFC171FFFFC171FFFFC1
          71FFFFC273FFFFB960FFFFAF48FFFFAF49FFFFAC43FFFFC77EFFFFFFFFFFFFEF
          DBFFFFB352FFFFAE46FFFFAF49FFFFAF49FFFFAD45FFFFB85EFFFFF5E8FFFFFF
          FFFFFFFFFFFFFFF2E2FFFFB04BFFFFAE47FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49EEFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAA3FFFFFD9A7FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFE0B6FFFFAC43FFFFAF48FFFFAF49FFFFAD45FFFFA7
          36FFFFC275FFFFFFFFFFFFF1DDFFFFAF48FFFFAA3CFFFFAB3FFFFFAB3EFFFFA8
          39FFFFA839FFFFA839FFFFA839FFFFA839FFFFA839FFFFA839FFFFA839FFFFA8
          39FFFFA839FFFFA839FFFFA839FFFFA839FFFFA839FFFFA839FFFFA838FFFFA9
          3BFFFFAB3FFFFFAB3FFFFFA838FFFFC376FFFFFFFFFFFFEED8FFFFAE48FFFFAA
          3EFFFFAF49FFFFAF49FFFFAD45FFFFB85EFFFFF5E8FFFFFFFFFFFFFFFFFFFFF2
          E2FFFFB04BFFFFAE47FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49EEFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAA3FFFFFD9A7FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFE0B6FFFFAC43FFFFAF48FFFFAD45FFFFBE6BFFFFD7A1FFFFE3BDFFFFFF
          FFFFFFF8EEFFFFD9A6FFFFD6A2FFFFD7A3FFFFD7A3FFFFD7A3FFFFD7A3FFFFD7
          A3FFFFD7A3FFFFD7A3FFFFD7A3FFFFD7A3FFFFD7A3FFFFD7A3FFFFD7A3FFFFD7
          A3FFFFD7A3FFFFD7A3FFFFD7A3FFFFD7A3FFFFD7A3FFFFD7A3FFFFD7A3FFFFD7
          A3FFFFD69FFFFFE2BCFFFFFFFFFFFFF7ECFFFFDAAAFFFFD092FFFFB04CFFFFAE
          48FFFFAD45FFFFB85EFFFFF5E8FFFFFFFFFFFFFFFFFFFFF2E2FFFFB04BFFFFAE
          47FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAA3FFFFFD9A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0B6FFFFAC
          43FFFFAF48FFFFAB40FFFFCF90FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E0FFFFB24FFFFFAE47FFFFAD45FFFFB8
          5EFFFFF5E8FFFFFFFFFFFFFFFFFFFFF2E2FFFFB04BFFFFAE47FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAA
          3FFFFFD9A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0B6FFFFAC43FFFFAF48FFFFAC
          42FFFFC983FFFFF5E7FFFFF3E5FFFFF3E4FFFFF3E4FFFFF3E4FFFFF3E4FFFFF3
          E4FFFFF3E4FFFFF3E4FFFFF3E4FFFFF3E4FFFFF3E4FFFFF3E4FFFFF3E4FFFFF3
          E4FFFFF3E4FFFFF3E4FFFFF3E4FFFFF3E4FFFFF3E4FFFFF3E4FFFFF3E4FFFFF3
          E4FFFFF3E4FFFFF3E4FFFFF3E4FFFFF3E4FFFFF3E4FFFFF3E4FFFFF3E4FFFFF3
          E4FFFFF5EAFFFFE7C8FFFFB14DFFFFAE47FFFFAD45FFFFB85EFFFFF5E8FFFFFF
          FFFFFFFFFFFFFFF2E2FFFFB04BFFFFAE47FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49EEFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAA3FFFFFD9A7FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFE0B6FFFFAC43FFFFAF49FFFFAF48FFFFB04BFFFFB2
          50FFFFB250FFFFB250FFFFB250FFFFB250FFFFB24FFFFFB24FFFFFB250FFFFB2
          50FFFFB250FFFFB250FFFFB250FFFFB250FFFFB250FFFFB250FFFFB250FFFFB2
          50FFFFB250FFFFB250FFFFB250FFFFB250FFFFB250FFFFB250FFFFB250FFFFB2
          50FFFFB250FFFFB250FFFFB250FFFFB250FFFFB250FFFFB250FFFFB250FFFFB2
          4FFFFFAF49FFFFAF49FFFFAD45FFFFB85EFFFFF5E8FFFFFFFFFFFFFFFFFFFFF2
          E2FFFFB04BFFFFAE47FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49EEFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAA3FFFFFD9A7FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFE0B6FFFFAC43FFFFAE46FFFFAB41FFFFAD45FFFFAB40FFFFAB40FFFFAE
          46FFFFAE45FFFFAA3EFFFFAC42FFFFAC42FFFFAA3FFFFFAE46FFFFAE46FFFFAE
          46FFFFAE46FFFFAE46FFFFAE46FFFFAE46FFFFAE46FFFFAE46FFFFAE46FFFFAE
          46FFFFAE46FFFFAE46FFFFAE46FFFFAE46FFFFAE46FFFFAE46FFFFAE46FFFFAE
          46FFFFAE46FFFFAE46FFFFAE46FFFFAE46FFFFAE46FFFFAE47FFFFAF49FFFFAF
          49FFFFAD45FFFFB85EFFFFF5E8FFFFFFFFFFFFFFFFFFFFF2E2FFFFB04BFFFFAE
          47FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAA3FFFFFD9A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0B6FFFFAB
          40FFFFB556FFFFDAA8FFFFECD4FFFFE6C7FFFFC478FFFFAD45FFFFB14DFFFFD2
          97FFFFEACFFFFFEACFFFFFCD8BFFFFAF4AFFFFAF48FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAD45FFFFB8
          5EFFFFF5E8FFFFFFFFFFFFFFFFFFFFF2E2FFFFB04BFFFFAE47FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAA
          3FFFFFD9A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0B6FFFFA93BFFFFC983FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFECD3FFFFAE46FFFFBB65FFFFFBF5FFFFFFFFFFFFFF
          FFFFFFF7ECFFFFB85EFFFFAD45FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAD45FFFFB85EFFFFF5E8FFFFFF
          FFFFFFFFFFFFFFF2E2FFFFB04BFFFFAE47FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49EEFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAA3FFFFFD9A7FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFDEB3FFFFA839FFFFAF49FFFFCD8DFFFFDCAFFFFFD8
          A5FFFFBB65FFFFAA3EFFFFAC43FFFFC77EFFFFDBACFFFFDBABFFFFC274FFFFAB
          41FFFFAC42FFFFAC42FFFFAC42FFFFAC42FFFFAC42FFFFAC42FFFFAC42FFFFAC
          42FFFFAC42FFFFAC42FFFFAC42FFFFAC42FFFFAC42FFFFAC42FFFFAC42FFFFAC
          42FFFFAC42FFFFAC42FFFFAC42FFFFAC42FFFFAC42FFFFAC42FFFFAC42FFFFAC
          42FFFFAC42FFFFAC42FFFFAA3EFFFFB658FFFFF4E7FFFFFFFFFFFFFFFFFFFFF2
          E2FFFFB04BFFFFAE47FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49EEFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAA3FFFFFD9A7FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFE6C7FFFFBF6EFFFFC172FFFFBE6BFFFFBE6BFFFFBE6AFFFFC06FFFFFC2
          74FFFFC274FFFFBE6CFFFFBE6AFFFFBE6AFFFFBF6DFFFFC274FFFFC274FFFFC2
          74FFFFC274FFFFC274FFFFC274FFFFC274FFFFC274FFFFC274FFFFC274FFFFC2
          74FFFFC274FFFFC274FFFFC274FFFFC274FFFFC274FFFFC274FFFFC274FFFFC2
          74FFFFC274FFFFC274FFFFC274FFFFC274FFFFC274FFFFC274FFFFC274FFFFC2
          74FFFFC071FFFFC983FFFFF7EDFFFFFFFFFFFFFFFFFFFFF2E2FFFFB04BFFFFAE
          47FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAA3EFFFFDBABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E5FFFFB04BFFFFAE47FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAC
          41FFFFCC89FFFFFCF8FFFFFFFEFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
          FDFFFFFEFDFFFFFEFDFFFFFEFEFFFFFFFFFFFFFFFFFFFFFEFDFFFFFEFDFFFFFE
          FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
          FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
          FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFFFEFFFFFFFFFFFFFF
          FFFFFFFEFEFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
          FDFFFFFFFFFFFFEACFFFFFAF49FFFFAE48FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49EEFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAE47FFFFB9
          60FFFFC06FFFFFBF6EFFFFBF6EFFFFBF6EFFFFBF6EFFFFBF6EFFFFBF6EFFFFBC
          68FFFFD195FFFFFFFFFFFFF4E5FFFFC274FFFFBE6CFFFFBF6EFFFFBF6EFFFFBF
          6EFFFFBF6EFFFFBF6EFFFFBF6EFFFFBF6EFFFFBF6EFFFFBF6EFFFFBF6EFFFFBF
          6EFFFFBF6EFFFFBF6EFFFFBF6EFFFFBF6EFFFFBF6EFFFFBF6EFFFFBF6EFFFFBF
          6EFFFFBF6EFFFFBF6EFFFFBD69FFFFD195FFFFFFFFFFFFF2E1FFFFC274FFFFBE
          6CFFFFBF6EFFFFBF6EFFFFBF6EFFFFBF6EFFFFBF6EFFFFBF6FFFFFBE6DFFFFB4
          53FFFFAE48FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49EEFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAD44FFFFAC43FFFFAC
          43FFFFAC43FFFFAC43FFFFAC43FFFFAC43FFFFAC43FFFFA83BFFFFC479FFFFFF
          FFFFFFF0DCFFFFAC42FFFFA736FFFFA839FFFFA839FFFFA839FFFFA839FFFFA8
          39FFFFA839FFFFA839FFFFA839FFFFA839FFFFA839FFFFA839FFFFA839FFFFA8
          39FFFFA839FFFFA839FFFFA839FFFFA839FFFFA839FFFFA839FFFFA839FFFFA8
          39FFFFA532FFFFC071FFFFFFFFFFFFEFDAFFFFB04CFFFFAB40FFFFAC43FFFFAC
          43FFFFAC43FFFFAC43FFFFAC43FFFFAC43FFFFAC43FFFFAE46FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAC41FFFFC57BFFFFFFFFFFFFFBF5FFFFDC
          B0FFFFDAACFFFFDBADFFFFDBADFFFFDBADFFFFDBADFFFFDBADFFFFDBADFFFFDB
          ADFFFFDBADFFFFDBADFFFFDBADFFFFDBADFFFFDBADFFFFDBADFFFFDBADFFFFDB
          ADFFFFDBADFFFFDBADFFFFDBADFFFFDBADFFFFDBADFFFFDBADFFFFDAA9FFFFE7
          C8FFFFFFFFFFFFEED8FFFFB251FFFFAE47FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49EEFFAF49EEFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAE47FFFFB453FFFFDAA7FFFFE3BEFFFFE5C3FFFFE5C3FFFFE5
          C3FFFFE5C3FFFFE5C3FFFFE5C3FFFFE5C3FFFFE5C3FFFFE5C3FFFFE5C3FFFFE5
          C3FFFFE5C3FFFFE5C3FFFFE5C3FFFFE5C3FFFFE5C3FFFFE5C3FFFFE5C3FFFFE5
          C3FFFFE5C3FFFFE5C3FFFFE5C3FFFFE5C3FFFFE5C3FFFFE4C1FFFFE3BEFFFFCA
          85FFFFAD46FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49EEFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAE48FFFFAB40FFFFAB3FFFFFAB3FFFFFAB3FFFFFAB3FFFFFAB3FFFFFAB
          3FFFFFAB3FFFFFAB3FFFFFAB3FFFFFAB3FFFFFAB3FFFFFAB3FFFFFAB3FFFFFAB
          3FFFFFAB3FFFFFAB3FFFFFAB3FFFFFAB3FFFFFAB3FFFFFAB3FFFFFAB3FFFFFAB
          3FFFFFAB3FFFFFAB3FFFFFAB3FFFFFAB3FFFFFAB3FFFFFAC43FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF49FFFFAF
          49FFFFAF49FFFFAF49FFFFAF49FFFFAF49EEFFAF49DFFFAF49F4FFAF49EFFFAF
          49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF
          49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF
          49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF
          49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF
          49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF
          49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF
          49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF
          49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF
          49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF49EFFFAF
          49EFFFAF49F4FFAF49DF}
        OnClick = BimpClick
      end
      object sLabelFX10: TsLabelFX
        Left = 351
        Top = 18
        Width = 58
        Height = 18
        Caption = 'Direcci'#243'n:'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      object sLabelFX11: TsLabelFX
        Left = 374
        Top = 42
        Width = 34
        Height = 18
        Caption = 'Zona:'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      object Corden: TComboBox
        Left = 249
        Top = 16
        Width = 100
        Height = 22
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvNone
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 14
        ParentFont = False
        TabOrder = 2
        Text = 'APELLIDOS'
        OnClick = CordenClick
        Items.Strings = (
          'CODIGO'
          'MEDIDOR'
          'APELLIDOS'
          'NOMBRES'
          'CONSUMO'
          'NUMERO DE ORDEN'
          'DIRECCION/ZONA')
      end
      object Canio: TComboBox
        Left = 249
        Top = 41
        Width = 100
        Height = 22
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvNone
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 14
        ParentFont = False
        TabOrder = 3
        Text = '2008'
        OnClick = CanioClick
        Items.Strings = (
          '2000'
          '2001'
          '2002'
          '2003'
          '2004'
          '2005'
          '2006'
          '2007'
          '2008'
          '2009'
          '2010'
          '2011'
          '2012'
          '2013'
          '2014'
          '2015'
          '2016'
          '2017'
          '2018'
          '2019'
          '2020'
          '2021'
          '2022'
          '2023'
          '2024'
          '2025'
          '2026'
          '2027'
          '2028'
          '2029'
          '2030'
          '2031'
          '2032'
          '2033'
          '2034'
          '2035'
          '2036'
          '2037'
          '2038'
          '2039'
          '2040')
      end
      object CMes: TComboBox
        Left = 56
        Top = 41
        Width = 109
        Height = 22
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvNone
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 14
        ParentFont = False
        TabOrder = 1
        Text = 'ENERO'
        OnClick = CMesClick
        Items.Strings = (
          'ENERO'
          'FEBRERO'
          'MARZO'
          'ABRIL'
          'MAYO'
          'JUNIO'
          'JULIO'
          'AGOSTO'
          'SEPTIEMBRE'
          'OCTUBRE'
          'NOVIEMBRE'
          'DICIEMBRE'
          ''
          '')
      end
      object Cestado: TComboBox
        Left = 56
        Top = 16
        Width = 109
        Height = 22
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvNone
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 14
        ParentFont = False
        TabOrder = 0
        Text = 'SIN LECTURA'
        OnClick = CestadoClick
        Items.Strings = (
          'SIN LECTURA'
          'LECTURADO'
          'TODOS')
      end
      object ComboZona: TComboBox
        Left = 409
        Top = 41
        Width = 141
        Height = 22
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvNone
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 14
        ParentFont = False
        TabOrder = 5
        Text = 'TODOS'
        OnClick = CordenClick
        Items.Strings = (
          'TODOS')
      end
      object ComboDir: TComboBox
        Left = 409
        Top = 16
        Width = 141
        Height = 22
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvNone
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 14
        ParentFont = False
        TabOrder = 4
        Text = 'TODOS'
        OnClick = CordenClick
        Items.Strings = (
          'CODIGO'
          'MEDIDOR'
          'APELLIDOS'
          'NOMBRES'
          'CONSUMO'
          'NUMERO DE ORDEN'
          'DIRECCION')
      end
    end
    object Radio1: TRadioButton
      Left = 313
      Top = 4
      Width = 97
      Height = 17
      Caption = 'Factura/Recibo'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
    object Radio2: TRadioButton
      Left = 313
      Top = 20
      Width = 97
      Height = 17
      Caption = 'Preaviso'
      TabOrder = 2
    end
    object CheckImp: TsCheckBox
      Left = 312
      Top = 48
      Width = 105
      Height = 20
      Caption = 'Imprimir Todo(s)'
      TabOrder = 3
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
  end
  object BarraEstado: TStatusBar
    Left = 0
    Top = 701
    Width = 1061
    Height = 19
    Color = cl3DLight
    Panels = <
      item
        Width = 200
      end
      item
        Width = 200
      end
      item
        Width = 150
      end>
    SimplePanel = False
  end
  object PanelDatos: TsPanel
    Left = 729
    Top = 101
    Width = 332
    Height = 600
    Align = alClient
    TabOrder = 3
    SkinData.SkinSection = 'PANEL'
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 330
      Height = 27
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Color = clBlack
      TabOrder = 0
      object sLabelFX2: TsLabelFX
        Left = 0
        Top = 0
        Width = 200
        Height = 25
        Align = alLeft
        Caption = ' Facturas Pendientes'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
    end
    object DBGFacturas: TDBGrid
      Left = 1
      Top = 28
      Width = 330
      Height = 269
      Align = alTop
      Color = clGrayText
      DataSource = DataFacturas
      FixedColor = clMaroon
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGFacturasDrawColumnCell
      Columns = <
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
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
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'mes_lec'
          Title.Alignment = taCenter
          Title.Caption = 'MES'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'gestion_lec'
          Title.Alignment = taCenter
          Title.Caption = 'GESTI'#211'N'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'anterior_lec'
          Title.Alignment = taCenter
          Title.Caption = 'LEC.ANT.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'actual_lec'
          Title.Alignment = taCenter
          Title.Caption = 'LEC.ACT.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'consumo_lec'
          Title.Alignment = taCenter
          Title.Caption = 'CONS.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'fechaant_lec'
          Title.Alignment = taCenter
          Title.Caption = 'FECHA ANT.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'fecha_lec'
          Title.Alignment = taCenter
          Title.Caption = 'FECHA LEC.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'hora_lec'
          Title.Alignment = taCenter
          Title.Caption = 'HORA LEC.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'totalcons_lec'
          Title.Alignment = taCenter
          Title.Caption = 'TOTAL CONS.'
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
          Color = clWhite
          Expanded = False
          FieldName = 'fechahora_lec'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'monto_lec'
          Title.Alignment = taCenter
          Title.Caption = 'MONTO LEC'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'servicios_asoc'
          Title.Alignment = taCenter
          Title.Caption = 'SERVICIOS'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'id_fact'
          Title.Alignment = taCenter
          Title.Caption = 'ID.FACT'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'num_fact'
          Title.Alignment = taCenter
          Title.Caption = 'NUM.FACT.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'nit_fact'
          Title.Alignment = taCenter
          Title.Caption = 'NIT'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'razon_fact'
          Title.Alignment = taCenter
          Title.Caption = 'RAZON SOC.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'orden_fact'
          Title.Alignment = taCenter
          Title.Caption = 'ORDEN'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'nitemisor_fact'
          Title.Alignment = taCenter
          Title.Caption = 'NIT.EMP.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'llave_fact'
          Title.Alignment = taCenter
          Title.Caption = 'LLAVE'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'fechaemision_fact'
          Title.Alignment = taCenter
          Title.Caption = 'FECHA EMISION'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'horaemision_fact'
          Title.Alignment = taCenter
          Title.Caption = 'HORA EMISION'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'montoparc_fact'
          Title.Alignment = taCenter
          Title.Caption = 'MONTO PARC'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'desc_fact'
          Title.Alignment = taCenter
          Title.Caption = 'DESC.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'montototal_fact'
          Title.Alignment = taCenter
          Title.Caption = 'MONTO Bs'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'cadenaqr_fact'
          Title.Alignment = taCenter
          Title.Caption = 'QR'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'codcontrol_fact'
          Title.Alignment = taCenter
          Title.Caption = 'COD.CONTROL'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'literal_fact'
          Title.Alignment = taCenter
          Title.Caption = 'LITERAL'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'fechahora_fact'
          Title.Alignment = taCenter
          Title.Caption = 'FECHA. REG.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'estado_fact'
          Title.Alignment = taCenter
          Title.Caption = 'ESTADO'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'id_usu'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'id_asoc'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = False
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 297
      Width = 330
      Height = 27
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Color = clBlack
      TabOrder = 2
      object sLabelFX3: TsLabelFX
        Left = 0
        Top = -1
        Width = 187
        Height = 26
        Caption = 'Lecturas Anteriores'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
    end
    object DBGLectura: TDBGrid
      Left = 1
      Top = 324
      Width = 330
      Height = 275
      Align = alClient
      Color = clGrayText
      DataSource = DataLecturas
      FixedColor = clMaroon
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGLecturaDrawColumnCell
      Columns = <
        item
          Color = clWhite
          Expanded = False
          ReadOnly = False
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
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'id_asoc'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Id.Asoc.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'mes_lec'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Mes'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'gestion_lec'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Gesti'#243'n'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'anterior_lec'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Lect.Ant.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'actual_lec'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Lect.Act.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'consumo_lec'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Cons.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'totalcons_lec'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Total Cons.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'servicios_asoc'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Servicios'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'hora_lec'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Hora'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'tipo_asoc'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Tipo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'fecha_lec'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Fecha'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'fechaant_lec'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Fecha Ant.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'fechahora_lec'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Fecha Reg.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'monto_lec'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Monto Lect.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'id_lec'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Id.Lect'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'id_usu'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Usuario'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'estado_lec'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Estado'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end>
    end
    object PanelLecturas: TPanel
      Left = 8
      Top = 384
      Width = 231
      Height = 54
      TabOrder = 4
      Visible = False
      object BGuadar: TsBitBtn
        Left = 11
        Top = 10
        Width = 103
        Height = 36
        Caption = '&Guardar'
        TabOrder = 0
        OnClick = BGuadarClick
        Glyph.Data = {
          760A0000424D760A000000000000360400002800000028000000280000000100
          0800000000004006000000000000000000000001000000010000000000000000
          5500000080000000AA000000D5000000FF00002A0000002A5500002A8000002A
          AA00002AD500002AFF000055000000555500005580000055AA000055D5000055
          FF000080000000805500008080000080AA000080D5000080FF0000AA000000AA
          550000AA800000AAAA0000AAD50000AAFF0000D5000000D5550000D5800000D5
          AA0000D5D50000D5FF0000FF000000FF550000FF800000FFAA0000FFD50000FF
          FF005500000055005500550080005500AA005500D5005500FF00552A0000552A
          5500552A8000552AAA00552AD500552AFF005555000055555500555580005555
          AA005555D5005555FF005580000055805500558080005580AA005580D5005580
          FF0055AA000055AA550055AA800055AAAA0055AAD50055AAFF0055D5000055D5
          550055D5800055D5AA0055D5D50055D5FF0055FF000055FF550055FF800055FF
          AA0055FFD50055FFFF008000000080005500800080008000AA008000D5008000
          FF00802A0000802A5500802A8000802AAA00802AD500802AFF00805500008055
          5500805580008055AA008055D5008055FF008080000080805500808080008080
          AA008080D5008080FF0080AA000080AA550080AA800080AAAA0080AAD50080AA
          FF0080D5000080D5550080D5800080D5AA0080D5D50080D5FF0080FF000080FF
          550080FF800080FFAA0080FFD50080FFFF00AA000000AA005500AA008000AA00
          AA00AA00D500AA00FF00AA2A0000AA2A5500AA2A8000AA2AAA00AA2AD500AA2A
          FF00AA550000AA555500AA558000AA55AA00AA55D500AA55FF00AA800000AA80
          5500AA808000AA80AA00AA80D500AA80FF00AAAA0000AAAA5500AAAA8000AAAA
          AA00AAAAD500AAAAFF00AAD50000AAD55500AAD58000AAD5AA00AAD5D500AAD5
          FF00AAFF0000AAFF5500AAFF8000AAFFAA00AAFFD500AAFFFF00D5000000D500
          5500D5008000D500AA00D500D500D500FF00D52A0000D52A5500D52A8000D52A
          AA00D52AD500D52AFF00D5550000D5555500D5558000D555AA00D555D500D555
          FF00D5800000D5805500D5808000D580AA00D580D500D580FF00D5AA0000D5AA
          5500D5AA8000D5AAAA00D5AAD500D5AAFF00D5D50000D5D55500D5D58000D5D5
          AA00D5D5D500D5D5FF00D5FF0000D5FF5500D5FF8000D5FFAA00D5FFD500D5FF
          FF00FF000000FF005500FF008000FF00AA00FF00D500FF00FF00FF2A0000FF2A
          5500FF2A8000FF2AAA00FF2AD500FF2AFF00FF550000FF555500FF558000FF55
          AA00FF55D500FF55FF00FF800000FF805500FF808000FF80AA00FF80D500FF80
          FF00FFAA0000FFAA5500FFAA8000FFAAAA00FFAAD500FFAAFF00FFD50000FFD5
          5500FFD58000FFD5AA00FFD5D500FFD5FF00FFFF0000FFFF5500FFFF8000FFFF
          AA00FFFFD5003F3F3F006A6A6A0095959500C0C0C000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000000000000000000000000000000000000000000000000000FFFFFFFF
          FFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000
          0000000000FFFFFFFFFFFFFFFFFFFF6800000000000000000000000000000000
          00000000000000000000000000FFFFFFFFFFFFFFFFFF6854545454545400FEFE
          FEFEFEFEFEFEFEFEFEFE00545454D2545400000000FFFFFFFFFFFFFFFF685454
          545454545400FEFEFFFFFFFFFFFEFEFEFEFE00545454D2545454000000FFFFFF
          FFFFFFFFFF545454545454545400FEFE00686868FFFEFEFEFEFE00545454D254
          5454000000FFFFFFFFFFFFFFFF545454545454545400FEFE00686868FFFEFEFE
          FEFE00545454D2545454000000FFFFFFFFFFFFFFFF545454545454545400FEFE
          00686868FFFEFEFEFEFE00545454D2545454000000FFFFFFFFFFFFFFFF545454
          545454545400FEFE00686868FFFEFEFEFEFE00545454D2545454000000FFFFFF
          FFFFFFFFFF545454545454545400FEFE00000000FFFEFEFEFEFE00545454D254
          5454000000FFFFFFFFFFFFFFFF545454545454545400FEFEFEFEFEFEFEFEFEFE
          FEFE00545454D2545454000000FFFFFFFFFFFFFFFF545454545454545400FEFE
          FEFEFEFEFEFEFEFEFEFE005454D2D2545454000000FFFFFFFFFFFFFFFF545454
          5454545454000000000000000000000000000000000054545454000000FFFFFF
          FFFFFFFFFF545454545454545454545454545454545454545454545454545454
          5454000000FFFFFFFFFFFFFFFF54545454545454545454545454545454545454
          54545454545454545454000000FFFFFFFFFFFFFFFF5454545454545454545454
          545454545454545454545454545454545454000000FFFFFFFFFFFFFFFF545454
          D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2545454000000FFFFFF
          FFFFFFFFFF54545400545454545454545454545454545454545454545454D254
          5454000000FFFFFFFFFFFFFFFF5454540054FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF54D2545454000000FFFFFFFFFFFFFFFF5454540054FF5454545454
          545454545454545454545454FF54D2545454000000FFFFFFFFFFFFFFFF545454
          0054FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54D2545454000000FFFFFF
          FFFFFFFFFF5454540054FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54D254
          5454000000FFFFFFFFFFFFFFFF5454540054FF54545454545454545454545454
          54545454FF54D2545454000000FFFFFFFFFFFFFFFF5454540054FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF54D2545454000000FFFFFFFFFFFFFFFF545454
          0054FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54D2545454000000FFFFFF
          FFFFFFFFFF5454540054FF5454545454545454545454545454545454FF54D254
          5454000000FFFFFFFFFFFFFFFF5454540054FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF54D2545454000000FFFFFFFFFFFFFFFF5454540054FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF54D2545454000000FFFFFFFFFFFFFFFF545454
          0054FF5454545454545454545454545454545454FF54D2545454000000FFFFFF
          FFFFFFFFFF5454540054FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54D254
          5454000000FFFFFFFFFFFFFFFF5454540054FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF54D25454540000FFFFFFFFFFFFFFFFFFFF54540054545454545454
          5454545454545454545454545454D2545454FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        SkinData.SkinSection = 'BUTTON'
      end
      object BCerrar: TsBitBtn
        Left = 115
        Top = 10
        Width = 103
        Height = 36
        Caption = '&Cancelar'
        TabOrder = 1
        OnClick = BCerrarClick
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2
          FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF000000000000000000B1E2FFB1
          E2FF48B8FF48B8FFB1E2FFB1E2FFFFFFFFFFFFFFFFFFFFFFFFFFB1E2FFB1E2FF
          48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8
          FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FF000000006499005F92000000B1
          E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFFFFFFFFFFFFFB1E2FFB1E2FF
          B1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2
          FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF00000000659B00609400436900
          000048B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FF48B8FF48B8FF
          B1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2
          FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FF00000000679D006296004A7400
          466D00000048B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FF
          48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8
          FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FF0000000068A0006399004A7300
          4E79004A730000000092DC48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FFB1E2FF
          B1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2
          FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF000000006AA200659B004A7300
          4A73004A7300456C0000000092DC0092DC48B8FF48B8FFB1E2FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00B1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FF000000006CA400679D004A7300
          4369004A73004C77004871000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
          0048B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF000000006DA70068A0004A7300
          4870003F63004A7300507C000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
          000092DC0092DC48B8FF48B8FFB1E2FFB1E2FF000000006FA9006AA2004A7300
          4D7700446B003C5E004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
          000000000000000000000000000000000000000000000071AB006CA4004A7300
          527F004A73004166004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0C0C0C00000
          00B5BDC2B3BABEB1B7BBAFB4B7ADB1B4ACAEB10000000072AE006DA7004A7300
          5786004F7A00466D004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000C0C0C00000
          00B6BFC5B4BCC1B2B9BEB0B6BAAEB3B7ADB0B40000000074B0006FA9003E6200
          4A73005481004B74004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000027FF0000000000
          00B8C2C8B6BFC4B4BCC1B2B9BDB0B6BAAFB3B70000000076B20071AB004E7900
          456C004A7300507C004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000034FF002DFF0000
          00BAC5CCB8C2C8B6BFC5B4BCC1B2B9BEB1B6BB0000000077B50072AE005D8F00
          0000000000004A73004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA4A0A0A4A0A0A4A0A0A4A0A0A4A0A00000000042FF003BFF0034
          FF000000B9C5CBB7C2C8B6BFC4B4BCC1B3B9BE0000000079B70074B00000008E
          FFFF000000003A5C004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFA4A0A0A4A0A0A4A0A0A4A0A0A4A0A0A4A0A0000000004FFF0048FF0042
          FF003BFF000000B9C4CBB7C1C7B5BEC4B4BCC1000000007BBA0076B3000000B1
          FFFF000000003F63003757000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          000000000000000000000000000000000000000000000000005DFF0056FF004F
          FF0049FF0042FF000000B9C4CBB7C1C8B6BFC5000000007CBC0077B500558400
          000000000000446B003C5E000000C0C0C0808080FFFFFFFFFFFFFFFFFF000000
          00A0FF0099FF0092FF008BFF0085FF007EFF0077FF0071FF006AFF0063FF005C
          FF0056FF004FFF0048FF000000B9C4CBB8C2C8000000007EBE0079B7004A7300
          527F004A73004A73004166000000C0C0C0808080FFFFFFFFFFFFFFFFFF000000
          00AEFF00A7FF00A0FF0099FF0093FF008CFF0085FF007FFF0078FF0071FF006A
          FF0064FF005DFF0056FF0050FF000000BAC5CB000000007FC1007ABA004A7300
          4A73004F7A004F7A00466D000000C0C0C0808080FFFFFFFFFFFFFFFFFF000000
          00AEFF00A7FF00A0FF0099FF0093FF008CFF0085FF007FFF0078FF0071FF006A
          FF0064FF005DFF0056FF0050FF000000BCC8CF0000000081C3007CBC004A7300
          4369004A73005481004B74000000C0C0C0808080FFFFFFFFFFFFFFFFFF000000
          00BBFF00B4FF00ADFF00A6FF00A0FF0099FF0092FF008CFF0085FF007EFF0077
          FF0071FF006AFF0063FF000000BDCAD2BCC8CF0000000083C6007EBF004A7300
          4870003F63004A7300507C000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000092FF008BFF0084
          FF007EFF0077FF000000C0CFD8BECCD5BDCAD20000000084C8007FC1004A7300
          4D7700446B003C5E004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000A0FF0099FF0092
          FF008CFF000000C3D5DFC2D2DBC0CFD8BFCDD50000000086CB0081C4004A7300
          527F004A73004166004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000ADFF00A6FF009F
          FF000000C7DBE6C5D8E3C4D5DFC2D2DCC1D0D90000000088CD0083C6004A7300
          5786004F7A00466D004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000BAFF00B3FF0000
          00CBE1EDC9DEE9C7DBE6C5D8E2C3D5DFC2D3DC0000000089CF0084C800436900
          4A73005481004B74004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000C8FF0000000000
          00CCE4F1CAE1EDC8DEE9C7DBE6C5D8E2C4D5DFC2D2DB0000000086CB0081C400
          466D004A7300507C004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000F0FBFF0000
          00CEE7F4CCE4F0CAE1EDC9DEE9C7DBE6C6D8E3C4D5DFC2D2DB0000000083C600
          7FC0004A73004A73004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
          00D0EAF8CEE7F4CCE4F0CAE1EDC8DEE9C7DBE6C5D8E2C3D5DEC1D2DB00000000
          80C3007BBC004C77004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
          00D2EDFBD0EAF7CEE7F3CCE4F0CAE1ECC9DEE9C7DBE5C5D8E1C3D5DEC1D2DA00
          0000007DBE0079B700507C000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
          00D4F0FFD2EDFBD0EAF7CEE7F4CCE4F0CBE1EDC9DEE9C7DBE5C5D8E2C3D5DEC2
          D2DB000000007BBA0077B4000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FBFFF0FB
          FFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0
          FBFFF0FBFFF0FBFFF0FBFFF0FBFFC0C0C0FFFFFFFFFFFFFFFFFF}
        SkinData.SkinSection = 'BUTTON'
      end
    end
  end
  object Memo1: TRichEdit
    Left = 32
    Top = 624
    Width = 1342
    Height = 225
    Lines.Strings = (
      'RichEdit1')
    TabOrder = 7
    Visible = False
  end
  object PanelDireccion: TsPanel
    Left = 112
    Top = 248
    Width = 465
    Height = 209
    Color = clMenu
    TabOrder = 4
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object LabelDir: TLabel
      Left = 192
      Top = 96
      Width = 39
      Height = 14
      Caption = 'C:\Aqua'
      WordWrap = True
    end
    object Label2: TLabel
      Left = 192
      Top = 40
      Width = 96
      Height = 14
      Caption = 'Archivo de datos:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label3: TLabel
      Left = 192
      Top = 80
      Width = 142
      Height = 14
      Caption = 'Directorio de exportaci'#243'n:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object PB: TsGauge
      Left = 7
      Top = 191
      Width = 451
      Height = 16
      SkinData.SkinSection = 'GAUGE'
      ForeColor = clBlack
      Progress = 0
      Suffix = '% Cargando datos...'
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 463
      Height = 27
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Color = clBlack
      TabOrder = 0
      object sLabelFX8: TsLabelFX
        Left = 0
        Top = 0
        Width = 167
        Height = 25
        Align = alLeft
        Caption = 'Buscar Destino....'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
    end
    object DriveComboBox1: TDriveComboBox
      Left = 8
      Top = 32
      Width = 177
      Height = 20
      DirList = DirectoryListBox1
      TabOrder = 1
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 8
      Top = 52
      Width = 174
      Height = 138
      DirLabel = LabelDir
      ItemHeight = 16
      TabOrder = 2
    end
    object EditArchivo: TEdit
      Left = 192
      Top = 56
      Width = 257
      Height = 20
      Color = clWindowFrame
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Text = 'asociados.data'
    end
    object sBitBtn1: TsBitBtn
      Left = 195
      Top = 143
      Width = 123
      Height = 45
      Caption = '&Guardar'
      TabOrder = 4
      OnClick = sBitBtn1Click
      Glyph.Data = {
        760A0000424D760A000000000000360400002800000028000000280000000100
        0800000000004006000000000000000000000001000000010000000000000000
        5500000080000000AA000000D5000000FF00002A0000002A5500002A8000002A
        AA00002AD500002AFF000055000000555500005580000055AA000055D5000055
        FF000080000000805500008080000080AA000080D5000080FF0000AA000000AA
        550000AA800000AAAA0000AAD50000AAFF0000D5000000D5550000D5800000D5
        AA0000D5D50000D5FF0000FF000000FF550000FF800000FFAA0000FFD50000FF
        FF005500000055005500550080005500AA005500D5005500FF00552A0000552A
        5500552A8000552AAA00552AD500552AFF005555000055555500555580005555
        AA005555D5005555FF005580000055805500558080005580AA005580D5005580
        FF0055AA000055AA550055AA800055AAAA0055AAD50055AAFF0055D5000055D5
        550055D5800055D5AA0055D5D50055D5FF0055FF000055FF550055FF800055FF
        AA0055FFD50055FFFF008000000080005500800080008000AA008000D5008000
        FF00802A0000802A5500802A8000802AAA00802AD500802AFF00805500008055
        5500805580008055AA008055D5008055FF008080000080805500808080008080
        AA008080D5008080FF0080AA000080AA550080AA800080AAAA0080AAD50080AA
        FF0080D5000080D5550080D5800080D5AA0080D5D50080D5FF0080FF000080FF
        550080FF800080FFAA0080FFD50080FFFF00AA000000AA005500AA008000AA00
        AA00AA00D500AA00FF00AA2A0000AA2A5500AA2A8000AA2AAA00AA2AD500AA2A
        FF00AA550000AA555500AA558000AA55AA00AA55D500AA55FF00AA800000AA80
        5500AA808000AA80AA00AA80D500AA80FF00AAAA0000AAAA5500AAAA8000AAAA
        AA00AAAAD500AAAAFF00AAD50000AAD55500AAD58000AAD5AA00AAD5D500AAD5
        FF00AAFF0000AAFF5500AAFF8000AAFFAA00AAFFD500AAFFFF00D5000000D500
        5500D5008000D500AA00D500D500D500FF00D52A0000D52A5500D52A8000D52A
        AA00D52AD500D52AFF00D5550000D5555500D5558000D555AA00D555D500D555
        FF00D5800000D5805500D5808000D580AA00D580D500D580FF00D5AA0000D5AA
        5500D5AA8000D5AAAA00D5AAD500D5AAFF00D5D50000D5D55500D5D58000D5D5
        AA00D5D5D500D5D5FF00D5FF0000D5FF5500D5FF8000D5FFAA00D5FFD500D5FF
        FF00FF000000FF005500FF008000FF00AA00FF00D500FF00FF00FF2A0000FF2A
        5500FF2A8000FF2AAA00FF2AD500FF2AFF00FF550000FF555500FF558000FF55
        AA00FF55D500FF55FF00FF800000FF805500FF808000FF80AA00FF80D500FF80
        FF00FFAA0000FFAA5500FFAA8000FFAAAA00FFAAD500FFAAFF00FFD50000FFD5
        5500FFD58000FFD5AA00FFD5D500FFD5FF00FFFF0000FFFF5500FFFF8000FFFF
        AA00FFFFD5003F3F3F006A6A6A0095959500C0C0C000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000000000000000000000000000000000000000000000000000FFFFFFFF
        FFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000
        0000000000FFFFFFFFFFFFFFFFFFFF6800000000000000000000000000000000
        00000000000000000000000000FFFFFFFFFFFFFFFFFF6854545454545400FEFE
        FEFEFEFEFEFEFEFEFEFE00545454D2545400000000FFFFFFFFFFFFFFFF685454
        545454545400FEFEFFFFFFFFFFFEFEFEFEFE00545454D2545454000000FFFFFF
        FFFFFFFFFF545454545454545400FEFE00686868FFFEFEFEFEFE00545454D254
        5454000000FFFFFFFFFFFFFFFF545454545454545400FEFE00686868FFFEFEFE
        FEFE00545454D2545454000000FFFFFFFFFFFFFFFF545454545454545400FEFE
        00686868FFFEFEFEFEFE00545454D2545454000000FFFFFFFFFFFFFFFF545454
        545454545400FEFE00686868FFFEFEFEFEFE00545454D2545454000000FFFFFF
        FFFFFFFFFF545454545454545400FEFE00000000FFFEFEFEFEFE00545454D254
        5454000000FFFFFFFFFFFFFFFF545454545454545400FEFEFEFEFEFEFEFEFEFE
        FEFE00545454D2545454000000FFFFFFFFFFFFFFFF545454545454545400FEFE
        FEFEFEFEFEFEFEFEFEFE005454D2D2545454000000FFFFFFFFFFFFFFFF545454
        5454545454000000000000000000000000000000000054545454000000FFFFFF
        FFFFFFFFFF545454545454545454545454545454545454545454545454545454
        5454000000FFFFFFFFFFFFFFFF54545454545454545454545454545454545454
        54545454545454545454000000FFFFFFFFFFFFFFFF5454545454545454545454
        545454545454545454545454545454545454000000FFFFFFFFFFFFFFFF545454
        D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2545454000000FFFFFF
        FFFFFFFFFF54545400545454545454545454545454545454545454545454D254
        5454000000FFFFFFFFFFFFFFFF5454540054FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF54D2545454000000FFFFFFFFFFFFFFFF5454540054FF5454545454
        545454545454545454545454FF54D2545454000000FFFFFFFFFFFFFFFF545454
        0054FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54D2545454000000FFFFFF
        FFFFFFFFFF5454540054FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54D254
        5454000000FFFFFFFFFFFFFFFF5454540054FF54545454545454545454545454
        54545454FF54D2545454000000FFFFFFFFFFFFFFFF5454540054FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF54D2545454000000FFFFFFFFFFFFFFFF545454
        0054FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54D2545454000000FFFFFF
        FFFFFFFFFF5454540054FF5454545454545454545454545454545454FF54D254
        5454000000FFFFFFFFFFFFFFFF5454540054FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF54D2545454000000FFFFFFFFFFFFFFFF5454540054FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF54D2545454000000FFFFFFFFFFFFFFFF545454
        0054FF5454545454545454545454545454545454FF54D2545454000000FFFFFF
        FFFFFFFFFF5454540054FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54D254
        5454000000FFFFFFFFFFFFFFFF5454540054FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF54D25454540000FFFFFFFFFFFFFFFFFFFF54540054545454545454
        5454545454545454545454545454D2545454FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      SkinData.SkinSection = 'BUTTON'
    end
    object sBitBtn2: TsBitBtn
      Left = 322
      Top = 143
      Width = 123
      Height = 45
      Caption = '&Cancelar'
      TabOrder = 5
      OnClick = sBitBtn2Click
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2
        FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF000000000000000000B1E2FFB1
        E2FF48B8FF48B8FFB1E2FFB1E2FFFFFFFFFFFFFFFFFFFFFFFFFFB1E2FFB1E2FF
        48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8
        FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FF000000006499005F92000000B1
        E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFFFFFFFFFFFFFB1E2FFB1E2FF
        B1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2
        FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF00000000659B00609400436900
        000048B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FF48B8FF48B8FF
        B1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2
        FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FF00000000679D006296004A7400
        466D00000048B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FF
        48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8
        FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FF0000000068A0006399004A7300
        4E79004A730000000092DC48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FFB1E2FF
        B1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2
        FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF000000006AA200659B004A7300
        4A73004A7300456C0000000092DC0092DC48B8FF48B8FFB1E2FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00B1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FF000000006CA400679D004A7300
        4369004A73004C77004871000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
        0048B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF000000006DA70068A0004A7300
        4870003F63004A7300507C000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
        000092DC0092DC48B8FF48B8FFB1E2FFB1E2FF000000006FA9006AA2004A7300
        4D7700446B003C5E004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
        000000000000000000000000000000000000000000000071AB006CA4004A7300
        527F004A73004166004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0C0C0C00000
        00B5BDC2B3BABEB1B7BBAFB4B7ADB1B4ACAEB10000000072AE006DA7004A7300
        5786004F7A00466D004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000C0C0C00000
        00B6BFC5B4BCC1B2B9BEB0B6BAAEB3B7ADB0B40000000074B0006FA9003E6200
        4A73005481004B74004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000027FF0000000000
        00B8C2C8B6BFC4B4BCC1B2B9BDB0B6BAAFB3B70000000076B20071AB004E7900
        456C004A7300507C004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000034FF002DFF0000
        00BAC5CCB8C2C8B6BFC5B4BCC1B2B9BEB1B6BB0000000077B50072AE005D8F00
        0000000000004A73004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFA4A0A0A4A0A0A4A0A0A4A0A0A4A0A00000000042FF003BFF0034
        FF000000B9C5CBB7C2C8B6BFC4B4BCC1B3B9BE0000000079B70074B00000008E
        FFFF000000003A5C004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFA4A0A0A4A0A0A4A0A0A4A0A0A4A0A0A4A0A0000000004FFF0048FF0042
        FF003BFF000000B9C4CBB7C1C7B5BEC4B4BCC1000000007BBA0076B3000000B1
        FFFF000000003F63003757000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        000000000000000000000000000000000000000000000000005DFF0056FF004F
        FF0049FF0042FF000000B9C4CBB7C1C8B6BFC5000000007CBC0077B500558400
        000000000000446B003C5E000000C0C0C0808080FFFFFFFFFFFFFFFFFF000000
        00A0FF0099FF0092FF008BFF0085FF007EFF0077FF0071FF006AFF0063FF005C
        FF0056FF004FFF0048FF000000B9C4CBB8C2C8000000007EBE0079B7004A7300
        527F004A73004A73004166000000C0C0C0808080FFFFFFFFFFFFFFFFFF000000
        00AEFF00A7FF00A0FF0099FF0093FF008CFF0085FF007FFF0078FF0071FF006A
        FF0064FF005DFF0056FF0050FF000000BAC5CB000000007FC1007ABA004A7300
        4A73004F7A004F7A00466D000000C0C0C0808080FFFFFFFFFFFFFFFFFF000000
        00AEFF00A7FF00A0FF0099FF0093FF008CFF0085FF007FFF0078FF0071FF006A
        FF0064FF005DFF0056FF0050FF000000BCC8CF0000000081C3007CBC004A7300
        4369004A73005481004B74000000C0C0C0808080FFFFFFFFFFFFFFFFFF000000
        00BBFF00B4FF00ADFF00A6FF00A0FF0099FF0092FF008CFF0085FF007EFF0077
        FF0071FF006AFF0063FF000000BDCAD2BCC8CF0000000083C6007EBF004A7300
        4870003F63004A7300507C000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        0000000000000000000000000000000000000000000000000092FF008BFF0084
        FF007EFF0077FF000000C0CFD8BECCD5BDCAD20000000084C8007FC1004A7300
        4D7700446B003C5E004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000A0FF0099FF0092
        FF008CFF000000C3D5DFC2D2DBC0CFD8BFCDD50000000086CB0081C4004A7300
        527F004A73004166004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000ADFF00A6FF009F
        FF000000C7DBE6C5D8E3C4D5DFC2D2DCC1D0D90000000088CD0083C6004A7300
        5786004F7A00466D004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000BAFF00B3FF0000
        00CBE1EDC9DEE9C7DBE6C5D8E2C3D5DFC2D3DC0000000089CF0084C800436900
        4A73005481004B74004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000C8FF0000000000
        00CCE4F1CAE1EDC8DEE9C7DBE6C5D8E2C4D5DFC2D2DB0000000086CB0081C400
        466D004A7300507C004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000F0FBFF0000
        00CEE7F4CCE4F0CAE1EDC9DEE9C7DBE6C6D8E3C4D5DFC2D2DB0000000083C600
        7FC0004A73004A73004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
        00D0EAF8CEE7F4CCE4F0CAE1EDC8DEE9C7DBE6C5D8E2C3D5DEC1D2DB00000000
        80C3007BBC004C77004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
        00D2EDFBD0EAF7CEE7F3CCE4F0CAE1ECC9DEE9C7DBE5C5D8E1C3D5DEC1D2DA00
        0000007DBE0079B700507C000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
        00D4F0FFD2EDFBD0EAF7CEE7F4CCE4F0CBE1EDC9DEE9C7DBE5C5D8E2C3D5DEC2
        D2DB000000007BBA0077B4000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FBFFF0FB
        FFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0
        FBFFF0FBFFF0FBFFF0FBFFF0FBFFC0C0C0FFFFFFFFFFFFFFFFFF}
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object PanelFechaLectura: TsPanel
    Left = 129
    Top = 157
    Width = 337
    Height = 153
    Color = clMenu
    TabOrder = 8
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Label4: TLabel
      Left = 84
      Top = 47
      Width = 97
      Height = 14
      Caption = 'Fecha de Lectura:'
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
      Left = 9
      Top = 69
      Width = 173
      Height = 14
      Caption = 'Fecha de Vencimiento (factura):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 335
      Height = 27
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Color = clBlack
      TabOrder = 0
      object sLabelFX12: TsLabelFX
        Left = 0
        Top = 0
        Width = 256
        Height = 25
        Align = alLeft
        Caption = 'Establecer fecha de lectura'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
    end
    object sBitBtn7: TsBitBtn
      Left = 104
      Top = 98
      Width = 162
      Height = 44
      Caption = '&Cerrar'
      TabOrder = 1
      OnClick = sBitBtn7Click
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2
        FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF000000000000000000B1E2FFB1
        E2FF48B8FF48B8FFB1E2FFB1E2FFFFFFFFFFFFFFFFFFFFFFFFFFB1E2FFB1E2FF
        48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8
        FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FF000000006499005F92000000B1
        E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFFFFFFFFFFFFFB1E2FFB1E2FF
        B1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2
        FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF00000000659B00609400436900
        000048B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FF48B8FF48B8FF
        B1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2
        FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FF00000000679D006296004A7400
        466D00000048B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FF
        48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8
        FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FF0000000068A0006399004A7300
        4E79004A730000000092DC48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FFB1E2FF
        B1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FFB1E2
        FFB1E2FF48B8FF48B8FFB1E2FFB1E2FFB1E2FF000000006AA200659B004A7300
        4A73004A7300456C0000000092DC0092DC48B8FF48B8FFB1E2FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00B1E2FFB1E2FFB1E2FF48B8FF48B8FFB1E2FF000000006CA400679D004A7300
        4369004A73004C77004871000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
        0048B8FF48B8FFB1E2FFB1E2FFB1E2FF48B8FF000000006DA70068A0004A7300
        4870003F63004A7300507C000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
        000092DC0092DC48B8FF48B8FFB1E2FFB1E2FF000000006FA9006AA2004A7300
        4D7700446B003C5E004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
        000000000000000000000000000000000000000000000071AB006CA4004A7300
        527F004A73004166004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0C0C0C00000
        00B5BDC2B3BABEB1B7BBAFB4B7ADB1B4ACAEB10000000072AE006DA7004A7300
        5786004F7A00466D004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000C0C0C00000
        00B6BFC5B4BCC1B2B9BEB0B6BAAEB3B7ADB0B40000000074B0006FA9003E6200
        4A73005481004B74004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000027FF0000000000
        00B8C2C8B6BFC4B4BCC1B2B9BDB0B6BAAFB3B70000000076B20071AB004E7900
        456C004A7300507C004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000034FF002DFF0000
        00BAC5CCB8C2C8B6BFC5B4BCC1B2B9BEB1B6BB0000000077B50072AE005D8F00
        0000000000004A73004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFA4A0A0A4A0A0A4A0A0A4A0A0A4A0A00000000042FF003BFF0034
        FF000000B9C5CBB7C2C8B6BFC4B4BCC1B3B9BE0000000079B70074B00000008E
        FFFF000000003A5C004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFA4A0A0A4A0A0A4A0A0A4A0A0A4A0A0A4A0A0000000004FFF0048FF0042
        FF003BFF000000B9C4CBB7C1C7B5BEC4B4BCC1000000007BBA0076B3000000B1
        FFFF000000003F63003757000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        000000000000000000000000000000000000000000000000005DFF0056FF004F
        FF0049FF0042FF000000B9C4CBB7C1C8B6BFC5000000007CBC0077B500558400
        000000000000446B003C5E000000C0C0C0808080FFFFFFFFFFFFFFFFFF000000
        00A0FF0099FF0092FF008BFF0085FF007EFF0077FF0071FF006AFF0063FF005C
        FF0056FF004FFF0048FF000000B9C4CBB8C2C8000000007EBE0079B7004A7300
        527F004A73004A73004166000000C0C0C0808080FFFFFFFFFFFFFFFFFF000000
        00AEFF00A7FF00A0FF0099FF0093FF008CFF0085FF007FFF0078FF0071FF006A
        FF0064FF005DFF0056FF0050FF000000BAC5CB000000007FC1007ABA004A7300
        4A73004F7A004F7A00466D000000C0C0C0808080FFFFFFFFFFFFFFFFFF000000
        00AEFF00A7FF00A0FF0099FF0093FF008CFF0085FF007FFF0078FF0071FF006A
        FF0064FF005DFF0056FF0050FF000000BCC8CF0000000081C3007CBC004A7300
        4369004A73005481004B74000000C0C0C0808080FFFFFFFFFFFFFFFFFF000000
        00BBFF00B4FF00ADFF00A6FF00A0FF0099FF0092FF008CFF0085FF007EFF0077
        FF0071FF006AFF0063FF000000BDCAD2BCC8CF0000000083C6007EBF004A7300
        4870003F63004A7300507C000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        0000000000000000000000000000000000000000000000000092FF008BFF0084
        FF007EFF0077FF000000C0CFD8BECCD5BDCAD20000000084C8007FC1004A7300
        4D7700446B003C5E004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000A0FF0099FF0092
        FF008CFF000000C3D5DFC2D2DBC0CFD8BFCDD50000000086CB0081C4004A7300
        527F004A73004166004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000ADFF00A6FF009F
        FF000000C7DBE6C5D8E3C4D5DFC2D2DCC1D0D90000000088CD0083C6004A7300
        5786004F7A00466D004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000BAFF00B3FF0000
        00CBE1EDC9DEE9C7DBE6C5D8E2C3D5DFC2D3DC0000000089CF0084C800436900
        4A73005481004B74004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000C8FF0000000000
        00CCE4F1CAE1EDC8DEE9C7DBE6C5D8E2C4D5DFC2D2DB0000000086CB0081C400
        466D004A7300507C004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000F0FBFF0000
        00CEE7F4CCE4F0CAE1EDC9DEE9C7DBE6C6D8E3C4D5DFC2D2DB0000000083C600
        7FC0004A73004A73004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
        00D0EAF8CEE7F4CCE4F0CAE1EDC8DEE9C7DBE6C5D8E2C3D5DEC1D2DB00000000
        80C3007BBC004C77004A73000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
        00D2EDFBD0EAF7CEE7F3CCE4F0CAE1ECC9DEE9C7DBE5C5D8E1C3D5DEC1D2DA00
        0000007DBE0079B700507C000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
        00D4F0FFD2EDFBD0EAF7CEE7F4CCE4F0CBE1EDC9DEE9C7DBE5C5D8E2C3D5DEC2
        D2DB000000007BBA0077B4000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0F0FBFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FBFFF0FB
        FFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0
        FBFFF0FBFFF0FBFFF0FBFFF0FBFFC0C0C0FFFFFFFFFFFFFFFFFF}
      SkinData.SkinSection = 'BUTTON'
    end
    object fechaLectura: TDateTimePicker
      Left = 183
      Top = 43
      Width = 106
      Height = 23
      CalAlignment = dtaLeft
      Date = 42635.6730997685
      Time = 42635.6730997685
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 2
    end
    object fechaLimite: TDateTimePicker
      Left = 183
      Top = 66
      Width = 106
      Height = 23
      CalAlignment = dtaLeft
      Date = 42635.6730997685
      Time = 42635.6730997685
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 3
    end
  end
  object MainMenu1: TMainMenu
    Left = 112
    object Archivo1: TMenuItem
      Caption = '&Archivo'
      object Salir1: TMenuItem
        Caption = '&Salir'
        OnClick = Salir1Click
      end
    end
    object Reimpresiones1: TMenuItem
      Caption = 'Operaciones'
      object ver1: TMenuItem
        Caption = 'Ver ultimo preaviso'
        OnClick = ver1Click
      end
      object Reimpresiones2: TMenuItem
        Caption = 'Reimpresiones'
        OnClick = Reimpresiones2Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object ModificarLectura1: TMenuItem
        Caption = 'Modificar lectura'
        OnClick = ModificarLectura1Click
      end
      object Eliminarlectura1: TMenuItem
        Caption = 'Eliminar lectura'
        OnClick = Eliminarlectura1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Exportararchivodedatos1: TMenuItem
        Caption = 'Exportar archivo de datos'
        OnClick = Exportararchivodedatos1Click
      end
      object Importararchivodedatos1: TMenuItem
        Caption = 'Importar archivo de datos'
        OnClick = Importararchivodedatos1Click
      end
      object Establecerfechadelectura1: TMenuItem
        Caption = 'Establecer fecha de lectura'
        OnClick = Establecerfechadelectura1Click
      end
    end
  end
  object ADOPrime: TADOQuery
    Connection = FormLogin.ConexionBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select a.* from asociado a'
      'where a.id_asoc not in '
      
        '(select l.id_asoc from lectura l where l.mes_lec='#39'MAYO'#39' and l.ge' +
        'stion_lec='#39'2016'#39')')
    Left = 24
    Top = 40
  end
  object DataPrime: TDataSource
    DataSet = ADOPrime
    Left = 56
    Top = 40
  end
  object ADOAsociado: TADOQuery
    Connection = FormLogin.ConexionBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tipo_asociado')
    Left = 632
    Top = 112
  end
  object DataAsociado: TDataSource
    DataSet = ADOAsociado
    Left = 664
    Top = 112
  end
  object ADOFacturas: TADOQuery
    Connection = FormLogin.ConexionBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from lectura l, factura f'
      'where l.id_lec = f.id_lec and f.estado_fact='#39'PENDIENTE'#39' and'
      'l.id_asoc=1')
    Left = 1032
    Top = 224
  end
  object DataFacturas: TDataSource
    DataSet = ADOFacturas
    Left = 1064
    Top = 224
  end
  object ADOLecturas: TADOQuery
    Connection = FormLogin.ConexionBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from lectura where '
      'id_asoc=1 and'
      'fecha_lec < '#39'2016-03-23'#39)
    Left = 936
    Top = 488
  end
  object DataLecturas: TDataSource
    DataSet = ADOLecturas
    Left = 968
    Top = 488
  end
  object ADOImport: TADOQuery
    Connection = FormLogin.ConexionBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from asociado_aux')
    Left = 192
    Top = 376
    object ADOImportnum: TAutoIncField
      FieldName = 'num'
      ReadOnly = True
    end
    object ADOImportid_asoc: TIntegerField
      FieldName = 'id_asoc'
    end
    object ADOImportnombre_asoc: TStringField
      FieldName = 'nombre_asoc'
      Size = 250
    end
    object ADOImportcodigo: TStringField
      FieldName = 'codigo'
      Size = 50
    end
    object ADOImportdireccion: TStringField
      FieldName = 'direccion'
      Size = 250
    end
    object ADOImportservicio: TStringField
      FieldName = 'servicio'
      Size = 50
    end
    object ADOImportlectura_ant: TFloatField
      FieldName = 'lectura_ant'
    end
    object ADOImportlectura_act: TFloatField
      FieldName = 'lectura_act'
    end
    object ADOImportconsumo: TFloatField
      FieldName = 'consumo'
    end
    object ADOImportfecha: TDateField
      FieldName = 'fecha'
    end
    object ADOImporthora: TTimeField
      FieldName = 'hora'
    end
    object ADOImportestado: TStringField
      FieldName = 'estado'
      Size = 30
    end
    object ADOImportgestion: TStringField
      FieldName = 'gestion'
    end
    object ADOImportmes: TStringField
      FieldName = 'mes'
    end
  end
  object DataImport: TDataSource
    DataSet = ADOImport
    Left = 224
    Top = 376
  end
  object FileDialog: TOpenDialog
    Filter = 'Archivo de datos|*.data'
    InitialDir = '\'
    Left = 192
    Top = 168
  end
end
