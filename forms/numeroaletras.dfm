object FormNumeroaletras: TFormNumeroaletras
  Left = 244
  Top = 704
  Width = 928
  Height = 480
  Caption = 'FormNumeroaletras'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 163
    Top = 19
    Width = 37
    Height = 13
    Caption = 'Numero'
  end
  object Label2: TLabel
    Left = 174
    Top = 43
    Width = 28
    Height = 13
    Caption = 'Literal'
  end
  object Literal: TEdit
    Left = 208
    Top = 40
    Width = 481
    Height = 21
    Color = clScrollBar
    ReadOnly = True
    TabOrder = 0
  end
  object Convertir: TButton
    Left = 343
    Top = 13
    Width = 75
    Height = 25
    Caption = 'Convertir'
    TabOrder = 1
    OnClick = ConvertirClick
  end
  object Numeral: TEdit
    Left = 208
    Top = 16
    Width = 129
    Height = 21
    TabOrder = 2
  end
end
