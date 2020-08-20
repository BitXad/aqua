unit frmLecturas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, sLabel, ExtCtrls, sEdit, GraphicEx, Mask,
  Buttons, jpeg, ComCtrls, Grids, DBGrids, DB, ADODB, DBCtrls, sPanel, EDBImage,
  sBitBtn, ExtDlgs, sCheckBox, FileCtrl, sGauge,shellapi;

type
  TFormLecturas = class(TForm)
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    Salir1: TMenuItem;
    PanelTitulo: TPanel;
    PanelOperaciones: TPanel;
    SpeedButton1: TSpeedButton;
    BModificar: TSpeedButton;
    BEliminar: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    GroupBuscar: TGroupBox;
    SBuscar: TSpeedButton;
    BarraEstado: TStatusBar;
    ADOPrime: TADOQuery;
    DataPrime: TDataSource;
    ADOAsociado: TADOQuery;
    DataAsociado: TDataSource;
    Corden: TComboBox;
    Canio: TComboBox;
    CMes: TComboBox;
    Cestado: TComboBox;
    PanelLista: TsPanel;
    PanelDatos: TsPanel;
    DBGPrime: TDBGrid;
    DBGAsoc: TDBGrid;
    Panel2: TPanel;
    DBGFacturas: TDBGrid;
    Panel3: TPanel;
    DBGLectura: TDBGrid;
    Panel4: TPanel;
    sLabelFX3: TsLabelFX;
    ADOFacturas: TADOQuery;
    DataFacturas: TDataSource;
    ADOLecturas: TADOQuery;
    DataLecturas: TDataSource;
    Ltitulo: TsLabelFX;
    sLabelFX1: TsLabelFX;
    sLabelFX2: TsLabelFX;
    sLabelFX4: TsLabelFX;
    sLabelFX5: TsLabelFX;
    sLabelFX6: TsLabelFX;
    sLabelFX7: TsLabelFX;
    Radio1: TRadioButton;
    Radio2: TRadioButton;
    CheckImp: TsCheckBox;
    Bimp: TSpeedButton;
    Reimpresiones1: TMenuItem;
    Reimpresiones2: TMenuItem;
    ver1: TMenuItem;
    PanelLecturas: TPanel;
    BGuadar: TsBitBtn;
    BCerrar: TsBitBtn;
    N1: TMenuItem;
    ModificarLectura1: TMenuItem;
    Eliminarlectura1: TMenuItem;
    N2: TMenuItem;
    Exportararchivodedatos1: TMenuItem;
    PanelDireccion: TsPanel;
    Panel1: TPanel;
    sLabelFX8: TsLabelFX;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    LabelDir: TLabel;
    EditArchivo: TEdit;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    PB: TsGauge;
    panelImportar: TsPanel;
    Panel5: TPanel;
    sLabelFX9: TsLabelFX;
    Importararchivodedatos1: TMenuItem;
    sPanel1: TsPanel;
    ArchivoImportar: TEdit;
    sBitBtn5: TsBitBtn;
    sPanel2: TsPanel;
    sBitBtn3: TsBitBtn;
    sBitBtn4: TsBitBtn;
    DBGrid1: TDBGrid;
    ADOImport: TADOQuery;
    DataImport: TDataSource;
    PB1: TsGauge;
    FileDialog: TOpenDialog;
    ADOImportnum: TAutoIncField;
    ADOImportid_asoc: TIntegerField;
    ADOImportnombre_asoc: TStringField;
    ADOImportcodigo: TStringField;
    ADOImportdireccion: TStringField;
    ADOImportservicio: TStringField;
    ADOImportlectura_ant: TFloatField;
    ADOImportlectura_act: TFloatField;
    ADOImportconsumo: TFloatField;
    ADOImportfecha: TDateField;
    ADOImporthora: TTimeField;
    ADOImportestado: TStringField;
    ADOImportgestion: TStringField;
    ADOImportmes: TStringField;
    Memo1: TRichEdit;
    Memo2: TMemo;
    Edit1: TEdit;
    sLabelFX10: TsLabelFX;
    ComboZona: TComboBox;
    sLabelFX11: TsLabelFX;
    ComboDir: TComboBox;
    ComboBox1: TComboBox;
    param: TsEdit;
    Establecerfechadelectura1: TMenuItem;
    PanelFechaLectura: TsPanel;
    Label4: TLabel;
    Panel6: TPanel;
    sLabelFX12: TsLabelFX;
    sBitBtn7: TsBitBtn;
    fechaLectura: TDateTimePicker;
    Label1: TLabel;
    fechaLimite: TDateTimePicker;
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
    procedure BModificarClick(Sender: TObject);
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
    procedure BEliminarClick(Sender: TObject);
    procedure ECodigoKeyPress(Sender: TObject; var Key: Char);
    procedure EApellidosKeyPress(Sender: TObject; var Key: Char);
    procedure ENombresKeyPress(Sender: TObject; var Key: Char);
    procedure BitGuardarClick(Sender: TObject);
    procedure BitCancelarClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure sBitCodigoClick(Sender: TObject);
    procedure codigo_asoc1Exit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBGPrimeCellClick(Column: TColumn);
    procedure MostrarDatos();
    procedure FacturasPendientes();
    procedure LecturasAnteriores();
    procedure ConsultarFacturas(SQL:String);
    procedure ConsultarLecturas(SQL:String);
    procedure DBGAsocDblClick(Sender: TObject);
    procedure DBGAsocCellClick(Column: TColumn);
    procedure CestadoClick(Sender: TObject);
    procedure CMesClick(Sender: TObject);
    procedure CordenClick(Sender: TObject);
    procedure CanioClick(Sender: TObject);
    procedure MostrarDatosAsociado();
    procedure DBGAsocKeyPress(Sender: TObject; var Key: Char);
    procedure BimpClick(Sender: TObject);
    procedure Reimpresiones2Click(Sender: TObject);
    procedure ver1Click(Sender: TObject);
    procedure ModificarLectura1Click(Sender: TObject);
    procedure BCerrarClick(Sender: TObject);
    procedure BGuadarClick(Sender: TObject);
    procedure DBGFacturasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGLecturaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure EliminarLectura();
    procedure Exportararchivodedatos1Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure CargarTablaTemporal();
    function MesAnterior(mes:String):String;
    function GestionAnterior(gestion:String):String;
    procedure CargarMemo();
    procedure CrearArchivo();
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure Importararchivodedatos1Click(Sender: TObject);
    procedure GuardarLecturas();
    procedure sBitBtn3Click(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure Buscar2(id_asoc:string);
    procedure ConsultarImport(SQL:String);
    procedure Eliminarlectura1Click(Sender: TObject);
    procedure ModificarLectura();
    procedure DBGAsocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure paramKeyPress(Sender: TObject; var Key: Char);
    procedure paramClick(Sender: TObject);
    procedure sBitBtn7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Establecerfechadelectura1Click(Sender: TObject);
    procedure DBGPrimeDblClick(Sender: TObject);
    procedure DBGPrimeKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
    Bandera:integer;
    SQL_Public:String;
  end;

var
  FormLecturas: TFormLecturas;

implementation

uses frmLogin, webC, FrmRepAsociado, FrmZonas, FrmServicios,
  frmRegistrarLectura, FrmRepLect1, FrmRepLect2, FrmReImpresion,
  FrmRepFact1, FrmRepListaAsociado, FrmRepLect3, FrmRepFact2;

{$R *.dfm}

procedure TFormLecturas.MostrarBarraEstado();
var
    cant:String;
begin
    if not ADOPrime.IsEmpty then
        cant := 'Registro(s): '+inttoStr(ADOPrime.Recordcount)
    else
        cant := 'Registro(s): 0';

    BarraEstado.Panels[1].text := cant;
end;

procedure TFormLecturas.Iniciar();
var
    gestion, mes, SQL, item:string;
    num_mes,i,fin:integer;
begin

//******************************************************
// determinar el mes
    num_mes:=strtoint(formatdatetime('mm',date()))-1;

    if not((num_mes>=1) and (num_mes<=12)) then
        if num_mes=0 then num_mes:=12;

    if (num_mes>=1) and (num_mes<=12) then
    begin
        if num_mes=1 then mes:='ENERO';
        if num_mes=2 then mes:='FEBRERO';
        if num_mes=3 then mes:='MARZO';
        if num_mes=4 then mes:='ABRIL';
        if num_mes=5 then mes:='MAYO';
        if num_mes=6 then mes:='JUNIO';
        if num_mes=7 then mes:='JULIO';
        if num_mes=8 then mes:='AGOSTO';
        if num_mes=9 then mes:='SEPTIEMBRE';
        if num_mes=10 then mes:='OCTUBRE';
        if num_mes=11 then mes:='NOVIEMBRE';
        if num_mes=12 then mes:='DICIEMBRE';

        CMes.Text:=mes;
    end;

//********************************************************
// determina la gestion
    gestion:=formatdatetime('YYYY',date());
    Canio.Text:=gestion;

    if not ADOPrime.Active then ADOPrime.Active:=true;
    if not ADOAsociado.Active then ADOAsociado.Active:=true;
    if not ADOImport.Active then ADOImport.Active:=true;

    Bandera:=0;
    DeshabilitarPanelGeneral;
    MostrarBarraEstado;
    SBuscar.Click;

//*************************************************
// Clasificador de zonas
    SQL:='select DISTINCT(zona_asoc) from asociado';
    formLogin.Consultarx(SQL);

    if not FormLogin.ADOX.IsEmpty then
    begin
        fin:=FormLogin.ADOX.RecordCount;
        ComboZona.Items.Clear;

        ComboZona.Items.Add('TODOS');
        FormLogin.ADOX.First;
        for i:=1 to fin do
        begin
            item:=FormLogin.ADOX.fieldbyname('zona_asoc').AsString;
            ComboZona.Items.Add(item);
            FormLogin.ADOX.Next;
        end;

    end;

//Clasificador por cliente

    SQL:='select DISTINCT(direccion_asoc) from asociado';
    formLogin.Consultarx(SQL);

    if not FormLogin.ADOX.IsEmpty then
    begin
        fin:=FormLogin.ADOX.RecordCount;
        ComboDir.Items.Clear;

        ComboDir.Items.Add('TODOS');
        FormLogin.ADOX.First;
        for i:=1 to fin do
        begin
            item:=FormLogin.ADOX.fieldbyname('direccion_asoc').AsString;
            ComboDir.Items.Add(item);
            FormLogin.ADOX.Next;
        end;

    end;

//*************************************************

   Show;
   DBGPrime.SetFocus;
   ADOPrime.First;

end;

procedure TFormLecturas.Salir1Click(Sender: TObject);
begin
    Close;
end;

procedure TFormLecturas.HabilitarPanelGeneral();
begin
{    PanelGeneral.Enabled := true;

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
}
end;

procedure TFormLecturas.DeshabilitarPanelGeneral();
begin
{    Bandera := 0;
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
}
end;

procedure TFormLecturas.NuevoRegistro();
begin
{
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

    end;  }

    showmessage('ERROR: No tiene privilegios necesarios para realizar esta operacion...!');
end;


procedure TFormLecturas.SpeedButton1Click(Sender: TObject);
begin
    NuevoRegistro;
end;

procedure TFormLecturas.SpeedButton4Click(Sender: TObject);
begin
//    ADOPrime.Cancel;
  //  DeshabilitarPanelGeneral;
end;

procedure TFormLecturas.BFoto2Click(Sender: TObject);
begin
    FormWebCam.bandera:=1;
    FormWebCam.show;
    FormWebCam.BInicar.Click;
end;

procedure TFormLecturas.Redimensionar(Imagen: TGraphic; Ancho, Alto: Integer);
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

procedure TFormLecturas.DesdeWeb();
Var
        Extension,img:String;
        Tam:Integer;
         j: TJPEGImage;
         b: TBitmap;
begin

 j:=TJPEGImage.Create;
 b:=TBitmap.Create;


        //PicDialog.Execute;

{        DirImagen.Text:='c:\temp.bmp';
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
}
end;///************

procedure TFormLecturas.BFoto1Click(Sender: TObject);
Var
        Extension,img:String;
        Tam:Integer;
         j: TJPEGImage;
         b: TBitmap;
begin

 j:=TJPEGImage.Create;
 b:=TBitmap.Create;


{        PicDialog.Execute;

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
}
end;

procedure TFormLecturas.Salto();
begin
      Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }

end;

procedure TFormLecturas.tipo_asoc11KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then Salto;
end;

procedure TFormLecturas.id_asoc1KeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then Salto;
end;

procedure TFormLecturas.nombres_asoc1KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then Salto;
end;

procedure TFormLecturas.modificarRegistro();
begin

{    if Bandera=0 then
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
 }
end;
procedure TFormLecturas.BModificarClick(Sender: TObject);
begin
    ModificarLectura;
end;

procedure TFormLecturas.tipo_asoc1KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then Salto;
end;

procedure TFormLecturas.estado_asoc1KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then Salto;
end;

procedure TFormLecturas.DBGPrimeDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ADOPrime.RecNo > 0 then
  begin
    if Column.Title.Caption = 'Nº' then
       DBGAsoc.Canvas.TextOut(Rect.Left + 2, Rect.Top, IntToStr(ADOPrime.RecNo));
  end;
end;

procedure TFormLecturas.ConsultarFacturas(SQL:String);
begin

    try
        ADOFacturas.Close;
        ADOFacturas.SQL.Clear;
        ADOFacturas.SQL.Add(SQL);
        ADOFacturas.Open;
    except
        Showmessage('ERROR: Al ejecutar la sentencia SQL: '+SQL);
    end;
end;

procedure TFormLecturas.ConsultarLecturas(SQL:String);
begin

    try
        ADOLecturas.Close;
        ADOLecturas.SQL.Clear;
        ADOLecturas.SQL.Add(SQL);
        ADOLecturas.Open;
    except
        Showmessage('ERROR: Al ejecutar la sentencia SQL: '+SQL);
    end;
end;

procedure TFormLecturas.Consultar(SQL:String);
begin

    try
        ///Edit1.Text:=SQL;
        SQL_public:=SQL;

        ADOPrime.Close;
        ADOPrime.SQL.Clear;
        ADOPrime.SQL.Add(SQL);
        ADOPrime.Open;
        MostrarBarraEstado;
    except
        Showmessage('ERROR: Al ejecutar la sentencia SQL: '+SQL);
    end;
end;

procedure TFormLecturas.ConsultarImport(SQL:String);
begin

    try
        ADOImport.Close;
        ADOImport.SQL.Clear;
        ADOImport.SQL.Add(SQL);
        ADOImport.Open;
    except
        Showmessage('ERROR: Al ejecutar la sentencia SQL: '+SQL);
    end;
end;

procedure TFormLecturas.Ejecutar(SQL:String);
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

procedure TFormLecturas.Buscar();
var
    SQL,orden,zona, direccion,condicion : String;
begin

    orden := ' order by ';
    if Corden.Text='CODIGO' then orden := orden + 'codigo_asoc ';
    if Corden.Text='MEDIDOR' then orden := orden + 'medidor_asoc ';
    if Corden.Text='APELLIDOS' then orden := orden + 'apellidos_asoc ';
    if Corden.Text='NOMBRES' then orden := orden + 'nombres_asoc ';
    if Corden.Text='NUMERO DE ORDEN' then orden := orden + ' orden_asoc ';

 //   if Corden.Text='CONSUMO' then orden := orden + 'consumo_asoc ';

    // Sin lectura
    if Cestado.Text='SIN LECTURA' then
    begin
        SQL := 'select a.* from asociado a where a.estado='+quotedStr('ACTIVO')+
               ' and a.id_asoc not in'+
               '(select l.id_asoc from lectura l where '+
               'l.mes_lec='+quotedStr(Cmes.Text)+' and '+
               'l.gestion_lec='+quotedStr(Canio.Text)+')'+orden; //' and '+
               //'l.estado_lec='+quotedStr(Cestado.Text)+')'+orden;//+' and '+

    end;

    if Cestado.Text='LECTURADO' then
    begin
        SQL := 'select a.* from asociado a where  a.estado='+quotedStr('ACTIVO')+
               ' and a.id_asoc in'+
               '(select l.id_asoc from lectura l where '+
               'l.mes_lec='+quotedStr(Cmes.Text)+' and '+
               'l.gestion_lec='+quotedStr(Canio.Text)+' and '+
               'l.estado_lec='+quotedStr('LECTURADO')+')'+orden;//+' and '+

    end;

    if Cestado.Text='TODOS' then
    begin
        SQL := 'select * from asociado a where a.estado='+quotedStr('ACTIVO')+' order by a.apellidos_asoc';
    end;

    // Si la clasificacion es por direccion, se anulan las consultas para ejecutar esta
    if Corden.Text='DIRECCION/ZONA' then
    begin

        if Cestado.Text='LECTURADO' then
            condicion:=' AND a.id_asoc IN (SELECT l.id_asoc FROM lectura l WHERE l.mes_lec = '+quotedStr(Cmes.Text)+' AND l.gestion_lec = '+quotedStr(Canio.Text)+' and l.estado_lec='+quotedStr(Cestado.Text)+' '+')'
        else condicion:=' AND a.id_asoc NOT IN (SELECT l.id_asoc FROM lectura l WHERE l.mes_lec = '+quotedStr(Cmes.Text)+' AND l.gestion_lec = '+quotedStr(Canio.Text)+')';



        if ComboZona.Text<>'TODOS' then zona:=' and a.zona_asoc='+quotedStr(comboZona.Text)
        else zona:=' ';

        if ComboDir.Text<>'TODOS' then direccion:=' and a.direccion_asoc='+quotedStr(comboDir.Text)
        else direccion:=' ';

        SQL:='SELECT a.* FROM asociado a, direccion_orden d '+
             ' WHERE  a.direccion_asoc = d.nombre_dir and a.estado='+quotedStr('ACTIVO')+zona+direccion+
             condicion+
             ' GROUP BY a.direccion_asoc, a.orden_asoc, a.id_asoc '+
             ' ORDER BY d.orden_dir, a.direccion_asoc, a.orden_asoc ';

    end;

    Edit1.Text:=SQl;
    Consultar(SQL);

end;

procedure TFormLecturas.Buscar2(id_asoc:string);
var
    SQL,orden : String;
begin
    orden := ' order by ';
    if Corden.Text='CODIGO' then orden := orden + 'codigo_asoc ';
    if Corden.Text='MEDIDOR' then orden := orden + 'medidor_asoc ';
    if Corden.Text='APELLIDOS' then orden := orden + 'apellidos_asoc ';
    if Corden.Text='NOMBRES' then orden := orden + 'nombres_asoc ';
 //   if Corden.Text='CONSUMO' then orden := orden + 'consumo_asoc ';

    // Sin lectura
    if Cestado.Text='SIN LECTURA' then
    begin
        SQL := 'select a.* from asociado a where   a.estado='+quotedStr('ACTIVO')+' and a.id_asoc not in '+
               '(select l.id_asoc from lectura l where '+
               'l.mes_lec='+quotedStr(Cmes.Text)+' and '+
               'l.gestion_lec='+quotedStr(Canio.Text)+' and l.id_asoc='+id_asoc+')'+orden; //' and '+
               //'l.estado_lec='+quotedStr(Cestado.Text)+')'+orden;//+' and '+

    end;

    if Cestado.Text='LECTURADO' then
    begin
        SQL := 'select a.* from asociado a where a.estado='+quotedStr('ACTIVO')+' and a.id_asoc in '+
               '(select l.id_asoc from lectura l where '+
               'l.mes_lec='+quotedStr(Cmes.Text)+' and '+
               'l.gestion_lec='+quotedStr(Canio.Text)+' and '+
               'l.estado_lec='+quotedStr('LECTURADO')+' and l.id_asoc='+id_asoc+')'+orden;//+' and '+

    end;

    if Cestado.Text='TODOS' then
    begin
        SQL := 'select * from asociado  where a.estado='+quotedStr('ACTIVO')+orden;
    end;

    Consultar(SQL);

end;

procedure TFormLecturas.SBuscarClick(Sender: TObject);
begin
    Buscar();
end;

procedure TFormLecturas.EliminarLectura();
var
    SQL,id_lec,id_fact:String;
begin

    if not ADOLecturas.IsEmpty then
    begin
        id_lec:=ADOLecturas.fieldbyname('id_lec').ASString;
        SQL:='select * from factura where id_lec='+id_lec+' and estado_fact<>'+quotedStr('CANCELADA');
        formLogin.Consultarx(SQL);

        if not FormLogin.ADOX.IsEmpty then //Si esta pendiente aun se puede eliminar
        begin

            id_fact:=FormLogin.ADOX.fieldbyname('id_fact').AsString;
            SQL:='update factura set estado_fact='+quotedStr('ANULADA')+', literal_fact='+quotedStr('LECTURA ANULADA ID: '+id_lec)+
                     ' where id_fact='+id_fact;
            formLogin.Ejecutary(SQL);

            SQL:='delete from lectura where id_lec='+id_lec;
            formLogin.Ejecutary(SQL);

            showmessage('Lectura eliminada con éxito...!');
            ADOLecturas.Requery();

        end
        else
        begin
                SQL:='select * from factura where id_lec='+id_lec+' and estado_fact='+quotedStr('CANCELADA');
                formLogin.Consultarx(SQL);

                if not FormLogin.ADOX.IsEmpty then
                    showmessage('ERROR: La factura ya fue CANCELADA, no puede eliminar esta lectura...!')
                else
                begin
                    SQL:='delete from lectura where id_lec='+id_lec;
                    formLogin.Ejecutary(SQL);

                    showmessage('Lectura eliminada con éxito...!');
                    ADOLecturas.Requery();
                end;
        end;
    end
    else
        showmessage('ERROR: Debe seleccionar una lectura...!');
end;


procedure TFormLecturas.BEliminarClick(Sender: TObject);
begin

    if application.messagebox(Pchar('Esta a punto de eliminar una lectura y todos los datos que esta contiene. Desea continuar?'),'Alerta',mb_iconquestion+mb_yesno)=6 then
        EliminarLectura;

end;

procedure TFormLecturas.ECodigoKeyPress(Sender: TObject; var Key: Char);
begin


  {  if key=#13 then
    begin
        if Ecodigo.Text<>'' then
        begin
            SQL := 'select * from asociado where codigo_asoc='+quotedStr(ECodigo.Text);
            Consultar(SQL);
        end;
        Salto;
    end;  }

end;

procedure TFormLecturas.EApellidosKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
        Buscar;
end;

procedure TFormLecturas.ENombresKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
        Buscar;
end;

procedure TFormLecturas.BitGuardarClick(Sender: TObject);
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

procedure TFormLecturas.BitCancelarClick(Sender: TObject);
begin
    DeshabilitarPanelGeneral;
end;

procedure TFormLecturas.BitSalirClick(Sender: TObject);
begin
    Close;
end;

procedure TFormLecturas.sBitCodigoClick(Sender: TObject);
var
    Codigo:String;
begin
    Randomize;
    Codigo:= chr(65+round(Random(26)))+chr(65+round(Random(26)))+chr(65+round(Random(26)))+'-'+inttoStr(round(200+Random(26)));
//    codigo_asoc1.Text:=Codigo;
//    nombres_asoc1.SetFocus;
end;

procedure TFormLecturas.codigo_asoc1Exit(Sender: TObject);
begin
//    if codigo_asoc1.Text='' then sBitCodigo.Click;
end;

procedure TFormLecturas.SpeedButton5Click(Sender: TObject);
var
    i,fin:integer;
    SQL:String;
begin

//    FormRepAsociado.Iniciar;

    if not CheckImp.Checked then //Solo imprimira un comprobante
    begin


        if Radio1.Checked then
        begin
            if FormLogin.Config[1] then //Si esta activa la impresora facturadora
            begin
                FormRepFact2.consulta(ADOLecturas.FieldByName('id_lec').AsString);
                FormRepFact2.VistaPrevia;
            end
            else
            begin
                FormRepFact1.consulta(ADOLecturas.FieldByName('id_lec').AsString);
                FormRepFact1.VistaPrevia;
            end

        end;

        if Radio2.Checked then
        begin
            if FormLogin.Config[1] then //Si esta activa la impresora facturadora
            begin
                FormRepLect2.consulta(ADOLecturas.FieldByName('id_lec').AsString);
                FormRepLect2.VistaPrevia;
            end
            else
            begin
                if FormLogin.Config[6] then  //Si son cuarto carta
                begin
                    FormRepLect3.consulta(ADOLecturas.FieldByName('id_lec').AsString);
                    FormRepLect3.VistaPrevia;
                end
                else
                begin
                    FormRepLect1.consulta(ADOLecturas.FieldByName('id_lec').AsString);
                    FormRepLect1.VistaPrevia;
                end;

            end;

        end;

    end;


    if CheckImp.Checked then //Imprimir todo los preavisos/facturas
    begin

        FormReImpresion.Radio1.Checked := Radio1.Checked;
        FormReImpresion.Radio2.Checked := Radio2.Checked;
        FormReImpresion.CheckImp.Checked := CheckImp.Checked;

        SQL:='select l.* from lectura l where '+
             'l.mes_lec='+quotedStr(Cmes.Text)+' and '+
             'l.gestion_lec='+quotedStr(Canio.Text);

    SQL:='select * from lectura l where l.mes_lec='+quotedStr(Cmes.Text)+' and l.gestion_lec='+quotedStr(Canio.Text)+' and '+
         ' l.id_asoc in (select id_asoc from('+SQL_public+') as temp1)';

        FormLogin.Consultary(SQL);
        if not FormLogin.ADOY.IsEmpty then
        begin

            fin:=FormLogin.ADOY.RecordCount;
            FormLogin.ADOY.First;
            ADOPrime.First;    //Solo es apariencia no cumple otra funcion
            for i:=1 to fin do
            begin

                if FormLogin.Config[1] then //Si esta activa la impresora facturadora
                begin
                    FormRepLect2.consulta(FormLogin.ADOY.FieldByName('id_lec').AsString);
                    FormRepLect2.Imprimir;
                end
                else
                begin
                    if FormLogin.Config[6] then  //Si son cuarto carta
                    begin
                        FormRepLect3.consulta(FormLogin.ADOY.FieldByName('id_lec').AsString);
                        FormRepLect3.Imprimir;
                    end
                    else
                    begin
                        FormRepLect1.consulta(FormLogin.ADOY.FieldByName('id_lec').AsString);
                        FormRepLect1.Imprimir;
                    end;

                end;
                FormLogin.ADOY.Next;
                ADOPrime.Next; //Solo es apariencia no cumple otra funcion
            end;

        end;

    end; // fin de if

end;

procedure TFormLecturas.FacturasPendientes();
var
    SQL:String;
begin
    if not ADOPrime.IsEmpty then
    begin
        SQL:='select * from lectura l, factura f '+
             'where l.id_lec = f.id_lec and f.estado_fact='+quotedStr('PENDIENTE')+' and '+
             'l.id_asoc='+ADOPrime.fieldbyname('id_asoc').AsString;
        ConsultarFacturas(SQL);
    end
    else showmessage('ERROR: Debe seleccionar un usuario...!');
end;

procedure TFormLecturas.LecturasAnteriores();
var
    SQL:String;
begin
    if not ADOPrime.IsEmpty then
    begin
        SQL:='select * from lectura where id_asoc='+ADOPrime.fieldbyname('id_asoc').AsString+
             ' order by fecha_lec desc';
        ConsultarLecturas(SQL);
    end
    else showmessage('ERROR: Debe seleccionar un usuario...!');
end;

procedure TFormLecturas.MostrarDatos();
begin
    FacturasPendientes;
    LecturasAnteriores;
end;

procedure TFormLecturas.DBGPrimeCellClick(Column: TColumn);
begin
    MostrarDatos;
end;

procedure TFormLecturas.MostrarDatosAsociado();
var
    mes,gestion,asociado:String;
begin

    if Cestado.Text='SIN LECTURA' then
    begin

        mes:=CMes.Text;
        gestion:=Canio.Text;
        asociado:=ADOPrime.fieldbyname('id_asoc').AsString;

        FormRegistrarLectura.Top:=0;
        FormRegistrarLectura.Width:=Width;
        FormRegistrarLectura.Height:=Height;
        FormRegistrarLectura.iniciar(mes,gestion,asociado);

    end
    else showmessage('ERROR: Debe seleccionar items solamente SIN LECTURA...!');
end;

procedure TFormLecturas.DBGAsocDblClick(Sender: TObject);
begin
    MostrarDatosAsociado;
end;

procedure TFormLecturas.DBGAsocCellClick(Column: TColumn);
begin
    MostrarDatos;
end;

procedure TFormLecturas.CestadoClick(Sender: TObject);
begin
    SBuscar.Click;
end;

procedure TFormLecturas.CMesClick(Sender: TObject);
begin
    SBuscar.Click;
end;

procedure TFormLecturas.CordenClick(Sender: TObject);
begin
    SBuscar.Click;
end;

procedure TFormLecturas.CanioClick(Sender: TObject);
begin
    SBuscar.Click;
end;

procedure TFormLecturas.DBGAsocKeyPress(Sender: TObject; var Key: Char);
var
    campo:string;
begin
    if key=#13 then
            MostrarDatosAsociado
    else
    begin
        if comboBox1.Text='CODIGO' then campo:='codigo_asoc';
        if comboBox1.Text='NOMBRE(S)' then campo:='nombres_asoc';
        if comboBox1.Text='APELLIDO(S)' then campo:='apellidos_asoc';

        ADOPrime.Locate(campo,param.Text,[loPartialKey, loCaseInsensitive]);
    end;
//        DataSetSocios.Locate('CAMPONUMEROSOCIO', EditSocio.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TFormLecturas.BimpClick(Sender: TObject);
begin
    FormRepListaAsociado.Iniciar(Cmes.Text,Canio.Text);
end;

procedure TFormLecturas.Reimpresiones2Click(Sender: TObject);
begin
    FormReimpresion.Iniciar;
end;

procedure TFormLecturas.ver1Click(Sender: TObject);

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
                FormRepLect2.Consulta(id_lec);
                FormRepLect2.VistaPrevia;
            end
            else
            begin
                if formLogin.Config[6] then //Si esta activada la impresora facturadora
                begin
                    FormRepLect3.Consulta(id_lec);
                    FormRepLect3.VistaPrevia;
                end
                else
                begin
                    FormRepLect1.Consulta(id_lec);
                    FormRepLect1.VistaPrevia;
                end;

            end;

        end;
end;



procedure TFormLecturas.ModificarLectura1Click(Sender: TObject);
begin
    BModificar.Click;
end;

procedure TFormLecturas.BCerrarClick(Sender: TObject);
begin
    ADOLecturas.Cancel;
    DBGLectura.ReadOnly:=True;
    DBGLectura.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit];    
    PanelLecturas.Visible:=False;
end;

procedure TFormLecturas.BGuadarClick(Sender: TObject);
begin

try
    ADOLecturas.Edit;
    ADOLecturas.Post;
    Showmessage('Lectura modificada con éxito...!');
    BCerrar.Click;
except
    showmessage('ERROR: Courrio un error al ejecutar la acción.. Vuelva a realizar la operación...!');
    PanelLecturas.Visible:=False;
    DBGLectura.ReadOnly:=True;
end;

end;

procedure TFormLecturas.DBGFacturasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ADOFacturas.RecNo > 0 then
  begin
    if Column.Title.Caption = 'Nº' then
       DBGFacturas.Canvas.TextOut(Rect.Left + 2, Rect.Top, IntToStr(ADOFacturas.RecNo));
  end;
end;

procedure TFormLecturas.DBGLecturaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ADOLecturas.RecNo > 0 then
  begin
    if Column.Title.Caption = 'Nº' then
       DBGLectura.Canvas.TextOut(Rect.Left + 2, Rect.Top, IntToStr(ADOLecturas.RecNo));
  end;
end;


procedure TFormLecturas.ModificarLectura();
begin

    if not ADOLecturas.IsEmpty then
    begin
        DBGLectura.ReadOnly:=False;
        DBGLectura.Options:=[dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];//[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit];
        PanelLecturas.Visible:=True;
    end
    else
        showmessage('ERROR: Debe seleccionar una lectura...!');

end;

procedure TFormLecturas.Exportararchivodedatos1Click(Sender: TObject);
begin
    PanelDireccion.Visible:=true;
end;

function TFormLecturas.mesanterior(mes:String):String;
begin

    if Mes='ENERO' then mesanterior:='DICIEMRE';
    if Mes='FEBRERO' then mesanterior:='ENERO';
    if Mes='MARZO' then mesanterior:='FEBRERO';
    if Mes='ABRIL' then mesanterior:='MARZO';
    if Mes='MAYO' then mesanterior:='ABRIL';
    if Mes='JUNIO' then mesanterior:='MAYO';
    if Mes='JULIO' then mesanterior:='JUNIO';
    if Mes='AGOSTO' then mesanterior:='JULIO';
    if Mes='SEPTIEMBRE' then mesanterior:='AGOSTO';
    if Mes='OCTUBRE' then mesanterior:='SEPTIEMBRE';
    if Mes='NOVIEMBRE' then mesanterior:='OCTUBRE';
    if Mes='DICIEMBRE' then mesanterior:='NOVIEMBRE';

end;
function TFormLecturas.GestionAnterior(gestion:String):String;
var
    gest:integer;
begin


    gest:=Strtoint(gestion);

    if CMes.Text='ENERO' then GestionAnterior:=inttoStr(gest-1)
    else GestionAnterior:=gestion;

{    if Mes='FEBRERO' then GestionAnterior:=inttoStr(gest-1);
    if Mes='MARZO' then GestionAnterior:=inttoStr(gest);
    if Mes='ABRIL' then GestionAnterior:=inttoStr(gest);
    if Mes='MAYO' then GestionAnterior:=inttoStr(gest);
    if Mes='JUNIO' then GestionAnterior:=inttoStr(gest);
    if Mes='JULIO' then GestionAnterior:=inttoStr(gest);
    if Mes='AGOSTO' then GestionAnterior:=inttoStr(gest);
    if Mes='SEPTIEMBRE' then GestionAnterior:=inttoStr(gest);
    if Mes='OCTUBRE' then GestionAnterior:=inttoStr(gest);
    if Mes='NOVIEMBRE' then GestionAnterior:=inttoStr(gest);
    if Mes='DICIEMBRE' then GestionAnterior:=inttoStr(gest);
}
end;

procedure TFormLecturas.CargarMemo();
var
     SQL,cadena,cadena2:String;
     i,fin:integer;
begin

    FormLogin.Consultarx('select * from asociado_aux');
    memo2.Clear;
    if not FormLogin.ADOX.IsEmpty then
    begin
        cadena:='insert into asociados(num,id_asoc,nombre_asoc,codigo,direccion,servicio,lectura_ant,lectura_act,consumo,estado,gestion,mes) values ';
        Memo2.Lines.Add(cadena);

        FormLogin.ADOX.First;

        fin:=FormLogin.ADOX.recordcount;
        PB.MinValue:=1;
        PB.MaxValue:=fin;

        for i:=1 to fin do
        begin

            cadena2:=
                '('+FormLogin.ADOX.fieldbyname('num').AsString+','+FormLogin.ADOX.fieldbyname('id_asoc').AsString+','+quotedStr(FormLogin.ADOX.fieldbyname('nombre_asoc').AsString)+','+
                quotedStr(FormLogin.ADOX.fieldbyname('codigo').AsString)+','+quotedStr(FormLogin.ADOX.fieldbyname('direccion').AsString)+','+
                quotedStr(FormLogin.ADOX.fieldbyname('servicio').AsString)+','+quotedStr(FormLogin.ADOX.fieldbyname('lectura_ant').AsString)+','+
                FormLogin.ADOX.fieldbyname('lectura_act').AsString+','+FormLogin.ADOX.fieldbyname('consumo').AsString+','+quotedStr(FormLogin.ADOX.fieldbyname('estado').AsString)+','+
                quotedStr(FormLogin.ADOX.fieldbyname('gestion').AsString)+','+quotedStr(FormLogin.ADOX.fieldbyname('mes').AsString)+')';

            if i<fin then cadena2:=cadena2+','
            else cadena2:=cadena2+';';

            Memo2.Lines.Add(cadena2);

            PB.Progress:=i;
            FormLogin.ADOX.Next;
        end;


    end;

end;

procedure TFormLecturas.CrearArchivo();
var
    archivo:String;
    mes,gestion,estado,mesant,gesant:String;
begin
    archivo:=LabelDir.Caption+'\'+EditArchivo.Text;
    Memo2.Lines.SaveToFile(archivo);
end;

procedure TFormLecturas.CargarTablaTemporal();
var
    SQL:String;
    mes,gestion,estado,mesant,gesant:String;
begin
    mes:=quotedStr(Cmes.Text);
    gestion:=quotedStr(Canio.Text);
    estado:=quotedStr(Cestado.Text);

    //Cargar la informacion a la tabla temporals
//    SQL:='select * from lectura l where l.mes_lec='+quotedStr(Cmes.Text)+' and l.gestion_lec='+quotedStr(Canio.Text)+' and '+
//         ' l.id_asoc in (select id_asoc from('+SQL_public+') as temp1)';

    FormLogin.Ejecutarx('truncate asociado_aux');
{    SQL:='insert into asociado_aux(id_asoc,nombre_asoc,codigo,direccion,servicio,lectura_ant,lectura_act,consumo,estado,mes,gestion) '+
         ' (select a.id_asoc,concat(a.apellidos_asoc,'+quotedStr(', ')+',a.nombres_asoc) as nombre_asoc,a.codigo_asoc,a.direccion_asoc,a.servicios_asoc, '+
         ' 0 as lectura_ant,0 as lectura_act,0 as consumo,'+quotedStr('SIN LECTURA')+' as estado, '+mes+' as mes,'+gestion+' as gestion '+
         ' from asociado a where a.id_asoc not in(select l.id_asoc from lectura l where l.mes_lec='+mes+' and l.gestion_lec='+gestion+') order by apellidos_asoc ) ';}

    SQL:='insert into asociado_aux(id_asoc,nombre_asoc,codigo,direccion,servicio,lectura_ant,lectura_act,consumo,estado,mes,gestion) '+
         ' (select a.id_asoc,concat(a.apellidos_asoc,'+quotedStr(', ')+',a.nombres_asoc) as nombre_asoc,a.codigo_asoc,a.direccion_asoc,a.servicios_asoc, '+
         ' 0 as lectura_ant,0 as lectura_act,0 as consumo,'+quotedStr('SIN LECTURA')+' as estado, '+mes+' as mes,'+gestion+' as gestion '+
         ' from asociado a where a.id_asoc in (select id_asoc from('+SQL_public+') as temp1) order by apellidos_asoc ) ';

    Edit1.Text;
    FormLogin.Ejecutarx(SQL);


    mesant:=quotedStr(mesanterior(Cmes.text));
    gesant:=quotedStr(gestionAnterior(Canio.Text));

    SQL:='update asociado_aux a, lectura l set a.lectura_ant=l.actual_lec '+
         'where a.id_asoc=l.id_asoc and l.gestion_lec='+gesant+' and l.mes_lec='+mesant;
    FormLogin.Ejecutarx(SQL);

    //cargar el contenido del archivo a un Memo
    CargarMemo();

    //Crear el Archivo en base a los datos del memo
    CrearArchivo();
    showmessage('Se ha creado generado el archivo de datos en: '+LabelDir.Caption+'\'+EditArchivo.Text);
    ShellExecute(0, 'open', nil, nil,pchar(LabelDir.Caption), SW_SHOW);
    //Cerrar la ventana
    PanelDireccion.Visible:=false;
end;

procedure TFormLecturas.sBitBtn1Click(Sender: TObject);
begin
    CargarTablaTemporal;
end;

procedure TFormLecturas.sBitBtn2Click(Sender: TObject);
begin
    PanelDireccion.Visible:=false;
end;

procedure TFormLecturas.sBitBtn5Click(Sender: TObject);
var
    Texto:String;
begin
try
    FileDialog.Execute;
    ArchivoImportar.Text:= FileDialog.FileName;

    if FileExists(ArchivoImportar.Text) then
    begin
        //Limpiar el memo
        Memo1.Clear;
        Memo1.Lines.LoadFromFile(ArchivoImportar.Text);

        //Vaciar la tabla
        FormLogin.Ejecutarx('truncate asociado_aux');
        //Ejecutar la insecion de los registros provenientes del archivo de datos del movil
        FormLogin.Ejecutarx(memo1.Lines.Text);
        ArchivoImportar.Text:='-';
        FormLogin.consultarx('select if(count(*)>0,count(*),0) as cant from asociado_aux where estado<>'+quotedStr('LECTURADO'));
        showmessage('Se depurarón '+FormLogin.ADOX.fieldbyname('cant').AsString+' registros SIN LECTURA...!');
        FormLogin.Ejecutarx('delete from asociado_aux where estado<>'+quotedStr('LECTURADO'));
        ConsultarImport('select * from asociado_aux');

    end;
except
   showmessage('ERROR: Ocurrio un problema al importar el archivo de datos...!');
end

end;

procedure TFormLecturas.Importararchivodedatos1Click(Sender: TObject);
begin
    PanelImportar.Visible:=true;
end;

procedure TFormLecturas.GuardarLecturas();
var
    i,fin:integer;
    id_asoc,mes,gestion,lect_act,SQL,estado:String;
begin

{
    if not ADOImport.IsEmpty then
    begin
        //mostrar consultas
        Cestado.Text:='SIN LECTURA';
        Cmes.Text:=ADOImport.FieldByName('mes').AsString;
        Canio.Text:=ADOImport.FieldByName('gestion').AsString;
        Corden.Text:='APELLIDOS';



        fin:=ADOImport.RecordCount;
        ADOImport.First;
        PB1.MinValue:=1;
        PB1.MaxValue:=fin;


        for i:=1 to fin do
        begin
            id_asoc:=ADOImport.FieldByName('id_asoc').AsString;
            mes:=ADOImport.FieldByName('mes').AsString;
            gestion:=ADOImport.FieldByName('gestion').AsString;
            lect_act:=ADOImport.FieldByName('lectura_act').AsString;
            estado:=ADOImport.FieldByName('estado').AsString;
            Buscar2(id_asoc);

            if estado='LECTURADO' then
            begin
                SQL:='select * from lectura where id_asoc='+id_asoc+' and mes_lec='+quotedStr(mes)+' and gestion_lec='+quotedStr(gestion);
                formLogin.Consultarx(SQL);

                if formLogin.ADOX.IsEmpty then //Significa no se tiene registrada lecturas para este mes
                begin

                    FormRegistrarLectura.iniciar(mes,gestion,id_asoc);
                    FormRegistrarLectura.Lect_act1.Text := lect_act;
                    //MostrarMultas(mes1,gestion1,asociado1,Lect_act1.Text);
                    FormRegistrarLectura.MostrarMultas(mes,gestion,id_asoc,lect_act);
                    FormRegistrarLectura.GuardarFactura;
                    FormRegistrarLectura.Close;

                end;
            end;
                PB1.Progress:=i;
                ADOImport.Next;

        end;
    end;
}

    if not ADOImport.IsEmpty then //Si la lista de importacion no esta vacia
    begin

        //mostrar lista de NO LECTURADOS
        Cestado.Text:='SIN LECTURA';
        Cmes.Text:=ADOImport.FieldByName('mes').AsString;
        Canio.Text:=ADOImport.FieldByName('gestion').AsString;
        Corden.Text:='APELLIDOS';

        FormRegistrarLectura.CheckImprimir.Checked:=false;

        SBuscar.Click;


        fin:=ADOPrime.RecordCount;
        ADOPrime.First;
        PB1.MinValue:=1;
        PB1.MaxValue:=fin;


        for i:=1 to fin do
        begin

            id_asoc:=ADOPrime.FieldByName('id_asoc').AsString;

            SQL:='select * from asociado_aux where id_asoc='+id_asoc+' and estado='+quotedStr('LECTURADO');
            ConsultarImport(SQL);

            if not ADOImport.IsEmpty then //Si existe un asociado
            begin

                MostrarDatosAsociado; //MostrarDatos y llamar al formulario

                lect_act:=ADOImport.FieldByName('lectura_act').AsString;
                estado:=ADOImport.FieldByName('estado').AsString;
                mes:=ADOImport.FieldByName('mes').AsString;
                gestion:=ADOImport.FieldByName('gestion').AsString;

                //FormRegistrarLectura.iniciar(mes,gestion,id_asoc);

                FormRegistrarLectura.Lect_act1.Text := lect_act;
                //MostrarMultas(mes1,gestion1,asociado1,lect_act.text);
                if StrToFloat(FormRegistrarLectura.Lect_act1.Text)>=StrToFloat(FormRegistrarLectura.lect_ant1.Text) then
                begin
                    FormRegistrarLectura.MostrarMultas(mes,gestion,id_asoc,lect_act);
                    FormRegistrarLectura.GuardarFactura2;
                end;

                FormRegistrarLectura.Close;

            end;

            PB1.Progress:=i;
            ADOPrime.Next;
        end;
        FormRegistrarLectura.Close;
        ShowMessage('ERROR: La Importación de lecturas finalizó con éxito...!');
    end;

end;

procedure TFormLecturas.sBitBtn3Click(Sender: TObject);
begin
if application.messagebox(Pchar('Esta Operación, afectara a la Base de Datos de forma permanente. Desea Continuar?'),'Alerta',mb_iconquestion+mb_yesno)=6 then
    GuardarLecturas;

end;

procedure TFormLecturas.sBitBtn4Click(Sender: TObject);
begin
    panelImportar.Visible:=false;
end;


procedure TFormLecturas.Eliminarlectura1Click(Sender: TObject);
begin
     BEliminar.Click;
end;

procedure TFormLecturas.DBGAsocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//        if (Key=VK_UP) or (Key=VK_DOWN) then
//            MostrarDatos;

end;

procedure TFormLecturas.paramKeyPress(Sender: TObject; var Key: Char);
var
    campo:string;
begin
    if key=#13 then
    begin
        if comboBox1.Text='CODIGO' then campo:='codigo_asoc';
        if comboBox1.Text='NOMBRE(S)' then campo:='nombres_asoc';
        if comboBox1.Text='APELLIDO(S)' then campo:='apellidos_asoc';
        ADOPrime.Locate(campo,param.Text,[loPartialKey, loCaseInsensitive]);

        if not ADOPrime.IsEmpty then
        begin
            DBGPrime.SetFocus;
        end;
    end;
end;

procedure TFormLecturas.paramClick(Sender: TObject);
begin
    param.SelectAll;
end;

procedure TFormLecturas.sBitBtn7Click(Sender: TObject);
begin
    PanelFechaLectura.Visible:=false;
end;

procedure TFormLecturas.FormCreate(Sender: TObject);
begin
    fechaLectura.Date:=date();
    fechaLimite.Date:=date()+30;
end;

procedure TFormLecturas.Establecerfechadelectura1Click(Sender: TObject);
begin
    PanelFechaLectura.Visible:=true;
end;

procedure TFormLecturas.DBGPrimeDblClick(Sender: TObject);
begin
    MostrarDatosAsociado;
end;

procedure TFormLecturas.DBGPrimeKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
            MostrarDatosAsociado;
end;

end.
