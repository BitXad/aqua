unit FrmBuscarFecha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel, ExtCtrls, sEdit, Buttons, sCheckBox, ComCtrls,
  sPanel, sComboBox, DBCtrls, Mask;

type
  TFormBuscarFecha = class(TForm)
    PanelTitulo: TPanel;
    Ltitulo: TsLabelFX;
    Panel1: TPanel;
    BVistaPrevia: TBitBtn;
    BSalir: TBitBtn;
    BImprimir: TBitBtn;
    sPanel1: TsPanel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    sLabelFX2: TsLabelFX;
    sLabelFX1: TsLabelFX;
    sLabelFX3: TsLabelFX;
    ComboOrden: TsComboBox;
    Radio1: TRadioButton;
    Radio2: TRadioButton;
    sLabelFX4: TsLabelFX;
    ComboUsuario: TDBLookupComboBox;
    PanelUsuario: TsPanel;
    sLabelFX6: TsLabelFX;
    ComboAsociado: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    PanelCategoria: TsPanel;
    sLabelFX5: TsLabelFX;
    ComboCategoria: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    Edit1: TEdit;
    CheckFechas: TCheckBox;
    sLabelFX7: TsLabelFX;
    comboEstado: TsComboBox;
    Edit2: TEdit;
    procedure BVistaPreviaClick(Sender: TObject);
    procedure Iniciar(tipo:integer);
    procedure BSalirClick(Sender: TObject);
    procedure BImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Bandera:integer;
  end;

var
  FormBuscarFecha: TFormBuscarFecha;

implementation

uses FrmRepFact1, FrmRepLect1, FrmRepIngresoFact, FrmUsuario, frmAsociados,
  FrmRepIngresoEgr, FrmCategoriasIngresos, FrmRepIngresoIng,
  FrmRepMovimientoDia;

{$R *.dfm}
procedure TFormBuscarFecha.Iniciar(tipo:integer);
begin
    if FormCategoriaIngresos.ADOQuery1.Active then FormCategoriaIngresos.ADOQuery1.Requery()
    else FormCategoriaIngresos.ADOQuery1.Active := true;

    Fecha1.Date:=date;
    Fecha2.Date:=date;

    bandera:=Tipo;

    panelUsuario.visible:=false;
    panelUsuario.visible:=false;
    panelCategoria.visible:=false;

    if not FormAsociados.ADOPrime.Active then FormAsociados.ADOPrime.Active:=True
    else FormAsociados.ADOPrime.Requery();

//    if (bandera=1) or (bandera=3) then panelUsuario.visible:=false;
    if bandera=2 then panelUsuario.visible:=true;
    if bandera=4 then panelCategoria.visible:=true;
    if bandera=6 then panelCategoria.visible:=true;

//Cargar clasificadores de ingreso
    if (Bandera>=1) and (Bandera<=2) then
    begin
        ComboOrden.Clear;
        ComboOrden.Items.Add('NOMBRE');
        ComboOrden.Items.Add('CODIGO');
        ComboOrden.Items.Add('FACTURA');
        ComboOrden.Items.Add('MONTO');
        ComboOrden.Text:='NOMBRE';
    end;

    if (Bandera>=3) and (Bandera<=6) then
    begin
        ComboOrden.Clear;
        ComboOrden.Items.Add('NOMBRE');
        ComboOrden.Items.Add('RECIBO');
        ComboOrden.Items.Add('CATEGORIA');
        ComboOrden.Items.Add('MONTO');
        ComboOrden.Text:='NOMBRE';
    end;

    show;
end;
procedure TFormBuscarFecha.BVistaPreviaClick(Sender: TObject);
begin

    if Bandera=1 then //Facturacion por fecha
    begin
        FormRepIngresosFact.ConsultaPorFecha(Fecha1.Date,Fecha2.Date);
        FormRepIngresosFact.VistaPrevia;
    end;

    if Bandera=2 then //Facturacion por Asociado
    begin
            FormRepIngresosFact.ConsultaPorAsociado(Fecha1.Date,Fecha2.Date,intToStr(ComboAsociado.keyvalue));
            FormRepIngresosFact.VistaPrevia;

    end;

    if Bandera=3 then //Ingresos Por Dia
    begin
            FormRepIngresos.ConsultaPorFecha(Fecha1.Date,Fecha2.Date);
            FormRepIngresos.VistaPrevia;
    end;

    if Bandera=4 then //Ingresos Por Categoria
    begin
            FormRepIngresos.ConsultaPorAsociado(Fecha1.Date,Fecha2.Date,ComboCategoria.keyvalue);
            FormRepIngresos.VistaPrevia;
    end;

    if Bandera=5 then //Egresos Por Dia
    begin
            FormRepEgresos.ConsultaPorFecha(Fecha1.Date,Fecha2.Date);
            FormRepEgresos.VistaPrevia;
    end;

    if Bandera=6 then //Egresos Por Categoria
    begin
            FormRepEgresos.ConsultaPorAsociado(Fecha1.Date,Fecha2.Date,ComboCategoria.keyvalue);
            FormRepEgresos.VistaPrevia;
    end;

    if Bandera=7 then //Movimiento Diario
    begin
            FormRepMovimientoDia.ConsultaPorFecha(Fecha1.Date,Fecha2.Date);
            FormRepMovimientoDia.VistaPrevia;
    end;



end;

procedure TFormBuscarFecha.BSalirClick(Sender: TObject);
begin
    Close;
end;

procedure TFormBuscarFecha.BImprimirClick(Sender: TObject);
begin
    if Bandera=1 then //Facturacion por fecha
    begin
        FormRepIngresosFact.ConsultaPorFecha(Fecha1.Date,Fecha2.Date);
        FormRepIngresosFact.Imprimir;
    end;

    if Bandera=2 then //Facturacion por usuario
    begin
        FormRepIngresosFact.ConsultaPorAsociado(Fecha1.Date,Fecha2.Date,intToStr(ComboAsociado.keyvalue));
        FormRepIngresosFact.Imprimir;
    end;
end;

end.
