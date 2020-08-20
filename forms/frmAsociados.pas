unit frmAsociados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, sLabel, ExtCtrls, sEdit, GraphicEx, Mask,
  Buttons, jpeg, ComCtrls, Grids, DBGrids, DB, ADODB, DBCtrls, sPanel, EDBImage,
  sBitBtn, ExtDlgs, acPNG;

type
  TFormAsociados = class(TForm)
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
    DBGPrime: TDBGrid;
    BarraEstado: TStatusBar;
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
    tipo_asoc1: TDBLookupComboBox;
    ADOAsociado: TADOQuery;
    DataAsociado: TDataSource;
    PanelCampo5: TsPanel;
    Shape13: TShape;
    Label12: TLabel;
    exp_asoc1: TDBLookupComboBox;
    ci_asoc1: TDBEdit;
    sBitCodigo: TsBitBtn;
    Panel1: TPanel;
    BitSalir: TBitBtn;
    GroupBox1: TGroupBox;
    sPanel1: TsPanel;
    Shape14: TShape;
    Label16: TLabel;
    medidor_asoc1: TDBEdit;
    sPanel3: TsPanel;
    Shape16: TShape;
    Label18: TLabel;
    servicios_asoc1: TDBLookupComboBox;
    PanelCampo12: TsPanel;
    Shape11: TShape;
    Label10: TLabel;
    estado_asoc1: TDBLookupComboBox;
    PanelCampo88: TsPanel;
    Shape15: TShape;
    Label17: TLabel;
    zona_asoc1: TDBLookupComboBox;
    Ltitulo: TsLabelFX;
    sPanel2: TsPanel;
    Shape17: TShape;
    Label5: TLabel;
    categoria_asoc1: TDBLookupComboBox;
    sPanel4: TsPanel;
    Shape18: TShape;
    Label19: TLabel;
    Orden_asoc1: TDBEdit;
    sLabelFX4: TsLabelFX;
    sLabelFX5: TsLabelFX;
    sLabelFX6: TsLabelFX;
    Operaciones1: TMenuItem;
    Registrarlecturabase1: TMenuItem;
    PanelLecturaBase: TGroupBox;
    sLabelFX2: TsLabelFX;
    sLabelFX3: TsLabelFX;
    sLabelFX7: TsLabelFX;
    Gestion1: TComboBox;
    Mes1: TComboBox;
    Lectura1: TsEdit;
    BitGuardar: TBitBtn;
    BitCancelar: TBitBtn;
    BGuardar2: TBitBtn;
    BCancelar2: TBitBtn;
    fechaLectura: TDateTimePicker;
    sLabelFX1: TsLabelFX;
    VerKardex1: TMenuItem;
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
    procedure BGuardar2Click(Sender: TObject);
    function Verificado(idasoc:String):Boolean;
    procedure Registrarlecturabase1Click(Sender: TObject);
    procedure Mes1KeyPress(Sender: TObject; var Key: Char);
    procedure Gestion1KeyPress(Sender: TObject; var Key: Char);
    procedure Lectura1KeyPress(Sender: TObject; var Key: Char);
    procedure BCancelar2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure certificadoClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Bandera:integer;
    id_asoc2:String;
  end;

var
  FormAsociados: TFormAsociados;

implementation

uses frmLogin, webC, FrmRepAsociado, FrmZonas, FrmServicios, FrmCategorias,
  frmLecturas, FrmRepKardex2, FrmRepCertificado;

{$R *.dfm}

procedure TFormAsociados.MostrarBarraEstado();
var
    cant:String;
begin
    if not ADOPrime.IsEmpty then
        cant := 'Registro(s): '+inttoStr(ADOPrime.Recordcount)
    else
        cant := 'Registro(s): 0';

    BarraEstado.Panels[1].text := cant;
end;

procedure TFormAsociados.Iniciar();
begin

    Show;

    if not ADOPrime.Active then ADOPrime.Active:=true;
    if not ADOAsociado.Active then ADOAsociado.Active:=true;

    Bandera:=0;
    DeshabilitarPanelGeneral;
    MostrarBarraEstado;


end;

procedure TFormAsociados.Salir1Click(Sender: TObject);
begin
    Close;
end;

procedure TFormAsociados.HabilitarPanelGeneral();
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
    categoria_asoc1.color := clWhite;
    orden_asoc1.Color := clWhite;
end;

procedure TFormAsociados.DeshabilitarPanelGeneral();
begin
    Bandera := 0;
    PanelGeneral.Enabled := false;
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
    categoria_asoc1.color := clGray;
    orden_asoc1.color := clGray;

end;

procedure TFormAsociados.NuevoRegistro();
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


procedure TFormAsociados.SpeedButton1Click(Sender: TObject);
begin
    NuevoRegistro;
end;

procedure TFormAsociados.SpeedButton4Click(Sender: TObject);
begin
    ADOPrime.Cancel;
    DeshabilitarPanelGeneral;
end;

procedure TFormAsociados.BFoto2Click(Sender: TObject);
begin
    FormWebCam.bandera:=1;
    FormWebCam.show;
    FormWebCam.BInicar.Click;
end;

procedure TFormAsociados.Redimensionar(Imagen: TGraphic; Ancho, Alto: Integer);
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

procedure TFormAsociados.DesdeWeb();
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

procedure TFormAsociados.BFoto1Click(Sender: TObject);
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

procedure TFormAsociados.Salto();
begin
      Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
end;

procedure TFormAsociados.tipo_asoc11KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then Salto;
end;

procedure TFormAsociados.id_asoc1KeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then Salto;
end;

procedure TFormAsociados.nombres_asoc1KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then Salto;
end;

procedure TFormAsociados.modificarRegistro();
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
procedure TFormAsociados.SpeedButton2Click(Sender: TObject);
begin
    ModificarRegistro;
end;

procedure TFormAsociados.tipo_asoc1KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then Salto;
end;

procedure TFormAsociados.estado_asoc1KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then Salto;
end;

procedure TFormAsociados.DBGPrimeDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ADOPrime.RecNo > 0 then
  begin
    if Column.Title.Caption = 'Nº' then
       DBGPrime.Canvas.TextOut(Rect.Left + 2, Rect.Top, IntToStr(ADOPrime.RecNo));
  end;
end;

procedure TFormAsociados.Consultar(SQL:String);
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

procedure TFormAsociados.Ejecutar(SQL:String);
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

procedure TFormAsociados.Buscar();
var
    SQL : String;
begin

    SQL := 'select * from asociado where '+
           ' nombres_asoc like'+quotedStr('%'+ENombres.Text+'%')+' and '+
           ' apellidos_asoc like'+quotedStr('%'+EApellidos.Text+'%')+
           ' order by apellidos_asoc ';
    Consultar(SQL);

end;

procedure TFormAsociados.SBuscarClick(Sender: TObject);
begin
    Buscar();
end;

procedure TFormAsociados.SpeedButton3Click(Sender: TObject);
var
    id_asoc,SQL:String;
begin

    if application.messagebox(Pchar('¿Desea eliminar el Registro seleccionado?'),'Alerta',mb_iconquestion+mb_yesno)=6 then
    begin

        if not ADOPrime.IsEmpty then
        begin
            id_asoc:=ADOPrime.fieldbyname('id_asoc').AsString;
            SQL:='select * from asociado a, lectura l, factura f '+
                 'where a.id_asoc=l.id_asoc and l.id_lec=f.id_lec and a.id_asoc='+id_asoc;
            FormLogin.Consultarx(SQL);

            if not FormLogin.ADOX.IsEmpty then //Si tiene lecturas y/o facturas asociadas...!
            begin
                if application.messagebox(Pchar('El asociado tiene historial de lecturas/facturas. Al eliminar el registro del asociado afectara a la información que esta tiene enlazada. ¿Desea eliminar el Registro seleccionado?'),'Alerta',mb_iconquestion+mb_yesno)=6 then
                    ADOPrime.Delete;
            end
            else
            begin
                if application.messagebox(Pchar('El asociado NO tiene historial de lecturas/facturas. ¿Desea continuar con la operación?'),'Alerta',mb_iconquestion+mb_yesno)=6 then
                    ADOPrime.Delete;
            end;

        end
        else showmessage('ERROR: Debe seleccionar un registro...!');
    end;

end;

procedure TFormAsociados.ECodigoKeyPress(Sender: TObject; var Key: Char);
var
    SQL : String;
begin


    if key=#13 then
    begin
        if Ecodigo.Text<>'' then
        begin
            SQL := 'select * from asociado where codigo_asoc='+quotedStr(ECodigo.Text);
            Consultar(SQL);
        end;
        Salto;
    end;

end;

procedure TFormAsociados.EApellidosKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
        Buscar;
end;

procedure TFormAsociados.ENombresKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
        Buscar;
end;

procedure TFormAsociados.BitGuardarClick(Sender: TObject);
begin

    if Bandera=1 then
    begin
        ADOPrime.Post;
        ADOPrime.Requery();
        ShowMessage('Registro almacenado con éxito...!');
    end;

    if Bandera=2 then
    begin
        ADOPrime.Post;
        ShowMessage('Registro modificado con éxito...!');
    end;

    DeshabilitarPanelGeneral;
end;

procedure TFormAsociados.BitCancelarClick(Sender: TObject);
begin
    DeshabilitarPanelGeneral;
end;

procedure TFormAsociados.BitSalirClick(Sender: TObject);
begin
    Close;
end;

procedure TFormAsociados.sBitCodigoClick(Sender: TObject);
var
    Codigo:String;
begin
    Randomize;
    Codigo:= chr(65+round(Random(26)))+chr(65+round(Random(26)))+chr(65+round(Random(26)))+'-'+inttoStr(round(200+Random(26)));
    codigo_asoc1.Text:=Codigo;
    nombres_asoc1.SetFocus;
end;

procedure TFormAsociados.codigo_asoc1Exit(Sender: TObject);
begin
    if codigo_asoc1.Text='' then sBitCodigo.Click;
end;

procedure TFormAsociados.SpeedButton5Click(Sender: TObject);
begin
    FormRepAsociado.Iniciar;
end;

function TFormAsociados.Verificado(idasoc:String):Boolean;
var
    SQL:String;
begin

    SQL:='select * from lectura where id_asoc='+idasoc;
    FormLogin.Consultarx(SQL);

    if FormLogin.ADOX.IsEmpty then Verificado:=true
    else Verificado:=false;

end;

procedure TFormAsociados.BGuardar2Click(Sender: TObject);
var
    SQL,coma:String;
    id_usu,id_asoc,mes_lec,gestion_lec,anterior_lec,actual_lec,fechaant_lec:String;
    consumo_lec,fecha_lec,hora_lec,totalcons_lec,monto_lec,estado_lec:String;
    tipo_asoc,servicios_asoc,cantfact_lec,montofact_lec:String;
begin

    if Verificado(id_asoc2) then //id_asoc es variable global del sistema
    begin

    coma:=',';
    id_usu:=formLogin.ADOUsuario.fieldbyname('id_usu').AsString;
    id_asoc:=id_asoc2;
    mes_lec:=quotedStr(Mes1.Text);
    gestion_lec:=quotedStr(gestion1.Text);
    anterior_lec:='0';
    actual_lec:=Lectura1.Text;


    fechaant_lec:=quotedStr(FormLogin.fecha(date));

    consumo_lec:=actual_lec+'-'+anterior_lec;
//    fecha_lec:=quotedStr(FormLogin.fecha(Date));
    fecha_lec:=quotedStr(FormLogin.fecha(fechalectura.Date));
    hora_lec:=quotedStr(FormatDateTime('HH:mm:ss',Time));
    totalcons_lec:='0';
    monto_lec:='0';
    estado_lec:=quotedStr('LECTURADO');
    tipo_asoc:=quotedStr('-');
    servicios_asoc:=quotedStr('-');
    cantfact_lec := '0';
    montofact_lec := '0';

    SQL:='insert into lectura(id_usu,id_asoc,mes_lec,gestion_lec,anterior_lec,actual_lec,fechaant_lec,consumo_lec,fecha_lec,hora_lec,totalcons_lec,monto_lec,estado_lec,tipo_asoc,servicios_asoc,cantfact_lec,montofact_lec) values('+
        id_usu+coma+id_asoc+coma+mes_lec+coma+gestion_lec+coma+anterior_lec+coma+actual_lec+coma+fechaant_lec+coma+consumo_lec+coma+fecha_lec+coma+
        hora_lec+coma+totalcons_lec+coma+monto_lec+coma+estado_lec+coma+tipo_asoc+coma+servicios_asoc+coma+cantfact_lec+coma+montofact_lec+')';
    //showmessage(sql);
    FormLogin.Ejecutarx(SQL);
{id_lec,id_usu,id_asoc,mes_lec,gestion_lec,anterior_lec,actual_lec,fechaant_lec,
consumo_lec,fecha_lec,hora_lec,totalcons_lec,fechahora_lec,monto_lec,estado_lec
tipo_asoc,servicios_asoc
}
    showmessage('Lectura registrada con éxito...!');
    BCancelar2.Click;
    end
    else showmessage('ERROR: El asociado ya tiene una lectura(s) registradas...!');
end;

procedure TFormAsociados.Registrarlecturabase1Click(Sender: TObject);
begin
     PanelLecturaBase.Visible:=true;
     Mes1.SetFocus;
     Lectura1.Text:='0';
     id_asoc2:=ADOPrime.fieldbyname('id_asoc').AsString;
end;

procedure TFormAsociados.Mes1KeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then Salto;
end;

procedure TFormAsociados.Gestion1KeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then Salto;
end;

procedure TFormAsociados.Lectura1KeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then Salto;
end;

procedure TFormAsociados.BCancelar2Click(Sender: TObject);
begin
    id_asoc2:='0';
    PanelLecturaBase.Visible:=false;
end;

procedure TFormAsociados.SpeedButton6Click(Sender: TObject);
begin
    FormRepKardex2.ConsultaPorAsociado2(ADOPrime.fieldbyname('id_asoc').ASString);
end;

procedure TFormAsociados.certificadoClick(Sender: TObject);
begin
        FormRepCertificado.QuickRep1.Preview;
end;

procedure TFormAsociados.SpeedButton7Click(Sender: TObject);
begin
        FormRepCertificado.QuickRep1.Preview;
end;

end.
