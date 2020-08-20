unit FrmRepLect2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, QRCtrls, QuickRpt, ExtCtrls,
  jpeg;

type
  TFormRepLect2 = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRBand1: TQRBand;
    ADOEmpresa: TADOQuery;
    ADODetalle: TADOQuery;
    DataSource1: TDataSource;
    QRExpr1: TQRExpr;
    QRExpr27: TQRExpr;
    QRExpr36: TQRExpr;
    QRExpr40: TQRExpr;
    QRExpr37: TQRExpr;
    QRShape9: TQRShape;
    QRExpr6: TQRExpr;
    QRShape10: TQRShape;
    QRExpr42: TQRExpr;
    QRExpr43: TQRExpr;
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
    QRBand2: TQRBand;
    QRExpr107: TQRExpr;
    QRExpr97: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr2: TQRExpr;
    QRDBImage1: TQRDBImage;
    QRExpr10: TQRExpr;
    QRExpr3: TQRExpr;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRShape4: TQRShape;
    QRExpr7: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr13: TQRExpr;
    procedure Consulta(idlec:String);
    procedure Imprimir();
    procedure VistaPrevia();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRepLect2: TFormRepLect2;

implementation

uses GeneradorQR, numeroaletras, frmLogin;

{$R *.dfm}
procedure TFormRepLect2.Imprimir();
begin
    QuickRep1.Print;
end;
procedure TFormRepLect2.VistaPrevia();
begin
    QuickRep1.preview;
end;

procedure TFormRepLect2.Consulta(idlec:String);
Var
        SQL, codigoQR : String;
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
