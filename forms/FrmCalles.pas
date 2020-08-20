unit FrmCalles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, Mask, DBCtrls, ExtCtrls, sPanel,
  sLabel, DB, ADODB, Grids, DBGrids;

type
  TFormCalles = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Label18: TsLabelFX;
    sPanel1: TsPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    sBitBtn2: TsBitBtn;
    sBitBtn5: TsBitBtn;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    ADOQuery1id_dir: TAutoIncField;
    ADOQuery1nombre_dir: TStringField;
    ADOQuery1orden_dir: TIntegerField;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Iniciar();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCalles: TFormCalles;

implementation

uses frmLogin;



{$R *.dfm}

procedure TFormCalles.Iniciar();
begin

    if not ADOQuery1.Active then ADOQuery1.Active:=true;
    Show;
end;

procedure TFormCalles.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
        If Button=nbInsert then
        Begin
            dbeDIT2.SetFocus;

        End;
end;

procedure TFormCalles.sBitBtn2Click(Sender: TObject);
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

procedure TFormCalles.sBitBtn5Click(Sender: TObject);
begin
        DBNavigator1.BtnClick(nbcancel);
        Close;
end;

procedure TFormCalles.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ADOQuery1.RecNo > 0 then
  begin
    if Column.Title.Caption = 'Nº' then
       DBGrid1.Canvas.TextOut(Rect.Left + 2, Rect.Top, IntToStr(ADOQuery1 .RecNo));
  end;
end;

end.
