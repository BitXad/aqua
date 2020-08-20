unit frmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, jpeg, ExtCtrls, Menus, DBCtrls,
  GraphicEx;

type
  TformPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    archivo1: TMenuItem;
    ConfigurarImpresora1: TMenuItem;
    CambiarUsuario1: TMenuItem;
    N5: TMenuItem;
    Salir1: TMenuItem;
    Operaciones1: TMenuItem;
    Parmetros1: TMenuItem;
    Empresa1: TMenuItem;
    ClasificadordeEgresos1: TMenuItem;
    ClasificadordeDocumentos1: TMenuItem;
    Clasificadorde1: TMenuItem;
    Registro1: TMenuItem;
    Cliente1: TMenuItem;
    egreso1: TMenuItem;
    Empleado1: TMenuItem;
    Proveedor1: TMenuItem;
    N2: TMenuItem;
    Venta1: TMenuItem;
    Almacen1: TMenuItem;
    N11: TMenuItem;
    FormRegACajainiciar1: TMenuItem;
    Gastos1: TMenuItem;
    N3: TMenuItem;
    Reportes1: TMenuItem;
    Documentos1: TMenuItem;
    MovimientoDiario1: TMenuItem;
    N6: TMenuItem;
    Empleados1: TMenuItem;
    PagosporCreditos1: TMenuItem;
    KardexPorProducto1: TMenuItem;
    DeudasporPagar1: TMenuItem;
    N9: TMenuItem;
    ReportedeIngresos1: TMenuItem;
    herramientas1: TMenuItem;
    Buscar1: TMenuItem;
    EliminarDatos1: TMenuItem;
    isiaro1: TMenuItem;
    PerfildeUsuario1: TMenuItem;
    CambiarContrasea1: TMenuItem;
    Minimizar1: TMenuItem;
    Minimizar2: TMenuItem;
    ModoDock1: TMenuItem;
    PantallaCompleta1: TMenuItem;
    Ayuda1: TMenuItem;
    emasdeAyuda1: TMenuItem;
    Acercade1: TMenuItem;
    sBitBtn2: TsBitBtn;
    sBitBtn3: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sBitBtn5: TsBitBtn;
    sBitBtn6: TsBitBtn;
    sBitBtn7: TsBitBtn;
    Fondo: TImage;
    DBImg: TDBImage;
    Label3: TLabel;
    Label4: TLabel;
    Shape1: TShape;
    Bit1: TsBitBtn;
    Bit2: TsBitBtn;
    Bit7: TsBitBtn;
    Bit6: TsBitBtn;
    Bit5: TsBitBtn;
    Bit3: TsBitBtn;
    Bit4: TsBitBtn;
    Bit8: TsBitBtn;
    Bit9: TsBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Clasificadordeestados1: TMenuItem;
    Clasificadordezonas1: TMenuItem;
    Usuarios1: TMenuItem;
    Ventas1: TMenuItem;
    Ingresosporservicios1: TMenuItem;
    Cobrosporfechas1: TMenuItem;
    CobrosporUsuarioAsociado1: TMenuItem;
    Ingresos1: TMenuItem;
    IngresosDiarios1: TMenuItem;
    Ingresosporfecha1: TMenuItem;
    Ingresosporcategoria1: TMenuItem;
    Categoriaingresosegresos1: TMenuItem;
    Egresos1: TMenuItem;
    Egresosdeldia1: TMenuItem;
    Egresosporfecha1: TMenuItem;
    Egresosporcategora1: TMenuItem;
    ReporteDiario1: TMenuItem;
    Movimientoporfecha1: TMenuItem;
    Notificaciones1: TMenuItem;
    arifas1: TMenuItem;
    Exportacion1: TMenuItem;
    Facturasaexcel1: TMenuItem;
    Edit1: TEdit;
    Edit2: TEdit;
    DireccionesCalles1: TMenuItem;
    procedure iniciar();
    procedure Cliente1Click(Sender: TObject);
    procedure Bit1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure Clasificadordeestados1Click(Sender: TObject);
    procedure Clasificadorde1Click(Sender: TObject);
    procedure egreso1Click(Sender: TObject);
    procedure Clasificadordezonas1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ClasificadordeDocumentos1Click(Sender: TObject);
    procedure ClasificadordeEgresos1Click(Sender: TObject);
    procedure Usuarios1Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure UbicarBotones();
    procedure FormResize(Sender: TObject);
    procedure Bit2Click(Sender: TObject);
    procedure Bit3Click(Sender: TObject);
    procedure Bit8Click(Sender: TObject);
    procedure Bit6Click(Sender: TObject);
    procedure Bit7Click(Sender: TObject);
    procedure Bit5Click(Sender: TObject);
    procedure Empleado1Click(Sender: TObject);
    procedure Venta1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure sBitBtn6Click(Sender: TObject);
    procedure sBitBtn7Click(Sender: TObject);
    procedure Bit4Click(Sender: TObject);
    procedure Documentos1Click(Sender: TObject);
    procedure Ingresosporservicios1Click(Sender: TObject);
    procedure Cobrosporfechas1Click(Sender: TObject);
    procedure CobrosporUsuarioAsociado1Click(Sender: TObject);
    procedure Proveedor1Click(Sender: TObject);
    procedure Almacen1Click(Sender: TObject);
    procedure FormRegACajainiciar1Click(Sender: TObject);
    procedure Gastos1Click(Sender: TObject);
    procedure Buscar1Click(Sender: TObject);
    procedure isiaro1Click(Sender: TObject);
    procedure PerfildeUsuario1Click(Sender: TObject);
    procedure IngresosDiarios1Click(Sender: TObject);
    procedure Ingresosporfecha1Click(Sender: TObject);
    procedure Ingresosporcategoria1Click(Sender: TObject);
    procedure Categoriaingresosegresos1Click(Sender: TObject);
    procedure Egresosdeldia1Click(Sender: TObject);
    procedure Egresosporfecha1Click(Sender: TObject);
    procedure Egresosporcategora1Click(Sender: TObject);
    procedure ReporteDiario1Click(Sender: TObject);
    procedure Movimientoporfecha1Click(Sender: TObject);
    procedure Notificaciones1Click(Sender: TObject);
    procedure emasdeAyuda1Click(Sender: TObject);
    procedure Facturasaexcel1Click(Sender: TObject);
    procedure actualizarDatosFactura();
    procedure recordatorioDosificacion();
    procedure DireccionesCalles1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation

uses frmAsociados, frmLogin, frmEmpresa, FrmEstados, FrmCiudadExp,
  frmAportes, FrmZonas, FrmCategorias, FrmServicios, FrmTipoUsuario,
  frmLecturas, frmMultas, FrmConfiguracion, FrmUsuario, FrmRolUsuario,
  FrmDosificacion, FrmIngresosEgresos, FrmParametros, frmCobrarFactura,
  FrmRepUsuariosCorte, FrmRepIngresoFact, FrmBuscarFecha, FrmRepIngresoEgr,
  FrmCategoriasIngresos, FrmRepIngresoIng, FrmRepMovimientoDia,
  FrmNotificacion, FrmAyuda, FrmFechaPago, FrmCalles, FrmOtrosIng;

{$R *.dfm}

procedure TformPrincipal.actualizarDatosFactura();
var
    SQL,id_lec,id_fact,fecha_lec:String;
    i,fin:integer;
begin
    SQL:='SELECT * FROM factura f, lectura l '+
         ' WHERE f.id_lec=l.id_lec and f.estado_fact = '+quotedStr('PENDIENTE');

    formLogin.Consultary(SQL);

    if not formLogin.ADOY.IsEmpty then
        fin:=formLogin.ADOY.RecordCount
    else fin:=0;

    
    for i:=1 to fin do
    begin
        id_lec:=formLogin.ADOY.fieldbyname('id_lec').ASString;
        id_fact:=formLogin.ADOY.fieldbyname('id_fact').ASString;
        fecha_lec:=quotedStr(formatdatetime('yyyy-mm-dd',formLogin.ADOY.fieldbyname('fecha_lec').Value));

        SQL:='update factura x set '+
        ' x.totalconsumo_fact = (select if(SUM(((cant_detfact*punit_detfact)-desc_detfact))>0, SUM(((cant_detfact*punit_detfact)-desc_detfact)),0) as consumo '+
        ' from detalle_factura where id_fact='+id_fact+' and tipo_detfact=0),  '+

        ' x.totalaportes_fact = (select if(SUM(((cant_detfact*punit_detfact)-desc_detfact))>0,SUM(((cant_detfact*punit_detfact)-desc_detfact)),0) as consumo  '+
        ' from detalle_factura where id_fact='+id_fact+' and tipo_detfact=1), '+

        ' x.totalrecargos_fact = (select if(MAX(monto_param)>0,MAX(monto_param),0) as recargos '+
        ' from parametros where estado='+quotedStr('ACTIVO')+' and DATEDIFF(date(now()), '+fecha_lec+' ) >= dias_param and monto_param >0 ),  '+

        ' x.exento_fact = (select if(sum(total_detfact)>0,sum(total_detfact),0) from detalle_factura where id_fact='+id_fact+
        ' and exento_detfact='+quotedStr('SI')+ ' and exento_detfact='+quotedStr('SI')+'), '+

        ' x.ice_fact = (select if(sum(total_detfact)>0,sum(total_detfact),0) from detalle_factura where id_fact='+id_fact+
        ' and ice_detfact='+quotedStr('SI')+ ' and ice_detfact='+quotedStr('SI')+') '+

        ' where x.estado_fact='+quotedStr('PENDIENTE')+' and x.id_fact='+id_fact;
        edit1.Text:=sql;

        formLogin.Ejecutarx(SQL);
        formLogin.ADOY.Next;

    end;

        SQL:='update factura set '+
        ' montototal_fact=totalconsumo_fact + totalaportes_fact + totalrecargos_fact '+
        ' where estado_fact='+quotedStr('PENDIENTE');
        edit2.Text:=sql;
        formLogin.Ejecutarx(SQL);

end;

procedure TformPrincipal.iniciar();
begin
    UbicarBotones;
//*********************************************
// actualizar consumo+aportes+multas
    actualizarDatosFactura;
    recordatorioDosificacion;
//*********************************************

    show;
end;

procedure TFormPrincipal.recordatorioDosificacion();
var
    sql:String;
    dias,i,fin:integer;
begin

        sql:='select *, '+
             '(year(fechalim_dosif)*365+month(fechalim_dosif)*30.5+day(fechalim_dosif)) as limite,'+
             '(year(now())*365+month(now())*30.5+day(now())) as actual '+
             ' from dosificacion ';
        formLogin.Consultarx(sql);

        if (not formLogin.ADOX.IsEmpty) then
        begin
            dias:=formLogin.ADOX.FieldByName('limite').AsInteger - formLogin.ADOX.FieldByName('actual').AsInteger;
               if (dias<=10) and (dias>=0) then showmessage('A D V E R T E N C I A'+chr(13)+'La Dosificación caducará en: '+inttoStr(dias)+' dias, sino la renueva LAS FACTURAS EMITIDAS NO SERAN LEGALES...!');
               if (dias<0) then showmessage('A D V E R T E N C I A'+chr(13)+'La Dosificación ha caducado, debe renovarla caso contrario LAS FACTURAS EMITIDAS NO SERAN LEGALES...!');
        end;


end;

procedure TformPrincipal.Cliente1Click(Sender: TObject);
begin
    FormAsociados.iniciar;
end;

procedure TformPrincipal.Bit1Click(Sender: TObject);
begin
    formAsociados.Iniciar;
end;

procedure TformPrincipal.Salir1Click(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TformPrincipal.Empresa1Click(Sender: TObject);
begin
    FormEmpresa.Iniciar;
end;

procedure TformPrincipal.Clasificadordeestados1Click(Sender: TObject);
begin
    FormEstados.iniciar;
end;

procedure TformPrincipal.Clasificadorde1Click(Sender: TObject);
begin
    FormCiudadExp.Iniciar;
end;

procedure TformPrincipal.egreso1Click(Sender: TObject);
begin
    formAportes.iniciar;
end;

procedure TformPrincipal.Clasificadordezonas1Click(Sender: TObject);
begin
    FormZonas.Iniciar;
end;

procedure TformPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    canClose:=False;
end;

procedure TformPrincipal.ClasificadordeDocumentos1Click(Sender: TObject);
begin
    FormCategorias.iniciar;
end;

procedure TformPrincipal.ClasificadordeEgresos1Click(Sender: TObject);
begin
    FormServicios.Iniciar;
end;

procedure TformPrincipal.Usuarios1Click(Sender: TObject);
begin
    FormTipoUsuario.iniciar;
end;

procedure TformPrincipal.sBitBtn3Click(Sender: TObject);
begin
    FormLecturas.iniciar;
end;

procedure TformPrincipal.UbicarBotones();
var
    param:integer;
begin
    param := 2*Bit1.Height;

    Bit1.Top := Height - param;
    Bit2.Top := Height - param;
    Bit3.Top := Height - param;
    Bit4.Top := Height - param;
    Bit5.Top := Height - param;
    Bit6.Top := Height - param;
    Bit7.Top := Height - param;
    Bit8.Top := Height - param;
    Bit9.Top := Height - param;

end;

procedure TformPrincipal.FormResize(Sender: TObject);
begin
    UbicarBotones;
end;

procedure TformPrincipal.Bit2Click(Sender: TObject);
begin
    FormAportes.Iniciar;
end;

procedure TformPrincipal.Bit3Click(Sender: TObject);
begin
    FormMultas.Iniciar;
end;

procedure TformPrincipal.Bit8Click(Sender: TObject);
begin
    FormConfigurar.show;
end;

procedure TformPrincipal.Bit6Click(Sender: TObject);
begin
    FormUsuario.iniciar;
end;

procedure TformPrincipal.Bit7Click(Sender: TObject);
begin
    FormRolusuario.Show;
end;

procedure TformPrincipal.Bit5Click(Sender: TObject);
begin
    FormDosificacion.Iniciar;
end;

procedure TformPrincipal.Empleado1Click(Sender: TObject);
begin
    FormMultas.Iniciar;
end;

procedure TformPrincipal.Venta1Click(Sender: TObject);
begin
    FormLecturas.iniciar;    
end;

procedure TformPrincipal.sBitBtn2Click(Sender: TObject);
begin

    formCobrarFactura.Iniciar;

end;

procedure TformPrincipal.sBitBtn4Click(Sender: TObject);
begin
    FormOtrosIng.iniciar('INGRESO');
    //FormOtrosIng.Iniciar;
end;

procedure TformPrincipal.sBitBtn5Click(Sender: TObject);
begin
    FormOtrosIng.iniciar('EGRESO');
    //FormOtrosIng.Iniciar;
end;

procedure TformPrincipal.sBitBtn6Click(Sender: TObject);
begin
//    showmessage('NO ESTA AUTORIZADO PARA REALIZAR ESTA OPERACION...!')
    
end;

procedure TformPrincipal.sBitBtn7Click(Sender: TObject);
begin
//    showmessage('NO ESTA AUTORIZADO PARA REALIZAR ESTA OPERACION...!')
    FormBuscarFecha.Iniciar(1);//1 reporte de cobros por fecha

end;

procedure TformPrincipal.Bit4Click(Sender: TObject);
begin
    formParametros.ADOConf.Requery();
    formParametros.Show;
end;

procedure TformPrincipal.Documentos1Click(Sender: TObject);
begin
    FormRepusuariosCorte.Iniciar();
end;

procedure TformPrincipal.Ingresosporservicios1Click(Sender: TObject);
begin
    FormRepIngresosFact.ConsultaPorDia(date,date);
    FormRepIngresosFact.VistaPrevia;
end;

procedure TformPrincipal.Cobrosporfechas1Click(Sender: TObject);
begin
    FormBuscarFecha.Iniciar(1);//1 reporte de cobros por fecha
end;

procedure TformPrincipal.CobrosporUsuarioAsociado1Click(Sender: TObject);
begin
    FormBuscarFecha.Iniciar(2);//2 reporte de cobros por usuario    
end;

procedure TformPrincipal.Proveedor1Click(Sender: TObject);
begin
    FormDosificacion.Iniciar;
end;

procedure TformPrincipal.Almacen1Click(Sender: TObject);
begin
    formCobrarFactura.Iniciar;
end;

procedure TformPrincipal.FormRegACajainiciar1Click(Sender: TObject);
begin
    FormIngresosEgresos.iniciar('INGRESO');
end;

procedure TformPrincipal.Gastos1Click(Sender: TObject);
begin
    FormIngresosEgresos.iniciar('EGRESO');
end;

procedure TformPrincipal.Buscar1Click(Sender: TObject);
begin
    FormConfigurar.show;
end;

procedure TformPrincipal.isiaro1Click(Sender: TObject);
begin
    FormUsuario.Iniciar;
end;

procedure TformPrincipal.PerfildeUsuario1Click(Sender: TObject);
begin
    FormRolusuario.Show;
end;


procedure TformPrincipal.IngresosDiarios1Click(Sender: TObject);
begin
    FormRepIngresos.ConsultaPorDia(date,date);
    FormRepIngresos.VistaPrevia;
end;

procedure TformPrincipal.Ingresosporfecha1Click(Sender: TObject);
begin
    FormBuscarFecha.Iniciar(3);//1 reporte de cobros por fecha
end;

procedure TformPrincipal.Ingresosporcategoria1Click(Sender: TObject);
begin
    FormBuscarFecha.Iniciar(4);//4 Ingresos por categoria    
end;

procedure TformPrincipal.Categoriaingresosegresos1Click(Sender: TObject);
begin
    FormCategoriaIngresos.iniciar;
end;

procedure TformPrincipal.Egresosdeldia1Click(Sender: TObject);
begin
    FormRepEgresos.ConsultaPorDia(date,date);
    FormRepEgresos.VistaPrevia;
end;

procedure TformPrincipal.Egresosporfecha1Click(Sender: TObject);
begin
    FormBuscarFecha.Iniciar(5);//5 reporte de gastos
end;

procedure TformPrincipal.Egresosporcategora1Click(Sender: TObject);
begin
    FormBuscarFecha.Iniciar(6);//6 Egresos por categoria   
end;

procedure TformPrincipal.ReporteDiario1Click(Sender: TObject);
begin

    FormRepMovimientoDia.ConsultaPorDia(date,date);
    FormRepMovimientoDia.VistaPrevia;

end;

procedure TformPrincipal.Movimientoporfecha1Click(Sender: TObject);
begin
    FormBuscarFecha.Iniciar(7);
end;

procedure TformPrincipal.Notificaciones1Click(Sender: TObject);
begin
    FormNotificacion.Iniciar;
end;

procedure TformPrincipal.emasdeAyuda1Click(Sender: TObject);
begin
    FormAyuda.iniciar;
end;

procedure TformPrincipal.Facturasaexcel1Click(Sender: TObject);
begin
     //   if FormRolUsuario.VerificarRol(id_usuario,63) then
     //   Begin
            formfechapago.bandera:=2;
            formfechapago.R1.Visible:=true;
            formfechapago.R2.Visible:=true;
            formfechapago.R3.Visible:=true;
            formfechapago.Show;
     //   End
     //   else
     //           showmessage('ERROR: No tiene los privilegios necesarios para realizar esta operación,'+chr(13)+' consulte con el Administrador del Sistema...!');

end;

procedure TformPrincipal.DireccionesCalles1Click(Sender: TObject);
begin
    FormCalles.iniciar();
end;

end.
