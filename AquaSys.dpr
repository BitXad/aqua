program AquaSys;

uses
  Forms,
  frmLogin in 'forms\frmLogin.pas' {FormLogin},
  frmPrincipal in 'forms\frmPrincipal.pas' {formPrincipal},
  webC in 'forms\webC.pas' {FormWebCam},
  frmMultas in 'forms\frmMultas.pas' {FormMultas},
  FrmRepEmpresa in 'reports\FrmRepEmpresa.pas' {FormRepEmpresa},
  frmLecturas in 'forms\frmLecturas.pas' {FormLecturas},
  FrmRepAportes in 'reports\FrmRepAportes.pas' {FormRepAportes},
  FrmCiudadExp in 'forms\FrmCiudadExp.pas' {FormCiudadExp},
  FrmCategoriasIngresos in 'forms\FrmCategoriasIngresos.pas' {FormCategoriaIngresos},
  frmEmpresa in 'forms\frmEmpresa.pas' {FormEmpresa},
  FrmRepUsuariosCorte in 'reports\FrmRepUsuariosCorte.pas' {FormRepusuariosCorte},
  FrmCalles in 'forms\FrmCalles.pas' {FormCalles},
  FrmTipoUsuario in 'forms\FrmTipoUsuario.pas' {FormTipoUsuario},
  FrmZonas in 'forms\FrmZonas.pas' {FormZonas},
  FrmNotificacion in 'forms\FrmNotificacion.pas' {FormNotificacion},
  frmCobrarFactura in 'forms\frmCobrarFactura.pas' {FormCobrarFactura},
  frmPagosAdelantados in 'forms\frmPagosAdelantados.pas' {FormPagosAdelantados},
  numeroaletras in 'forms\numeroaletras.pas' {FormNumeroaletras},
  GeneradorQR in 'forms\GeneradorQR.pas' {FormGeneradorQR},
  frmAportes in 'forms\frmAportes.pas' {FormAportes},
  FrmParametros in 'forms\FrmParametros.pas' {FormParametros},
  FrmUsuario in 'forms\frmUsuario.pas' {FormUsuario},
  FrmRolUsuario in 'forms\FrmRolUsuario.pas' {FormRolUsuario},
  FrmDosificacion in 'forms\FrmDosificacion.pas' {FormDosificacion},
  FrmIngresosEgresos in 'forms\FrmIngresosEgresos.pas' {formIngresosEgresos},
  frmRepCompIng2 in 'reports\frmRepCompIng2.pas' {FormRepCompIng2},
  frmRepOtrosIng in 'reports\frmRepOtrosIng.pas' {FormRepOtrosIng},
  FrmConfiguracion in 'forms\FrmConfiguracion.pas' {FormConfigurar},
  frmAsociados in 'forms\frmAsociados.pas' {FormAsociados},
  FrmRepFact2 in 'reports\FrmRepFact2.pas' {FormRepfact2},
  FrmRepLect3 in 'reports\FrmRepLect3.pas' {FormRepLect3},
  FrmRepLect1 in 'reports\FrmRepLect1.pas' {FormRepLect1},
  FrmCodigoControl in 'forms\FrmCodigoControl.pas' {FormCodigoControl},
  FrmBuscarFecha in 'forms\FrmBuscarFecha.pas' {FormBuscarFecha},
  FrmRepAsociado in 'reports\FrmRepAsociado.pas' {FormRepAsociado},
  FrmRepMovimientoDia in 'reports\FrmRepMovimientoDia.pas' {FormRepMovimientoDia},
  FrmReImpresion in 'forms\FrmReImpresion.pas' {FormReImpresion},
  FrmRepListaAsociado in 'reports\FrmRepListaAsociado.pas' {FormRepListaAsociado},
  frmRepCompIng in 'reports\frmRepCompIng.pas' {FormRepCompIng},
  FrmRepKardex2 in 'reports\FrmRepKardex2.pas' {FormRepKardex2},
  FrmCategorias in 'forms\FrmCategorias.pas' {FormCategorias},
  FrmRepCertificado in 'reports\FrmRepCertificado.pas' {FormRepCertificado},
  FrmRepIngresoEgr in 'reports\FrmRepIngresoEgr.pas' {FormRepEgresos},
  FrmRepIngresoIng in 'forms\FrmRepIngresoIng.pas' {FormRepIngresos},
  frmRegistrarLectura in 'forms\frmRegistrarLectura.pas' {FormRegistrarLectura},
  FrmServicios in 'forms\FrmServicios.pas' {FormServicios},
  FrmSplash in 'forms\FrmSplash.pas' {FormSplash},
  FrmRepLect2 in 'reports\FrmRepLect2.pas' {FormRepLect2},
  FrmAyuda in 'forms\FrmAyuda.pas' {FormAyuda},
  FrmRepDeudasPorCobrar in 'reports\FrmRepDeudasPorCobrar.pas' {FormRepDeudasPorCobrar},
  FrmFechaPago in 'forms\FrmFechaPago.pas' {FormFechaPago},
  ExportarExcel in 'forms\ExportarExcel.pas' {FormExportar},
  FrmRepIngresoFact in 'reports\FrmRepIngresoFact.pas' {FormRepIngresosFact},
  FrmRepKardex in 'reports\FrmRepKardex.pas' {FormRepKardex},
  FrmEstados in 'forms\FrmEstados.pas' {FormEstados},
  FrmOtrosIng in 'forms\FrmOtrosIng.pas' {formOtrosIng},
  FrmRepFact3 in 'reports\FrmRepFact3.pas' {FormRepfact3},
  FrmRepFact1 in 'reports\FrmRepFact1.pas' {FormRepfact1};

{$R *.res}

begin

   FormSplash := TformSplash.Create(Application);
   FormSplash.Show;
   FormSplash.Update;
   FormSplash.PB.MinValue:=1;
   FormSplash.PB.MaxValue:=120;


  Application.Initialize;
  Application.Title := 'Xentra - Sistema de cobro y facturación de agua';
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TFormRepLect2, FormRepLect2);
  Application.CreateForm(TFormAyuda, FormAyuda);
  Application.CreateForm(TFormRepDeudasPorCobrar, FormRepDeudasPorCobrar);
  Application.CreateForm(TFormFechaPago, FormFechaPago);
  Application.CreateForm(TFormExportar, FormExportar);
  Application.CreateForm(TFormRepIngresosFact, FormRepIngresosFact);
  Application.CreateForm(TFormRepKardex, FormRepKardex);
  Application.CreateForm(TFormEstados, FormEstados);
  Application.CreateForm(TformOtrosIng, formOtrosIng);
  Application.CreateForm(TFormRepfact1, FormRepfact1);
  FormSplash.pb.progress:=10;
  Application.CreateForm(TFormWebCam, FormWebCam);
  Application.CreateForm(TFormMultas, FormMultas);
  Application.CreateForm(TFormRepEmpresa, FormRepEmpresa);
  FormSplash.pb.progress:=20;
  Application.CreateForm(TFormLecturas, FormLecturas);
  Application.CreateForm(TFormRepAportes, FormRepAportes);
  Application.CreateForm(TFormCiudadExp, FormCiudadExp);
  FormSplash.pb.progress:=30;
  Application.CreateForm(TFormCategoriaIngresos, FormCategoriaIngresos);
  Application.CreateForm(TFormEmpresa, FormEmpresa);
  Application.CreateForm(TFormRepusuariosCorte, FormRepusuariosCorte);
  Application.CreateForm(TFormEstados, FormEstados);
  FormSplash.pb.progress:=40;
  Application.CreateForm(TFormTipoUsuario, FormTipoUsuario);
  Application.CreateForm(TFormZonas, FormZonas);
  Application.CreateForm(TFormNotificacion, FormNotificacion);
  Application.CreateForm(TFormCobrarFactura, FormCobrarFactura);
  FormSplash.pb.progress:=50;
  Application.CreateForm(TFormPagosAdelantados, FormPagosAdelantados);
  Application.CreateForm(TFormNumeroaletras, FormNumeroaletras);
  Application.CreateForm(TFormGeneradorQR, FormGeneradorQR);
  Application.CreateForm(TFormAportes, FormAportes);
  FormSplash.pb.progress:=60;
  Application.CreateForm(TFormParametros, FormParametros);
  Application.CreateForm(TFormUsuario, FormUsuario);
  Application.CreateForm(TFormRolUsuario, FormRolUsuario);
  Application.CreateForm(TFormDosificacion, FormDosificacion);
  FormSplash.pb.progress:=70;
  Application.CreateForm(TformIngresosEgresos, formIngresosEgresos);
  Application.CreateForm(TFormRepCompIng2, FormRepCompIng2);
  Application.CreateForm(TFormRepOtrosIng, FormRepOtrosIng);
  Application.CreateForm(TFormConfigurar, FormConfigurar);
  FormSplash.pb.progress:=80;
  Application.CreateForm(TFormAsociados, FormAsociados);
  Application.CreateForm(TFormRepfact2, FormRepfact2);
  Application.CreateForm(TFormRepLect2, FormRepLect2);
  Application.CreateForm(TFormRepLect1, FormRepLect1);
  Application.CreateForm(TFormRepLect3, FormRepLect3);  
  FormSplash.pb.progress:=90;
  Application.CreateForm(TFormCodigoControl, FormCodigoControl);
  Application.CreateForm(TFormBuscarFecha, FormBuscarFecha);
  Application.CreateForm(TFormRepfact1, FormRepfact1);
  Application.CreateForm(TFormRepfact3, FormRepfact3);
  Application.CreateForm(TFormRepAsociado, FormRepAsociado);
  FormSplash.pb.progress:=100;
  Application.CreateForm(TFormRepMovimientoDia, FormRepMovimientoDia);
  Application.CreateForm(TFormReImpresion, FormReImpresion);
  Application.CreateForm(TFormRepListaAsociado, FormRepListaAsociado);
  Application.CreateForm(TFormRepCompIng, FormRepCompIng);
  FormSplash.pb.progress:=110;
  Application.CreateForm(TFormRepIngresosFact, FormRepIngresosFact);
  Application.CreateForm(TFormCategorias, FormCategorias);
  Application.CreateForm(TFormRepEgresos, FormRepEgresos);
  Application.CreateForm(TFormRepIngresos, FormRepIngresos);
  Application.CreateForm(TFormCalles, FormCalles);
  FormSplash.pb.progress:=120;
  Application.CreateForm(TFormRegistrarLectura, FormRegistrarLectura);
  Application.CreateForm(TFormServicios, FormServicios);
  Application.CreateForm(TFormRepCertificado, FormRepCertificado);


  FormSplash.pb.progress:=130;
  
  FormSplash.Hide;
  Application.Run;

end.
