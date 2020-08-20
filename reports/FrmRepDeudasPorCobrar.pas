unit FrmRepDeudasPorCobrar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, ADODB, QRCtrls, EDBImage, DBCtrls, qrprntr,
  StdCtrls;

type
  TFormRepDeudasPorCobrar = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRTitulo: TQRLabel;
    QRShape2: TQRShape;
    QRLabel9: TQRLabel;
    DetailBand1: TQRBand;
    QRSysData3: TQRSysData;
    QRDBText5: TQRDBText;
    QRLabel10: TQRLabel;
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
    QRExpr2: TQRExpr;
    QRShape12: TQRShape;
    QRShape16: TQRShape;
    QRLabel8: TQRLabel;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel15: TQRLabel;
    QRDesde: TQRLabel;
    QRFecha1: TQRLabel;
    QRFecha2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRExpr3: TQRExpr;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRExpr4: TQRExpr;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRExpr5: TQRExpr;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRExpr6: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRExpr7: TQRExpr;
    QRLabel13: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape25: TQRShape;
    QRExpr8: TQRExpr;
    QRShape26: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRExpr9: TQRExpr;
    QRShape27: TQRShape;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRUsuario: TQRLabel;
    QRDBUsuario: TQRDBText;
    ADOReportecodigo_asoc: TStringField;
    ADOReporteapellidos_asoc: TStringField;
    ADOReportenombres_asoc: TStringField;
    ADOReporteservicios_asoc: TStringField;
    ADOReportegestion: TStringField;
    ADOReportemt3: TFloatField;
    ADOReporteconsumo: TFloatField;
    ADOReportealcantarillado: TFloatField;
    ADOReportefecoapaq: TBCDField;
    ADOReporterep_form: TFloatField;
    ADOReportemultas: TFloatField;
    ADOReportetotal_factura: TFloatField;
    ADOReporteid_fact: TAutoIncField;
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
  FormRepDeudasPorCobrar: TFormRepDeudasPorCobrar;

implementation

uses frmLogin, frmEmpresa, FrmBuscarFecha, FrmUsuario;


{$R *.dfm}

procedure TFormRepDeudasPorCobrar.VistaPrevia();
begin
    QuickRep1.Preview;
end;
procedure TFormRepDeudasPorCobrar.Imprimir();
begin
    Quickrep1.Print;
end;

procedure TFormRepDeudasPorCobrar.Consultar(SQL:String);
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

procedure TFormRepDeudasPorCobrar.ConsultaPorAsociado(fecha1,fecha2:Tdate; id_asoc:String);
var
    SQL,orden,usuario:String;
    fechas,estados:String;

begin

    QRFecha1.Caption:=DatetoStr(fecha1);
    QRFecha2.Caption:=DatetoStr(fecha2);

    orden:=' ';
    usuario:=' ';


        if FormBuscarFecha.ComboOrden.Text='FACTURA' then orden:=' order by f.num_fact ';
        if FormBuscarFecha.ComboOrden.Text='NOMBRE' then orden:=' order by f.razon_fact ';
        if FormBuscarFecha.ComboOrden.Text='CODIGO' then orden:=' order by a.codigo_asoc ';
        if FormBuscarFecha.ComboOrden.Text='MONTO' then orden:=' order by f.montototal_fact ';

        if FormBuscarFecha.Radio1.Checked then usuario:=' ';
        if FormBuscarFecha.Radio2.Checked then usuario:=' and f.id_usu='+intToStr(FormBuscarFecha.ComboUsuario.KeyValue);

        if not FormBuscarFecha.CheckFechas.Checked then
        begin
            fechas:=' AND f.fecha_fact>='+quotedStr(formLogin.Fecha(fecha1))+' AND f.fecha_fact<='+quotedStr(formLogin.Fecha(fecha2))+' ';
        end
        else fechas:=' ';

        if FormBuscarFecha.comboEstado.text='TODAS' then
            estados:=' '
        else estados:=' AND f.estado_fact = '+quotedStr(FormBuscarFecha.comboEstado.text)+' ';


    SQL:='SELECT * FROM  asociado a,  lectura l,  factura f '+



         'WHERE   a.id_asoc = l.id_asoc AND l.id_lec = f.id_lec '+estados+usuario+fechas+
         ' AND a.id_asoc='+id_asoc+orden;
FormBuscarFecha.Edit1.Text:=SQL;
    Consultar(SQL);
end;

procedure TFormRepDeudasPorCobrar.ConsultaPorFecha(fecha1,fecha2:Tdate);
var
    SQL,orden,usuario:String;
begin

    QRFecha1.Caption:=DatetoStr(fecha1);
    QRFecha2.Caption:=DatetoStr(fecha2);

    orden:=' ';
    usuario:=' ';


        if FormBuscarFecha.ComboOrden.Text='FACTURA' then orden:=' order by f.num_fact ';
        if FormBuscarFecha.ComboOrden.Text='NOMBRE' then orden:=' order by f.razon_fact ';
        if FormBuscarFecha.ComboOrden.Text='CODIGO' then orden:=' order by a.codigo_asoc ';
        if FormBuscarFecha.ComboOrden.Text='MONTO' then orden:=' order by f.montototal_fact ';

        if FormBuscarFecha.Radio1.Checked then usuario:=' ';
        if FormBuscarFecha.Radio2.Checked then usuario:=' and f.id_usu='+intToStr(FormBuscarFecha.ComboUsuario.KeyValue);

    SQL:='SELECT * FROM  asociado a,  lectura l,  factura f '+
         'WHERE   a.id_asoc = l.id_asoc AND l.id_lec = f.id_lec AND f.estado_fact = '+quotedStr('CANCELADA')+usuario+' AND '+
         ' f.fecha_fact>='+quotedStr(formLogin.Fecha(fecha1))+' AND f.fecha_fact<='+quotedStr(formLogin.Fecha(fecha2))+orden;
    Consultar(SQL);
end;


procedure TFormRepDeudasPorCobrar.ConsultaPorDia(fecha1,fecha2:Tdate);
var
    SQL,orden,usuario:String;
begin
//No incluye ordenamiento ni parametros
    QRFecha1.Caption:=DatetoStr(fecha1);
    QRFecha2.Caption:=DatetoStr(fecha2);

    orden:=' ';
    usuario:=' ';

    SQL:='SELECT * FROM  asociado a,  lectura l,  factura f '+
         'WHERE   a.id_asoc = l.id_asoc AND l.id_lec = f.id_lec AND f.estado_fact = '+quotedStr('CANCELADA')+usuario+' AND '+
         ' f.fecha_fact>='+quotedStr(formLogin.Fecha(fecha1))+' AND f.fecha_fact<='+quotedStr(formLogin.Fecha(fecha2))+orden;
    Consultar(SQL);
end;


procedure TFormRepDeudasPorCobrar.Iniciar(mes,gestion:String);
var
    SQL:String;
begin
    //QRResponsable.Caption:=FormLogin.ADOUsuario.fieldbyname('nombre_usu').AsString;
    SQL:='SELECT a.codigo_asoc,a.apellidos_asoc,a.nombres_asoc,a.servicios_asoc,'+
    'concat(l.mes_lec,'+quotedStr('/')+',l.gestion_lec) as gestion,ROUND(l.consumo_lec,2) as mt3, '+
    'ROUND(f.montoparc_fact,2) as consumo,ROUND(f.totalconsumo_fact - f.montoparc_fact,2) as alcantarillado, '+
    'ROUND(0.6,2) as fecoapaq,ROUND(f.totalaportes_fact - 0.6,2) as rep_form ,ROUND(f.totalrecargos_fact,2) as multas, '+
    'ROUND(f.montototal_fact,2) total_factura,f.id_fact '+
    'FROM asociado a,lectura l,factura f '+
    'WHERE l.id_lec = f.id_lec AND a.id_asoc = l.id_asoc AND '+
    'l.mes_lec = '+quotedStr(mes)+' AND l.gestion_lec = '+quotedStr(gestion)+' AND f.estado_fact = '+quotedStr('PENDIENTE');
    Consultar(SQL);

    QuickRep1.Preview;
end;

end.
