unit FrmParametros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, sPanel, DB, ADODB, StdCtrls, sLabel, Grids, DBGrids,
  Buttons, sBitBtn, Mask, DBCtrls;

type
  TFormParametros = class(TForm)
    Panel: TsPanel;
    DBGrid1: TDBGrid;
    sPanel2: TsPanel;
    ADOConf: TADOQuery;
    DataOpcion: TDataSource;
    sBitBtn4: TsBitBtn;
    sBitBtn1: TsBitBtn;
    sPanel1: TsPanel;
    ADOConfid_param: TAutoIncField;
    ADOConfdescip_param: TStringField;
    ADOConfdias_param: TIntegerField;
    ADOConfmonto_param: TFloatField;
    ADOConfestado: TStringField;
    ADOConfdetalle_param: TStringField;
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
  FormParametros: TFormParametros;

implementation

uses frmLogin;



{$R *.dfm}

procedure TFormParametros.DBGrid1CellClick(Column: TColumn);
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

procedure TFormParametros.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ADOCOnf.RecNo > 0 then
  begin
    if Column.Title.Caption = 'Nº' then
       DBGrid1.Canvas.TextOut(Rect.Left + 2, Rect.Top, IntToStr(ADOConf.RecNo));
  end;
end;
procedure TFormParametros.sBitBtn4Click(Sender: TObject);
begin
//        FormRegistro.Bitacora('PARAMETROS: GUARDAR CAMBIOS EN PARAMETROS','-');
 //       ADOConf.Edit;
//        ADOConf.Post;
   //     ADOConf.Active:=False;

//        ADOQuery1.Edit;
//        ADOQuery1.Post;
///        FormRegistro.CargarConf;

{        if FormRegistro.Config[11] then
            FormVentas.DBGSaldo.Visible:=true
        else
            FormVentas.DBGSaldo.Visible:=false;
}
        ADOConf.Edit;
        ADOConf.Post;
        showmessage('Parámetros almacenados con éxito...!');
end;

procedure TFormParametros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//        FormRegistro.Bitacora('PARAMETROS: CERRAR PARAMETROS','');

end;

procedure TFormParametros.sBitBtn1Click(Sender: TObject);
begin
        Close;
end;

procedure TFormParametros.PanelDblClick(Sender: TObject);
begin
{        FormImagenes.image11.Picture:=FormImagenes.Logo.Picture;
        FormImagenes.image2.Picture:=FormImagenes.Fondo.Picture;
        FormImagenes.image3.Picture:=FormImagenes.Filigrana.Picture;
        FormImagenes.image4.Picture:=FormImagenes.Splash.Picture;

        FormImagenes.Show;
}
end;

end.
