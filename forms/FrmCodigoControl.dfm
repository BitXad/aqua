object FormCodigoControl: TFormCodigoControl
  Left = 558
  Top = 150
  Width = 809
  Height = 568
  Caption = 'xt'
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
    Left = 24
    Top = 16
    Width = 127
    Height = 13
    Caption = 'Algoritmo Alleged RC4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 440
    Top = 24
    Width = 157
    Height = 13
    Caption = 'Prueba el Algoritmo Base64'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 322
    Top = 44
    Width = 117
    Height = 13
    Caption = 'Ing.Codigo de Numerico:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 391
    Top = 66
    Width = 46
    Height = 13
    Caption = 'resultado:'
  end
  object Label5: TLabel
    Left = 440
    Top = 120
    Width = 156
    Height = 13
    Caption = 'Prueb el Algoritmo Verhoeff'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 322
    Top = 140
    Width = 117
    Height = 13
    Caption = 'Ing.Codigo de Numerico:'
  end
  object Label7: TLabel
    Left = 391
    Top = 162
    Width = 46
    Height = 13
    Caption = 'resultado:'
  end
  object Label8: TLabel
    Left = 440
    Top = 200
    Width = 135
    Height = 13
    Caption = 'Convetir a Hexadecimal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 322
    Top = 220
    Width = 117
    Height = 13
    Caption = 'Ing.Codigo de Numerico:'
  end
  object Label10: TLabel
    Left = 391
    Top = 242
    Width = 46
    Height = 13
    Caption = 'resultado:'
  end
  object ere: TLabel
    Left = 8
    Top = 216
    Width = 124
    Height = 13
    Caption = 'Llave de Dosificacion'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 8
    Top = 264
    Width = 136
    Height = 13
    Caption = 'Numero de Autorizacion'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 56
    Top = 332
    Width = 95
    Height = 13
    Caption = 'Numero Factura:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 70
    Top = 356
    Width = 80
    Height = 13
    Caption = 'Nit/Ci cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 61
    Top = 380
    Width = 94
    Height = 13
    Caption = 'Fecha Transac.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 53
    Top = 404
    Width = 94
    Height = 13
    Caption = 'Monto Transac.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 48
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 48
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 172
    Top = 36
    Width = 58
    Height = 50
    Caption = 'Clik Aqui'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 440
    Top = 40
    Width = 152
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 440
    Top = 64
    Width = 152
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
  object Button2: TButton
    Left = 592
    Top = 38
    Width = 58
    Height = 50
    Caption = 'Click Aqui'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Edit5: TEdit
    Left = 440
    Top = 136
    Width = 152
    Height = 21
    TabOrder = 6
  end
  object Edit6: TEdit
    Left = 440
    Top = 160
    Width = 152
    Height = 21
    ReadOnly = True
    TabOrder = 7
  end
  object Button3: TButton
    Left = 593
    Top = 134
    Width = 58
    Height = 50
    Caption = 'Click Aqui'
    TabOrder = 8
    OnClick = oeff
  end
  object Edit7: TEdit
    Left = 48
    Top = 88
    Width = 281
    Height = 21
    ReadOnly = True
    TabOrder = 9
  end
  object Edit8: TEdit
    Left = 440
    Top = 216
    Width = 152
    Height = 21
    TabOrder = 10
  end
  object Edit9: TEdit
    Left = 440
    Top = 240
    Width = 152
    Height = 21
    ReadOnly = True
    TabOrder = 11
  end
  object Button4: TButton
    Left = 593
    Top = 214
    Width = 58
    Height = 50
    Caption = 'Click Aqui'
    TabOrder = 12
    OnClick = Button4Click
  end
  object Edit10: TEdit
    Left = 48
    Top = 128
    Width = 281
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 13
  end
  object E1: TEdit
    Left = 152
    Top = 328
    Width = 121
    Height = 21
    TabOrder = 14
    Text = '978256'
  end
  object E2: TEdit
    Left = 152
    Top = 352
    Width = 121
    Height = 21
    TabOrder = 15
    Text = '0'
  end
  object E3: TEdit
    Left = 152
    Top = 376
    Width = 121
    Height = 21
    TabOrder = 16
    Text = '20080201'
  end
  object E4: TEdit
    Left = 152
    Top = 400
    Width = 121
    Height = 21
    TabOrder = 17
    Text = '26006'
  end
  object E5: TEdit
    Left = 8
    Top = 432
    Width = 745
    Height = 21
    TabOrder = 18
  end
  object Button5: TButton
    Left = 280
    Top = 328
    Width = 161
    Height = 97
    Caption = 'Obtener codigo de control'
    TabOrder = 19
    OnClick = Button5Click
  end
  object E0: TEdit
    Left = 24
    Top = 240
    Width = 297
    Height = 21
    TabOrder = 20
    Text = 'pPgiFS%)v}@N4W3aQqqXCEHVS2[aDw_n%3)pFyU%bEB9)YXt%xNBub4@PZ4S9)ct'
  end
  object E01: TEdit
    Left = 24
    Top = 280
    Width = 297
    Height = 21
    TabOrder = 21
    Text = '1904008691195'
  end
  object Edit11: TEdit
    Left = 8
    Top = 456
    Width = 745
    Height = 21
    TabOrder = 22
    Text = '62-12-AF-1B'
  end
end
