unit FrmNotificacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, Mask, DBCtrls, ExtCtrls, sPanel,
  sLabel, DB, ADODB, Grids, DBGrids;

type
  TFormNotificacion = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Label18: TsLabelFX;
    sPanel1: TsPanel;
    Label2: TLabel;
    sBitBtn2: TsBitBtn;
    sBitBtn5: TsBitBtn;
    DBNavigator1: TDBNavigator;
    DBnotifiacion: TDBMemo;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure Iniciar();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNotificacion: TFormNotificacion;

implementation

uses frmLogin;



{$R *.dfm}

procedure TFormNotificacion.Iniciar();
begin

    if not ADOQuery1.Active then ADOQuery1.Active:=true;
    Show;
end;

procedure TFormNotificacion.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
        If Button=nbInsert then
        Begin


        End;
end;

procedure TFormNotificacion.sBitBtn2Click(Sender: TObject);
begin
try
        DBNavigator1.BtnClick(nbEdit);
        DBNavigator1.BtnClick(nbPost);
//        FormRegistro.Bitacora('REGISTRAR MODIFICACIONES, REGISTRO DE EGRESOS','-');
        FormLogin.ADOEstados.Requery();
        Showmessage('Datos modificados con éxito...!');
        Close;
except
        Close;
end;
end;

procedure TFormNotificacion.sBitBtn5Click(Sender: TObject);
begin
        DBNavigator1.BtnClick(nbcancel);
        Close;
end;

end.
