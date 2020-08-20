unit frmEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, sLabel, ExtCtrls, sEdit, GraphicEx, Mask,
  Buttons, jpeg, ComCtrls, Grids, DBGrids, DB, ADODB, DBCtrls, sPanel, EDBImage,
  sBitBtn, ExtDlgs, acPNG;

type
  TFormEmpresa = class(TForm)
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
    PanelCampo12: TsPanel;
    Label10: TLabel;
    PanelCampo13: TsPanel;
    Label11: TLabel;
    fechahora_asoc1: TDBEdit;
    PanelFoto: TsPanel;
    BFoto1: TsBitBtn;
    BFoto2: TsBitBtn;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    PicDialog: TOpenPictureDialog;
    Image1: TImage;
    DirImagen: TEdit;
    DBImage1: TDBImage;
    PanelCampo5: TsPanel;
    Shape13: TShape;
    Label12: TLabel;
    ci_asoc1: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Panel1: TPanel;
    BitGuardar: TBitBtn;
    BitSalir: TBitBtn;
    BitCancelar: TBitBtn;
    Telefono1: TDBEdit;
    Combo: TDBLookupComboBox;
    Ltitulo: TsLabelFX;
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
    procedure Telefono1KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
    Bandera:integer;
  end;

var
  FormEmpresa: TFormEmpresa;

implementation

uses frmLogin, webC, FrmRepEmpresa;

{$R *.dfm}

procedure TFormEmpresa.MostrarBarraEstado();
var
    cant:String;
begin
    if not ADOPrime.IsEmpty then
        cant := 'Registro(s): '+inttoStr(ADOPrime.Recordcount)
    else
        cant := 'Registro(s): 0';

    BarraEstado.Panels[1].text := cant;
end;

procedure TFormEmpresa.Iniciar();
begin

    Show;

    if not ADOPrime.Active then ADOPrime.Active:=true;

    Bandera:=0;
    DeshabilitarPanelGeneral;
    MostrarBarraEstado;


end;

procedure TFormEmpresa.Salir1Click(Sender: TObject);
begin
    Close;
end;

procedure TFormEmpresa.HabilitarPanelGeneral();
begin
    PanelGeneral.Enabled := true;

//    id_asoc1.color := clSilver;
//    tipo_asoc1.color := clWhite;
    nombres_asoc1.color := clWhite;
    apellidos_asoc1.color := clWhite;
    //ci_asoc1.color := clWhite;
    direccion_asoc1.color := clWhite;
    fechanac_asoc1.color := clWhite;
    telefono_asoc1.color := clWhite;
    codigo_asoc1.color := clWhite;
    nit_asoc1.color := clWhite;
    razon_soc1.color := clWhite;
    telefono1.color := clWhite;
    fechahora_asoc1.color := clWhite;
    ci_asoc1.color := clWhite;
//    exp_asoc1.color := clWhite;
end;

procedure TFormEmpresa.DeshabilitarPanelGeneral();
begin
    Bandera := 0;
    PanelGeneral.Enabled := false;
//    id_asoc1.color := clGray;
//    tipo_asoc1.color := clGray;
    nombres_asoc1.color := clGray;
    apellidos_asoc1.color := clGray;
    //ci_asoc1.color := clGray;
    direccion_asoc1.color := clGray;
    fechanac_asoc1.color := clGray;
    telefono_asoc1.color := clGray;
    codigo_asoc1.color := clGray;
    nit_asoc1.color := clGray;
    razon_soc1.color := clGray;
    telefono1.color := clGray;
    fechahora_asoc1.color := clGray;
    ci_asoc1.color := clGray;

//    exp_asoc1.color := clGray;
end;

procedure TFormEmpresa.NuevoRegistro();
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


procedure TFormEmpresa.SpeedButton1Click(Sender: TObject);
begin

//    NuevoRegistro; anulada por no ser usual
    showmessage('ERROR: No tiene autorización para realizar esta operación...!');
end;

procedure TFormEmpresa.SpeedButton4Click(Sender: TObject);
begin
    ADOPrime.Cancel;
    DeshabilitarPanelGeneral;
end;

procedure TFormEmpresa.BFoto2Click(Sender: TObject);
begin
    FormWebCam.bandera:=2; //2 es para el logo de una empresa
    FormWebCam.show;
    FormWebCam.BInicar.Click;
end;

procedure TFormEmpresa.Redimensionar(Imagen: TGraphic; Ancho, Alto: Integer);
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

procedure TFormEmpresa.DesdeWeb();
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

procedure TFormEmpresa.BFoto1Click(Sender: TObject);
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

procedure TFormEmpresa.Salto();
begin
      Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
end;

procedure TFormEmpresa.tipo_asoc11KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then Salto;
end;

procedure TFormEmpresa.id_asoc1KeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then Salto;
end;

procedure TFormEmpresa.nombres_asoc1KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then Salto;
end;

procedure TFormEmpresa.modificarRegistro();
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
procedure TFormEmpresa.SpeedButton2Click(Sender: TObject);
begin
    ModificarRegistro;
end;

procedure TFormEmpresa.tipo_asoc1KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then Salto;
end;

procedure TFormEmpresa.estado_asoc1KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then Salto;
end;

procedure TFormEmpresa.DBGPrimeDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ADOPrime.RecNo > 0 then
  begin
    if Column.Title.Caption = 'Nº' then
       DBGPrime.Canvas.TextOut(Rect.Left + 2, Rect.Top, IntToStr(ADOPrime.RecNo));
  end;
end;

procedure TFormEmpresa.Consultar(SQL:String);
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

procedure TFormEmpresa.Ejecutar(SQL:String);
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

procedure TFormEmpresa.Buscar();
var
    SQL : String;
begin

    SQL := 'select * from asociado where '+
           ' nombres_asoc like'+quotedStr('%'+ENombres.Text+'%')+' and '+
           ' apellidos_asoc like'+quotedStr('%'+EApellidos.Text+'%')+
           ' order by apellidos_asoc ';
    Consultar(SQL);

end;

procedure TFormEmpresa.SBuscarClick(Sender: TObject);
begin
    Buscar();
end;

procedure TFormEmpresa.SpeedButton3Click(Sender: TObject);
begin

    if application.messagebox(Pchar('¿Desea eliminar el Registro seleccionado?'),'Alerta',mb_iconquestion+mb_yesno)=6 then
    begin
        ADOPrime.Delete;
    end;

end;

procedure TFormEmpresa.ECodigoKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormEmpresa.EApellidosKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
        Buscar;
end;

procedure TFormEmpresa.ENombresKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
        Buscar;
end;

procedure TFormEmpresa.BitGuardarClick(Sender: TObject);
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

procedure TFormEmpresa.BitCancelarClick(Sender: TObject);
begin
    DeshabilitarPanelGeneral;
end;

procedure TFormEmpresa.BitSalirClick(Sender: TObject);
begin
    Close;
end;

procedure TFormEmpresa.sBitCodigoClick(Sender: TObject);
var
    Codigo:String;
begin
    Randomize;
    Codigo:= chr(65+round(Random(26)))+chr(65+round(Random(26)))+chr(65+round(Random(26)))+'-'+inttoStr(round(200+Random(26)));
    codigo_asoc1.Text:=Codigo;
    nombres_asoc1.SetFocus;
end;

procedure TFormEmpresa.codigo_asoc1Exit(Sender: TObject);
begin
//    if codigo_asoc1.Text='' then sBitCodigo.Click;
end;

procedure TFormEmpresa.SpeedButton5Click(Sender: TObject);
begin
    FormRepEmpresa.Iniciar;
end;

procedure TFormEmpresa.Telefono1KeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then Salto;
end;

end.
