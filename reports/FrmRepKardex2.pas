unit FrmRepKardex2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, ADODB, QRCtrls, EDBImage, DBCtrls, qrprntr,
  StdCtrls;

type
  TFormRepKardex2 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRTitulo: TQRLabel;
    QRShape2: TQRShape;
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
    ADOReporteid_asoc: TAutoIncField;
    ADOReporteid_emp: TIntegerField;
    ADOReporteestado: TStringField;
    ADOReportetipo_asoc: TStringField;
    ADOReporteciudad: TStringField;
    ADOReportenombres_asoc: TStringField;
    ADOReporteapellidos_asoc: TStringField;
    ADOReporteci_asoc: TStringField;
    ADOReportedireccion_asoc: TStringField;
    ADOReportefechanac_asoc: TDateField;
    ADOReportetelefono_asoc: TStringField;
    ADOReportecodigo_asoc: TStringField;
    ADOReportenit_asoc: TStringField;
    ADOReporterazon_asoc: TStringField;
    ADOReportefoto_asoc: TBlobField;
    ADOReportefechahora_asoc: TDateTimeField;
    ADOReportezona_asoc: TStringField;
    ADOReportemedidor_asoc: TStringField;
    ADOReporteservicios_asoc: TStringField;
    ADOReportecategoria_asoc: TStringField;
    ADOReporteid_lec: TAutoIncField;
    ADOReporteid_usu: TIntegerField;
    ADOReportemes_lec: TStringField;
    ADOReportegestion_lec: TStringField;
    ADOReporteanterior_lec: TFloatField;
    ADOReporteactual_lec: TFloatField;
    ADOReportefechaant_lec: TDateField;
    ADOReporteconsumo_lec: TFloatField;
    ADOReportefecha_lec: TDateField;
    ADOReportehora_lec: TTimeField;
    ADOReportetotalcons_lec: TFloatField;
    ADOReportefechahora_lec: TDateTimeField;
    ADOReportemonto_lec: TFloatField;
    ADOReporteestado_lec: TStringField;
    ADOReportetotalmultas_: TIntegerField;
    ADOReportecantfact_lec: TIntegerField;
    ADOReportemontofact_lec: TFloatField;
    ADOReporteid_fact: TAutoIncField;
    ADOReportenum_fact: TIntegerField;
    ADOReportenit_fact: TStringField;
    ADOReporterazon_fact: TStringField;
    ADOReporteorden_fact: TStringField;
    ADOReportenitemisor_fact: TStringField;
    ADOReportellave_fact: TStringField;
    ADOReportefecha_fact: TDateField;
    ADOReportehora_fact: TTimeField;
    ADOReportefechaemision_fact: TDateField;
    ADOReportemontoparc_fact: TFloatField;
    ADOReportedesc_fact: TFloatField;
    ADOReportecadenaqr_fact: TStringField;
    ADOReportecodcontrol_fact: TStringField;
    ADOReporteliteral_fact: TStringField;
    ADOReportefechahora_fact: TDateTimeField;
    ADOReportetipo_fact: TIntegerField;
    ADOReportefechavenc_fact: TDateField;
    ADOReportetotalconsumo_fact: TFloatField;
    ADOReportetotalaportes_fact: TFloatField;
    ADOReportetotalrecargos_fact: TFloatField;
    ADOReportemontototal_fact: TFloatField;
    ADOReporteestado_fact: TStringField;
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
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRLabel26: TQRLabel;
    QRExpr18: TQRExpr;
    QRLabel27: TQRLabel;
    QRExpr19: TQRExpr;
    QRLabel28: TQRLabel;
    QRExpr20: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    procedure Consultar(SQL:String);
    procedure Iniciar(mes,gestion:String);
    procedure ConsultaPorFecha(fecha1,fecha2:Tdate);
    procedure ConsultaPorDia(fecha1,fecha2:Tdate);
    procedure VistaPrevia();
    procedure Imprimir();
    procedure ConsultaPorAsociado(fecha1,fecha2:Tdate; id_asoc:String);
    procedure ConsultaPorAsociado2(id_asoc:String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRepKardex2: TFormRepKardex2;

implementation

uses frmLogin, frmEmpresa, FrmBuscarFecha, FrmUsuario;


{$R *.dfm}

procedure TFormRepKardex2.VistaPrevia();
begin
    QuickRep1.Preview;
end;
procedure TFormRepKardex2.Imprimir();
begin
    Quickrep1.Print;
end;

procedure TFormRepKardex2.Consultar(SQL:String);
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

//*************************************************************************//
procedure TFormRepKardex2.ConsultaPorAsociado(fecha1,fecha2:Tdate; id_asoc:String);
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
         ' f.fecha_fact>='+quotedStr(formLogin.Fecha(fecha1))+' AND f.fecha_fact<='+quotedStr(formLogin.Fecha(fecha2))+' AND a.id_asoc='+id_asoc+orden;
    
    Consultar(SQL);

end;

procedure TFormRepKardex2.ConsultaPorAsociado2(id_asoc:String);
var
    SQL,orden,usuario:String;
begin

    SQL:='SELECT * FROM asociado a,lectura l, factura f WHERE a.id_asoc = 200 AND a.id_asoc = l.id_asoc AND l.id_lec = f.id_lec';
    Consultar(SQL);

end;
procedure TFormRepKardex2.ConsultaPorFecha(fecha1,fecha2:Tdate);
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


procedure TFormRepKardex2.ConsultaPorDia(fecha1,fecha2:Tdate);
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


procedure TFormRepKardex2.Iniciar(mes,gestion:String);
var
    SQL:String;
begin
    //QRResponsable.Caption:=FormLogin.ADOUsuario.fieldbyname('nombre_usu').AsString;
    SQL:=' SELECT *  FROM asociado a,lectura l WHERE a.id_asoc = l.id_asoc and '+
         ' l.mes_lec = '+quotedStr(mes)+' and   l.gestion_lec = '+quotedStr(gestion)+' and a.estado = '+quotedStr('ACTIVO')+
         ' ORDER BY a.apellidos_asoc';
    Consultar(SQL);

    QuickRep1.Preview;
end;

end.
