unit FrmAyuda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ShellCtrls, StdCtrls, FileCtrl, sPanel, DB, ADODB,
  Menus, Buttons, sLabel, ExtCtrls;

type
  TFormAyuda = class(TForm)
    PanelTitulo: TPanel;
    Ltitulo: TsLabelFX;
    PanelGeneral: TPanel;
    BarraEstado: TStatusBar;
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    Salir1: TMenuItem;
    ADOPrime: TADOQuery;
    ADOPrimeid_ap: TAutoIncField;
    ADOPrimemotivo_ap: TStringField;
    ADOPrimedetalle_ap: TStringField;
    ADOPrimemonto_ap: TFloatField;
    ADOPrimefechahora_ap: TDateTimeField;
    ADOPrimemes_ap: TStringField;
    ADOPrimegestion_ap: TStringField;
    ADOPrimetipo_ap: TStringField;
    ADOPrimeestado_ap: TStringField;
    ADOPrimeid_usu: TIntegerField;
    DataPrime: TDataSource;
    PanelDireccion: TsPanel;
    Shell: TShellListView;
    BitSalir: TBitBtn;
    procedure BitSalirClick(Sender: TObject);
    procedure Iniciar();
    procedure Salir1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAyuda: TFormAyuda;

implementation

uses frmLogin;

{$R *.dfm}

procedure TFormAyuda.Iniciar();
begin
    Shell.Root:=FormLogin.raiz+'\ayuda';
    show;
end;

procedure TFormAyuda.BitSalirClick(Sender: TObject);
begin
    Close;
end;

procedure TFormAyuda.Salir1Click(Sender: TObject);
begin
    Close;
end;

end.
