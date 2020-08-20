unit FrmRepMovimientoDia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, ADODB, QRCtrls, EDBImage, DBCtrls, qrprntr,
  StdCtrls;

type
  TFormRepMovimientoDia = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRTitulo: TQRLabel;
    QRShape2: TQRShape;
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
    QRLabel15: TQRLabel;
    QRDesde: TQRLabel;
    QRFecha1: TQRLabel;
    QRFecha2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel21: TQRLabel;
    QRExpr8: TQRExpr;
    QRShape27: TQRShape;
    QRExpr13: TQRExpr;
    QRDBUsuario: TQRDBText;
    QRUsuario: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
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
  FormRepMovimientoDia: TFormRepMovimientoDia;

implementation

uses frmLogin, frmEmpresa, FrmBuscarFecha, FrmUsuario, frmPrincipal;


{$R *.dfm}

procedure TFormRepMovimientoDia.VistaPrevia();
begin
    QuickRep1.Preview;
end;
procedure TFormRepMovimientoDia.Imprimir();
begin
    Quickrep1.Print;
end;

procedure TFormRepMovimientoDia.Consultar(SQL:String);
begin

    try
        ADOReporte.Close;
        ADOReporte.SQL.Clear;
        ADOReporte.SQL.Add(SQL);
        ADOReporte.Open;

       if FormBuscarFecha.Radio2.Checked then
            QRUsuario.Caption :='OPERACIONES REALIZADOS POR: '+FormUsuario.ADOQuery1.fieldbyname('nombre_usu').AsString
        else QRUsuario.Caption :=' ';

    except
        Showmessage('ERROR: Ocurrio un problema al ejecutar la consulta SQL: '+SQL);
    end;

end;

procedure TFormRepMovimientoDia.ConsultaPorAsociado(fecha1,fecha2:Tdate; id_asoc:String);
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

    SQL:='SELECT * FROM ingreso_egreso '+
         'WHERE  tipo_ing='+quotedStr('INGRESO')+' AND '+
         'date(fechahora_ing)>='+quotedStr(formLogin.Fecha(fecha1))+' AND date(fechahora_ing)<='+quotedStr(formLogin.Fecha(fecha2))+
         ' and detalle_ing='+quotedStr(FormBuscarFecha.ComboCategoria.Text)+usuario+orden;
    Consultar(SQL);

end;

procedure TFormRepMovimientoDia.ConsultaPorFecha(fecha1,fecha2:Tdate);
var
    SQL1,SQL2,SQL3,union,orden,usuario:String;
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

        if FormBuscarFecha.Radio2.Checked then usuario:=' and f.id_usu='+intToStr(FormBuscarFecha.ComboUsuario.KeyValue);

    //Ingresos por cobros de consumo de agua y alcantarillado
    SQL1:='SELECT '+QuotedStr('INGRESOS (Consumo de agua/Ventas/servicios)')+' as titulo,if(sum(f.montototal_fact)>0,sum(f.montototal_fact),0) as ingreso,0 as egreso '+
         'FROM  asociado a,  lectura l,  factura f '+
         'WHERE   a.id_asoc = l.id_asoc AND l.id_lec = f.id_lec AND f.estado_fact = '+quotedStr('CANCELADA')+usuario+' AND '+
         ' f.fecha_fact>='+quotedStr(formLogin.Fecha(fecha1))+' AND f.fecha_fact<='+quotedStr(formLogin.Fecha(fecha2))+usuario;

    //Ingreso extraordinarios
    if FormBuscarFecha.Radio2.Checked then usuario:=' and id_usu='+intToStr(FormBuscarFecha.ComboUsuario.KeyValue);

    SQL2:='SELECT '+QuotedStr('INGRESOS (Recibos de cobro)')+' as titulo,if(sum(monto_ing)>0,sum(monto_ing),0) as ingreso,0 as egreso '+
          'FROM  ingreso_egreso '+
          'WHERE  tipo_ing='+quotedStr('INGRESO')+' AND '+
          ' date(fechahora_ing)>='+quotedStr(formLogin.Fecha(fecha1))+' AND date(fechahora_ing)<='+quotedStr(formLogin.Fecha(fecha2))+usuario;

    //Egresos extraordinarios
    SQL3:=' SELECT '+QuotedStr('EGRESOS (Gastos Operativos/Comisiones/Sueldos/Dep. a Banco)')+' as titulo,0 as ingreso, if(sum(monto_ing)>0,sum(monto_ing),0) as egreso '+
          ' FROM  ingreso_egreso '+
          ' WHERE  tipo_ing='+quotedStr('EGRESO')+' AND '+
          ' date(fechahora_ing)>='+quotedStr(formLogin.Fecha(fecha1))+' AND date(fechahora_ing)<='+quotedStr(formLogin.Fecha(fecha2))+usuario;

    union:='('+SQL1+') union ('+SQL2+') union ('+SQL3+')';
    //FormPrincipal.Edit1.Text:=union;
    Consultar(union);
end;


procedure TFormRepMovimientoDia.ConsultaPorDia(fecha1,fecha2:Tdate);
var
    SQL1,SQL2,SQL3,union,orden,usuario:String;
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

    //Ingresos por cobros de consumo de agua y alcantarillado
    SQL1:='SELECT '+QuotedStr('INGRESOS (Consumo de agua/Ventas/servicios)')+' as titulo,if(sum(f.montototal_fact)>0,sum(f.montototal_fact),0) as ingreso,0 as egreso '+
         'FROM  asociado a,  lectura l,  factura f '+
         'WHERE   a.id_asoc = l.id_asoc AND l.id_lec = f.id_lec AND f.estado_fact = '+quotedStr('CANCELADA')+usuario+' AND '+
         ' f.fecha_fact>='+quotedStr(formLogin.Fecha(fecha1))+' AND f.fecha_fact<='+quotedStr(formLogin.Fecha(fecha2))+orden;

    //Ingreso extraordinarios
    SQL2:='SELECT '+QuotedStr('INGRESOS (Recibos)')+' as titulo,if(sum(monto_ing)>0,sum(monto_ing),0) as ingreso,0 as egreso '+
          'FROM  ingreso_egreso '+
          'WHERE  tipo_ing='+quotedStr('INGRESO')+' AND '+
          ' date(fechahora_ing)>='+quotedStr(formLogin.Fecha(fecha1))+' AND date(fechahora_ing)<='+quotedStr(formLogin.Fecha(fecha2))+usuario+orden;

    //Egresos extraordinarios
    SQL3:=' SELECT '+QuotedStr('EGRESOS (Gastos Operativos/Comisiones/Sueldos/Dep. a Banco)')+' as titulo,0 as ingreso, if(sum(monto_ing)>0,sum(monto_ing),0) as egreso '+
          ' FROM  ingreso_egreso '+
          ' WHERE  tipo_ing='+quotedStr('EGRESO')+' AND '+
          ' date(fechahora_ing)>='+quotedStr(formLogin.Fecha(fecha1))+' AND date(fechahora_ing)<='+quotedStr(formLogin.Fecha(fecha2))+usuario+orden;

    union:='('+SQL1+') union ('+SQL2+') union ('+SQL3+')';
    //FormPrincipal.Edit1.Text:=union;
    Consultar(union);

end;


procedure TFormRepMovimientoDia.Iniciar(mes,gestion:String);
var
    SQL:String;
begin
    SQL:='select * from ingreso_egreso';
    Consultar(SQL);

    QuickRep1.Preview;
end;

end.
