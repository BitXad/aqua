unit FrmFechaPago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel, ComCtrls, ExtCtrls, sPanel, Buttons, sBitBtn,
  Grids, DBGrids, DB, ComObj,ADODB, OleServer, Excel2000,ShellAPI;

type
  TFormFechaPago = class(TForm)
    B1: TsBitBtn;
    B3: TsBitBtn;
    B4: TsBitBtn;
    sPanel1: TsPanel;
    selFecha1: TDateTimePicker;
    sPanel2: TsPanel;
    sLabelFX1: TsLabelFX;
    B2: TsBitBtn;
    selFecha2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    ADOExport: TADOQuery;
    DataExport: TDataSource;
    DBGExport: TDBGrid;
    R1: TRadioButton;
    R2: TRadioButton;
    R3: TRadioButton;
    ExcelApp: TExcelApplication;
    Check1: TCheckBox;
    sBitBtn1: TsBitBtn;
    Formato1: TRadioButton;
    Formato2: TRadioButton;
    CheckVentas: TCheckBox;
    CheckServicios: TCheckBox;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure B4Click(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure B3Click(Sender: TObject);
    procedure B2Click(Sender: TObject);
    procedure Consultar(SQL:String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exportarExcel();
    procedure exportarExcel2();
    procedure sBitBtn1Click(Sender: TObject);
    procedure DepurarFactura();    
  private
    { Private declarations }
  public
    { Public declarations }
    bandera:integer;
  end;

var
  FormFechaPago: TFormFechaPago;

implementation

uses frmLogin, FrmCodigoControl, ExportarExcel;

//uses FrmRepPagos, FrmRegistro, ExportarExcel, FormPrincipal, FrmAlgoritmos;

{$R *.dfm}

procedure TFormFechaPago.FormCreate(Sender: TObject);
begin
        SelFecha1.Date:=Date;
        SelFecha2.Date:=Date;

end;

procedure TFormFechaPago.B4Click(Sender: TObject);
begin
        Close;
end;

procedure TFormFechaPago.B1Click(Sender: TObject);
begin
{    if bandera=2 then showmessage('Vista previa no disponible....!')
    else
    begin
        FormRepPagos.F1.Caption:=DateToStr(selFecha1.date);
        FormRepPagos.F2.Caption:=DateToStr(selFecha2.date);
        FormRepPagos.Consultar();
        FormRepPagos.QuickRep1.Preview;
    end;
    }
end;

procedure TFormFechaPago.B3Click(Sender: TObject);
begin
{    if bandera=2 then
    begin
        showmessage('Impresión no disponible....!')
    end
    else
    begin
        FormRepPagos.Consultar();
        FormRepPagos.QuickRep1.Print;
    end;
}
end;
procedure TFormFechaPago.Consultar(SQL:String);
begin
try
        ADOExport.Close;
        ADOExport.SQL.Clear;
        ADOExport.SQL.Add(SQL);
        ADOExport.Open;
except

        Showmessage('ERROR: Al intentar ejecutar la sentencia SQL: '+SQL);
end;
end;

procedure TFormFechaPago.exportarExcel();
var Excel, Libro,rango : Variant;
var i:integer;
    j:string;
    direccion,carpeta,archivo:String;
begin
    // Crea una aplicacion Excel.
    Excel := CreateOleObject ('Excel.Application');
    // La muestra (vas a ver un Excel como si lu ubieras ejecutado)
    //Excel.Visible := True;
    // Agrega un libro.
    Excel.WorkBooks.Add (-4167);
    // Le asigna un nombre al libro
    Excel.WorkBooks[1].WorkSheets[1].Name := 'libro_ventas';
    // Hace un puntero al libro del Excel.
    Libro := Excel.WorkBooks[1].WorkSheets['libro_ventas'];
               //Fila,Columna
///    Libro.Cells[1,3]:='PLANILLA DE NOTAS';
//    Libro.Cells[1,8]:='GESTION '+formLogin.ADOGestion.FieldByName('anio_ges').AsString;

    rango := libro.Range['A1:I1']; // Asignar el rango
    rango.Font.name:='Arial';


    Libro.Cells[1,1]:='NIT';
    Libro.Cells[1,2]:='RAZON SOC.';
    Libro.Cells[1,3]:='NUM.FACT.';
    Libro.Cells[1,4]:='NUM.AUTORIZ.';
    Libro.Cells[1,5]:='FECHA VEN.';
    Libro.Cells[1,6]:='IMPORTE';
    Libro.Cells[1,7]:='ICE';
    Libro.Cells[1,8]:='EXCENTO';
    Libro.Cells[1,9]:='NETO';
    Libro.Cells[1,10]:='DEB.FISCAL';
    Libro.Cells[1,11]:='ESTADO';
    Libro.Cells[1,12]:='CODIGO CONTROL';
    Libro.Cells[1,13]:='NUM.TRANS.';

 {
        Libro.Cells [6,1] := 'Nº';
        Libro.Cells [6,2] := 'ID';
        Libro.Cells [6,3] := 'APELLIDOS';
        Libro.Cells [6,4] := 'NOMBRES';
        Libro.Cells [6,5] := ADODoc.FieldByName('calif1_mat').AsString; Libro.Cells[7,5]:=ADODoc.FieldByName('pond1_mat').AsString;
        Libro.Cells [6,6] := ADODoc.FieldByName('calif2_mat').AsString; Libro.Cells[7,6]:=ADODoc.FieldByName('pond2_mat').AsString;
        Libro.Cells [6,7] := ADODoc.FieldByName('calif3_mat').AsString; Libro.Cells[7,7]:=ADODoc.FieldByName('pond3_mat').AsString;
        Libro.Cells [6,8] := ADODoc.FieldByName('calif4_mat').AsString; Libro.Cells[7,8]:=ADODoc.FieldByName('pond4_mat').AsString;
        Libro.Cells [6,9] := ADODoc.FieldByName('calif5_mat').AsString; Libro.Cells[7,9]:=ADODoc.FieldByName('pond5_mat').AsString;
        Libro.Cells [6,10] := ADODoc.FieldByName('calif6_mat').AsString; Libro.Cells[7,10]:=ADODoc.FieldByName('pond6_mat').AsString;
        Libro.Cells [6,11] := ADODoc.FieldByName('calif7_mat').AsString; Libro.Cells[7,11]:=ADODoc.FieldByName('pond7_mat').AsString;
        Libro.Cells [6,12] := 'NOTA FINAL '; Libro.Cells[7,12]:=ADODoc.FieldByName('notamax_mat').AsString;
        Libro.Cells [6,13] := 'SEXO'; Libro.Cells[7,13]:='F-M';
        Libro.Cells [6,14] := 'ESTADO'; Libro.Cells[7,14]:='A-R';

    rango := libro.Range['A2:A6']; // Asignar el rango
    rango.Font.name:='Arial Black';
    rango.Font.size:='8';

    rango := libro.Range['A6:N7']; // Asignar el rango
    rango.Font.name:='Arial Black';
    rango.Font.size:='8';

    rango := libro.Range['E3:E4']; // Asignar el rango
    rango.Font.name:='Arial Black';
    rango.Font.size:='8';

    rango := libro.Range['H2:H5']; // Asignar el rango
    rango.Font.name:='Arial Black';
    rango.Font.size:='8';

//    rango := libro.Range['A2:H5'];
//    rango.locked:=true;

}
      for i:=1 to 14 do
      begin
            if i<=2 then Libro.Cells[1,i].ColumnWidth := 10;
      end;

{    //Query.SQL.Add (‘Consulta’);
    //ADOEstud.Open;
    ADOEstud.First;
    ADONota.First;
    i:=7;
}
i:=1;
    while not ADOExport.EOF do
    begin
        i:=i+1;
        J:=intToStr(i);
        Libro.Cells [i,1] := ADOExport.FieldByName ('nit').AsString;
        Libro.Cells [i,2] := ADOExport.FieldByName ('razon_soc').AsString;
        Libro.Cells [i,3] := ADOExport.FieldByName ('num_fact').AsString;
        Libro.Cells [i,4] := ADOExport.FieldByName ('num_autoriz').AsString;
//        showmessage(FormatDateTime('dd-mm-yyyy',ADOExport.FieldByName ('fecha_ven').AsDateTime));
        Libro.Cells [i,5] := chr(39)+FormatDateTime('dd/mm/yyyy',ADOExport.FieldByName ('fecha_ven').AsDateTime);
        Libro.Cells [i,6] := ADOExport.FieldByName ('importe').AsString;
        Libro.Cells [i,7] := ADOExport.FieldByName ('ice').AsString;
        Libro.Cells [i,8] := ADOExport.FieldByName ('excento').AsString;
        Libro.Cells [i,9] := ADOExport.FieldByName ('neto').AsString;
        Libro.Cells [i,10] := ADOExport.FieldByName ('debito_fiscal').AsString;
        Libro.Cells [i,11] := ADOExport.FieldByName ('estado_fact').AsString;
        Libro.Cells [i,12] := ADOExport.FieldByName ('codigo_control').AsString;
        Libro.Cells [i,13] := ADOExport.FieldByName ('n_trans').AsString;
        ADOExport.Next;

    end;
{    Libro.Cells [i+2,1] := 'NOTA.- Llenar el campo SEXO con (F - Femenino), (M - Masculino), y el ESTADO con (R - Retirado), (A - Activo).';
    Excel.Visible := True;
    //rangoExcel:=aplicacionExcel.Range['A1','E'+inttostr(row-1)];

   //Protegemos la hoja de calculo dejando las celdas importantes libres
    if CheckProtect.Checked then
    begin
        Libro.Protect(EmptyParam, True, True, True, True, 0);
        Libro.Range['E8:N'+inttostr(i)].Locked :=  False;
        Libro.Range['I4:I4'].Locked :=  False;
    end;
  }
//    if formGenerarPlan.ComboBimX.Text='INSTANCIA' then BimestreActual:='5';

    archivo:='c:\libro_ventas'+formatdatetime('ddmmyyyy',date)+formatdatetime('HHmmss',time)+'.xls';


{    if FileExists(archivo) then
    archivo:=direccion+carpeta+'\'+ADODocente.fieldbyname('nomcompleto').asString+'_'+
             ADODOc.fieldbyname('cod_mat').asString+'_'+ADODOc.fieldbyname('nom_car').asString+'_'+
             DBETurno.Text+'_Bim'+BimestreActual+'_(copia)'+formatdatetime('HHnnss',time)+'.xls';
}

    Libro.saveAs(archivo);

    //XApp.WorkBooks.Close;
///    Excel.WorkBooks.Close;
    Excel.WorkBooks.Close;

    showmessage('La EXPORTACÍON fué realizada correctamente. Archivo:'+archivo);
     ShellExecute(Handle,nil,PChar(archivo),'','',SW_SHOW);


end;


procedure TFormFechaPago.exportarExcel2();
var Excel, Libro,rango : Variant;
var i:integer;
    j:string;
    direccion,carpeta,archivo:String;
begin
    // Crea una aplicacion Excel.
    Excel := CreateOleObject ('Excel.Application');
    // La muestra (vas a ver un Excel como si lu ubieras ejecutado)
    //Excel.Visible := True;
    // Agrega un libro.
    Excel.WorkBooks.Add (-4167);
    // Le asigna un nombre al libro
    Excel.WorkBooks[1].WorkSheets[1].Name := 'libro_ventas';
    // Hace un puntero al libro del Excel.
    Libro := Excel.WorkBooks[1].WorkSheets['libro_ventas'];
               //Fila,Columna
///    Libro.Cells[1,3]:='PLANILLA DE NOTAS';
//    Libro.Cells[1,8]:='GESTION '+formLogin.ADOGestion.FieldByName('anio_ges').AsString;

    rango := libro.Range['A1:I1']; // Asignar el rango
    rango.Font.name:='Arial';

    Libro.Cells[1,1]:='ESPECIFICACION';
    Libro.Cells[1,2]:='N°';
    Libro.Cells[1,3]:='FECHA DE LA FACTURA';
    Libro.Cells[1,4]:='N° DE LA FACTURA';
    Libro.Cells[1,5]:='N° DE AUTORIZACION';
    Libro.Cells[1,6]:='ESTADO';
    Libro.Cells[1,7]:='NIT/CI CLIENTE';
    Libro.Cells[1,8]:='NOMBRE O RAZON SOCIAL';
    Libro.Cells[1,9]:='IMPORTE TOTAL DE LA VENTA';
    Libro.Cells[1,10]:='IMPORTE ICE/IEHD/TASAS';
    Libro.Cells[1,11]:='EXPORTACIONES Y OPERACIONES EXENTAS';
    Libro.Cells[1,12]:='VENTAS GRAVADAS A TASA CERO';
    Libro.Cells[1,13]:='SUBTOTAL';
    Libro.Cells[1,14]:='DESCUENTOS BONIFICACIONES Y REBAJAS OTORGADAS';
    Libro.Cells[1,15]:='IMPORTE BASE PARA DEBITO FISCAL';
    Libro.Cells[1,16]:='DEBITO FISCAL';
    Libro.Cells[1,17]:='CODIGO DE CONTROL';
    Libro.Cells[1,18]:='TRANSACCION';


      for i:=1 to 14 do
      begin
            if i<=2 then Libro.Cells[1,i].ColumnWidth := 10;
      end;

{    //Query.SQL.Add (‘Consulta’);
    //ADOEstud.Open;
    ADOEstud.First;
    ADONota.First;
    i:=7;
}

    i:=1;
    while not ADOExport.EOF do
    begin
        i:=i+1;
        J:=intToStr(i);

{
ESPECIFICACION
N°
FECHA DE LA FACTURA
N° DE LA FACTURA
N° DE AUTORIZACION
ESTADO
NIT/CI CLIENTE
NOMBRE O RAZON SOCIAL
IMPORTE TOTAL DE LA VENTA
IMPORTE ICE/IEHD/TASAS 
EXPORTACIONES Y OPERACIONES EXENTAS
VENTAS GRAVADAS A TASA CERO
SUBTOTAL
DESCUENTOS BONIFICACIONES Y REBAJAS OTORGADAS
IMPORTE BASEPARA DEBITO FISCAL
DEBITO FISCAL
CODIGO DE CONTROL}

        Libro.Cells [i,1] := '0'; //'ESPECIFICACION';
        Libro.Cells [i,2] := '0'; //'N°';
        Libro.Cells [i,3] := chr(39)+FormatDateTime('dd/mm/yyyy',ADOExport.FieldByName ('fecha_ven').AsDateTime); //'FECHA DE LA FACTURA'
        Libro.Cells [i,4] := ADOExport.FieldByName('num_fact').AsString; //N° DE LA FACTURA
        Libro.Cells [i,5] := ADOExport.FieldByName('num_autoriz').AsString; //'N° DE AUTORIZACION'
        Libro.Cells [i,6] := ADOExport.FieldByName('estado_fact').AsString; //'ESTADO'
        Libro.Cells [i,7] := ADOExport.FieldByName('nit').AsString; //'NIT/CI CLIENTE'
        Libro.Cells [i,8] := ADOExport.FieldByName('razon_soc').AsString; //'NOMBRE O RAZON SOCIAL'
        Libro.Cells [i,9] := ADOExport.FieldByName('importe').AsString; //'IMPORTE TOTAL DE LA VENTA';
        Libro.Cells [i,10] := ADOExport.FieldByName('ice').AsString+ADOExport.FieldByName('excento').AsString; //'IMPORTE ICE/IEHD/TASAS';
        Libro.Cells [i,11] := '0'; //ADOExport.FieldByName('excento').AsString; //'EXPORTACIONES Y OPERACIONES EXENTAS';
        Libro.Cells [i,12] := '0'; //'VENTAS GRAVADAS A TASA CERO';
        Libro.Cells [i,13] := ADOExport.FieldByName('subtotal').AsString; //'SUBTOTAL';
        Libro.Cells [i,14] := '0'; //'DESCUENTOS BONIFICACIONES Y REBAJAS OTORGADAS';
        Libro.Cells [i,15] := ADOExport.FieldByName('subtotal').AsString; //'IMPORTE BASE PARA DEBITO FISCAL';
        Libro.Cells [i,16] := ADOExport.FieldByName('debito_fiscal').AsString; //'DEBITO FISCAL';
        Libro.Cells [i,17] := ADOExport.FieldByName('codigo_control').AsString; //'CODIGO DE CONTROL';
        Libro.Cells [i,18] := ADOExport.FieldByName('n_trans').AsString;
        ADOExport.Next;


    end;
{    Libro.Cells [i+2,1] := 'NOTA.- Llenar el campo SEXO con (F - Femenino), (M - Masculino), y el ESTADO con (R - Retirado), (A - Activo).';
    Excel.Visible := True;
    //rangoExcel:=aplicacionExcel.Range['A1','E'+inttostr(row-1)];

   //Protegemos la hoja de calculo dejando las celdas importantes libres
    if CheckProtect.Checked then
    begin
        Libro.Protect(EmptyParam, True, True, True, True, 0);
        Libro.Range['E8:N'+inttostr(i)].Locked :=  False;
        Libro.Range['I4:I4'].Locked :=  False;
    end;
  }
//    if formGenerarPlan.ComboBimX.Text='INSTANCIA' then BimestreActual:='5';

    archivo:='c:\libro_ventas'+formatdatetime('ddmmyyyy',date)+formatdatetime('HHmmss',time)+'.xls';


{    if FileExists(archivo) then
    archivo:=direccion+carpeta+'\'+ADODocente.fieldbyname('nomcompleto').asString+'_'+
             ADODOc.fieldbyname('cod_mat').asString+'_'+ADODOc.fieldbyname('nom_car').asString+'_'+
             DBETurno.Text+'_Bim'+BimestreActual+'_(copia)'+formatdatetime('HHnnss',time)+'.xls';
}

    Libro.saveAs(archivo);

    //XApp.WorkBooks.Close;
///    Excel.WorkBooks.Close;
    Excel.WorkBooks.Close;

    showmessage('La EXPORTACÍON fué realizada correctamente. Archivo:'+archivo);
     ShellExecute(Handle,nil,PChar(archivo),'','',SW_SHOW);


end;


procedure TFormFechaPago.B2Click(Sender: TObject);
var
    sql,f1,f2,condicion:string;
begin
        f1:=QuotedStr(formLogin.Fecha(selFecha1.Date));
        f2:=QuotedStr(formLogin.Fecha(selFecha2.Date));

//Exportar libro de compras
    if bandera=1 then
    begin

        sql:='select tipo_fact as TIPO, nit as NIT, num_fact as FACTURA,num_poliza as POLIZA,num_autorizacion as AUTORIZACION,fecha_fact FECHA,imp_total as IMPORTE, '+
             'imp_ice as ICE,imp_excento as EXCENTO,imp_neto as NETO,cred_fiscal as CREDITOFISCAL,cod_control as COD_CONTROL '+
             'from libro_compras '+
             'WHERE fecha_fact>='+f1+' AND fecha_fact<='+f2+
             ' ORDER BY fecha_fact ASC';
       consultar(sql);
       formexportar.exportarGridExcel(DBGExport);
    end;

//Exportar libro de ventas
    if bandera=2 then
    begin

        if R1.Checked then condicion:=' ';
        if R2.Checked then condicion:=' AND f.estado_fact<>'+quotedStr('ANULADO')+' ';
        if R3.Checked then condicion:=' AND f.estado_fact='+quotedStr('ANULADO')+' ';

        //Ventas
        if CheckVentas.Checked then
        begin

            sql:='SELECT f.nit_fact AS nit, f.razon_fact AS razon_soc, f.num_fact, f.orden_fact AS num_autoriz,'+
             'f.fecha_fact as fecha_ven, f.montototal_fact AS importe, f.ice_fact AS ice, f.exento_fact AS excento,(f.montototal_fact-f.exento_fact-f.ice_fact) AS subtotal, f.exento_fact AS excento,(f.montototal_fact-f.exento_fact-f.ice_fact) AS neto,'+
             '(f.montototal_fact-f.exento_fact-f.ice_fact) * 0.13 AS debito_fiscal, if(f.estado_fact = '+quotedstr('CANCELADA')+', '+quotedstr('V')+', '+quotedstr('A')+') AS estado_fact, '+
             'f.codcontrol_fact as codigo_control, f.id_lec as n_trans FROM factura f '+
             'WHERE f.fecha_fact>='+f1+' AND f.fecha_fact<='+f2+
             ' AND f.tipo_fact=1'+condicion+
             ' ORDER BY f.num_fact ASC';
            consultar(sql);
            //formexportar.exportarGridExcel(DBGExport);

            if formato1.Checked then
            begin
                exportarExcel2; //Formato Fasilito
            end;

            if formato2.Checked then
            begin
                exportarExcel; //Formato DaVincci
            end;
        end;

        //Servicios
        if CheckServicios.Checked then
        begin


//nitemisor_fact	llave_fact	fecha_fact	hora_fact	fechaemision_fact	montoparc_fact	desc_fact	cadenaqr_fact	codcontrol_fact	literal_fact	fechahora_fact	tipo_fact	fechavenc_fact	totalconsumo_fact	totalaportes_fact	totalrecargos_fact	montototal_fact	estado_fact	id_usu	id_serv

            sql:='SELECT f.nit_fact AS nit, f.razon_fact AS razon_soc, f.num_fact, f.orden_fact AS num_autoriz,'+
             'f.fecha_fact as fecha_ven, f.montototal_fact AS importe, 0 AS ice, 0 AS excento, f.montototal_fact AS neto,'+
             'f.montototal_fact * 0.13 AS debito_fiscal, if(f.estado_fact = '+quotedstr('N')+', '+quotedstr('A')+', '+quotedstr('V')+') AS estado_fact, '+
             'f.codcontrol_fact as codigo_control, f.id_serv as n_trans FROM factura2 f '+
             'WHERE  '+
             ' f.fecha_fact>='+f1+' AND f.fecha_fact<='+f2+
             ' AND f.tipo_fact=1'+condicion+
             ' ORDER BY f.id_fact ASC';
             //showmessage(sql);
             edit1.Text:=sql;
            consultar(sql);
            //formexportar.exportarGridExcel(DBGExport);

            if formato1.Checked then
            begin
                exportarExcel2; //Formato Fasilito
            end;

            if formato2.Checked then
            begin
                exportarExcel; //Formato DaVincci
            end;
        end;


    end;


end;

procedure TFormFechaPago.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    formfechapago.R1.Visible:=false;
    formfechapago.R2.Visible:=false;
    formfechapago.R3.Visible:=false;

end;

procedure TFormFEchaPago.DepurarFactura();
var
    i,fin:integer;
    condicion, codigocontrol, sql: String;
    id_fact,id_talon,num_fact,tipo_fact,codcontrol_fact,est_fact,numorden_fact:String;
    fechalim_fact,codigoqr_fact,llave_fact,nit_fact,razon_fact:String;
    numfact,fecha,monto,llave,autoriz,coma:String;
    f1,f2,estado,nit_correcto,razon_correcta,codigo_prueba:String;
    ban:integer;
begin
{

        f1:=quotedStr(FormLogin.Fecha(selFecha1.Date));
        f2:=quotedStr(FormLogin.Fecha(selFecha2.Date));

            if R1.Checked then condicion:=' ';
            if R2.Checked then condicion:=' AND v.tipo_ven<>'+quotedStr('ANULADO')+' ';
            if R3.Checked then condicion:=' AND v.tipo_ven='+quotedStr('ANULADO')+' ';

        coma:=',';
        sql:='SELECT f.id_talon,f.tipo_fact,f.fechalim_fact,f.est_fact,f.codigoqr_fact,f.id_fact, f.nit_fact AS nit, f.razon_fact AS razon_soc, f.num_fact, f.numorden_fact AS num_autoriz,'+
             'v.fecha_ven, (v.total_ven - v.desc_ven) AS importe, 0 AS ice, 0 AS excento,(v.total_ven - v.desc_ven) AS neto,'+
             '(v.total_ven - v.desc_ven) * 0.13 AS debito_fiscal, if(f.est_fact = '+quotedstr('N')+', '+quotedstr('A')+', '+quotedstr('V')+') AS estado_fact, '+
             'f.codcontrol_fact as codigo_control, v.id_ven as n_trans, f.llave_fact FROM cliente c, factura f, talonario t, venta v '+
             'WHERE v.id_clie = c.id_clie AND v.id_fact = f.id_fact AND f.id_talon = t.id_talon AND '+
             'v.fecha_ven>='+f1+' AND v.fecha_ven<='+f2+
             ' AND f.`tipo_fact`=1'+condicion+
             ' ORDER BY v.id_ven ASC';
            consultar(sql);

            if not ADOExport.IsEmpty then
            begin

                FormLogin.Ejecutarx('truncate depurar_factura');

                fin:=ADOExport.RecordCount;
                ADOExport.First;

                for i:=1 to fin do
                begin

                    numfact:=ADOExport.fieldbyname('num_fact').AsString;

                    if ADOExport.fieldbyname('nit').AsString<>'-' then
                        nit_fact:=ADOExport.fieldbyname('nit').AsString
                    else
                        nit_fact:='0';

                    fecha:=formatdatetime('yyyymmdd',ADOExport.fieldbyname('fecha_ven').Value);
                    monto:=ADOExport.fieldbyname('neto').AsString;
                    llave:=ADOExport.fieldbyname('llave_fact').AsString;
                    autoriz:=ADOExport.fieldbyname('num_autoriz').AsString;


                    //showmessage(numfact+coma+nit_fact+coma+fecha+coma+monto+coma+llave+coma+autoriz);
                    codigocontrol :=FormCodigoControl.CodigodeControl(numfact,nit_fact,fecha,monto,llave,autoriz);

                    //showmessage(codigocontrol);


                    if (ADOExport.fieldbyname('codigo_control').AsString = codigocontrol) then
                        estado:=quotedStr('CORRECTA')
                    else
                        estado:=quotedStr('INCORRECTA');


                    nit_correcto:=ADOExport.fieldbyname('nit').AsString;
                    razon_correcta:=ADOExport.fieldbyname('razon_soc').AsString;
//Buscar NIT correcto
                if estado=quotedStr('INCORRECTA') then
                begin
                    //showmessage('Ingresando Area1');
                    if Check1.Checked then
                    begin

                        SQL:='select distinct(nit_clie),nom_clie from cliente';
                        FormLogin.Consultar2(SQL);

                        if not FormRegistro.ADOQuery1.IsEmpty then
                        begin

                            ban:=0;
                            FormRegistro.ADOQuery1.First;
                            //showmessage('ingresando area 2');

                            while(ban<>1) and (not FormRegistro.ADOQuery1.Eof) do
                            begin
                              //  showmessage('ingresando area 3');
                                nit_correcto:=FormRegistro.ADOQuery1.fieldbyname('nit_clie').AsString;
                                razon_correcta:=FormRegistro.ADOQuery1.fieldbyname('nom_clie').AsString;
                                //showmessage(nit_correcto+','+razon_correcta);

                                //showmessage(numfact+coma+nit_correcto+coma+fecha+coma+monto+coma+llave+coma+autoriz);
                                codigo_prueba := FormCodigoControl.CodigodeControl(numfact,nit_correcto,fecha,monto,llave,autoriz);

                                if (ADOExport.fieldbyname('codigo_control').AsString = codigo_prueba) then
                                        ban:=1
                                else
                                    estado:=quotedStr('INCORRECTA');

                                FormRegistro.ADOQuery1.Next;
                            end;

                        end;

                    end;

                end;//fin estado=incorrecta


                    id_fact := ADOExport.fieldbyname('id_fact').AsString;
                    id_talon := ADOExport.fieldbyname('id_talon').AsString;

                    num_fact := ADOExport.fieldbyname('num_fact').AsString;
                    tipo_fact := ADOExport.fieldbyname('tipo_fact').AsString;
                    codcontrol_fact := quotedStr(ADOExport.fieldbyname('codigo_control').AsString);
                    est_fact := quotedStr(ADOExport.fieldbyname('est_fact').AsString);
                    numorden_fact := quotedStr(ADOExport.fieldbyname('num_autoriz').AsString);
                    fechalim_fact := quotedStr(formatdatetime('yyyy-mm-dd',ADOExport.fieldbyname('fechalim_fact').AsDateTime));
                    codigoqr_fact := quotedStr(ADOExport.fieldbyname('codigoqr_fact').AsString);
                    llave_fact := quotedStr(ADOExport.fieldbyname('llave_fact').AsString);

                    razon_fact := quotedStr(ADOExport.fieldbyname('razon_soc').AsString);

                    SQL:='insert into depurar_factura(id_fact,id_talon,num_fact,tipo_fact,codcontrol_fact,est_fact,numorden_fact,fechalim_fact,codigoqr_fact,llave_fact,nit_fact,razon_fact,estado,nit_correcto, razon_correcta) values('+
                         id_fact+coma+id_talon+coma+num_fact+coma+tipo_fact+coma+codcontrol_fact+coma+est_fact+coma+numorden_fact+coma+fechalim_fact+coma+codigoqr_fact+coma+llave_fact+coma+nit_fact+coma+razon_fact+coma+estado+coma+quotedStr(nit_correcto)+coma+quotedStr(razon_correcta)+')';
//                    showmessage(sql);
                   formRegistro.Ejecutarx(SQL);

                    ADOExport.Next;


                end; //end for
                showmessage('Proceso realizado con éxito...!');
            end; }
end;

procedure TFormFechaPago.sBitBtn1Click(Sender: TObject);
begin
    DepurarFactura();
end;

end.

