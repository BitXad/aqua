unit FrmConfiguracion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, sPanel, DB, ADODB, StdCtrls, sLabel, Grids, DBGrids,
  Buttons, sBitBtn, Mask, DBCtrls;

type
  TFormConfigurar = class(TForm)
    Panel: TsPanel;
    DBGrid1: TDBGrid;
    sPanel2: TsPanel;
    ADOConf: TADOQuery;
    DataOpcion: TDataSource;
    sBitBtn4: TsBitBtn;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1MONEDA: TWideStringField;
    ADOQuery1PORC_INT: TFloatField;
    ADOQuery1TARJ_CRED: TFloatField;
    ADOQuery1STOCK_MIN: TIntegerField;
    sBitBtn1: TsBitBtn;
    sPanel1: TsPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    DBinteres: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Eid_cat: TDBEdit;
    Label6: TLabel;
    ADOQuery1id_cat: TIntegerField;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    ADOQuery1margenizq: TIntegerField;
    ADOQuery1margender: TIntegerField;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure sBitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sBitBtn1Click(Sender: TObject);
    procedure PanelDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConfigurar: TFormConfigurar;

implementation

uses frmLogin;



{$R *.dfm}

procedure TFormConfigurar.DBGrid1CellClick(Column: TColumn);
Begin
  if Column.FieldName = 'valor' then
  begin
    ADOConf.Edit;
    if ADOConf.FindField('valor').value then
    ADOConf.FindField('valor').value := false
    else
    ADOConf.FindField('valor').value := true;
    ADOConf.Post;
    Dbgrid1.Refresh; // quizás más bien un Repaint.... pero en fin.
  end;

{  iF dbgRID1.Columns[2].Field.value then
        FormRegistro.Bitacora('PARAMETROS: SELECCIONAR '+dbgRID1.Columns[1].Field.value,'')
  else
              FormRegistro.Bitacora('PARAMETROS: QUITAR SELECCION A'+dbgRID1.Columns[1].Field.value,'')
}
end;

procedure TFormConfigurar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  if Column.FieldName = 'valor' then
  begin
   // showmessage('Adfdf fdf lklk lhkhk');
    DBGrid1.Canvas.FillRect(Rect);
    Check := 0;
    if ADOConf.FindField('valor').Value then Check := DFCS_CHECKED;
    R:=Rect;
    InflateRect(R,-2,-2); //Disminuye el tamaño del CheckBox
    DrawFrameControl(DBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;
end;
procedure TFormConfigurar.sBitBtn4Click(Sender: TObject);
begin
 //       FormRegistro.Bitacora('PARAMETROS: GUARDAR CAMBIOS EN PARAMETROS','-');
        ADOConf.Edit;
        ADOConf.Post;
        ADOConf.Requery;

//        ADOQuery1.Edit;
//        ADOQuery1.Post;
        
        FormLogin.CargarConf;

{        if FormRegistro.Config[11] then
            FormVentas.DBGSaldo.Visible:=true
        else
            FormVentas.DBGSaldo.Visible:=false;
}

    Close;
end;

procedure TFormConfigurar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//        FormRegistro.Bitacora('PARAMETROS: CERRAR PARAMETROS','');
//        ADOConf.Active:=False;
end;

procedure TFormConfigurar.sBitBtn1Click(Sender: TObject);
begin
        Close;
end;

procedure TFormConfigurar.PanelDblClick(Sender: TObject);
begin
{        FormImagenes.image11.Picture:=FormImagenes.Logo.Picture;
        FormImagenes.image2.Picture:=FormImagenes.Fondo.Picture;
        FormImagenes.image3.Picture:=FormImagenes.Filigrana.Picture;
        FormImagenes.image4.Picture:=FormImagenes.Splash.Picture;

        FormImagenes.Show;
}
end;

end.
