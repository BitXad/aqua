unit FrmDosificacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, StdCtrls, DB, ADODB, Menus, Buttons, sBitBtn,
  ExtCtrls, sPanel, Grids, DBGrids, sLabel;

type
  TFormDosificacion = class(TForm)
    sPanel2: TsPanel;
    Nav1: TDBNavigator;
    DataDosif: TDataSource;
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    Salir1: TMenuItem;
    ADODosif: TADOQuery;
    ADOQuery: TADOQuery;
    RegistrarDosificacin1: TMenuItem;
    PanelTitulo: TPanel;
    Ltitulo: TsLabelFX;
    PanelOperaciones: TPanel;
    Bit1: TSpeedButton;
    Bit2: TSpeedButton;
    Bit4: TSpeedButton;
    Bit3: TSpeedButton;
    Bit5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Panel: TGroupBox;
    sPanel1: TsPanel;
    Shape14: TShape;
    Label16: TLabel;
    sPanel3: TsPanel;
    Shape16: TShape;
    Label18: TLabel;
    PanelCampo12: TsPanel;
    Shape11: TShape;
    Label10: TLabel;
    sPanel4: TsPanel;
    Shape1: TShape;
    Label7: TLabel;
    sPanel5: TsPanel;
    Shape2: TShape;
    Label8: TLabel;
    sPanel6: TsPanel;
    Shape3: TShape;
    Label9: TLabel;
    ADODosifid_dosif: TAutoIncField;
    ADODosifnumorden_dosif: TStringField;
    ADODosifllave_dosif: TStringField;
    ADODosiffechalim_dosif: TDateField;
    ADODosifestado_dosif: TStringField;
    ADODosiffechahora_dosif: TDateTimeField;
    DBEdit1: TDBEdit;
    autor1: TDBEdit;
    llave1: TDBEdit;
    fecha1: TDBEdit;
    estado1: TDBEdit;
    fechahora1: TDBEdit;
    sPanel7: TsPanel;
    Shape4: TShape;
    Label1: TLabel;
    numero1: TDBEdit;
    ADODosifnumfact_dosif: TIntegerField;
    BitGuardar: TBitBtn;
    BitCancelar: TBitBtn;
    BitSalir: TBitBtn;
    Label2: TLabel;

//procedimientos y funciones definidos por el usuario
    procedure Buscar(Cond:String);
    procedure Consultar(SQL:String);
    procedure Consultar2(SQL:String);
    Procedure Ejecutar(SQL:String);
    Procedure Iniciar();
    procedure Salir1Click(Sender: TObject);
    procedure desdeKeyPress(Sender: TObject; var Key: Char);
    procedure Salto();
    procedure Bit2Click(Sender: TObject);
    procedure Bit3Click(Sender: TObject);
    procedure BitGuardarClick(Sender: TObject);
    procedure BitCancelarClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure ModificarRegistro();
    procedure DesactivarPanel();
    procedure Bit4Click(Sender: TObject);
    procedure Bit1Click(Sender: TObject);

  private
    { Private declarations }
     Ban:integer;
  public
    { Public declarations }
  end;

var
  FormDosificacion: TFormDosificacion;

implementation

uses frmLogin;



{$R *.dfm}
procedure TFormDosificacion.Consultar(SQL:String);
begin
        ADOQuery.Close;
        ADOQuery.SQL.Clear;
        ADOQuery.SQL.Add(SQL);
        ADOQuery.Open;
end;
procedure TFormDosificacion.Consultar2(SQL:String);
begin
        ADODosif.Close;
        ADODosif.SQL.Clear;
        ADODosif.SQL.Add(SQL);
        ADODosif.Open;
end;
procedure TFormDosificacion.Ejecutar(SQL:String);
begin
        ADOQuery.Close;
        ADOQuery.SQL.Clear;
        ADOQuery.SQL.Add(SQL);
        ADOQuery.ExecSQL;
end;
procedure TFormDosificacion.Iniciar();
begin
        ADODosif.Requery();
        show;
end;
procedure TFormDosificacion.Buscar(Cond:String);
var
        sql:string;
begin
        sql:='select * from talonario where numorden_talon like '+chr(39)+'%'+cond+'%'+chr(39);
        ADODosif.close;
        ADODosif.sql.clear;
        ADODosif.sql.add(sql);
        ADODosif.open;
end;
procedure TFormDosificacion.Salir1Click(Sender: TObject);
begin
        Close;
end;

procedure TFormDosificacion.Salto();
begin
    //        If Key=#13 then Salto;
      Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
end;
procedure TFormDosificacion.desdeKeyPress(Sender: TObject; var Key: Char);
begin
        If Key=#13 then Salto;

end;

procedure TFormDosificacion.DesactivarPanel();
begin

    autor1.Color:=clGray;
    llave1.Color:=clGray;
    fecha1.Color:=clGray;
    numero1.color:=clGray;
    panel.Enabled:=false;

end;

procedure TFormDosificacion.ModificarRegistro();
begin

    autor1.Color:=ClWhite;
    llave1.Color:=ClWhite;
    fecha1.Color:=ClWhite;
    numero1.color:=ClWhite;
    panel.Enabled:=true;

end;

procedure TFormDosificacion.Bit2Click(Sender: TObject);
begin


    FormLogin.Bitacora('TALONARIO: MODIFICAR DATOS DE TALONARIO','-');
   //Bit2.Enabled:=False;
  //  Nav1.BtnClick(nbPost);

    ModificarRegistro;
    autor1.SetFocus;
end;

procedure TFormDosificacion.Bit3Click(Sender: TObject);
begin
    DesactivarPanel;
    FormLogin.Bitacora('TALONARIO: CANCELAR INGRESODE DE NUEVO TALONARIO','-');
    Nav1.BtnClick(nbcancel);
end;

procedure TFormDosificacion.BitGuardarClick(Sender: TObject);
begin
    DesactivarPanel;
    FormLogin.Bitacora('TALONARIO: GUARDAR CAMBIOS EN DATOS DE TALONARIOS','-');
    ADODosif.Edit;
    ADODosif.Post;
    showmessage('Datos modificados con éxito...!');
end;

procedure TFormDosificacion.BitCancelarClick(Sender: TObject);
begin
    DesactivarPanel;
    ADODosif.Cancel;

end;

procedure TFormDosificacion.BitSalirClick(Sender: TObject);
begin
    DesactivarPanel;
    ADODosif.Cancel;
    Close;
end;

procedure TFormDosificacion.Bit4Click(Sender: TObject);
begin
    showmessage('ERROR: No tiene autorizacion para realizar esta operación..!');
end;

procedure TFormDosificacion.Bit1Click(Sender: TObject);
begin
    showmessage('ERROR: No tiene privilegios para realizar esta operación...!');
end;

end.
