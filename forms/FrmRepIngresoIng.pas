unit FrmRepIngresoIng;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, ADODB, QRCtrls, EDBImage, DBCtrls, qrprntr,
  StdCtrls;

type
  TFormRepIngresos = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRTitulo: TQRLabel;
    QRShape2: TQRShape;
    QRLabel9: TQRLabel;
    DetailBand1: TQRBand;
    QRSysData3: TQRSysData;
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
    QRShape12: TQRShape;
    QRShape16: TQRShape;
    QRShape19: TQRShape;
    QRShape22: TQRShape;
    QRLabel15: TQRLabel;
    QRDesde: TQRLabel;
    QRFecha1: TQRLabel;
    QRFecha2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel17: TQRLabel;
    QRExpr4: TQRExpr;
    QRLabel18: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape25: TQRShape;
    QRExpr8: TQRExpr;
    QRShape26: TQRShape;
    QRLabel22: TQRLabel;
    QRExpr9: TQRExpr;
    QRShape27: TQRShape;
    QRExpr13: TQRExpr;
    QRDBUsuario: TQRDBText;
    QRExpr2: TQRExpr;
    QRLabel2: TQRLabel;
    QRExpr3: TQRExpr;
    QRUsuario: TQRLabel;
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
  FormRepIngresos: TFormRepIngresos;

implementation

uses frmLogin, frmEmpresa, FrmBuscarFecha, FrmUsuario;


{$R *.dfm}

procedure TFormRepIngresos.VistaPrevia();
begin
    QuickRep1.Preview;
end;
procedure TFormRepIngresos.Imprimir();
begin
    Quickrep1.Print;
end;

procedure TFormRepIngresos.Consultar(SQL:String);
begin

    try
        ADOReporte.Close;
        ADOReporte.SQL.Clear;
        ADOReporte.SQL.Add(SQL);
        ADOReporte.Open;

        if FormBuscarFecha.Radio2.Checked then
            QRUsuario.Caption :='COBROS REALIZADOS POR: '+FormUsuario.ADOQuery1.fieldbyname('nombre_usu').AsString
        else QRUsuario.Caption :=' ';
    except
        Showmessage('ERROR: Ocurrio un problema al ejecutar la consulta SQL: '+SQL);
    end;

end;

procedure TFormRepIngresos.ConsultaPorAsociado(fecha1,fecha2:Tdate; id_asoc:String);
var
    SQL,orden,usuario:String;
begin

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

    SQL:='SELECT * FROM ingreso '+
         'WHERE  tipo_ing='+quotedStr('INGRESO')+' AND '+
         'date(fechahora_ing)>='+quotedStr(formLogin.Fecha(fecha1))+' AND date(fechahora_ing)<='+quotedStr(formLogin.Fecha(fecha2))+
         ' and detalle_ing='+quotedStr(FormBuscarFecha.ComboCategoria.Text)+usuario+orden;
    Consultar(SQL);

end;

procedure TFormRepIngresos.ConsultaPorFecha(fecha1,fecha2:Tdate);
var
    SQL,orden,usuario:String;
begin


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

    SQL:='SELECT * FROM  ingreso '+
         'WHERE  tipo_ing='+quotedStr('INGRESO')+' AND '+
         ' date(fechahora_ing)>='+quotedStr(formLogin.Fecha(fecha1))+' AND date(fechahora_ing)<='+quotedStr(formLogin.Fecha(fecha2))+usuario+orden;
    Consultar(SQL);
end;


procedure TFormRepIngresos.ConsultaPorDia(fecha1,fecha2:Tdate);
var
    SQL,orden,usuario:String;
begin
//No incluye ordenamiento ni parametros
    QRFecha1.Caption:=DatetoStr(fecha1);
    QRFecha2.Caption:=DatetoStr(fecha2);

    orden:=' order by numrec_ing';
    usuario:=' ';

    SQL:='SELECT * FROM  ingreso '+
         'WHERE  tipo_ing='+quotedStr('INGRESO')+' AND '+
         ' date(fechahora_ing)>='+quotedStr(formLogin.Fecha(fecha1))+' AND date(fechahora_ing)<='+quotedStr(formLogin.Fecha(fecha2))+orden+usuario;
     Consultar(SQL);
end;


procedure TFormRepIngresos.Iniciar(mes,gestion:String);
var
    SQL:String;
begin
    SQL:='select * from ingreso ';
    Consultar(SQL);

    QuickRep1.Preview;
end;

end.
