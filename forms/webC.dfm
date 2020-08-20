object FormWebCam: TFormWebCam
  Left = 596
  Top = 167
  BorderStyle = bsToolWindow
  Caption = 'WebCam'
  ClientHeight = 534
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 48
    Width = 640
    Height = 480
  end
  object Image2: TImage
    Left = 8
    Top = 48
    Width = 641
    Height = 481
    Stretch = True
    Visible = False
  end
  object Iniciar: TBitBtn
    Left = 24
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 0
    Visible = False
    OnClick = IniciarClick
  end
  object Detener: TBitBtn
    Left = 104
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Detener'
    TabOrder = 1
    Visible = False
    OnClick = DetenerClick
  end
  object BitBtn1: TBitBtn
    Left = 600
    Top = 8
    Width = 75
    Height = 25
    Caption = 'TomarFoto'
    TabOrder = 2
    Visible = False
    OnClick = BitBtn1Click
  end
  object BtnAlmacenarVideo: TButton
    Left = 432
    Top = 32
    Width = 153
    Height = 25
    Caption = 'AlmacenarVideo'
    TabOrder = 3
    Visible = False
    OnClick = BtnAlmacenarVideoClick
  end
  object PararVideo: TButton
    Left = 432
    Top = 8
    Width = 153
    Height = 25
    Caption = 'PararVideo'
    TabOrder = 4
    Visible = False
    OnClick = PararVideoClick
  end
  object BitBtn2: TBitBtn
    Left = 192
    Top = 48
    Width = 75
    Height = 25
    Caption = 'TomarFoto'
    TabOrder = 5
    Visible = False
    OnClick = BitBtn2Click
  end
  object BInicar: TsBitBtn
    Left = 8
    Top = 0
    Width = 113
    Height = 41
    Caption = '&Iniciar'
    TabOrder = 6
    OnClick = BInicarClick
    SkinData.SkinSection = 'BUTTON'
  end
  object Bdetener: TsBitBtn
    Left = 128
    Top = 0
    Width = 113
    Height = 41
    Caption = '&Detener'
    TabOrder = 7
    OnClick = BdetenerClick
    SkinData.SkinSection = 'BUTTON'
  end
  object Bcapturar: TsBitBtn
    Left = 248
    Top = 0
    Width = 113
    Height = 41
    Caption = '&Capturar Imagen'
    TabOrder = 8
    OnClick = BcapturarClick
    SkinData.SkinSection = 'BUTTON'
  end
  object Bsalir: TsBitBtn
    Left = 368
    Top = 0
    Width = 113
    Height = 41
    Caption = '&Salir'
    TabOrder = 9
    OnClick = BsalirClick
    SkinData.SkinSection = 'BUTTON'
  end
  object Guardar: TSaveDialog
    Left = 64
    Top = 80
  end
end
