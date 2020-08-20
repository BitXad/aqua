unit frmRegistrarLectura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, GraphicEx, ExtCtrls, sBitBtn, sLabel, StdCtrls,Math,
  Buttons, Mask, sPanel, Grids, DBGrids, DB, ADODB, sCheckBox, Menus, acPNG;

type
  TFormRegistrarLectura = class(TForm)
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
    Servicios1: TDBEdit;
    PanelCampo12: TsPanel;
    Shape11: TShape;
    Label10: TLabel;
    Tipo_asoc1: TDBEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
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
    sPanel9: TsPanel;
    Shape17: TShape;
    Label11: TLabel;
    Consumo_mt1: TEdit;
    sPanel10: TsPanel;
    Shape18: TShape;
    Label13: TLabel;
    Lect_act1: TEdit;
    sPanel11: TsPanel;
    Shape19: TShape;
    Label14: TLabel;
    lect_ant1: TEdit;
    sPanel12: TsPanel;
    Shape20: TShape;
    Label15: TLabel;
    Consumo_Bs1: TEdit;
    sPanel13: TsPanel;
    Shape21: TShape;
    Label19: TLabel;
    sPanel14: TsPanel;
    Shape22: TShape;
    Label22: TLabel;
    cant_fact1: TEdit;
    Panel7: TPanel;
    sLabelFX2: TsLabelFX;
    sPanel1: TsPanel;
    Multas_Bs1: TDBEdit;
    monto_fact1: TEdit;
    sPanel2: TsPanel;
    Shape2: TShape;
    Label1: TLabel;
    DBEdit5: TDBEdit;
    Ltitulo: TsLabelFX;
    Total_Bs1: TEdit;
    BitGuardar: TBitBtn;
    BitSalir: TBitBtn;
    CheckImprimir: TsCheckBox;
    sPanel5: TsPanel;
    Shape6: TShape;
    Label4: TLabel;
    Alcantarillado1: TEdit;
    BitSiguiente: TBitBtn;
    CheckLectura: TsCheckBox;
    DBText1: TDBText;
    DBText2: TDBText;
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    Salir1: TMenuItem;
    Edit1: TEdit;
    ADOMultasexento: TStringField;
    ADOMultasice: TStringField;
    procedure BitSalirClick(Sender: TObject);
    procedure Iniciar(mes,gestion,asociado:string);
    procedure MostrarMultas(mes,gestion,asociado,lectura:string);
    procedure Lect_act1KeyPress(Sender: TObject; var Key: Char);
    procedure BitGuardarClick(Sender: TObject);
    procedure Guardarfactura();
    function DiasMes(fecha: TdateTime): integer;
    procedure BitSiguienteClick(Sender: TObject);
    procedure CheckLecturaClick(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure Lect_act1Exit(Sender: TObject);
    procedure Guardarfactura2();
  private
    { Private declarations }
    mes1,gestion1,asociado1:String;
    banderalectura:integer;
    FECHA_LECT_ANT:String;
  public
    { Public declarations }
  end;

var
  FormRegistrarLectura: TFormRegistrarLectura;

implementation

uses frmLecturas, frmLogin, FrmRepLect2, numeroaletras, FrmRepLect1,
  FrmRepLect3, FrmParametros;

{$R *.dfm}

procedure TFormRegistrarLectura.BitSalirClick(Sender: TObject);
begin
    FormLecturas.ADOPrime.Requery();
    Close;
end;

function TFormRegistrarLectura.DiasMes(fecha: TdateTime): integer;
var
     anno, mes, dia: Word;
begin
     DecodeDate( fecha, anno, mes, dia );
       case mes of
       2:  if IsLeapYear(anno) then Result:=29 else Result:=28;
       1,3,5,7,8,10,12: Result:=31;
       4,6,9,11:        Result:=30;
    end;
    //Result:=0;
end;

procedure TFormRegistrarLectura.MostrarMultas(mes,gestion,asociado,lectura:string);
var
    SQL,SQL2,consumo : String;
    consumoBs,alcantarillado,costofijo,porc_factura,tarifa : Double;

begin

try


SQL := '(select '+quotedStr('MULTA')+',motivo_multa as motivo,detalle_multa as detalle,monto_multa as monto,mes_multa as mes,gestion_multa as gestion,tipo_multa as tipo,exento_multa as exento, ice_multa as ice '+
           'from multa '+
           'where '+' estado_multa='+quotedStr('ACTIVO')+' and '+
           '(mes_multa='+quotedStr(mes)+' and gestion_multa='+quotedStr(gestion)+' and tipo_multa='+quotedStr('GENERAL')+') or '+
           '(mes_multa='+quotedStr(mes)+' and gestion_multa='+quotedStr(gestion)+' and id_asoc='+asociado+')) union '+
           '(select '+quotedStr('APORTE')+',motivo_ap as motivo,detalle_ap as detalle,monto_ap as monto,mes_ap as mes,gestion_ap as gestion,tipo_ap as tipo, exento_ap as exento, ice_ap as ice from aporte '+
           'where '+
           'tipo_ap='+quotedStr('PERMANENTE')+' and estado_ap='+quotedStr('ACTIVO')+' or '+
           '(mes_ap='+quotedStr(mes)+' and gestion_ap='+quotedStr(gestion)+' and tipo_ap='+quotedStr('PARCIAL')+' and estado_ap='+quotedStr('ACTIVO')+'))';



    //showmessage(SQL);
        //edit1.Text:=sql;
     ADOMultas.Close;
     ADOMultas.SQL.Clear;
     ADOMultas.SQL.Add(SQL);
     ADOMultas.Open;

except
    showmessage('ERROR: Ocurrio un error al ejecutar la sentencia SQL '+SQL);
end;


try

     SQL2:='select if(sum(t1.monto)>0,sum(t1.monto),0) as monto_total from ('+sql+') as t1';
     ADOSuma.Close;
     ADOSuma.SQL.Clear;
     ADOSuma.SQL.Add(SQL2);
     ADOSuma.Open;

except
    showmessage('ERROR: Ocurrio un error al ejecutar la sentencia SQL '+SQL2);
end;

//*********************************************************
// Buscar facturas Adeudadas
try

    SQL:='select if(sum(f.montototal_fact)>0,sum(f.montototal_fact),0) as sumafact, if(count(*)>0,count(*),0) as cantfact '+
         'from factura f, lectura l where f.estado_fact='+quotedStr('PENDIENTE')+' and f.id_lec=l.id_lec and l.id_asoc = '+asociado;
    FormLogin.Consultarx(SQL);

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

except
    showmessage('ERROR: Ocurrio un error al ejecutar la sentencia SQL '+SQL2);
end;


//********************************************************
//  Buscar Lecturas anteriores
try



        SQL:='select * from lectura where id_asoc='+asociado+' order by id_lec desc';
        FormLogin.Consultarx(SQL);
        FECHA_LECT_ANT:='01/01/1900';
        if not formLogin.ADOX.IsEmpty then
        begin
            lect_ant1.Text:=formatFloat('#.00',FormLogin.ADOX.fieldbyname('actual_lec').Value);
            FECHA_LECT_ANT:=FormLogin.ADOX.fieldbyname('fecha_lec').Value;
        end
        else
            lect_ant1.Text:='0.00';


except
    showmessage('ERROR: Ocurrio un error al ejecutar la sentencia SQL '+SQL2);
end;


//*********************************************************
//  Calcular Cuenta
try
    consumo:=FloatToStr(StrToFloat(lectura) - FormLogin.ADOX.fieldbyname('actual_lec').value);
    Consumo_mt1.Text:=consumo;


    if formLogin.Config[8] then //Si utiliza tarifas parametrizables
    begin

      //  showmessage('aqui');
        SQL:='select * from tarifa_parametrizable t where '+consumo+'>=t.desde and '+consumo+'<=t.hasta and '+
             't.tipo= (select a.tipo_asoc from asociado a where a.id_asoc='+asociado+')';
        //showmessage(SQL);
        FormLogin.Consultarx(SQL);

        if not formLogin.ADOX.IsEmpty then
        begin

          // showmessage('aqui...!');
            porc_factura := FormLogin.ADOX.fieldbyname('porc_factura').AsFloat;

            if (Servicios1.Text='AGUA') or (Servicios1.Text='AGUA POTABLE') then
            begin
                Consumo_Bs1.Text:=formatFloat('#.00',((FormLogin.ADOX.fieldbyname('costo_m3').Value * consumo)+FormLogin.ADOX.fieldbyname('montofijo_extra').Value) * porc_factura);
                Alcantarillado1.Text:='0.00';
            end;

            if  Servicios1.Text='ALCANTARILLADO' then
            begin
                Consumo_Bs1.Text:='0.00';
                Alcantarillado1.Text:=formatFloat('#.00',FormLogin.ADOX.fieldbyname('porc_alcant').Value * porc_factura);
            end;

            if Servicios1.Text='AGUA Y ALCANTARILLADO' then
            begin
                consumoBs := (FormLogin.ADOX.fieldbyname('costo_m3').Value * consumo)+FormLogin.ADOX.fieldbyname('montofijo_extra').Value;
                alcantarillado := consumoBs * FormLogin.ADOX.fieldbyname('porc_alcant').AsFloat * porc_factura;
                costofijo := FormLogin.ADOX.fieldbyname('costo_fijo').AsFloat;

                tarifa := ((consumoBs + Costofijo)*porc_factura);


                Consumo_Bs1.Text:=formatFloat('#.00',tarifa );
                Alcantarillado1.Text:=formatFloat('#.00',alcantarillado);
            end;
        end
        else
        begin

            Consumo_Bs1.Text:='0.00';
            Alcantarillado1.Text:='0.00';

        end;


    end
    else
    begin

        SQL:='select * from  tarifa t where t.desde >='+consumo+' and '+consumo+'<= t.hasta and '+
             't.tipo= (select a.tipo_asoc from asociado a where a.id_asoc='+asociado+')';
        FormLogin.Consultarx(SQL);

        if not formLogin.ADOX.IsEmpty then
        begin

            if (Servicios1.Text='AGUA') or (Servicios1.Text='AGUA POTABLE') then
            begin
                Consumo_Bs1.Text:=formatFloat('#.00',FormLogin.ADOX.fieldbyname('costo_agua').Value);
                Alcantarillado1.Text:='0.00';
            end;

            if Servicios1.Text='MANTENIMIENTO' then
            begin
                Consumo_Bs1.Text:=formatFloat('#.00',FormLogin.ADOX.fieldbyname('costo_agua').Value);
                Alcantarillado1.Text:='0.00';
            end;

            if  Servicios1.Text='ALCANTARILLADO' then
            begin
                Consumo_Bs1.Text:='0.00';
                Alcantarillado1.Text:=formatFloat('#.00',FormLogin.ADOX.fieldbyname('costo_alcant').Value);
            end;

            if Servicios1.Text='AGUA Y ALCANTARILLADO' then
            begin
                Consumo_Bs1.Text:=formatFloat('#.00',FormLogin.ADOX.fieldbyname('costo_agua').Value);
                Alcantarillado1.Text:=formatFloat('#.00',FormLogin.ADOX.fieldbyname('costo_alcant').Value);
            end;



        end
        else
        begin

            Consumo_Bs1.Text:='0.00';
            Alcantarillado1.Text:='0.00';

        end;

    end;

except
        Consumo_Bs1.Text:='0.00';
        Alcantarillado1.Text:='0.00';
    showmessage('ERROR: Ocurrio un error al ejecutar la sentencia SQL '+SQL2);
end;
    //Calculando el total de la factura;
    Total_Bs1.Text:=FormatFloat('#.00',Strtofloat(Consumo_bs1.text)+Strtofloat(Multas_bs1.text)+Strtofloat(alcantarillado1.text));
end;

procedure TFormRegistrarLectura.Iniciar(mes,gestion,asociado:string);
begin

//    showmessage(mes+','+gestion+','+asociado);
    mes1:=mes;
    gestion1:=gestion;
    asociado1:=asociado;
    MostrarMultas(mes1,gestion1,asociado1,'0');
    show;

    Lect_Act1.Text:='0';
    Lect_act1.SelectAll;
    Lect_act1.SetFocus;

end;



procedure TFormRegistrarLectura.Lect_act1KeyPress(Sender: TObject;
  var Key: Char);
begin

    if key=#13 then
    begin
        if StrtoFloat(Lect_act1.Text)>= StrtoFloat(lect_ant1.Text) then
        begin
            MostrarMultas(mes1,gestion1,asociado1,Lect_act1.Text);
            BitGuardar.SetFocus;
        end
        else
        begin
            Showmessage('ERROR: La LECTURA ACTUAL debe ser IGUAL O MAYOR a la ANTERIROR...!');
            Lect_act1.Text:='0';
            Lect_act1.SelectAll;
            Lect_act1.SetFocus;
        end;
    end;

end;

procedure TFormRegistrarLectura.Guardarfactura();
var
    SQL,coma:String;
    id_lec,nit_fact,razon_fact,montoparc_fact,desc_fact,montototal_fact,literal_fact,estado_fact:String;
    id_usu,id_asoc,mes_lec,gestion_lec,anterior_lec,actual_lec,fechaant_lec,consumo_lec,fecha_lec,hora_lec,totalcons_lec,monto_lec,estado_lec,tipo_asoc,servicios_asoc:String;
    id_fact,cant_detfact,descip_detfact,punit_detfact,desc_detfact,total_detfact,fechavenc_fact,cantfact_lec,montofact_lec:String;
    i,fin,tamanio:integer;
    decimal, exento_detfact, ice_detfact:String;
begin

//Registro de lecturas
try

    coma:=',';
    id_usu:=formLogin.ADOUsuario.fieldbyname('id_usu').AsString;
    id_asoc:=asociado1;
    mes_lec:=quotedStr(mes1);
    gestion_lec:=quotedStr(gestion1);
    anterior_lec:=lect_ant1.Text;
    actual_lec:=Lect_act1.Text;


    fechaant_lec:=quotedStr(FormLogin.fecha(strtoDate(FECHA_LECT_ANT)));

    consumo_lec:=Consumo_mt1.Text;
//    fecha_lec:=quotedStr(FormLogin.fecha(Date));
    fecha_lec:=quotedStr(FormLogin.fecha(formLecturas.fechaLectura.date));
    hora_lec:=quotedStr(FormatDateTime('HH:mm:ss',Time));
    totalcons_lec:=Consumo_Bs1.Text;
    monto_lec:='0';
    estado_lec:=quotedStr('LECTURADO');
    tipo_asoc:=quotedStr(Tipo_asoc1.Text);
    servicios_asoc:=quotedStr(Servicios1.Text);
    cantfact_lec := cant_fact1.Text;
    montofact_lec := monto_fact1.Text;

    SQL:='insert into lectura(id_usu,id_asoc,mes_lec,gestion_lec,anterior_lec,actual_lec,fechaant_lec,consumo_lec,fecha_lec,hora_lec,totalcons_lec,monto_lec,estado_lec,tipo_asoc,servicios_asoc,cantfact_lec,montofact_lec) values('+
        id_usu+coma+id_asoc+coma+mes_lec+coma+gestion_lec+coma+anterior_lec+coma+actual_lec+coma+fechaant_lec+coma+consumo_lec+coma+fecha_lec+coma+
        hora_lec+coma+totalcons_lec+coma+monto_lec+coma+estado_lec+coma+tipo_asoc+coma+servicios_asoc+coma+cantfact_lec+coma+montofact_lec+')';
    //showmessage(sql);
    FormLogin.Ejecutarx(SQL);

    SQL:='select * from lectura where id_asoc='+asociado1+' order by fecha_lec desc';
    FormLogin.Consultary(SQL);

    id_lec:=FormLogin.ADOY.FieldByName('id_lec').AsString;

    nit_fact:=quotedStr(FormLecturas.ADOPrime.fieldbyname('nit_asoc').AsString);
    razon_fact:=quotedStr(FormLecturas.ADOPrime.fieldbyname('razon_asoc').AsString);
    montoparc_fact:=Consumo_Bs1.Text;
    desc_fact:='0';
    montototal_fact:=Total_Bs1.Text;
    literal_fact:=quotedStr('-');
    estado_fact:=quotedStr('PENDIENTE');


   fechavenc_fact:= QuotedStr(FormLogin.fecha(formLecturas.fechaLimite.date));

//   fechavenc_fact:= QuotedStr(formatdatetime('yyyy-mm',date)+'-'+InttoStr(DiasMes(Date)));

//    fechavenc_fact:= QuotedStr('2016-09-10');

/// PARAMETRIZAR LA FECHA DE VENCIMIENTO DE LA FACTURA
{    // si esta activo el vencimiento a fin de mes
    formLogin.Consultary('select * from where id_param=6 and estado='+quotedStr('ACTIVO'));
    if not FormLogin.ADOY.IsEmpty then
        fechavenc_fact:= QuotedStr(formatdatetime('yyyy-mm',date)+'-'+InttoStr(DiasMes(Date)));

    // si esta activo el vencimiento a fin de mes
    formLogin.Consultary('select * from where id_param=7 and estado='+quotedStr('ACTIVO'));
    if not FormLogin.ADOY.IsEmpty then
    begin
        dias_vencimiento:=FormLogin.ADOY.fieldbyname('dias_param').AsInteger;
        dia_mes:=FormLogin.ADOY.fieldbyname('monto_param').AsInteger;
        fechavenc_fact:= QuotedStr(formatdatetime('yyyy-mm',date+dias_vencimiento)+'-'+FormLogin.ADOY.fieldbyname('monto_param').AsString);
    end;
 \}

    tamanio:=StrLen(Pchar(montototal_fact));
    decimal:=montototal_fact[tamanio-1]+montototal_fact[tamanio];
    literal_fact:=quotedStr(FormNumeroaLetras.NumeroToLetra(trunc(StrtoFloat(montototal_fact)))+ ' '+decimal+'/100');
    SQL:='insert into factura(id_lec,nit_fact,razon_fact,montoparc_fact,desc_fact,montototal_fact,literal_fact,estado_fact,fechavenc_fact) values('+
        id_lec+coma+nit_fact+coma+razon_fact+coma+montoparc_fact+coma+desc_fact+coma+montototal_fact+coma+literal_fact+coma+estado_fact+coma+fechavenc_fact+')';
    FormLogin.Ejecutarx(SQL);

    //*********************************************
    //  Registrar Detalle de la Factura
    //*********************************************

    SQL:='select * from factura where id_lec='+id_lec;
    FormLogin.Consultary(SQL);
    id_fact:=FormLogin.ADOY.fieldbyname('id_fact').AsString;

    if strtoFloat(Consumo_Bs1.Text)>0 then //Significa que tiene consumo de agua
    begin
        //Se eliminara el registro del tipo de servicio
        ///descip_detfact:=servicios_asoc;
        cant_detfact:='1';
        descip_detfact:=quotedStr('CONSUMO DE AGUA POTABLE');
        punit_detfact:=totalcons_lec;
        desc_detfact:='0';
        total_detfact:=totalcons_lec;
        SQL:='insert into detalle_factura(id_fact,cant_detfact,descip_detfact,punit_detfact,desc_detfact,total_detfact) values('+
        id_fact+coma+cant_detfact+coma+descip_detfact+coma+punit_detfact+coma+desc_detfact+coma+total_detfact+')';
        FormLogin.Ejecutarx(SQL);
    end;

    if strtoFloat(alcantarillado1.Text)>0 then //Significa que tiene consumo de alcantarillado
    begin
        //Se eliminara el registro del tipo de servicio
        ///descip_detfact:=servicios_asoc;
        cant_detfact:='1';
        descip_detfact:=quotedStr('SERVICIO DE ALCANTARILLADO');
        punit_detfact:=alcantarillado1.Text;
        desc_detfact:='0';
        total_detfact:=alcantarillado1.Text;
        SQL:='insert into detalle_factura(id_fact,cant_detfact,descip_detfact,punit_detfact,desc_detfact,total_detfact) values('+
        id_fact+coma+cant_detfact+coma+descip_detfact+coma+punit_detfact+coma+desc_detfact+coma+total_detfact+')';
        FormLogin.Ejecutarx(SQL);
    end;

    ADOMultas.First;
    fin:=ADOMUltas.recordcount;
    For i:=1 to fin do
    begin
        // original
        // descip_detfact:=quotedStr(ADOMultas.fieldbyname('multa').AsString+': '+ADOMultas.fieldbyname('motivo').AsString); //ORIGINAL
        descip_detfact:=quotedStr(ADOMultas.fieldbyname('motivo').AsString);

        punit_detfact:=ADOMultas.fieldbyname('monto').AsString;
        desc_detfact:='0';

        total_detfact:=ADOMultas.fieldbyname('monto').AsString;
        exento_detfact:=quotedStr(ADOMultas.fieldbyname('exento').AsString);
        ice_detfact:=quotedStr(ADOMultas.fieldbyname('ice').AsString);
        //exento_detfact:=quotedStr('SI');
        //ice_detfact:=quotedStr('N');


        SQL:='insert into detalle_factura(id_fact,cant_detfact,descip_detfact,punit_detfact,desc_detfact,total_detfact,tipo_detfact,exento_detfact,ice_detfact) values('+
        id_fact+coma+cant_detfact+coma+descip_detfact+coma+punit_detfact+coma+desc_detfact+coma+total_detfact+',1,'+exento_detfact+coma+ice_detfact+')';
       // showmessage(SQL);
         FormLogin.Ejecutarx(SQL);
        // edit1.Text:=SQL;

        ADOMultas.Next;
    end;

    //Si esta activada la opcion de impresion de preavisos.
    if CheckImprimir.Checked then
    begin
        if formLogin.Config[1] then //Si esta activada la impresora facturadora
        begin
            FormRepLect2.Consulta(id_lec);
            FormRepLect2.Imprimir;
        end
        else
        begin

            if formLogin.Config[6] then //Si esta activada la impresiones carta
            begin
                FormRepLect3.Consulta(id_lec);
                FormRepLect3.Imprimir;
            end
            else
            begin
                FormRepLect1.Consulta(id_lec);
                FormRepLect1.Imprimir;
            end;
        end;

    end;

    ///Avanzar al Aiguiente asociado
    //*********************************************


    if CheckLectura.Checked then
    begin
        FormLecturas.ADOPrime.Requery();
        FormLecturas.ADOPrime.First;
        FormLecturas.MostrarDatos;
        FormLecturas.MostrarDatosAsociado;
    end
    else
    begin
        //FormLecturas.ADOPrime.Requery();
        //FormLecturas.ADOPrime.First;
        FormLecturas.ADOPrime.Next;
        FormLecturas.MostrarDatos;
        FormLecturas.MostrarDatosAsociado;
    end;

    //***********************************************   }

except
    showmessage('ERROR: Al ejecutar la sentencia SQL '+SQL);
end;

end;

procedure TFormRegistrarLectura.Guardarfactura2();
var
    SQL,coma:String;
    id_lec,nit_fact,razon_fact,montoparc_fact,desc_fact,montototal_fact,literal_fact,estado_fact:String;
    id_usu,id_asoc,mes_lec,gestion_lec,anterior_lec,actual_lec,fechaant_lec,consumo_lec,fecha_lec,hora_lec,totalcons_lec,monto_lec,estado_lec,tipo_asoc,servicios_asoc:String;
    id_fact,cant_detfact,descip_detfact,punit_detfact,desc_detfact,total_detfact,fechavenc_fact,cantfact_lec,montofact_lec:String;
    i,fin,tamanio:integer;
    decimal, exento_detfact, ice_detfact:String;
begin

//Registro de lecturas
try

    coma:=',';
    id_usu:=formLogin.ADOUsuario.fieldbyname('id_usu').AsString;
    id_asoc:=asociado1;
    mes_lec:=quotedStr(mes1);
    gestion_lec:=quotedStr(gestion1);
    anterior_lec:=lect_ant1.Text;
    actual_lec:=Lect_act1.Text;
    fechaant_lec:=quotedStr(FormLogin.fecha(Date));
    consumo_lec:=Consumo_mt1.Text;
    fecha_lec:=quotedStr(FormLogin.fecha(Date));
    hora_lec:=quotedStr(FormatDateTime('HH:mm:ss',Time));
    totalcons_lec:=Consumo_Bs1.Text;
    monto_lec:='0';
    estado_lec:=quotedStr('LECTURADO');
    tipo_asoc:=quotedStr(Tipo_asoc1.Text);
    servicios_asoc:=quotedStr(Servicios1.Text);
    cantfact_lec := cant_fact1.Text;
    montofact_lec := monto_fact1.Text;

    SQL:='insert into lectura(id_usu,id_asoc,mes_lec,gestion_lec,anterior_lec,actual_lec,fechaant_lec,consumo_lec,fecha_lec,hora_lec,totalcons_lec,monto_lec,estado_lec,tipo_asoc,servicios_asoc,cantfact_lec,montofact_lec) values('+
        id_usu+coma+id_asoc+coma+mes_lec+coma+gestion_lec+coma+anterior_lec+coma+actual_lec+coma+fechaant_lec+coma+consumo_lec+coma+fecha_lec+coma+
        hora_lec+coma+totalcons_lec+coma+monto_lec+coma+estado_lec+coma+tipo_asoc+coma+servicios_asoc+coma+cantfact_lec+coma+montofact_lec+')';
    //showmessage(sql);
    FormLogin.Ejecutarx(SQL);

    SQL:='select * from lectura where id_asoc='+asociado1+' order by fecha_lec desc';
    FormLogin.Consultary(SQL);

    id_lec:=FormLogin.ADOY.FieldByName('id_lec').AsString;

    nit_fact:=quotedStr(FormLecturas.ADOPrime.fieldbyname('nit_asoc').AsString);
    razon_fact:=quotedStr(FormLecturas.ADOPrime.fieldbyname('razon_asoc').AsString);
    montoparc_fact:=Consumo_Bs1.Text;
    desc_fact:='0';
    montototal_fact:=Total_Bs1.Text;
    literal_fact:=quotedStr('-');
    estado_fact:=quotedStr('PENDIENTE');


////    fechavenc_fact:= QuotedStr('2016-09-10');

///PARAMETRIZAR LA FECHA DE VENCIMIENTO DE LA FACTURA
    // si esta activo el vencimiento a fin de mes
   /// formLogin.Consultary('select * from where id_param=6 and estado='+quotedStr('ACTIVO'));
   /// if not FormLogin.ADOY.IsEmpty then
   fechavenc_fact:= QuotedStr(formatdatetime('yyyy-mm',date)+'-'+InttoStr(DiasMes(Date)));

    // si esta activo el vencimiento a fin de mes
 {   formLogin.Consultary('select * from where id_param=7 and estado='+quotedStr('ACTIVO'));
    if not FormLogin.ADOY.IsEmpty then
    begin
        dias_vencimiento:=FormLogin.ADOY.fieldbyname('dias_param').AsInteger;
        dia_mes:=FormLogin.ADOY.fieldbyname('monto_param').AsInteger;
        fechavenc_fact:= QuotedStr(formatdatetime('yyyy-mm',date+dias_vencimiento)+'-'+FormLogin.ADOY.fieldbyname('monto_param').AsString);
    end;
 }

    tamanio:=StrLen(Pchar(montototal_fact));
    decimal:=montototal_fact[tamanio-1]+montototal_fact[tamanio];
    literal_fact:=quotedStr(FormNumeroaLetras.NumeroToLetra(trunc(StrtoFloat(montototal_fact)))+ ' '+decimal+'/100');
    SQL:='insert into factura(id_lec,nit_fact,razon_fact,montoparc_fact,desc_fact,montototal_fact,literal_fact,estado_fact,fechavenc_fact) values('+
        id_lec+coma+nit_fact+coma+razon_fact+coma+montoparc_fact+coma+desc_fact+coma+montototal_fact+coma+literal_fact+coma+estado_fact+coma+fechavenc_fact+')';
    FormLogin.Ejecutarx(SQL);

    //*********************************************
    //  Registrar Detalle de la Factura
    //*********************************************

    SQL:='select * from factura where id_lec='+id_lec;
    FormLogin.Consultary(SQL);
    id_fact:=FormLogin.ADOY.fieldbyname('id_fact').AsString;

    if strtoFloat(Consumo_Bs1.Text)>0 then //Significa que tiene consumo de agua
    begin
        //Se eliminara el registro del tipo de servicio
        ///descip_detfact:=servicios_asoc;
        cant_detfact:='1';
        descip_detfact:=quotedStr('CONSUMO DE AGUA POTABLE');
        punit_detfact:=totalcons_lec;
        desc_detfact:='0';
        total_detfact:=totalcons_lec;
        SQL:='insert into detalle_factura(id_fact,cant_detfact,descip_detfact,punit_detfact,desc_detfact,total_detfact) values('+
        id_fact+coma+cant_detfact+coma+descip_detfact+coma+punit_detfact+coma+desc_detfact+coma+total_detfact+')';
        FormLogin.Ejecutarx(SQL);
    end;

    if strtoFloat(alcantarillado1.Text)>0 then //Significa que tiene consumo de alcantarillado
    begin
        //Se eliminara el registro del tipo de servicio
        ///descip_detfact:=servicios_asoc;
        cant_detfact:='1';
        descip_detfact:=quotedStr('SERVICIO DE ALCANTARILLADO');
        punit_detfact:=alcantarillado1.Text;
        desc_detfact:='0';
        total_detfact:=alcantarillado1.Text;
        SQL:='insert into detalle_factura(id_fact,cant_detfact,descip_detfact,punit_detfact,desc_detfact,total_detfact) values('+
        id_fact+coma+cant_detfact+coma+descip_detfact+coma+punit_detfact+coma+desc_detfact+coma+total_detfact+')';
        FormLogin.Ejecutarx(SQL);
    end;

    ADOMultas.First;
    fin:=ADOMUltas.recordcount;
    For i:=1 to fin do
    begin
        descip_detfact:=quotedStr(ADOMultas.fieldbyname('multa').AsString+': '+ADOMultas.fieldbyname('motivo').AsString);
        punit_detfact:=ADOMultas.fieldbyname('monto').AsString;
        desc_detfact:='0';

        total_detfact:=ADOMultas.fieldbyname('monto').AsString;
        exento_detfact:=quotedStr(ADOMultas.fieldbyname('exento').AsString);
        ice_detfact:=quotedStr(ADOMultas.fieldbyname('ice').AsString);
        //exento_detfact:=quotedStr('SI');
        //ice_detfact:=quotedStr('N');


        SQL:='insert into detalle_factura(id_fact,cant_detfact,descip_detfact,punit_detfact,desc_detfact,total_detfact,tipo_detfact,exento_detfact,ice_detfact) values('+
        id_fact+coma+cant_detfact+coma+descip_detfact+coma+punit_detfact+coma+desc_detfact+coma+total_detfact+',1,'+exento_detfact+coma+ice_detfact+')';
       // showmessage(SQL);
         FormLogin.Ejecutarx(SQL);
        // edit1.Text:=SQL;

        ADOMultas.Next;
    end;

    //Si esta activada la opcion de impresion de preavisos.
    if CheckImprimir.Checked then
    begin
        if formLogin.Config[1] then //Si esta activada la impresora facturadora
        begin
            FormRepLect2.Consulta(id_lec);
            FormRepLect2.Imprimir;
        end
        else
        begin

            if formLogin.Config[6] then //Si esta activada la impresiones carta
            begin
                FormRepLect3.Consulta(id_lec);
                FormRepLect3.Imprimir;
            end
            else
            begin
                FormRepLect1.Consulta(id_lec);
                FormRepLect1.Imprimir;
            end;
        end;

    end;

    ///Avanzar al Aiguiente asociado
    //*********************************************


{    if CheckLectura.Checked then
    begin
        FormLecturas.ADOPrime.Requery();
        FormLecturas.ADOPrime.First;
        FormLecturas.MostrarDatos;
        FormLecturas.MostrarDatosAsociado;
    end
    else
    begin
        //FormLecturas.ADOPrime.Requery();
        //FormLecturas.ADOPrime.First;
        FormLecturas.ADOPrime.Next;
        FormLecturas.MostrarDatos;
        FormLecturas.MostrarDatosAsociado;
    end;
 }
    //***********************************************

except
    showmessage('ERROR: Al ejecutar la sentencia SQL '+SQL);
end;

end;



procedure TFormRegistrarLectura.BitGuardarClick(Sender: TObject);
begin

    if StrtoFloat(Lect_act1.Text)>= StrtoFloat(lect_ant1.Text) then
    begin
        GuardarFactura;
    end
    else
    begin
        Showmessage('ERROR: La LECTURA ACTUAL debe ser IGUAL O MAYOR a la ANTERIROR...!');
        Lect_act1.Text:='0';
        Lect_act1.SelectAll;
        Lect_act1.SetFocus;
    end;

end;

procedure TFormRegistrarLectura.BitSiguienteClick(Sender: TObject);
begin
        FormLecturas.ADOPrime.Next;
        FormLecturas.MostrarDatos;
        FormLecturas.MostrarDatosAsociado;
end;

procedure TFormRegistrarLectura.CheckLecturaClick(Sender: TObject);
begin
    if CheckLectura.Checked then BitSiguiente.Enabled := False
    else BitSiguiente.Enabled := True;
end;

procedure TFormRegistrarLectura.Salir1Click(Sender: TObject);
begin
    FormLecturas.ADOPrime.Requery();
    Close;
end;

procedure TFormRegistrarLectura.Lect_act1Exit(Sender: TObject);
var
    Key:Char;
begin
    Key:=#13;
    Lect_act1KeyPress(Sender, Key);
end;

end.

