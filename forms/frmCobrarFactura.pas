unit frmCobrarFactura;

interface                                                                             

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, sLabel, ExtCtrls, sEdit, GraphicEx, Mask,
  Buttons, jpeg, ComCtrls, Grids, DBGrids, DB, ADODB, DBCtrls, sPanel, EDBImage,
  sBitBtn, ExtDlgs, sCheckBox, sComboBox, acPNG;

type
  TFormCobrarFactura = class(TForm)
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    Salir1: TMenuItem;
    PanelTitulo: TPanel;
    PanelOperaciones: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    GroupBuscar: TGroupBox;
    ECodigo: TsEdit;
    EApellidos: TsEdit;
    ENombres: TsEdit;
    SBuscar: TSpeedButton;
    PanelGeneral: TPanel;
    ADOPrime: TADOQuery;
    DataPrime: TDataSource;
    PanelCampo6: TsPanel;
    Label1: TLabel;
    PanelCampo3: TsPanel;
    Label20: TLabel;
    PanelCampo2: TsPanel;
    Label21: TLabel;
    id_asoc1: TDBEdit;
    nombres_asoc1: TDBEdit;
    PanelCampo4: TsPanel;
    Label2: TLabel;
    PanelCampo8: TsPanel;
    Label3: TLabel;
    apellidos_asoc1: TDBEdit;
    direccion_asoc1: TDBEdit;
    PanelCampo7: TsPanel;
    Label4: TLabel;
    fechanac_asoc1: TDBEdit;
    PanelCampo9: TsPanel;
    Label6: TLabel;
    telefono_asoc1: TDBEdit;
    PanelCampo1: TsPanel;
    Label7: TLabel;
    codigo_asoc1: TDBEdit;
    PanelCampo10: TsPanel;
    Label8: TLabel;
    nit_asoc1: TDBEdit;
    PanelCampo11: TsPanel;
    Label9: TLabel;
    razon_soc1: TDBEdit;
    PanelCampo13: TsPanel;
    Label11: TLabel;
    fechahora_asoc1: TDBEdit;
    PanelFoto: TsPanel;
    BFoto1: TsBitBtn;
    BFoto2: TsBitBtn;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape12: TShape;
    PicDialog: TOpenPictureDialog;
    Image1: TImage;
    DirImagen: TEdit;
    DBImage1: TDBImage;
    ADOAsociado: TADOQuery;
    DataAsociado: TDataSource;
    PanelCampo5: TsPanel;
    Shape13: TShape;
    Label12: TLabel;
    ci_asoc1: TDBEdit;
    sBitCodigo: TsBitBtn;
    Panel1: TPanel;
    BitGuardar: TBitBtn;
    BitSalir: TBitBtn;
    BitCancelar: TBitBtn;
    PanelCampo88: TsPanel;
    Shape15: TShape;
    Label17: TLabel;
    Ltitulo: TsLabelFX;
    BarraEstado: TStatusBar;
    sLabelFX1: TsLabelFX;
    sLabelFX2: TsLabelFX;
    sLabelFX3: TsLabelFX;
    sPanel1: TsPanel;
    Shape14: TShape;
    Label16: TLabel;
    medidor_asoc1: TDBEdit;
    sPanel3: TsPanel;
    Shape16: TShape;
    Label18: TLabel;
    PanelCampo12: TsPanel;
    Shape11: TShape;
    Label10: TLabel;
    exp_asoc1: TDBEdit;
    tipo_asoc1: TDBEdit;
    ADOFacturas: TADOQuery;
    DataFacturas: TDataSource;
    zona_asoc1: TDBEdit;
    servicios_asoc1: TDBEdit;
    estado_asoc1: TDBEdit;
    PanelFactura: TsPanel;
    sPanel2: TsPanel;
    ADODetalle: TADOQuery;
    DataDetalle: TDataSource;
    ADODetalleid_detfact: TAutoIncField;
    ADODetalleid_fact: TIntegerField;
    ADODetallecant_detfact: TIntegerField;
    ADODetalledescip_detfact: TStringField;
    ADODetallepunit_detfact: TFloatField;
    ADODetalledesc_detfact: TFloatField;
    ADODetalletotal_detfact: TFloatField;
    PanelDatos: TsPanel;
    Panel2: TPanel;
    sLabelFX4: TsLabelFX;
    DBGPrime: TDBGrid;
    DBGFacturas: TDBGrid;
    Panel4: TPanel;
    Panel5: TPanel;
    sPanel4: TsPanel;
    Shape17: TShape;
    Label5: TLabel;
    DBConsumo: TDBEdit;
    sPanel5: TsPanel;
    Shape18: TShape;
    Label13: TLabel;
    DBMultas: TDBEdit;
    sPanel6: TsPanel;
    Shape19: TShape;
    Label14: TLabel;
    DBRecargos: TDBEdit;
    sPanel8: TsPanel;
    Shape21: TShape;
    Label19: TLabel;
    BCobrarfactura: TBitBtn;
    Bcancelar: TBitBtn;
    BSalir: TBitBtn;
    Panel6: TPanel;
    sLabelFX6: TsLabelFX;
    ADOFacturasid_lec: TAutoIncField;
    ADOFacturasid_usu: TIntegerField;
    ADOFacturasid_asoc: TIntegerField;
    ADOFacturasmes_lec: TStringField;
    ADOFacturasgestion_lec: TStringField;
    ADOFacturasanterior_lec: TFloatField;
    ADOFacturasactual_lec: TFloatField;
    ADOFacturasfechaant_lec: TDateField;
    ADOFacturasconsumo_lec: TFloatField;
    ADOFacturasfecha_lec: TDateField;
    ADOFacturashora_lec: TTimeField;
    ADOFacturastotalcons_lec: TFloatField;
    ADOFacturasfechahora_lec: TDateTimeField;
    ADOFacturasmonto_lec: TFloatField;
    ADOFacturasestado_lec: TStringField;
    ADOFacturastipo_asoc: TStringField;
    ADOFacturasservicios_asoc: TStringField;
    ADOFacturasid_fact: TAutoIncField;
    ADOFacturasnum_fact: TIntegerField;
    ADOFacturasnit_fact: TStringField;
    ADOFacturasrazon_fact: TStringField;
    ADOFacturasorden_fact: TStringField;
    ADOFacturasnitemisor_fact: TStringField;
    ADOFacturasllave_fact: TStringField;
    ADOFacturasfecha_fact: TDateField;
    ADOFacturashora_fact: TTimeField;
    ADOFacturasfechaemision_fact: TDateField;
    ADOFacturasmontoparc_fact: TFloatField;
    ADOFacturasdesc_fact: TFloatField;
    ADOFacturasmontototal_fact: TFloatField;
    ADOFacturascadenaqr_fact: TStringField;
    ADOFacturascodcontrol_fact: TStringField;
    ADOFacturasliteral_fact: TStringField;
    ADOFacturasfechahora_fact: TDateTimeField;
    ADOFacturastipo_fact: TIntegerField;
    ADOFacturasfechavenc_fact: TDateField;
    ADOFacturasestado_fact: TStringField;
    Panel7: TPanel;
    Panel8: TPanel;
    sLabelFX7: TsLabelFX;
    DBGRecargos: TDBGrid;
    DBGMultas: TDBGrid;
    ADORecargos: TADOQuery;
    DataRecargos: TDataSource;
    ADORecargosid_param: TAutoIncField;
    ADORecargosdescip_param: TStringField;
    ADORecargosdias_param: TIntegerField;
    ADORecargosmonto_param: TFloatField;
    ADORecargosestado: TStringField;
    ADORecargosdetalle_param: TStringField;
    ADOSumaMultas: TADOQuery;
    DataSumaMultas: TDataSource;
    ADOSumaRecargos: TADOQuery;
    DataSumaRecargos: TDataSource;
    ADOSumaMultasmultas: TFloatField;
    ADOSumaRecargosrecargos: TFloatField;
    ADOFacturastotalmultas_: TIntegerField;
    ETotal_Bs: TEdit;
    CheckImprimir: TsCheckBox;
    SpeedButton9: TSpeedButton;
    PanelModif: TsPanel;
    Label15: TLabel;
    Label22: TLabel;
    sLabelFX5: TsLabelFX;
    XGuardar: TsBitBtn;
    Xsalir: TsBitBtn;
    nit2: TEdit;
    razon2: TEdit;
    Operaciones1: TMenuItem;
    Reimprimirultimafactura1: TMenuItem;
    Reimpresiones1: TMenuItem;
    sLabelFX8: TsLabelFX;
    ComboTipo: TsComboBox;
    AnularFactura1: TMenuItem;
    Edit1: TEdit;
    CheckFacturar: TsCheckBox;
    Cobrosporanticipado1: TMenuItem;
    ADOConsumo: TADOQuery;
    DataConsumo: TDataSource;
    ADOConsumoconsumo: TFloatField;
    CheckCopia: TsCheckBox;
    DBNavMultas: TDBNavigator;
    DBNavRecargos: TDBNavigator;
    BDesactivar: TsBitBtn;
    Modificardetallefactura1: TMenuItem;
    sLabelFX9: TsLabelFX;
    Suma_facturas: TEdit;
    sBitBtn1: TsBitBtn;
    ADOFacturascantfact_lec: TIntegerField;
    ADOFacturasmontofact_lec: TFloatField;
    ADOFacturastotalconsumo_fact: TFloatField;
    ADOFacturastotalaportes_fact: TFloatField;
    ADOFacturastotalrecargos_fact: TFloatField;
    ADOFacturasexento_fact: TFloatField;
    ADOFacturasice_fact: TFloatField;
    checkmultas: TCheckBox;
    ADORecargosmoradias: TIntegerField;
    procedure Iniciar();
    procedure Salir1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure NuevoRegistro();
    procedure HabilitarPanelGeneral();
    procedure DeshabilitarPanelGeneral();
    procedure SpeedButton4Click(Sender: TObject);
    procedure BFoto2Click(Sender: TObject);
    procedure DesdeWeb();
    procedure Redimensionar(Imagen: TGraphic; Ancho, Alto: Integer);
    procedure BFoto1Click(Sender: TObject);
    procedure tipo_asoc11KeyPress(Sender: TObject; var Key: Char);
    procedure Salto();
    procedure id_asoc1KeyPress(Sender: TObject; var Key: Char);
    procedure nombres_asoc1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ModificarRegistro();
    procedure tipo_asoc1KeyPress(Sender: TObject; var Key: Char);
    procedure estado_asoc1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGPrimeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure MostrarBarraEstado();
    procedure SBuscarClick(Sender: TObject);
    procedure Buscar();
    procedure Consultar(SQL:String);
    procedure Ejecutar(SQL:String);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ECodigoKeyPress(Sender: TObject; var Key: Char);
    procedure EApellidosKeyPress(Sender: TObject; var Key: Char);
    procedure ENombresKeyPress(Sender: TObject; var Key: Char);
    procedure BitGuardarClick(Sender: TObject);
    procedure BitCancelarClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure sBitCodigoClick(Sender: TObject);
    procedure codigo_asoc1Exit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBGFacturasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGPrimeCellClick(Column: TColumn);
    procedure FacturasPendientes();
    procedure ConsultarFacturas(SQL:String);
    procedure ConsultarDetalle(SQL:String);
    procedure DBGMultasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGRecargosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ConsultarRecargos(SQL:String);
    procedure SumarMultas(SQL:String);
    procedure SumarRecargos(SQL:String);
    procedure RegistrarFactura();
    procedure SpeedButton9Click(Sender: TObject);
    procedure XGuardarClick(Sender: TObject);
    procedure XsalirClick(Sender: TObject);
    procedure Reimprimirultimafactura1Click(Sender: TObject);
    procedure Reimpresiones1Click(Sender: TObject);
    procedure DetalleFactura();
    procedure DBGFacturasCellClick(Column: TColumn);
    procedure AnularFactura1Click(Sender: TObject);
    procedure AnularFactura();
    procedure Cobrosporanticipado1Click(Sender: TObject);
    procedure ConsultarSumaConsumo(SQL:String);

    procedure DBGFacturasKeyPress(Sender: TObject; var Key: Char);
    procedure Modificardetallefactura1Click(Sender: TObject);
    procedure BDesactivarClick(Sender: TObject);
    procedure SumarFacturas();
    procedure DBGPrimeKeyPress(Sender: TObject; var Key: Char);
    procedure sBitBtn1Click(Sender: TObject);
    procedure SumarFacturasParciales();
    procedure checkmultasClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Bandera:integer;
    id_lectura:String;

  end;

var
  FormCobrarFactura: TFormCobrarFactura;

implementation

uses frmLogin, webC, FrmRepAsociado, FrmZonas, FrmServicios,
  FrmDosificacion, frmEmpresa, numeroaletras, FrmRepFact1, FrmCodigoControl,
  FrmReImpresion, FrmRepFact2, frmPagosAdelantados;

{$R *.dfm}

procedure TFormCobrarFactura.MostrarBarraEstado();
var
    cant:String;
begin
    if not ADOPrime.IsEmpty then
        cant := 'Registro(s): '+inttoStr(ADOPrime.Recordcount)
    else
        cant := 'Registro(s): 0';

    BarraEstado.Panels[1].text := cant;
end;

procedure TFormCobrarFactura.Iniciar();
begin

    Show;
    id_lectura:='';
    if not ADOPrime.Active then ADOPrime.Active:=true;
    if not ADOAsociado.Active then ADOAsociado.Active:=true;

    Bandera:=0;
    DeshabilitarPanelGeneral;
    MostrarBarraEstado;

//**************************************
// Limpiar el buscador
    ECodigo.Clear;
    EApellidos.Clear;
    ENombres.Clear;
    ComboTipo.Text:='PENDIENTE';
//**************************************

//**************************************
    if FormLogin.Config[2] then //Imprimir factura automaticamente
       CheckImprimir.Checked:=true
    else
       CheckImprimir.Checked:=false;

    if FormLogin.Config[7] then //Imprimir copia automaticamente
       CheckCopia.Checked:=true
    else
       CheckCopia.Checked:=false;

    if FormLogin.Config[5] then //Si esta activado el modulo de facturacion
       CheckFacturar.Checked:=true
    else
       CheckFacturar.Checked:=false;
//**************************************


    ECodigo.SelectAll;
    ECodigo.SetFocus;

end;

procedure TFormCobrarFactura.Salir1Click(Sender: TObject);
begin
    Close;
end;

procedure TFormCobrarFactura.HabilitarPanelGeneral();
begin
    PanelGeneral.Enabled := true;

    id_asoc1.color := clSilver;
    tipo_asoc1.color := clWhite;
    nombres_asoc1.color := clWhite;
    apellidos_asoc1.color := clWhite;
    //ci_asoc1.color := clWhite;
    direccion_asoc1.color := clWhite;
    fechanac_asoc1.color := clWhite;
    telefono_asoc1.color := clWhite;
    codigo_asoc1.color := clWhite;
    nit_asoc1.color := clWhite;
    razon_soc1.color := clWhite;
    estado_asoc1.color := clWhite;
    fechahora_asoc1.color := clSilver;
    ci_asoc1.color := clWhite;
    exp_asoc1.color := clWhite;
    zona_asoc1.color := clWhite;
    medidor_asoc1.color := clWhite;
    servicios_asoc1.color := clWhite;
end;

procedure TFormCobrarFactura.DeshabilitarPanelGeneral();
begin
    Bandera := 0;
    PanelGeneral.Enabled := true;
    id_asoc1.color := clGray;
    tipo_asoc1.color := clGray;
    nombres_asoc1.color := clGray;
    apellidos_asoc1.color := clGray;
    //ci_asoc1.color := clGray;
    direccion_asoc1.color := clGray;
    fechanac_asoc1.color := clGray;
    telefono_asoc1.color := clGray;
    codigo_asoc1.color := clGray;
    nit_asoc1.color := clGray;
    razon_soc1.color := clGray;
    estado_asoc1.color := clGray;
    fechahora_asoc1.color := clGray;
    ci_asoc1.color := clGray;
    exp_asoc1.color := clGray;
    zona_asoc1.color := clGray;
    medidor_asoc1.color := clGray;
    servicios_asoc1.color := clGray;

end;

procedure TFormCobrarFactura.NuevoRegistro();
begin

    if Bandera=0 then
    begin
        HabilitarPanelGeneral;
        Bandera := 1;//Nuevo registro en curso
        ADOPrime.Cancel;
        ADOPrime.Insert;
        codigo_asoc1.SetFocus;
    end
    else
    begin

        if application.messagebox(Pchar('Actualmente tiene un proceso en curso. ¿Desea cancelar la operación actual?'),'Alerta',mb_iconquestion+mb_yesno)=6 then
        begin
            Bandera:=0;
            NuevoRegistro;
        end;
        
    end;

end;


procedure TFormCobrarFactura.SpeedButton1Click(Sender: TObject);
begin
    NuevoRegistro;
end;

procedure TFormCobrarFactura.SpeedButton4Click(Sender: TObject);
begin
    ADOPrime.Cancel;
    DeshabilitarPanelGeneral;
end;

procedure TFormCobrarFactura.BFoto2Click(Sender: TObject);
begin
    FormWebCam.bandera:=1;
    FormWebCam.show;
    FormWebCam.BInicar.Click;
end;

procedure TFormCobrarFactura.Redimensionar(Imagen: TGraphic; Ancho, Alto: Integer);
var
  Bitmap: TBitmap;
begin
  Bitmap:= TBitmap.Create;
  try
    Bitmap.Width:= Ancho;
    Bitmap.Height:= Alto;
    Bitmap.Canvas.StretchDraw(Bitmap.Canvas.ClipRect,Imagen);
    Imagen.Assign(Bitmap);
    Imagen.SaveToFile('c:\Temp.bmp');
  finally
    Bitmap.Free;
  end;
end;

procedure TFormCobrarFactura.DesdeWeb();
Var
        Extension,img:String;
        Tam:Integer;
         j: TJPEGImage;
         b: TBitmap;
begin

 j:=TJPEGImage.Create;
 b:=TBitmap.Create;


        //PicDialog.Execute;

        DirImagen.Text:='c:\temp.bmp';
        DirImagen.Text:='c:\temp.bmp';
        if FileExists(DirImagen.Text) then
        Begin
             img:=DirImagen.Text;
             Tam:=Length(Img);
             Extension:=img[Tam-2]+img[Tam-1]+img[Tam];

             // si es BMP
             if (Extension='BMP') or (Extension='bmp') then
             Begin
                //*****************************************
                Image1.Picture.LoadFromFile('c:\Temp.bmp');
                redimensionar(Image1.Picture.Graphic,60,60);
                DBImage1.Picture.LoadFromFile('c:\Temp.bmp');
                //*****************************************
             End;
             // Si es JPG
             if (Extension='JPG') or (Extension='jpg') then
             Begin
                j.LoadFromFile(img);//el jpg
                b.Assign(j);
                b.SaveToFile('C:\temp.bmp');

                //*****************************************
                Image1.Picture.LoadFromFile('C:\temp.bmp');
                redimensionar(Image1.Picture.Graphic,60,60);
                Image1.Picture.LoadFromFile('C:\temp.bmp');
                DBImage1.Picture.LoadFromFile('C:\temp.bmp');
                //*****************************************
             End;

             // Si es PNG
             if (Extension='PNG') or (Extension='png') then
             Begin
                 //*****************************************
                Image1.Picture.LoadFromFile(DirImagen.Text);
                redimensionar(Image1.Picture.Graphic,60,60);
                DBImage1.Picture.LoadFromFile('C:\temp.bmp');
                //*****************************************
             End;

        End;

 b.Free;
 j.Free;

end;///************

procedure TFormCobrarFactura.BFoto1Click(Sender: TObject);
Var
        Extension,img:String;
        Tam:Integer;
         j: TJPEGImage;
         b: TBitmap;
begin

 j:=TJPEGImage.Create;
 b:=TBitmap.Create;


        PicDialog.Execute;
        
        DirImagen.Text:=PicDialog.FileName;

        if FileExists(DirImagen.Text) then
        Begin
             img:=DirImagen.Text;
             Tam:=Length(Img);
             Extension:=img[Tam-2]+img[Tam-1]+img[Tam];

             // si es BMP
             if (Extension='BMP') or (Extension='bmp') then
             Begin
                //*****************************************


                Image1.Picture.LoadFromFile('c:\Temp.bmp');
                redimensionar(Image1.Picture.Graphic,200,217);
                DBImage1.Picture.LoadFromFile('c:\Temp.bmp');
                //*****************************************
             End;
             // Si es JPG
             if (Extension='JPG') or (Extension='jpg') then
             Begin
                j.LoadFromFile(img);//el jpg
                b.Assign(j);
                b.SaveToFile('C:\temp.bmp');

                //*****************************************
                Image1.Picture.LoadFromFile('C:\temp.bmp');
                redimensionar(Image1.Picture.Graphic,200,217);
                Image1.Picture.LoadFromFile('C:\temp.bmp');
                DBImage1.Picture.LoadFromFile('C:\temp.bmp');
                //*****************************************
             End;

             // Si es PNG
             if (Extension='PNG') or (Extension='png') then
             Begin
                 //*****************************************
                Image1.Picture.LoadFromFile(DirImagen.Text);
                redimensionar(Image1.Picture.Graphic,200,217);
                DBImage1.Picture.LoadFromFile('C:\temp.bmp');
                //*****************************************
             End;

        End;

 b.Free;
 j.Free;

end;

procedure TFormCobrarFactura.Salto();
begin
      Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
end;

procedure TFormCobrarFactura.tipo_asoc11KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then Salto;
end;

procedure TFormCobrarFactura.id_asoc1KeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then Salto;
end;

procedure TFormCobrarFactura.nombres_asoc1KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then Salto;
end;

procedure TFormCobrarFactura.modificarRegistro();
begin

    if Bandera=0 then
    begin
        HabilitarPanelGeneral;
        Bandera := 2;//Modificar registro en curso
        ADOPrime.Cancel;
        ADOPrime.Edit;
        codigo_asoc1.SetFocus;
    end
    else
    begin

        if application.messagebox(Pchar('Actualmente tiene un proceso en curso. ¿Desea cancelar la operación actual?'),'Alerta',mb_iconquestion+mb_yesno)=6 then
        begin
            Bandera:=0;
            NuevoRegistro;
        end;
        
    end;

end;
procedure TFormCobrarFactura.SpeedButton2Click(Sender: TObject);
begin
    ModificarRegistro;
end;

procedure TFormCobrarFactura.tipo_asoc1KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then Salto;
end;

procedure TFormCobrarFactura.estado_asoc1KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then Salto;
end;

procedure TFormCobrarFactura.DBGPrimeDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ADOPrime.RecNo > 0 then
  begin
    if Column.Title.Caption = 'Nº' then
       DBGPrime.Canvas.TextOut(Rect.Left + 2, Rect.Top, IntToStr(ADOPrime.RecNo));
  end;
end;

procedure TFormCobrarFactura.Consultar(SQL:String);
begin

    try
        ADOPrime.Close;
        ADOPrime.SQL.Clear;
        ADOPrime.SQL.Add(SQL);
        ADOPrime.Open;

        MostrarBarraEstado;
    except
        Showmessage('ERROR: Al ejecutar la sentencia SQL: '+SQL);
    end;
end;

procedure TFormCobrarFactura.Ejecutar(SQL:String);
begin

    try
        ADOPrime.Close;
        ADOPrime.SQL.Clear;
        ADOPrime.SQL.Add(SQL);
        ADOPrime.ExecSQL;

        MostrarBarraEstado;
    except
        Showmessage('ERROR: Al ejecutar la sentencia SQL: '+SQL);
    end;
end;

procedure TFormCobrarFactura.Buscar();
var
    SQL : String;
begin

    SQL := 'select * from asociado where '+
           ' (nombres_asoc like '+quotedStr('%'+ENombres.Text+'%')+' and '+
           ' apellidos_asoc like '+quotedStr('%'+EApellidos.Text+'%')+') or '+
           ' (codigo_asoc ='+quotedStr(ECodigo.Text)+' or codigo_asoc ='+quotedStr(ECodigo.Text)+')'+
           ' order by apellidos_asoc ';
    Consultar(SQL);

    if not ADOPrime.IsEmpty then
        DBGPrime.SetFocus;
end;

procedure TFormCobrarFactura.SBuscarClick(Sender: TObject);
begin
    Buscar();
end;

procedure TFormCobrarFactura.SpeedButton3Click(Sender: TObject);
begin

    if application.messagebox(Pchar('¿Desea eliminar el Registro seleccionado?'),'Alerta',mb_iconquestion+mb_yesno)=6 then
    begin
        ADOPrime.Delete;
    end;

end;

procedure TFormCobrarFactura.ECodigoKeyPress(Sender: TObject; var Key: Char);
var
    SQL : String;
begin


    if key=#13 then
    begin
        //******************************
        // Inicializar facturas y detalle en cero
        ADOFacturas.Active:=false;
        ADODetalle.Active:=false;
        //**********************************

        if Ecodigo.Text<>'' then
        begin

            SQL := 'select * from asociado where codigo_asoc like '+quotedStr('%'+ECodigo.Text+'%')+' or ci_asoc='+quotedStr(ECodigo.Text);
            Consultar(SQL);

            if not ADOPrime.IsEmpty then
                DBGPrime.SetFocus;
        end;
        //Salto;
    end;

end;

procedure TFormCobrarFactura.EApellidosKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
        Buscar;
end;

procedure TFormCobrarFactura.ENombresKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
        Buscar;
end;

procedure TFormCobrarFactura.RegistrarFactura();
var
    SQL,id_fact,cant_detfact,descip_detfact,punit_detfact,desc_detfact,total_detfact,tipo_detfact,id_lec:String;
    i,fin,tam,numerofact:integer;
    tipo_factura,ice,exento:String;
    totalfactura : String;
begin

    //Ingresar al Detalle de factura
    if CheckFacturar.checked then tipo_factura:='1' //si el check de generar factura esta activado
    else Tipo_factura:='0';

    // obtenemos el di de factura y lectura
    id_fact:=ADOFacturas.fieldbyname('id_fact').AsString;
    id_lec:=ADOFacturas.fieldbyname('id_lec').AsString;



    if not ADORecargos.IsEmpty then // Existen recargos ni multas oseas si el dataset no esta vacio
    begin

        fin:=ADORecargos.RecordCount;
        ADORecargos.First;

        for i:=1 to fin do
        begin

            cant_detfact:='1';
            descip_detfact:=quotedStr(ADORecargos.fieldbyname('detalle_param').AsString);
            punit_detfact:=FormLogin.sinComa(ADORecargos.fieldbyname('monto_param').AsString);
            desc_detfact:='0';
            total_detfact:=FormLogin.sinComa(ADORecargos.fieldbyname('monto_param').AsString);
            tipo_detfact:='2'; //0 consumo; 1 multas y aportes 2 recargos y reconexiones

            //registramos las multa en detalle_factura
            SQL:='insert into detalle_factura(id_fact,cant_detfact,descip_detfact,punit_detfact,desc_detfact,total_detfact,tipo_detfact) values('+
                 id_fact+','+cant_detfact+','+descip_detfact+','+punit_detfact+','+desc_detfact+','+total_detfact+','+tipo_detfact+')';

            FormLogin.Ejecutarx(SQL);
            ADORecargos.Next;
        end;
    end;

    tam:=  StrLen(pchar(ETotal_Bs.Text));
    //showmessage('PARTE 1');

    //Recuperar factura en curso y actualizar

    formLogin.Consultarx('select * from dosificacion');
    numerofact:=formLogin.ADOX.fieldbyname('numfact_dosif').AsInteger + 1;
    FormLogin.Ejecutarx('update dosificacion set numfact_dosif='+inttostr(numerofact));
    //showmessage('PARTE 2');

    //*********************************************

    totalfactura :=   FormatFloat('#,#0.00',StrToFloat(FormLogin.sinComa(ETotal_Bs.Text)) - StrToFloat(FormLogin.sinComa(ADOFacturas.fieldbyname('exento_fact').AsString)) - StrToFloat(FormLogin.sinComa(ADOFacturas.fieldbyname('ice_fact').AsString)));
    exento :=   FormatFloat('#,#0.00', StrToFloat(FormLogin.sinComa(ADOFacturas.fieldbyname('exento_fact').AsString)));
    ice :=   FormatFloat('#,#0.00',StrToFloat(FormLogin.sinComa(ADOFacturas.fieldbyname('ice_fact').AsString)));

    //showmessage('PARTE 3');

    //Hacemos un update a la factura, para consolidad su cobranza

    SQL:='update factura set '+
    'num_fact='+inttostr(numerofact)+
    ',nit_fact='+quotedStr(nit_asoc1.Text)+
    ',razon_fact='+quotedStr(razon_soc1.Text)+
    ',orden_fact='+quotedStr(formDosificacion.ADODosif.fieldbyname('numorden_dosif').AsString)+
    ',nitemisor_fact='+quotedStr(FormEmpresa.ADOPrime.fieldbyname('nit_emp').AsString)+
    ',llave_fact='+quotedStr(formDosificacion.ADODosif.fieldbyname('llave_dosif').AsString)+
    ',fecha_fact='+quotedStr(FormLogin.Fecha(Date))+
    ',hora_fact='+QuotedStr(FormatdateTime('HH:mm:ss',Time))+
    ',fechaemision_fact='+quotedStr(FormLogin.Fecha(formDosificacion.ADODosif.fieldbyname('fechalim_dosif').Value))+
    ',montoparc_fact='+FormLogin.sinComa(ETotal_Bs.Text)+
    ',desc_fact='+'0'+
    ',totalconsumo_fact='+FormLogin.sinComa(DBConsumo.Text)+
    ',totalaportes_fact='+FormLogin.sinComa(DBMultas.Text)+
    ',totalrecargos_fact='+FormLogin.sinComa(DBRecargos.Text)+
    ',montototal_fact='+FormLogin.sinComa(ETotal_Bs.Text)+
    ',cadenaqr_fact='+quotedStr(FormEmpresa.ADOPrime.fieldbyname('nit_emp').AsString+'|'+
              inttoStr(numerofact)+'|'+formDosificacion.ADODosif.fieldbyname('numorden_dosif').AsString+'|'+
              formatdatetime('dd/mm/yyyy',date)+'|'+ETotal_Bs.Text+'|'+totalfactura+'|'+
              FormCodigoControl.CodigodeControl(inttoStr(numerofact),nit_asoc1.Text,formatdatetime('yyyymmdd',date),formLogin.sincoma(totalfactura),formDosificacion.ADODosif.fieldbyname('llave_dosif').AsString,formDosificacion.ADODosif.fieldbyname('numorden_dosif').AsString)+'|'+
              nit_asoc1.Text+'|'+exento+'|'+ice+'|'+exento+'|0')+
    ',codcontrol_fact='+quotedStr(FormCodigoControl.CodigodeControl(inttoStr(numerofact),Trim(nit_asoc1.Text),formatdatetime('yyyymmdd',date),FormLogin.sinComa(totalfactura),formDosificacion.ADODosif.fieldbyname('llave_dosif').AsString,formDosificacion.ADODosif.fieldbyname('numorden_dosif').AsString))+
    ',literal_fact='+quotedStr(FormNumeroaLetras.NumeroToLetra(trunc(StrToFloat(FormLogin.sinComa(ETotal_Bs.Text))))+' '+ETotal_Bs.Text[tam-1]+ETotal_Bs.Text[tam]+'/100')+
    ',tipo_fact='+tipo_factura+
    ',estado_fact='+quotedStr('CANCELADA')+
    ',id_usu='+FormLogin.ADOUsuario.Fieldbyname('id_usu').AsString+
    ' where id_fact='+id_fact;
    //showmessage('PARTE 4');
    FormLogin.Ejecutarx(SQL);
    //Actualiza e indica el numero de factura actual

     id_lectura:=id_lec;

    //Si esta activada la opcion de impresion de preavisos.
    if CheckImprimir.Checked then
    begin


        if formLogin.Config[1] then //Si esta activada la impresora facturadora
        begin
            FormRepFact2.Consulta(id_lec);
            FormRepFact2.Imprimir;
        end
        else
        begin
            FormRepFact1.Consulta(id_lec);
            FormRepFact1.Imprimir;

            if CheckCopia.Checked then
                FormRepFact1.ImprimirCopia;

        end;
    // showmessage('PARTE 5');
    end;


    ADOFacturas.Requery();

end;

procedure TFormCobrarFactura.BitGuardarClick(Sender: TObject);
begin
        //Primero ir a la primera factura y actualizar sus datos
            ADOFacturas.First;
            DetalleFactura;

        if ADODetalle.Active then
        begin

            if (not ADOFacturas.IsEmpty) and (not ADODetalle.IsEmpty) then //Si la factura esta vigente para ser cobrada
            begin
                if ADOFacturas.RecNo=1 then
                    RegistrarFactura
                else showmessage('ERROR: Solo se puede cobrar la primera factura..!');

            end
            else showmessage('ERROR: Debe seleccionar una factura...!');

        end
        else showmessage('ERROR: Debe seleccionar una factura');



end;

procedure TFormCobrarFactura.BitCancelarClick(Sender: TObject);
begin
    DeshabilitarPanelGeneral;
end;

procedure TFormCobrarFactura.BitSalirClick(Sender: TObject);
begin   

        //******************************
        // Inicializar facturas y detalle en cero
        ADOPrime.Active:=false;
        ADOFacturas.Active:=false;
        ADODetalle.Active:=false;
        //**********************************

    Close;
end;

procedure TFormCobrarFactura.sBitCodigoClick(Sender: TObject);
var
    Codigo:String;
begin
    Randomize;
    Codigo:= chr(65+round(Random(26)))+chr(65+round(Random(26)))+chr(65+round(Random(26)))+'-'+inttoStr(round(200+Random(26)));
    codigo_asoc1.Text:=Codigo;
    nombres_asoc1.SetFocus;
end;

procedure TFormCobrarFactura.codigo_asoc1Exit(Sender: TObject);
begin
    if codigo_asoc1.Text='' then sBitCodigo.Click;
end;

procedure TFormCobrarFactura.SpeedButton5Click(Sender: TObject);
begin
    FormRepAsociado.Iniciar;
end;

procedure TFormCobrarFactura.DBGFacturasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ADOFacturas.RecNo > 0 then
  begin
    if Column.Title.Caption = 'Nº' then
       DBGFacturas.Canvas.TextOut(Rect.Left + 2, Rect.Top, IntToStr(ADOFacturas.RecNo));
  end;
end;

procedure TFormCobrarFactura.ConsultarDetalle(SQL:String);
begin

    try
        ADODetalle.Close;
        ADODetalle.SQL.Clear;
        ADODetalle.SQL.Add(SQL);
        ADODetalle.Open;
    except
        Showmessage('ERROR: Al ejecutar la sentencia SQL: '+SQL);
    end;
end;

procedure TFormCobrarFactura.ConsultarSumaConsumo(SQL:String);
begin

    try
        ADOConsumo.Close;
        ADOConsumo.SQL.Clear;
        ADOConsumo.SQL.Add(SQL);
        ADOConsumo.Open;
    except
        Showmessage('ERROR: Al ejecutar la sentencia SQL: '+SQL);
    end;
end;

procedure TFormCobrarFactura.ConsultarFacturas(SQL:String);
begin

    try
        //showmessage(SQL);
        ADOFacturas.Close;
        ADOFacturas.SQL.Clear;
        ADOFacturas.SQL.Add(SQL);
        ADOFacturas.Open;
    except
        Showmessage('ERROR: Al ejecutar la sentencia SQL: '+SQL);
    end;
end;

procedure TFormCobrarFactura.ConsultarRecargos(SQL:String);
begin

    try
        ADORecargos.Close;
        ADORecargos.SQL.Clear;
        ADORecargos.SQL.Add(SQL);
        ADORecargos.Open;
    except
        Showmessage('ERROR: Al ejecutar la sentencia SQL: '+SQL);
    end;
end;


procedure TFormCobrarFactura.SumarMultas(SQL:String);
begin

    try
        ADOSumaMultas.Close;
        ADOSumaMultas.SQL.Clear;
        ADOSumaMultas.SQL.Add(SQL);
        ADOSumaMultas.Open;
    except
        Showmessage('ERROR: Al ejecutar la sentencia SQL: '+SQL);
    end;
end;

procedure TFormCobrarFactura.SumarRecargos(SQL:String);
begin

    try
        ADOSumaRecargos.Close;
        ADOSumaRecargos.SQL.Clear;
        ADOSumaRecargos.SQL.Add(SQL);
        ADOSumaRecargos.Open;

        Edit1.Text := Edit1.Text +' Para generar la grilla de recargos: '+ SQL;
    except
        Showmessage('ERROR: Al ejecutar la sentencia SQL: '+SQL);
    end;
end;

procedure TFormCobrarFactura.DetalleFactura();
var
    SQL,idlec:String;
begin

try
    if not ADOPrime.IsEmpty then
    begin

        if NOT ADOFacturas.IsEmpty then
        begin
            idlec:=ADOFacturas.fieldbyname('id_lec').AsString;

            //Mostrar la grilla de Detalle de factura
            SQL:='select * from detalle_factura where id_fact='+ ADOFacturas.fieldbyname('id_fact').AsString;
            Edit1.Text:= Edit1.Text +' Mostrar la grilla de Detalle de factura: '+ SQL;
            ConsultarDetalle(SQL);

            //Mostrar la suma de consumo
            SQL:='select sum(cant_detfact*punit_detfact) as consumo from detalle_factura where tipo_detfact=0 and id_fact='+ ADOFacturas.fieldbyname('id_fact').AsString;
            Edit1.Text:= Edit1.Text +'  Mostrar la suma de consumo: '+ SQL;
            ConsultarSumaConsumo(SQL);


            //Mostrar la suma de Recargos

            if checkmultas.Checked then
            begin

            SQL:='select p.id_param,p.descip_param,p.dias_param,p.monto_param,p.estado,p.detalle_param,  (DATEDIFF(date(now()), t.fecha_lec)) as moradias '+
                 'from parametros p,(select * from lectura where id_lec='+idlec+') as t '+
                 'where p.estado='+quotedStr('ACTIVO')+' and (DATEDIFF(date(now()), t.fecha_lec)) >= p.dias_param and '+
                 'p.monto_param >0 ';
            Edit1.Text:= Edit1.Text +' CONSULTA PARA OBTENER RECARGOS POR MORA: '+ SQL;
            end
            else
            begin

            SQL:='select p.id_param,p.descip_param,p.dias_param,p.monto_param,p.estado,p.detalle_param,  (DATEDIFF(date(now()), t.fecha_lec)) as moradias '+
                 'from parametros p,(select * from lectura where id_lec='+idlec+') as t '+
                 'where p.estado='+quotedStr('XXXXXXX');
            Edit1.Text:= Edit1.Text +' CONSULTA PARA OBTENER RECARGOS POR MORA: '+ SQL;
            end;
            ConsultarRecargos(SQL);


            //Sumar el detalle de fatura tipo 1
            SQL:='select if(sum(total_detfact)>0,sum(total_detfact),0) as multas from detalle_factura where id_fact='+ ADOFacturas.fieldbyname('id_fact').AsString+' and tipo_detfact=1';

            Edit1.Text:= Edit1.Text +'  Sumar el detalle de fatura tipo 1:  '+ SQL;
            SumarMultas(SQL);

            if checkmultas.Checked then
            begin
            SQL:='select if(sum(t1.monto_param)>0,sum(t1.monto_param),0) as recargos from (select p.monto_param '+
                 'from parametros p,(select * from lectura where id_lec='+idlec+') as t '+
                 'where p.estado='+quotedStr('ACTIVO')+' and (DATEDIFF(date(now()), t.fecha_lec)) >= p.dias_param and '+
                 'p.monto_param >0) as t1';

            end
            else
            begin
                SQL:='select SUM(0) as recargos';
            end;

             Edit1.Text:= Edit1.Text +' Si multas esta checked:  '+ SQL;

            SumarRecargos(SQL);

            ETotal_Bs.Text:=FormatFloat('#,#0.00',strToFloat(formLogin.sinComa(DBConsumo.Text))+strToFloat(formLogin.sinComa(DBMultas.Text))+strToFloat(formLogin.sinComa(DBRecargos.Text)));

       end;

    end
    else showmessage('ERROR: Debe seleccionar un usuario...!');
except
    showmessage('ERROR: Ocurrio un problema el ajecutar la sentencia SQL: '+SQL);
end;

end;

procedure TFormCobrarFactura.FacturasPendientes();
var
    SQL,condicion:String;
begin

try
    if not ADOPrime.IsEmpty then
    begin
        //Facturas

        if comboTipo.Text='PENDIENTE' then condicion:=' and f.estado_fact='+quotedStr(ComboTipo.text);
        if comboTipo.Text='CANCELADA' then condicion:=' and f.estado_fact='+quotedStr(ComboTipo.text);
        if comboTipo.Text='ANULADA' then condicion:=' and f.estado_fact='+quotedStr(ComboTipo.text);
        if comboTipo.Text='TODAS' then condicion:=' ';


        SQL:='select l.*,f.* from lectura l, factura f '+
             'where l.id_lec = f.id_lec '+condicion+' and '+
             'l.id_asoc='+ADOPrime.fieldbyname('id_asoc').AsString;
        edit1.Text:=SQL;
        ConsultarFacturas(SQL);

        //Si no hay facturas pendientes desactivar los ADOs

            ADODetalle.Active:=False;
            ADORecargos.Active:=False;
            ADOSumaMultas.Active:=False;
            ADOSumaRecargos.Active:=False;

        //Detalle de facturas

 {       if NOT ADOFacturas.IsEmpty then
        begin
            idlec:=ADOFacturas.fieldbyname('id_lec').AsString;

           SQL:='select * from detalle_factura where id_fact='+ ADOFacturas.fieldbyname('id_fact').AsString;
            ConsultarDetalle(SQL);

            //Detalle de Recargos
            SQL:='select p.id_param,p.descip_param,p.dias_param,p.monto_param,p.estado,p.detalle_param,  (DATEDIFF(date(now()), t.fecha_lec)) as moradias '+
                 'from parametros p,(select * from lectura where id_lec='+idlec+') as t '+
                 'where p.estado='+quotedStr('ACTIVO')+' and (DATEDIFF(date(now()), t.fecha_lec)) >= p.dias_param and '+
                 'p.monto_param >0 ';
            ConsultarRecargos(SQL);

            SQL:='select if(sum(total_detfact)>0,sum(total_detfact),0) as multas from detalle_factura where id_fact='+ ADOFacturas.fieldbyname('id_fact').AsString;
            SumarMultas(SQL);

            SQL:='select if(sum(t1.monto_param)>0,sum(t1.monto_param),0) as recargos from (select p.monto_param '+
                 'from parametros p,(select * from lectura where id_lec='+idlec+') as t '+
                 'where p.estado='+quotedStr('ACTIVO')+' and (DATEDIFF(date(now()), t.fecha_lec)) >= p.dias_param and '+
                 'p.monto_param >0) as t1';
            SumarRecargos(SQL);

            ETotal_Bs.Text:=FormatFloat('#,#0.00',strToFloat(DBConsumo.Text)+strToFloat(DBMultas.Text)+strToFloat(DBRecargos.Text));

       end;
 }
    end
    else showmessage('ERROR: Debe seleccionar un usuario...!');
except
    showmessage('ERROR: Ocurrio un problema el ajecutar la sentencia SQL: '+SQL);
end;

end;

procedure TFormCobrarFactura.DBGPrimeCellClick(Column: TColumn);
begin
    FacturasPendientes;
end;

procedure TFormCobrarFactura.DBGMultasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ADODetalle.RecNo > 0 then
  begin
    if Column.Title.Caption = 'Nº' then
       DBGMultas.Canvas.TextOut(Rect.Left + 2, Rect.Top, IntToStr(ADODetalle.RecNo));
  end;
end;

procedure TFormCobrarFactura.DBGRecargosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ADORecargos.RecNo > 0 then
  begin
    if Column.Title.Caption = 'Nº' then
       DBGRecargos.Canvas.TextOut(Rect.Left + 2, Rect.Top, IntToStr(ADORecargos.RecNo));
  end;
end;

procedure TFormCobrarFactura.SpeedButton9Click(Sender: TObject);
begin
    if not ADOPrime.IsEmpty then
    begin
        nit2.Text:=nit_asoc1.Text;
        razon2.Text:=razon_soc1.Text;
        PanelModif.Visible:=true;
    end;
end;

procedure TFormCobrarFactura.XGuardarClick(Sender: TObject);
var
    SQL:String;
begin
    if (nit2.Text<>'') and (razon2.Text<>'') then
    begin

        if application.messagebox(Pchar('- ADVERTENCIA -'+chr(39)+'¿Esta Seguro que desea modificar los datos seleccionados?'),'Alerta',mb_iconquestion+mb_yesno)=6 then
        Begin
            SQL:='update asociado set '+
                 'nit_asoc='+quotedStr(nit2.Text)+',razon_asoc='+quotedStr(razon2.Text)+' '+
                 'where id_asoc='+ADOPrime.fieldbyname('id_asoc').AsString;
            FormLogin.Ejecutarx(SQL);
            PanelModif.Visible:=false;
            ADOPrime.Requery();
            Showmessage('Datos modificados con èxito...!');

        end;
        
    end;
end;

procedure TFormCobrarFactura.XsalirClick(Sender: TObject);
begin
    PanelModif.Visible:=false;  
end;

procedure TFormCobrarFactura.Reimprimirultimafactura1Click(
  Sender: TObject);
var
    id_lec:String;
begin
        formLogin.Consultary('select id_lec from factura order by fechahora_fact desc');
        formLogin.ADOY.First;

        if not FormLogin.ADOY.IsEmpty then
        begin
            FormLogin.ADOY.First;
            id_lec:=formLogin.ADOY.fieldbyname('id_lec').AsString;

            if formLogin.Config[1] then //Si esta activada la impresora facturadora
            begin
                FormRepFact2.Consulta(id_lec);
                FormRepFact2.VistaPrevia;
            end
            else
            begin
                FormRepFact1.Consulta(id_lec);
                FormRepFact1.VistaPrevia;
            end;

        end;
end;

procedure TFormCobrarFactura.Reimpresiones1Click(Sender: TObject);
begin

    FormReimpresion.Iniciar;

end;

procedure TFormCobrarFactura.DBGFacturasCellClick(Column: TColumn);
begin
    DetalleFactura;
end;

procedure TFormCobrarFactura.AnularFactura();
var
    SQL,id_fact,id_lect:String;
begin

    if (not ADOfacturas.IsEmpty) and (ADOFacturas.fieldbyname('estado_fact').asString='CANCELADA') then
    begin

        if application.messagebox(Pchar('Esta a punto de ANULAR una factura.'+CHR(13)+' ¿Desea Continua?'),'Alerta',mb_iconquestion+mb_yesno)=6 then
        begin

            //Establecer la factura anulada
            id_fact:=ADOFacturas.fieldbyname('id_fact').asString;
            id_lect:=ADOFacturas.fieldbyname('id_lec').asString;

            SQL:='insert into factura(id_lec,num_fact,nit_fact,razon_fact,orden_fact,nitemisor_fact,llave_fact,fecha_fact,hora_fact,fechaemision_fact,montoparc_fact,'+
                 'desc_fact,montototal_fact,cadenaqr_fact,codcontrol_fact,literal_fact,fechahora_fact,tipo_fact,fechavenc_fact,estado_fact) '+
                 '(select 0,num_fact,nit_fact,razon_fact,orden_fact,nitemisor_fact,'+quotedStr('0')+',fecha_fact,hora_fact,fechaemision_fact,0,0,0,cadenaqr_fact,'+quotedStr('0')+',literal_fact,fechahora_fact,tipo_fact,fechavenc_fact,'+quotedStr('ANULADA')+' from factura '+
                 'where id_fact='+id_fact+')';
            Edit1.Text:=SQL;
            FormLogin.Ejecutarx(SQL);

            //Eliminar los recargo del detalle
            SQL:='delete from detalle_factura where id_fact='+id_fact+' and tipo_detfact=2';
            FormLogin.Ejecutarx(SQL);

            //Establecer la factura como anulada
            SQL:='update factura set '+
                 'estado_fact='+quotedStr('PENDIENTE')+
                 ',num_fact=0'+
                 ',tipo_fact=0 '+
                 ',desc_fact=0'+
                 ' where id_fact='+id_fact;
            FormLogin.Ejecutarx(SQL);
            showmessage('Factura anulada con éxito..!');
        end;

    end
    else showmessage('ERROR: Debe seleccionar una factura emitida...!');

end;

procedure TFormCobrarFactura.AnularFactura1Click(Sender: TObject);
begin
    AnularFactura;
end;

procedure TFormCobrarFactura.Cobrosporanticipado1Click(Sender: TObject);
begin
    FormPagosAdelantados.Iniciar('MAYO','2016',ADOPrime.fieldbyname('id_asoc').AsString);
end;

procedure TFormCobrarFactura.SumarFacturas();
var
    total:Double;
    cant,i:integer;
begin

        if not ADOFacturas.IsEmpty then
        begin

            cant:=ADOFActuras.recordcount;
            ADOFacturas.First;
            total:=0;
            For i:=1 to cant do
            begin
                DetalleFactura;
                total:=total+strtofloat(FormLogin.sinComa(ETotal_Bs.text));
                ADOFacturas.Next;
            end;
            Suma_facturas.Text:=FormatFloat('#,#0.00',total);
            ADOFacturas.First;
        end;
end;

procedure TFormCobrarFactura.SumarFacturasParciales();
var
    total:Double;
    cant,i:integer;
begin

        if not ADOFacturas.IsEmpty then
        begin

            cant:=ADOFActuras.RecNo;
           // showmessage(inttostr(cant));
            ADOFacturas.First;
            total:=0;
            For i:=1 to cant do
            begin
                DetalleFactura;
                total:=total+strtofloat(FormLogin.sinComa(ETotal_Bs.text));
                ADOFacturas.Next;
            end;
            Suma_facturas.Text:=FormatFloat('#,#0.00',total);
            ADOFacturas.First;
        end;
end;


procedure TFormCobrarFactura.DBGFacturasKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key=#13 then
    begin
        if not ADOFacturas.IsEmpty then
        begin
            DetalleFactura;
            SumarFacturasParciales;
           // BCobrarfactura.SetFocus;

        end;
    end;

end;

procedure TFormCobrarFactura.Modificardetallefactura1Click(
  Sender: TObject);
begin

    DBNavMultas.Visible:=true;
    //DBNavRecargos.Visible:=true;
    BDesactivar.Visible:=true;
    DBGMultas.ReadOnly:=false;
    //DBGRecargos.ReadOnly:=false;


end;

procedure TFormCobrarFactura.BDesactivarClick(Sender: TObject);
begin
    DBNavMultas.Visible:=false;
    DBNavRecargos.Visible:=false;
    BDesactivar.Visible:=false;
    DBGMultas.ReadOnly:=true;
    DBGRecargos.ReadOnly:=true;

end;

procedure TFormCobrarFactura.DBGPrimeKeyPress(Sender: TObject;
  var Key: Char);
begin

    if key=#13 then
    begin
        FacturasPendientes;
        if not ADOFacturas.IsEmpty then
        begin
            DBGFacturas.SetFocus;
            SumarFacturas;
        end;
    end;

end;

procedure TFormCobrarFactura.sBitBtn1Click(Sender: TObject);
begin
    SumarFacturas;
end;

procedure TFormCobrarFactura.checkmultasClick(Sender: TObject);
begin
    DetalleFactura();
end;

end.

