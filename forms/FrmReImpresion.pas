unit FrmReImpresion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel, ExtCtrls, sEdit, Buttons, sCheckBox;

type
  TFormReImpresion = class(TForm)
    PanelTitulo: TPanel;
    Ltitulo: TsLabelFX;
    Panel1: TPanel;
    BitGuardar: TBitBtn;
    BitSalir: TBitBtn;
    sLabelFX2: TsLabelFX;
    Id_lec: TsEdit;
    Radio1: TRadioButton;
    Radio2: TRadioButton;
    sLabelFX1: TsLabelFX;
    CheckImp: TsCheckBox;
    procedure BitGuardarClick(Sender: TObject);
    procedure Iniciar();
    procedure Id_lecKeyPress(Sender: TObject; var Key: Char);
    procedure BitSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReImpresion: TFormReImpresion;

implementation

uses FrmRepFact1, FrmRepLect1, frmLogin, FrmRepFact2, FrmRepLect2,
  FrmRepLect3;

{$R *.dfm}
procedure TFormReImpresion.Iniciar();
begin
    show;
    id_lec.SetFocus;
end;
procedure TFormReImpresion.BitGuardarClick(Sender: TObject);
begin
    if Radio1.Checked then
    begin

//*******************************
            if formLogin.Config[1] then //Si esta activada la impresora facturadora
            begin
                FormRepFact2.Consulta(id_lec.Text);
                if CheckImp.Checked then    FormRepFact2.Imprimir
               else    FormRepFact2.VistaPrevia;
            end
            else
            begin
                    FormRepFact1.Consulta(id_lec.Text);
                    if CheckImp.Checked then    FormRepFact1.Imprimir
                    else    FormRepFact1.VistaPrevia;
            end;
//******************************

    end;

    if Radio2.Checked then
    begin
            if formLogin.Config[1] then //Si esta activada la impresora facturadora
            begin
                FormRepLect2.Consulta(id_lec.Text);
                if CheckImp.Checked then    FormRepLect2.Imprimir
               else    FormRepLect2.VistaPrevia;
            end
            else
            begin

                if formLogin.Config[6] then //Si esta activada la impresora facturadora
                begin
                    FormRepLect3.Consulta(id_lec.Text);
                    if CheckImp.Checked then    FormRepLect3.Imprimir
                   else    FormRepLect3.VistaPrevia;
                end
                else
                begin
                    FormRepLect1.Consulta(id_lec.Text);
                    if CheckImp.Checked then    FormRepLect1.Imprimir
                   else    FormRepLect1.VistaPrevia;
                end;


            end;
    end;

end;

procedure TFormReImpresion.Id_lecKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then BitGuardar.Click;
end;

procedure TFormReImpresion.BitSalirClick(Sender: TObject);
begin
    Close;
end;

end.
