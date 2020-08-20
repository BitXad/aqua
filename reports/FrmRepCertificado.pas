unit FrmRepCertificado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, ADODB, QRCtrls, EDBImage, DBCtrls, qrprntr,
  StdCtrls;

type
  TFormRepCertificado = class(TForm)
    QuickRep1: TQuickRep;
    ADOReporte: TADOQuery;
    DataReporte: TDataSource;
    QRBand1: TQRBand;
    DBLogo: TQRDBImage;
    QRShape2: TQRShape;
    QRLabel15: TQRLabel;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    procedure Consultar(SQL:String);
    procedure Iniciar(mes,gestion:String);
    procedure ConsultaPorFecha(fecha1,fecha2:Tdate);
    procedure ConsultaPorDia(fecha1,fecha2:Tdate);
    procedure VistaPrevia();
    procedure Imprimir();
    procedure ConsultaPorAsociado(fecha1,fecha2:Tdate; id_asoc:String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRepCertificado: TFormRepCertificado;

implementation

uses frmLogin, frmEmpresa, FrmBuscarFecha, FrmUsuario, frmAsociados;


{$R *.dfm}

procedure TFormRepCertificado.VistaPrevia();
begin
    QuickRep1.Preview;
end;
procedure TFormRepCertificado.Imprimir();
begin
    Quickrep1.Print;
end;

procedure TFormRepCertificado.Consultar(SQL:String);
begin

    try
        ADOReporte.Close;
        ADOReporte.SQL.Clear;
        ADOReporte.SQL.Add(SQL);
        ADOReporte.Open;

      {  if FormBuscarFecha.Radio2.Checked then
            QRUsuario.Caption :='EGRESOS REALIZADOS POR: '+FormUsuario.ADOQuery1.fieldbyname('nombre_usu').AsString
        else QRUsuario.Caption :=' '; }
    except
        Showmessage('ERROR: Ocurrio un problema al ejecutar la consulta SQL: '+SQL);
    end;

end;

procedure TFormRepCertificado.ConsultaPorAsociado(fecha1,fecha2:Tdate; id_asoc:String);
var
    SQL,orden,usuario:String;
begin
   {
    QRFecha1.Caption:=DatetoStr(fecha1);
    QRFecha2.Caption:=DatetoStr(fecha2);

    orden:=' ';
    usuario:=' ';

        if FormBuscarFecha.ComboOrden.Text='RECIBO' then orden:=' order by numrec_ing ';
        if FormBuscarFecha.ComboOrden.Text='NOMBRE' then orden:=' order by nombre_ing ';
        if FormBuscarFecha.ComboOrden.Text='CATEGORIA' then orden:=' order by detalle_ing ';
        if FormBuscarFecha.ComboOrden.Text='MONTO' then orden:=' order by monto_ing ';

        if FormBuscarFecha.Radio1.Checked then usuario:=' ';
        if FormBuscarFecha.Radio2.Checked then usuario:=' and id_usu='+intToStr(FormBuscarFecha.ComboUsuario.KeyValue);

    SQL:='SELECT * FROM ingreso_egreso '+
         'WHERE  tipo_ing='+quotedStr('EGRESO')+' AND '+
         'date(fechahora_ing)>='+quotedStr(formLogin.Fecha(fecha1))+' AND date(fechahora_ing)<='+quotedStr(formLogin.Fecha(fecha2))+
         ' and detalle_ing='+quotedStr(FormBuscarFecha.ComboCategoria.Text)+usuario+orden;
    Consultar(SQL);
     }
end;

procedure TFormRepCertificado.ConsultaPorFecha(fecha1,fecha2:Tdate);
var
    SQL,orden,usuario:String;
begin
  {

    QRFecha1.Caption:=DatetoStr(fecha1);
    QRFecha2.Caption:=DatetoStr(fecha2);

    orden:=' ';
    usuario:=' ';


        if FormBuscarFecha.ComboOrden.Text='RECIBO' then orden:=' order by numrec_ing ';
        if FormBuscarFecha.ComboOrden.Text='NOMBRE' then orden:=' order by nombre_ing ';
        if FormBuscarFecha.ComboOrden.Text='CATEGORIA' then orden:=' order by detalle_ing ';
        if FormBuscarFecha.ComboOrden.Text='MONTO' then orden:=' order by monto_ing ';

        if FormBuscarFecha.Radio1.Checked then usuario:=' ';
        if FormBuscarFecha.Radio2.Checked then usuario:=' and id_usu='+intToStr(FormBuscarFecha.ComboUsuario.KeyValue);

    SQL:='SELECT * FROM  ingreso_egreso '+
         'WHERE  tipo_ing='+quotedStr('EGRESO')+' AND '+
         ' date(fechahora_ing)>='+quotedStr(formLogin.Fecha(fecha1))+' AND date(fechahora_ing)<='+quotedStr(formLogin.Fecha(fecha2))+usuario+orden;
    Consultar(SQL);

    }
end;


procedure TFormRepCertificado.ConsultaPorDia(fecha1,fecha2:Tdate);
var
    SQL,orden,usuario:String;
begin
//No incluye ordenamiento ni parametros
{    QRFecha1.Caption:=DatetoStr(fecha1);
    QRFecha2.Caption:=DatetoStr(fecha2);

    orden:=' order by numrec_ing';
    usuario:=' ';

    SQL:='SELECT * FROM  ingreso_egreso '+
         'WHERE  tipo_ing='+quotedStr('EGRESO')+' AND '+
         ' date(fechahora_ing)>='+quotedStr(formLogin.Fecha(fecha1))+' AND date(fechahora_ing)<='+quotedStr(formLogin.Fecha(fecha2))+orden+usuario;
     Consultar(SQL);
}
end;


procedure TFormRepCertificado.Iniciar(mes,gestion:String);
var
    SQL:String;
begin
    SQL:='select * from ingreso_egreso';
    Consultar(SQL);

    QuickRep1.Preview;
end;

end.
