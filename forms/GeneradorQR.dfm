object FormGeneradorQR: TFormGeneradorQR
  Left = 143
  Top = 640
  Width = 975
  Height = 380
  Caption = 'FormGeneradorQR'
  Color = clMaroon
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    959
    342)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 13
    Width = 21
    Height = 13
    Caption = 'Text'
  end
  object Label2: TLabel
    Left = 8
    Top = 69
    Width = 45
    Height = 13
    Caption = 'Encoding'
  end
  object Label3: TLabel
    Left = 184
    Top = 69
    Width = 51
    Height = 13
    Caption = 'Quiet zone'
  end
  object Label4: TLabel
    Left = 296
    Top = 13
    Width = 38
    Height = 13
    Caption = 'Preview'
  end
  object PaintBox1: TPaintBox
    Left = 272
    Top = 32
    Width = 289
    Height = 223
    Anchors = [akLeft, akTop, akRight, akBottom]
    OnPaint = PaintBox1Paint
  end
  object Image1: TImage
    Left = 16
    Top = 120
    Width = 150
    Height = 150
    Stretch = True
  end
  object edtText: TEdit
    Left = 8
    Top = 32
    Width = 265
    Height = 21
    TabOrder = 0
    Text = 'Hello world'
  end
  object cmbEncoding: TComboBox
    Left = 8
    Top = 88
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 1
    Text = 'Auto'
    OnChange = cmbEncodingChange
    Items.Strings = (
      'Auto'
      'Numeric'
      'Alphanumeric'
      'ISO-8859-1'
      'UTF-8 without BOM'
      'UTF-8 with BOM')
  end
  object edtQuietZone: TEdit
    Left = 184
    Top = 88
    Width = 89
    Height = 21
    TabOrder = 2
    Text = '4'
    OnChange = edtQuietZoneChange
  end
  object BCopiar: TBitBtn
    Left = 312
    Top = 236
    Width = 153
    Height = 48
    Caption = 'Copiar QR'
    TabOrder = 3
    OnClick = BCopiarClick
  end
  object BitBtn2: TBitBtn
    Left = 312
    Top = 296
    Width = 153
    Height = 33
    Caption = 'Salir'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object BGenerar: TBitBtn
    Left = 312
    Top = 187
    Width = 153
    Height = 48
    Caption = 'Generar QR'
    TabOrder = 5
    OnClick = BGenerarClick
  end
end
