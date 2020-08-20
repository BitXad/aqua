unit FrmRepAsociado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, ADODB, QRCtrls, EDBImage, DBCtrls, qrprntr,
  StdCtrls;

type
  TFormRepAsociado = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRTitulo: TQRLabel;
    QRShape2: TQRShape;
    QRLabel9: TQRLabel;
    DetailBand1: TQRBand;
    QRSysData3: TQRSysData;
    QRDBText5: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText12: TQRDBText;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRBand3: TQRBand;
    QRSysData2: TQRSysData;
    DBLogo: TQRDBImage;
    QRDBTelf: TQRDBText;
    QRDBDireccion: TQRDBText;
    QRDBSucursal: TQRDBText;
    QRDBEmpresa: TQRDBText;
    ADOReporte: TADOQuery;
    DataReporte: TDataSource;
    QRDBEslogan: TQRDBText;
    QRShape3: TQRShape;
    QRSysData1: TQRSysData;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRDesde: TQRLabel;
    QRLabel1: TQRLabel;
    QRFecha1: TQRLabel;
    QRFecha2: TQRLabel;
    QRLabel4: TQRLabel;
    QRResponsable: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRSysData4: TQRSysData;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape4: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel11: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape12: TQRShape;
    QRShape16: TQRShape;
    procedure Consultar(SQL:String);
    procedure Iniciar();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRepAsociado: TFormRepAsociado;

implementation

uses frmLogin, frmEmpresa;


{$R *.dfm}

procedure TFormRepAsociado.Consultar(SQL:String);
begin

    try
        ADOReporte.Close;
        ADOReporte.SQL.Clear;
        ADOReporte.SQL.Add(SQL);
        ADOReporte.Open;
    except
        Showmessage('ERROR: Ocurrio un problema al ejecutar la consulta SQL: '+SQL);
    end;

end;

procedure TFormRepAsociado.Iniciar();
var
    SQL:String;
begin
    QRResponsable.Caption:=FormLogin.ADOUsuario.fieldbyname('nombre_usu').AsString;
    SQL:='select * from asociado order by apellidos_asoc';
    Consultar(SQL);

    QuickRep1.Preview;
end;

end.
