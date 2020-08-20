unit FrmRepLect1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, QRCtrls, QuickRpt, ExtCtrls,
  jpeg;

type
  TFormRepLect1 = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRExpr5: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRBand1: TQRBand;
    ADOEmpresa: TADOQuery;
    ADODetalle: TADOQuery;
    DataSource1: TDataSource;
    QRExpr17: TQRExpr;
    QRExpr1: TQRExpr;
    QRExpr27: TQRExpr;
    QRExpr36: TQRExpr;
    QRShape1: TQRShape;
    QRExpr40: TQRExpr;
    QRExpr41: TQRExpr;
    QRExpr37: TQRExpr;
    QRExpr6: TQRExpr;
    QRShape10: TQRShape;
    QRExpr34: TQRExpr;
    QRExpr42: TQRExpr;
    QRExpr43: TQRExpr;
    QRExpr44: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr23: TQRExpr;
    QRExpr45: TQRExpr;
    QRExpr46: TQRExpr;
    QRExpr47: TQRExpr;
    QRExpr48: TQRExpr;
    QRExpr49: TQRExpr;
    QRExpr50: TQRExpr;
    QRExpr51: TQRExpr;
    QRExpr52: TQRExpr;
    QRExpr53: TQRExpr;
    QRShape2: TQRShape;
    QRExpr35: TQRExpr;
    QRExpr54: TQRExpr;
    QRExpr55: TQRExpr;
    QRExpr56: TQRExpr;
    QRExpr57: TQRExpr;
    QRShape7: TQRShape;
    QRExpr61: TQRExpr;
    QRBand2: TQRBand;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRExpr98: TQRExpr;
    QRExpr107: TQRExpr;
    QRShape3: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRExpr97: TQRExpr;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRExpr12: TQRExpr;
    QRSysData1: TQRSysData;
    QRShape8: TQRShape;
    QRShape14: TQRShape;
    QRExpr11: TQRExpr;
    QRExpr2: TQRExpr;
    QRDBImage1: TQRDBImage;
    QRExpr10: TQRExpr;
    QRExpr4: TQRExpr;
    procedure Consulta(idlec:String);
    procedure Imprimir();
    procedure VistaPrevia();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRepLect1: TFormRepLect1;

implementation

uses GeneradorQR, numeroaletras, frmLogin;

{$R *.dfm}

procedure TFormRepLect1.Imprimir();
begin
    QuickRep1.Print;
end;
procedure TFormRepLect1.VistaPrevia();
begin
    QuickRep1.preview;
end;
procedure TFormRepLect1.Consulta(idlec:String);
Var
        SQL: String;
begin
    try
        ADOEmpresa.Requery();
        SQL:='select * from lectura l, factura f, asociado a, detalle_factura d '+
             'where a.id_asoc = l.id_asoc and l.id_lec = f.id_lec and f.id_fact = d.id_fact and '+
             'l.id_lec = '+idlec+' order by d.id_detfact';
        ADOdetalle.close;
        ADOdetalle.SQL.Clear;
        ADOdetalle.SQL.Add(SQL);
        ADOdetalle.Open;

    except
        showmessage('ERROR: Al ejecutar la sentencia SQL: '+SQL);
    end;
end;

end.
