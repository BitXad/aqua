unit FrmRepUsuariosCorte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, ADODB, QRCtrls, EDBImage, DBCtrls, qrprntr,
  StdCtrls;

type
  TFormRepusuariosCorte = class(TForm)
    ADOReporte: TADOQuery;
    DataReporte: TDataSource;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    DBLogo: TQRDBImage;
    QRShape9: TQRShape;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRTitulo: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBTelf: TQRDBText;
    QRDBDireccion: TQRDBText;
    QRDBSucursal: TQRDBText;
    QRDBEmpresa: TQRDBText;
    QRDBEslogan: TQRDBText;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRDesde: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRSysData4: TQRSysData;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRFecha2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel14: TQRLabel;
    QRResponsable: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText5: TQRDBText;
    QRExpr3: TQRExpr;
    QRSysData3: TQRSysData;
    QRDBText12: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRShape4: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRBand3: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRShape12: TQRShape;
    QRDBText1: TQRDBText;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRDBText2: TQRDBText;
    procedure Consultar(SQL:String);
    procedure Iniciar();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRepusuariosCorte: TFormRepusuariosCorte;

implementation

uses frmLogin, frmEmpresa;


{$R *.dfm}

procedure TFormRepusuariosCorte.Consultar(SQL:String);
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

procedure TFormRepusuariosCorte.Iniciar();
var
    SQL:String;
begin
    QRResponsable.Caption:=FormLogin.ADOUsuario.fieldbyname('nombre_usu').AsString;
    SQL:='select * from (select a.id_asoc,max(DATEDIFF(date(NOW()),l.fecha_lec)) as mora, count(*) as cantfact, a.apellidos_asoc, a.nombres_asoc, a.direccion_asoc,a.codigo_asoc, '+
         'a.zona_asoc,a.medidor_asoc,a.servicios_asoc from lectura l, factura f, asociado a where a.id_asoc = l.id_asoc and l.id_lec = f.id_lec and '+
         'f.estado_fact='+quotedStr('PENDIENTE')+' group by id_asoc) AS t1 where t1.mora>=(select p.dias_param from parametros p where p.id_param=4)';//Cambiar el parametro para configurarlo bien
    Consultar(SQL);
    QuickRep1.Preview;
end;

end.
