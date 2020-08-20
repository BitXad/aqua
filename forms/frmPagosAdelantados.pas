unit frmPagosAdelantados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, GraphicEx, ExtCtrls, sBitBtn, sLabel, StdCtrls,
  Buttons, Mask, sPanel, Grids, DBGrids, DB, ADODB, sCheckBox, acPNG;

type
  TFormPagosAdelantados = class(TForm)
    PanelGeneral: TPanel;
    Panel5: TPanel;
    sLabelFX4: TsLabelFX;
    PanelDatosPers: TPanel;
    PanelCampo88: TsPanel;
    Shape15: TShape;
    Label17: TLabel;
    DBEdit1: TDBEdit;
    PanelCampo8: TsPanel;
    Shape5: TShape;
    Label3: TLabel;
    direccion_asoc1: TDBEdit;
    PanelCampo5: TsPanel;
    Shape13: TShape;
    Label12: TLabel;
    ci_asoc1: TDBEdit;
    PanelCampo4: TsPanel;
    Shape4: TShape;
    Label2: TLabel;
    apellidos_asoc1: TDBEdit;
    PanelCampo3: TsPanel;
    Shape3: TShape;
    Label20: TLabel;
    nombres_asoc1: TDBEdit;
    PanelCampo2: TsPanel;
    Shape1: TShape;
    Label21: TLabel;
    id_asoc1: TDBEdit;
    PanelCampo1: TsPanel;
    Shape8: TShape;
    Label7: TLabel;
    codigo_asoc1: TDBEdit;
    sBitCodigo: TsBitBtn;
    PanelFoto: TsPanel;
    Image1: TImage;
    BFoto1: TsBitBtn;
    BFoto2: TsBitBtn;
    DBImage1: TDBImage;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    sPanel3: TsPanel;
    Shape14: TShape;
    Label16: TLabel;
    medidor_asoc1: TDBEdit;
    sPanel4: TsPanel;
    Shape16: TShape;
    Label18: TLabel;
    Servicioss1: TDBEdit;
    PanelCampo12: TsPanel;
    Shape11: TShape;
    Label10: TLabel;
    Tipo_asoc1: TDBEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    ADOMultas: TADOQuery;
    DataMultas: TDataSource;
    ADOMultasMULTA: TStringField;
    ADOMultasmotivo: TStringField;
    ADOMultasdetalle: TStringField;
    ADOMultasmonto: TFloatField;
    ADOMultasmes: TStringField;
    ADOMultasgestion: TStringField;
    ADOMultastipo: TStringField;
    Panel6: TPanel;
    ADOSuma: TADOQuery;
    DataSuma: TDataSource;
    ADOSumamonto_total: TFloatField;
    Panel4: TPanel;
    sPanel12: TsPanel;
    Shape20: TShape;
    Label15: TLabel;
    totalcons_Bs1: TEdit;
    sPanel13: TsPanel;
    Shape21: TShape;
    Label19: TLabel;
    sPanel14: TsPanel;
    Shape22: TShape;
    Label22: TLabel;
    cant_fact1: TEdit;
    monto_fact1: TEdit;
    sPanel2: TsPanel;
    Shape2: TShape;
    Label1: TLabel;
    DBEdit5: TDBEdit;
    Ltitulo: TsLabelFX;
    BitGuardar: TBitBtn;
    BitSalir: TBitBtn;
    CheckImprimir: TsCheckBox;
    Parametros: TGroupBox;
    sLabelFX7: TsLabelFX;
    Enero: TCheckBox;
    Febrero: TCheckBox;
    Marzo: TCheckBox;
    Abril: TCheckBox;
    Mayo: TCheckBox;
    Junio: TCheckBox;
    Julio: TCheckBox;
    Agosto: TCheckBox;
    Septiembre: TCheckBox;
    Octubre: TCheckBox;
    Noviembre: TCheckBox;
    Diciembre: TCheckBox;
    Canio: TComboBox;
    sPanel11: TsPanel;
    Shape19: TShape;
    Label14: TLabel;
    sPanel10: TsPanel;
    Shape18: TShape;
    Label13: TLabel;
    Lect_act1: TEdit;
    EEnero: TEdit;
    EFebrero: TEdit;
    EMarzo: TEdit;
    EAbril: TEdit;
    EMayo: TEdit;
    EJunio: TEdit;
    EJulio: TEdit;
    EAgosto: TEdit;
    ESeptiembre: TEdit;
    EOctubre: TEdit;
    ENoviembre: TEdit;
    EDiciembre: TEdit;
    Panel1: TPanel;
    Panel8: TPanel;
    sPanel9: TsPanel;
    Shape17: TShape;
    Label11: TLabel;
    totalcons_mts1: TEdit;
    sPanel5: TsPanel;
    Shape6: TShape;
    MontoMulta: TEdit;
    DetalleMulta: TEdit;
    Multas: TCheckBox;
    sPanel6: TsPanel;
    sPanel1: TsPanel;
    Total_Bs1: TEdit;
    Panel7: TPanel;
    sLabelFX2: TsLabelFX;
    Monto_lectura: TEdit;
    ADOLectura: TADOQuery;
    DataLectura: TDataSource;
    lect_ant1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    FactResumida: TRadioButton;
    FactDetallada: TRadioButton;
    Panel9: TPanel;
    sLabelFX1: TsLabelFX;
    multas_Bs1: TEdit;
    CheckFacturar: TsCheckBox;
    servicios_asoc1: TDBLookupComboBox;
    CheckExento: TCheckBox;
    CheckCopia: TsCheckBox;
    procedure BitSalirClick(Sender: TObject);
    procedure Iniciar(mes,gestion,asociado:string);

    procedure Lect_act1KeyPress(Sender: TObject; var Key: Char);
    procedure BitGuardarClick(Sender: TObject);
    procedure Guardarfactura();
    function DiasMes(fecha: TdateTime): integer;
    procedure EneroClick(Sender: TObject);
    procedure FebreroClick(Sender: TObject);
    procedure MarzoClick(Sender: TObject);
    procedure AbrilClick(Sender: TObject);
    procedure MayoClick(Sender: TObject);
    procedure JunioClick(Sender: TObject);
    procedure JulioClick(Sender: TObject);
    procedure AgostoClick(Sender: TObject);
    procedure SeptiembreClick(Sender: TObject);
    procedure OctubreClick(Sender: TObject);
    procedure NoviembreClick(Sender: TObject);
    procedure DiciembreClick(Sender: TObject);
    procedure MostrarUltimaLectura(asociado:String);
    procedure Calcular();
    procedure MultasClick(Sender: TObject);
    procedure EEneroKeyPress(Sender: TObject; var Key: Char);
    procedure EFebreroKeyPress(Sender: TObject; var Key: Char);
    procedure MontoMultaKeyPress(Sender: TObject; var Key: Char);
    procedure DetalleMultaKeyPress(Sender: TObject; var Key: Char);
    procedure RegistrarLectura(mes:String);
    procedure RegistrarDetalleFactura(detalle,id_lec,cant,p_unit,exento_detfact:String);
    procedure LimpiarDatos();
    procedure MontoMultaExit(Sender: TObject);
    procedure DetalleMultaExit(Sender: TObject);

  private
    { Private declarations }
    mes1,gestion1,asociado1:String;
    BanderaDeuda:Integer;
    numeromes:integer;
  public
    { Public declarations }
  end;

var
  FormPagosAdelantados: TFormPagosAdelantados;

implementation

uses frmLecturas, frmLogin, FrmRepLect2, numeroaletras, FrmRepLect1,
  frmCobrarFactura, FrmDosificacion, frmEmpresa, FrmCodigoControl,
  FrmRepFact2, FrmRepFact1;

{$R *.dfm}

procedure TFormPagosAdelantados.BitSalirClick(Sender: TObject);
begin
    Close;
end;

function TFormPagosAdelantados.DiasMes(fecha: TdateTime): integer;
var
     anno, mes, dia: Word;
begin
     DecodeDate( fecha, anno, mes, dia );
       case mes of
       2:  if IsLeapYear(anno) then Result:=29 else Result:=28;
       1,3,5,7,8,10,12: Result:=31;
       4,6,9,11:        Result:=30;
    end;
end;

procedure TFormPagosAdelantados.Calcular();
var
    SQL:String;
    consumo:Double;
begin
    consumo:=0;
    if Enero.Checked then consumo:=consumo+StrtoFloat(EEnero.Text);
    if Febrero.Checked then consumo:=consumo+StrtoFloat(EFebrero.Text);
    if Marzo.Checked then consumo:=consumo+StrtoFloat(Emarzo.Text);
    if Abril.Checked then consumo:=consumo+StrtoFloat(Eabril.Text);
    if Mayo.Checked then consumo:=consumo+StrtoFloat(Emayo.Text);
    if Junio.Checked then consumo:=consumo+StrtoFloat(Ejunio.Text);
    if Julio.Checked then consumo:=consumo+StrtoFloat(EJulio.Text);
    if Agosto.Checked then consumo:=consumo+StrtoFloat(EAgosto.Text);
    if Septiembre.Checked then consumo:=consumo+StrtoFloat(ESeptiembre.Text);
    if Octubre.Checked then consumo:=consumo+StrtoFloat(Eoctubre.Text);
    if Noviembre.Checked then consumo:=consumo+StrtoFloat(Enoviembre.Text);
    if Diciembre.Checked then consumo:=consumo+StrtoFloat(EDiciembre.Text);

    totalcons_Bs1.Text:=Floattostr(consumo);

    if Multas.Checked then Multas_Bs1.Text:=MontoMulta.Text;

    Total_Bs1.Text:=FormatFloat('#,#0.00',StrtoFloat(totalcons_Bs1.Text) + StrtoFloat(multas_Bs1.Text));

end;

procedure TFormPagosAdelantados.MostrarUltimaLectura(asociado:String);
var
    SQL:String;
begin

try
    //Mostrar la ultima factura
    SQL:='select * from lectura where id_asoc='+asociado+' order by id_lec desc';
     ADOLectura.Close;
     ADOLectura.SQL.Clear;
     ADOLectura.SQL.Add(SQL);
     ADOLectura.Open;
except
    showmessage('ERROR: Ocurrio un error al ejecutar la sentencia SQL '+SQL);
end;


//*********************************************************
// Buscar facturas Adeudadas
try
    SQL:='select if(sum(f.montototal_fact)>0,sum(f.montototal_fact),0) as sumafact, if(count(*)>0,count(*),0) as cantfact '+
         'from factura f, lectura l where f.estado_fact='+quotedStr('PENDIENTE')+' and f.id_lec=l.id_lec and l.id_asoc = '+asociado;
    FormLogin.Consultarx(SQL);
    BanderaDeuda:=0;

    if not formLogin.ADOX.IsEmpty then
    begin
        cant_fact1.Text:=FormLogin.ADOX.fieldbyname('cantfact').AsString;
        monto_fact1.Text:=formatFloat('#.00',FormLogin.ADOX.fieldbyname('sumafact').Value);

    end
    else
    begin
        cant_fact1.Text:='0';
        monto_fact1.Text:='0.00';
    end;

    if FormLogin.ADOX.FieldByName('sumafact').Value>0 then
    begin
        BanderaDeuda:=1;
        Showmessage('ADVERTENCIA: El usuario tiene facturas ADEUDADAS, estas debe ser CANCELADAS antes de realizar algún pago anticipado...!');
    end
    else BanderaDeuda:=0;

except
    showmessage('ERROR: Ocurrio un error al ejecutar la sentencia SQL '+SQL);
end;

{
//*********************************************************
//  CalcualrCuenta
try
    consumo:=FloatToStr(StrToFloat(lectura) - FormLogin.ADOX.fieldbyname('actual_lec').value);
    Consumo_mt1.Text:=consumo;
    SQL:='select * from  tarifa t where t.desde >='+consumo+' and t.hasta<='+consumo+' and '+
         't.tipo= (select a.tipo_asoc from asociado a where a.id_asoc='+asociado+')';
    FormLogin.Consultarx(SQL);

    if not formLogin.ADOX.IsEmpty then
    begin
        Consumo_Bs1.Text:=formatFloat('#.00',FormLogin.ADOX.fieldbyname('costo_agua').Value);
    end
    else
    begin
        Consumo_Bs1.Text:='0.00';

    end;

except
    showmessage('ERROR: Ocurrio un error al ejecutar la sentencia SQL '+SQL2);
end;

    Total_Bs1.Text:=FormatFloat('#.00',Strtofloat(Consumo_bs1.text)+Strtofloat(Multas_bs1.text));
}

end;

procedure TFormPagosAdelantados.Iniciar(mes,gestion,asociado:string);
begin
    mes1:=mes;
    gestion1:=FormatDateTime('yyyy',date);
    canio.Text:=FormatDateTime('yyyy',date);
    asociado1:=asociado;
    ///MostrarMultas(mes1,gestion1,asociado1,'0');


    show;
    MostrarUltimaLectura(asociado);
    numeromes:=0;
    Lect_Act1.Text:='0';
    Lect_act1.SelectAll;
    Lect_act1.SetFocus;

end;



procedure TFormPagosAdelantados.Lect_act1KeyPress(Sender: TObject;
  var Key: Char);
var
    SQL:String;
    
begin

    if key=#13 then
    begin
        //if StrtoFloat(Lect_act1.Text)>= StrtoFloat(lect_ant1.Text) then
        //begin

            totalcons_mts1.Text := FloatToStr(Strtofloat(lect_act1.Text));
            SQL:='select * from tarifa where '+lect_act1.Text+' >= desde and '+lect_act1.Text+'<=hasta and tipo='+quotedStr(tipo_asoc1.Text);
            formLogin.Consultarx(SQL);

            //  showmessage(SQL);

            if not formLogin.ADOX.IsEmpty then
            begin

                Monto_lectura.Text :=formatFloat('#,#0.00',formLogin.ADOX.fieldbyname('costo_agua').Value+formLogin.ADOX.fieldbyname('costo_alcant').Value);

                if Enero.Checked then EEnero.Text:=Monto_lectura.Text;
                if Febrero.Checked then EFebrero.Text:=Monto_lectura.Text;
                if Marzo.Checked then Emarzo.Text:=Monto_lectura.Text;
                if Abril.Checked then EAbril.Text:=Monto_lectura.Text;
                if Mayo.Checked then EMayo.Text:=Monto_lectura.Text;
                if Junio.Checked then EJunio.Text:=Monto_lectura.Text;
                if Julio.Checked then Ejulio.Text:=Monto_lectura.Text;
                if Agosto.Checked then EAgosto.Text:=Monto_lectura.Text;
                if Septiembre.Checked then ESeptiembre.Text:=Monto_lectura.Text;
                if Octubre.Checked then EOctubre.Text:=Monto_lectura.Text;
                if Noviembre.Checked then ENoviembre.Text:=Monto_lectura.Text;
                if Diciembre.Checked then EDiciembre.Text:=Monto_lectura.Text;

            end
            else Monto_lectura.Text :='0.00';
        //end else showmessage('ERROR: La lectura actual debe ser mayor o igual que la anterior...!');
    end;

    Calcular;
end;

procedure TFormPagosAdelantados.RegistrarDetalleFactura(detalle,id_lec,cant,p_unit,exento_detfact:String);
var
    SQL,id_fact,cant_detfact,descip_detfact, punit_detfact,desc_detfact,total_detfact,coma:String;

begin
    SQL:='select * from factura where id_lec='+id_lec;
    FormLogin.Consultary(SQL);

    id_fact:=FormLogin.ADOY.fieldbyname('id_fact').AsString;
    cant_detfact:=cant;
    descip_detfact:=quotedStr(detalle);
    punit_detfact:=p_unit;
    desc_detfact:='0';
    total_detfact:=cant+'*'+p_unit;
    coma:=',';

    SQL:='insert into detalle_factura(id_fact,cant_detfact,descip_detfact,punit_detfact,desc_detfact,total_detfact,exento_detfact) values('+
    id_fact+coma+cant_detfact+coma+descip_detfact+coma+punit_detfact+coma+desc_detfact+coma+total_detfact+coma+quotedStr(exento_detfact)+')';
    FormLogin.Ejecutarx(SQL);

end;

procedure TFormPagosAdelantados.RegistrarLectura(mes:String);
var
        id_usu,id_asoc,mes_lec,gestion_lec,anterior_lec,actual_lec,fechaant_lec,consumo_lec,fecha_lec:String;
        hora_lec,totalcons_lec,monto_lec,estado_lec,tipo_asoc,servicios_asoc,cantfact_lec,montofact_lec:String;
        coma,SQL:String;
begin
// Registrar Lectura

    numeromes:=numeromes+1;
    coma:=',';
    id_usu:=formLogin.ADOUsuario.fieldbyname('id_usu').AsString; //
    id_asoc:=asociado1; //
    mes_lec:=quotedStr(mes); //ultimo mes
    gestion_lec:=quotedStr(canio.Text); //
    anterior_lec:=lect_ant1.Text; //
    actual_lec:=lect_ant1.Text+ '+('+inttoStr(numeromes)+'*'+Lect_act1.Text+')'; //
    fechaant_lec:=quotedStr(FormLogin.fecha(Date)); //
    consumo_lec:=lect_act1.Text;
    fecha_lec:=quotedStr(FormLogin.fecha(Date)); //
    hora_lec:=quotedStr(FormatDateTime('HH:mm:ss',Time)); //

// Monto por consumo mensual
    if mes='ENERO' then  monto_lec:=EEnero.Text; //
    if mes='FEBRERO' then  monto_lec:=EFebrero.Text; //
    if mes='MARZO' then  monto_lec:=EMarzo.Text; //
    if mes='ABRIL' then  monto_lec:=EAbril.Text; //
    if mes='MAYO' then  monto_lec:=EMayo.Text; //
    if mes='JUNIO' then  monto_lec:=EJunio.Text; //
    if mes='JULIO' then  monto_lec:=EJulio.Text; //
    if mes='AGOSTO' then  monto_lec:=EAgosto.Text; //
    if mes='SEPTIEMBRE' then  monto_lec:=ESeptiembre.Text; //
    if mes='OCTUBRE' then  monto_lec:=EOctubre.Text; //
    if mes='NOVIEMBRE' then  monto_lec:=ENoviembre.Text; //
    if mes='DICIEMBRE' then  monto_lec:=EDiciembre.Text; //

    totalcons_lec:=monto_lec;
        
    estado_lec:=quotedStr('LECTURADO');
    tipo_asoc:=quotedStr(Tipo_asoc1.Text);
    servicios_asoc:=quotedStr(Servicios_asoc1.Text);
    cantfact_lec := cant_fact1.Text;
    montofact_lec := monto_fact1.Text;

    SQL:='insert into lectura(id_usu,id_asoc,mes_lec,gestion_lec,anterior_lec,actual_lec,fechaant_lec,consumo_lec,fecha_lec,hora_lec,totalcons_lec,monto_lec,estado_lec,tipo_asoc,servicios_asoc,cantfact_lec,montofact_lec) values('+
        id_usu+coma+id_asoc+coma+mes_lec+coma+gestion_lec+coma+anterior_lec+coma+actual_lec+coma+fechaant_lec+coma+consumo_lec+coma+fecha_lec+coma+
        hora_lec+coma+totalcons_lec+coma+monto_lec+coma+estado_lec+coma+tipo_asoc+coma+servicios_asoc+coma+cantfact_lec+coma+montofact_lec+')';
    //showmessage(sql);
    FormLogin.Ejecutarx(SQL);

end;

procedure TFormPagosAdelantados.Guardarfactura();
var
    SQL,coma:String;
    id_lec,nit_fact,razon_fact,montoparc_fact,desc_fact,montototal_fact,literal_fact,fechahora_fact,estado_fact:String;
    id_usu,id_asoc,mes_lec,gestion_lec,anterior_lec,actual_lec,fechaant_lec,consumo_lec,fecha_lec,hora_lec,totalcons_lec,monto_lec,estado_lec,tipo_asoc,servicios_asoc:String;
    id_fact,cant_detfact,descip_detfact,punit_detfact,desc_detfact,total_detfact,fechavenc_fact,cantfact_lec,montofact_lec:String;
    i,fin,tamanio,tam,numerofact:integer;
    decimal,primera,ultima,tipo_factura,exento,ice,totalfactura:String;

begin

//Registro de lecturas
try


    if CheckFacturar.checked then tipo_factura:='1'
    else Tipo_factura:='0';
    
//Determinando el primer y ultimo mes de facturacion
    primera:='-';
    if Enero.Checked then primera:='ENERO';
    if (Febrero.Checked) and (primera='-') then primera:='FEBRERO';
    if (Marzo.Checked) and (primera='-') then primera:='MARZO';
    if (Abril.Checked) and (primera='-') then primera:='ABRIL';
    if (Mayo.Checked) and (primera='-') then primera:='MAYO';
    if (Junio.Checked) and (primera='-') then primera:='JUNIO';
    if (Julio.Checked) and (primera='-') then primera:='JULIO';
    if (Agosto.Checked) and (primera='-') then primera:='AGOSTO';
    if (Septiembre.Checked) and (primera='-') then primera:='SEPTIEMBRE';
    if (Octubre.Checked) and (primera='-') then primera:='OCTUBRE';
    if (Noviembre.Checked) and (primera='-') then primera:='NOVIEMBRE';
    if (Diciembre.Checked) and (primera='-') then primera:='DICIEMBRE';

    ultima:='-';
    if diciembre.Checked then ultima:='DICIEMBRE';
    if (noviembre.Checked) and (ultima='-') then ultima:='NOVIEMBRE';
    if (octubre.Checked) and (ultima='-') then ultima:='OCTUBRE';
    if (septiembre.Checked) and (ultima='-') then ultima:='SEPTIEMBRE';
    if (agosto.Checked) and (ultima='-') then ultima:='AGOSTO';
    if (julio.Checked) and (ultima='-') then ultima:='JULIO';
    if (junio.Checked) and (ultima='-') then ultima:='JUNIO';
    if (mayo.Checked) and (ultima='-') then ultima:='MAYO';
    if (abril.Checked) and (ultima='-') then ultima:='ABRIL';
    if (marzo.Checked) and (ultima='-') then ultima:='MARZO';
    if (febrero.Checked) and (ultima='-') then ultima:='FEBRERO';
    if (enero.Checked) and (ultima='-') then ultima:='ENERO';

//Registrar Lectura

    if Enero.Checked then
    begin
        RegistrarLectura('ENERO');
    end;

    if Febrero.Checked then
        begin
        RegistrarLectura('FEBRERO');
    end;

    if Marzo.Checked then
        begin
        RegistrarLectura('MARZO');
    end;

    if Abril.Checked then
        begin
        RegistrarLectura('ABRIL');
    end;

    if Mayo.Checked then
        begin
        RegistrarLectura('MAYO');
    end;

    if Junio.Checked then
    begin
        RegistrarLectura('JUNIO');
    end;

    if Julio.Checked then
    begin
        RegistrarLectura('JULIO');
    end;

    if Agosto.Checked then
    begin
        RegistrarLectura('AGOSTO');
    end;

    if Septiembre.Checked then
    begin
        RegistrarLectura('SEPTIEMBRE');
    end;

    if Octubre.Checked then
    begin
        RegistrarLectura('OCTUBRE');
    end;

    if Noviembre.Checked then
    begin
        RegistrarLectura('NOVIEMBRE');
    end;

    if Diciembre.Checked then
    begin
        RegistrarLectura('DICIEMBRE');
    end;



    //*********************************************
    //  Registrar Factura
    //*********************************************
    coma:=',';
    SQL:='select * from lectura where id_asoc='+asociado1+' order by fecha_lec desc';
    FormLogin.Consultary(SQL);
    id_lec:=FormLogin.ADOY.FieldByName('id_lec').AsString;

    nit_fact:=quotedStr(FormCobrarFactura.ADOPrime.fieldbyname('nit_asoc').AsString);
    razon_fact:=quotedStr(FormCobrarFactura.ADOPrime.fieldbyname('razon_asoc').AsString);
    montoparc_fact:=Total_Bs1.Text;
    desc_fact:='0';
    montototal_fact:=Total_Bs1.Text;
    literal_fact:=quotedStr('-');
    estado_fact:=quotedStr('PENDIENTE');

    fechavenc_fact:= QuotedStr(formatdatetime('yyyy-mm',date)+'-'+InttoStr(DiasMes(Date)));

    tamanio:=StrLen(Pchar(montototal_fact));
    decimal:=montototal_fact[tamanio-1]+montototal_fact[tamanio];
    literal_fact:=quotedStr(FormNumeroaLetras.NumeroToLetra(trunc(StrtoFloat(montototal_fact)))+ ' '+decimal+'/100');
    SQL:='insert into factura(id_lec,nit_fact,razon_fact,montoparc_fact,desc_fact,montototal_fact,literal_fact,estado_fact,fechavenc_fact) values('+
        id_lec+coma+nit_fact+coma+razon_fact+coma+montoparc_fact+coma+desc_fact+coma+montototal_fact+coma+literal_fact+coma+estado_fact+coma+fechavenc_fact+')';
    FormLogin.Ejecutarx(SQL);

    //*******************************************************
    //      ACTUALIZAR FACTURA
    //*******************************************************

    tam:=  StrLen(pchar(Total_Bs1.Text));

    //Recuperar factura en curso y actualizar
    formLogin.Consultarx('select max(id_fact) as idfact from factura');
    id_fact:=FormLogin.ADOX.fieldbyname('idfact').AsString;

    formLogin.Consultarx('select * from dosificacion');
    numerofact:=formLogin.ADOX.fieldbyname('numfact_dosif').AsInteger + 1;
    FormLogin.Ejecutarx('update dosificacion set numfact_dosif='+inttostr(numerofact));


    if  CheckExento.Checked then
        exento := MontoMulta.text
    else exento := '0';
    ice := '0';

    totalfactura :=   FormatFloat('#,#0.00',StrToFloat(Total_Bs1.Text) - StrToFloat(exento) - StrtoFloat(ice));


   SQL:='update factura set '+
    'num_fact='+inttostr(numerofact)+
    ',nit_fact='+nit_fact+
    ',razon_fact='+razon_fact+
    ',orden_fact='+quotedStr(formDosificacion.ADODosif.fieldbyname('numorden_dosif').AsString)+
    ',nitemisor_fact='+quotedStr(FormEmpresa.ADOPrime.fieldbyname('nit_emp').AsString)+
    ',llave_fact='+quotedStr(formDosificacion.ADODosif.fieldbyname('llave_dosif').AsString)+
    ',fecha_fact='+quotedStr(FormLogin.Fecha(Date))+
    ',hora_fact='+QuotedStr(FormatdateTime('HH:mm:ss',Time))+
    ',fechaemision_fact='+quotedStr(FormLogin.Fecha(formDosificacion.ADODosif.fieldbyname('fechalim_dosif').Value))+
    ',montoparc_fact='+Total_Bs1.Text+
    ',desc_fact='+'0'+
    ',totalconsumo_fact='+Totalcons_Bs1.Text+
    ',totalaportes_fact='+Multas_Bs1.Text+
    ',exento_fact='+Multas_Bs1.Text+
    ',totalrecargos_fact=0'+
    ',montototal_fact='+Total_Bs1.Text+
    ',cadenaqr_fact='+quotedStr(FormEmpresa.ADOPrime.fieldbyname('nit_emp').AsString+'|'+
              inttoStr(numerofact)+'|'+formDosificacion.ADODosif.fieldbyname('numorden_dosif').AsString+'|'+
              formatdatetime('dd/mm/yyyy',date)+'|'+Total_Bs1.Text+'|'+totalfactura+'|'+
              FormCodigoControl.CodigodeControl(inttoStr(numerofact),FormCobrarFactura.nit_asoc1.Text,formatdatetime('yyyymmdd',date),totalfactura,formDosificacion.ADODosif.fieldbyname('llave_dosif').AsString,formDosificacion.ADODosif.fieldbyname('numorden_dosif').AsString)+'|'+
              FormCobrarFactura.nit_asoc1.Text+'|'+exento+'|'+ice+'|'+exento+'|0')+
    ',codcontrol_fact='+quotedStr(FormCodigoControl.CodigodeControl(inttoStr(numerofact),FormCobrarFactura.nit_asoc1.Text,formatdatetime('yyyymmdd',date),totalfactura,formDosificacion.ADODosif.fieldbyname('llave_dosif').AsString,formDosificacion.ADODosif.fieldbyname('numorden_dosif').AsString))+
    ',literal_fact='+quotedStr(FormNumeroaLetras.NumeroToLetra(trunc(StrToFloat(Total_Bs1.Text)))+' '+Total_Bs1.Text[tam-1]+Total_Bs1.Text[tam]+'/100')+
    ',tipo_fact='+tipo_factura+
    ',id_usu='+FormLogin.ADOUsuario.Fieldbyname('id_usu').AsString+
    ',estado_fact='+quotedStr('CANCELADA')+
    ' where id_fact='+id_fact;
    //showmessage(SQL);
    FormLogin.Ejecutarx(SQL);

    //*********************************************
    //  Registrar Detalle de la Factura
    //*********************************************

    if FactResumida.Checked then
    begin
		   RegistrarDetalleFactura(servicios_asoc1.Text +': '+ primera+' A '+ultima+', GESTIÓN: '+Canio.Text, id_lec,'1',Total_Bs1.Text,'NO');
    end
    else
    begin
		if Enero.Checked then
		begin
		   RegistrarDetalleFactura('CONSUMO DE AGUA MES: ENERO'+'/'+(Canio.Text), id_lec,'1',EEnero.Text,'NO');
		end;

		if Febrero.Checked then
		begin
		   RegistrarDetalleFactura('CONSUMO DE AGUA MES: FEBRERO'+'/'+(Canio.Text), id_lec,'1',EFebrero.Text,'NO');
		end;

		if Marzo.Checked then
		begin
		   RegistrarDetalleFactura('CONSUMO DE AGUA MES: MARZO'+'/'+(Canio.Text), id_lec,'1',EMarzo.Text,'NO');
		end;

		if Abril.Checked then
		begin
		   RegistrarDetalleFactura('CONSUMO DE AGUA MES: ABRIL'+'/'+(Canio.Text), id_lec,'1',EAbril.Text,'NO');
		end;

		if Mayo.Checked then
		begin
		   RegistrarDetalleFactura('CONSUMO DE AGUA MES: MAYO'+'/'+(Canio.Text), id_lec,'1',EMayo.Text,'NO');
		end;

		if Junio.Checked then
		begin
		   RegistrarDetalleFactura('CONSUMO DE AGUA MES: JUNIO'+'/'+(Canio.Text), id_lec,'1',EJunio.Text,'NO');
		end;

		if Julio.Checked then
		begin
		   RegistrarDetalleFactura('CONSUMO DE AGUA MES: JULIO'+'/'+(Canio.Text), id_lec,'1',EJulio.Text,'NO');
		end;

		if Agosto.Checked then
		begin
		   RegistrarDetalleFactura('CONSUMO DE AGUA MES: AGOSTO'+'/'+(Canio.Text), id_lec,'1',EAgosto.Text,'NO');
		end;

		if Septiembre.Checked then
		begin
		   RegistrarDetalleFactura('CONSUMO DE AGUA MES: SEPTIEMBRE'+'/'+(Canio.Text), id_lec,'1',ESeptiembre.Text,'NO');
		end;

		if Octubre.Checked then
		begin
		   RegistrarDetalleFactura('CONSUMO DE AGUA MES: OCTUBRE'+'/'+(Canio.Text), id_lec,'1',EOctubre.Text,'NO');
		end;

		if Noviembre.Checked then
		begin
		   RegistrarDetalleFactura('CONSUMO DE AGUA MES: NOVIEMBRE'+'/'+(Canio.Text), id_lec,'1',ENoviembre.Text,'NO');
		end;

		if Diciembre.Checked then
		begin
		   RegistrarDetalleFactura('CONSUMO DE AGUA MES: DICIEMBRE'+'/'+(Canio.Text), id_lec,'1',EDiciembre.Text,'NO');
		end;

    end;


    //*******************************************
    //Multas
    //*******************************************
    if Multas.Checked then
    begin
        if  CheckExento.Checked then
            RegistrarDetalleFactura(DetalleMulta.Text, id_lec,'1',MontoMulta.Text,'SI')
        else
            RegistrarDetalleFactura(DetalleMulta.Text, id_lec,'1',MontoMulta.Text,'NO')
    end;


    //Si esta activada la opcion de impresion de preavisos.
    if CheckImprimir.Checked then
    begin
            if formLogin.Config[1] then //Si esta activada la impresora facturadora
            begin
                FormRepFact2.Consulta(id_lec);
                FormRepFact2.Imprimir;
                if CheckCopia.Checked then
                    FormRepFact2.ImprimirCopia;

            end
            else
            begin
                FormRepFact1.Consulta(id_lec);
                FormRepFact1.Imprimir;
                if CheckCopia.Checked then
                    FormRepFact1.ImprimirCopia;
            end;

    end;


except
    showmessage('ERROR: Al ejecutar la sentencia SQL '+SQL);
end;

end;


procedure TFormPagosAdelantados.LimpiarDatos();
begin

    Enero.Checked:=False;
    EneroClick(Enero);

    Febrero.Checked:=False;
    EneroClick(Febrero);

    Marzo.Checked:=False;
    EneroClick(Marzo);

    Abril.Checked:=False;
    EneroClick(Abril);

    Mayo.Checked:=False;
    EneroClick(Mayo);

    Junio.Checked:=False;
    EneroClick(Junio);

    Julio.Checked:=False;
    EneroClick(Julio);

    Agosto.Checked:=False;
    EneroClick(Agosto);

    Septiembre.Checked:=False;
    EneroClick(Septiembre);

    Octubre.Checked:=False;
    EneroClick(Octubre);

    Noviembre.Checked:=False;
    EneroClick(Noviembre);

    Diciembre.Checked:=False;
    EneroClick(Diciembre);

    Multas.Checked:=False;
    MultasClick(Multas);

    totalcons_Bs1.Text:='0.00';
    totalcons_mts1.Text:='0.00';
    Total_Bs1.Text:='0.00';
    multas_Bs1.Text:='0.00';
    cant_fact1.Text:='0';
    monto_fact1.Text:='0.00';


end;


procedure TFormPagosAdelantados.BitGuardarClick(Sender: TObject);
begin


    if StrtoFloat(Lect_act1.Text)>= 0 then
    begin
        if (servicios_asoc1.Text<>'') and (Canio.Text<>'') then
        begin
            GuardarFactura;
            LimpiarDatos;
        end
        else
        begin
            Showmessage('ERROR: Debe seleccionar la GESTIÓN y el SERVICIO.');
        end;
    end
    else
    begin
        Showmessage('ERROR: La LECTURA ACTUAL debe ser IGUAL O MAYOR a 0...!');
        Lect_act1.Text:='0';
        Lect_act1.SelectAll;
        Lect_act1.SetFocus;
    end;

end;

procedure TFormPagosAdelantados.EneroClick(Sender: TObject);
begin

    if Enero.Checked then
    begin
        EEnero.Color:=clWhite;
        EEnero.Text:=monto_lectura.Text;
        EEnero.Enabled:=True;
        EEnero.ReadOnly:=False;

    end
    else
    begin
        EEnero.Color:=clGray;
        EEnero.Text:='0.00';
        EEnero.Enabled:=False;
        EEnero.ReadOnly:=True;

    end;
    Calcular;
end;

procedure TFormPagosAdelantados.FebreroClick(Sender: TObject);
begin

    if Febrero.Checked then
    begin
        EFebrero.Color:=clWhite;
        EFebrero.Text:=monto_lectura.Text;
        EFebrero.Enabled:=True;
        EFebrero.ReadOnly:=False;

    end
    else
    begin
        EFebrero.Color:=clGray;
        EFebrero.Text:='0.00';
        EFebrero.Enabled:=False;
        EFebrero.ReadOnly:=True;

    end;
    Calcular;

end;

procedure TFormPagosAdelantados.MarzoClick(Sender: TObject);
begin

    if Marzo.Checked then
    begin
        EMarzo.Color:=clWhite;
        EMarzo.Text:=monto_lectura.Text;
        EMarzo.Enabled:=True;
        EMarzo.ReadOnly:=False;

    end
    else
    begin
        EMarzo.Color:=clGray;
        EMarzo.Text:='0.00';
        EMarzo.Enabled:=False;
        EMarzo.ReadOnly:=True;

    end;
    Calcular;

end;

procedure TFormPagosAdelantados.AbrilClick(Sender: TObject);
begin

    if Abril.Checked then
    begin
        EAbril.Color:=clWhite;
        EAbril.Text:=monto_lectura.Text;
        EAbril.Enabled:=True;
        EAbril.ReadOnly:=False;

    end
    else
    begin
        EAbril.Color:=clGray;
        EAbril.Text:='0.00';
        EAbril.Enabled:=False;
        EAbril.ReadOnly:=True;

    end;
    Calcular;
    
end;

procedure TFormPagosAdelantados.MayoClick(Sender: TObject);
begin

    if Mayo.Checked then
    begin
        EMayo.Color:=clWhite;
        EMayo.Text:=monto_lectura.Text;
        EMayo.Enabled:=True;
        EMayo.ReadOnly:=False;

    end
    else
    begin
        EMayo.Color:=clGray;
        EMayo.Text:='0.00';
        EMayo.Enabled:=False;
        EMayo.ReadOnly:=True;

    end;
    Calcular;

end;

procedure TFormPagosAdelantados.JunioClick(Sender: TObject);
begin

    if Junio.Checked then
    begin
        EJunio.Color:=clWhite;
        EJunio.Text:=monto_lectura.Text;
        EJunio.Enabled:=True;
        EJunio.ReadOnly:=False;

    end
    else
    begin
        EJunio.Color:=clGray;
        EJunio.Text:='0.00';
        EJunio.Enabled:=False;
        EJunio.ReadOnly:=True;

    end;
    Calcular;

end;

procedure TFormPagosAdelantados.JulioClick(Sender: TObject);
begin

    if Julio.Checked then
    begin
        EJulio.Color:=clWhite;
        EJulio.Text:=monto_lectura.Text;
        EJulio.Enabled:=True;
        EJulio.ReadOnly:=False;

    end
    else
    begin
        EJulio.Color:=clGray;
        EJulio.Text:='0.00';
        EJulio.Enabled:=False;
        EJulio.ReadOnly:=True;

    end;
    Calcular;

end;

procedure TFormPagosAdelantados.AgostoClick(Sender: TObject);
begin

    if Agosto.Checked then
    begin
        EAgosto.Color:=clWhite;
        EAgosto.Text:=monto_lectura.Text;
        EAgosto.Enabled:=True;
        EAgosto.ReadOnly:=False;

    end
    else
    begin
        EAgosto.Color:=clGray;
        EAgosto.Text:='0.00';
        EAgosto.Enabled:=False;
        EAgosto.ReadOnly:=True;

    end;
    Calcular;

end;

procedure TFormPagosAdelantados.SeptiembreClick(Sender: TObject);
begin

    if Septiembre.Checked then
    begin
        ESeptiembre.Color:=clWhite;
        ESeptiembre.Text:=monto_lectura.Text;
        ESeptiembre.Enabled:=True;
        ESeptiembre.ReadOnly:=False;

    end
    else
    begin
        ESeptiembre.Color:=clGray;
        ESeptiembre.Text:='0.00';
        ESeptiembre.Enabled:=False;
        ESeptiembre.ReadOnly:=True;

    end;
    Calcular;

end;

procedure TFormPagosAdelantados.OctubreClick(Sender: TObject);
begin

    if Octubre.Checked then
    begin
        EOctubre.Color:=clWhite;
        EOctubre.Text:=monto_lectura.Text;
        EOctubre.Enabled:=True;
        EOctubre.ReadOnly:=False;

    end
    else
    begin
        EOctubre.Color:=clGray;
        EOctubre.Text:='0.00';
        EOctubre.Enabled:=False;
        EOctubre.ReadOnly:=True;

    end;
    Calcular;

end;

procedure TFormPagosAdelantados.NoviembreClick(Sender: TObject);
begin

    if Noviembre.Checked then
    begin
        ENoviembre.Color:=clWhite;
        ENoviembre.Text:=monto_lectura.Text;
        ENoviembre.Enabled:=True;
        ENoviembre.ReadOnly:=False;

    end
    else
    begin
        ENoviembre.Color:=clGray;
        ENoviembre.Text:='0.00';
        ENoviembre.Enabled:=False;
        ENoviembre.ReadOnly:=True;

    end;
    Calcular;

end;

procedure TFormPagosAdelantados.DiciembreClick(Sender: TObject);
begin

    if Diciembre.Checked then
    begin
        EDiciembre.Color:=clWhite;
        EDiciembre.Text:=monto_lectura.Text;
        EDiciembre.Enabled:=True;
        EDiciembre.ReadOnly:=False;

    end
    else
    begin
        EDiciembre.Color:=clGray;
        EDiciembre.Text:='0.00';
        EDiciembre.Enabled:=False;
        EDiciembre.ReadOnly:=True;

    end;
    Calcular;

end;

procedure TFormPagosAdelantados.MultasClick(Sender: TObject);
begin
    if Multas.Checked then
    begin
        MontoMulta.Color:=clWhite;
        DetalleMulta.Color:=clWhite;
        MontoMulta.Text:='0.00';
        DetalleMulta.Text:='-';
        MontoMulta.Enabled:=True;
        DetalleMulta.Enabled:=True;
        MontoMulta.ReadOnly:=False;
        DetalleMulta.ReadOnly:=False;
        MontoMulta.SelectAll;
        MontoMulta.SetFocus;
    end
    else
    begin
        MontoMulta.Color:=clGray;
        DetalleMulta.Color:=clGray;
        MontoMulta.Text:='0.00';
        DetalleMulta.TEXT:='-';
        MontoMulta.Enabled:=False;
        DetalleMulta.Enabled:=False;
        MontoMulta.ReadOnly:=True;
        DetalleMulta.ReadOnly:=True;
    end;
end;

procedure TFormPagosAdelantados.EEneroKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then Calcular;
end;

procedure TFormPagosAdelantados.EFebreroKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then Calcular;
end;

procedure TFormPagosAdelantados.MontoMultaKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then Calcular;
end;

procedure TFormPagosAdelantados.DetalleMultaKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then Calcular;
end;

procedure TFormPagosAdelantados.MontoMultaExit(Sender: TObject);
begin
    Calcular;
end;

procedure TFormPagosAdelantados.DetalleMultaExit(Sender: TObject);
begin
    Calcular;
end;

end.

