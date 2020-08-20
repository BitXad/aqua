unit FrmRepFact3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, QRCtrls, QuickRpt, ExtCtrls,
  jpeg;

type
  TFormRepfact3 = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRExpr4: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRBand1: TQRBand;
    QRExpr13: TQRExpr;
    ADOEmpresa: TADOQuery;
    ADODetalle: TADOQuery;
    DataSource1: TDataSource;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr1: TQRExpr;
    QRTipo: TQRExpr;
    QRExpr27: TQRExpr;
    QRExpr36: TQRExpr;
    QRShape1: TQRShape;
    Image1: TQRImage;
    QRExpr39: TQRExpr;
    QRExpr40: TQRExpr;
    QRExpr41: TQRExpr;
    QRExpr37: TQRExpr;
    QRShape9: TQRShape;
    QRExpr6: TQRExpr;
    QRShape10: TQRShape;
    QRExpr34: TQRExpr;
    QRExpr42: TQRExpr;
    QRExpr43: TQRExpr;
    QRExpr44: TQRExpr;
    QRExpr35: TQRExpr;
    QRShape7: TQRShape;
    QRExpr61: TQRExpr;
    QRBand2: TQRBand;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRExpr98: TQRExpr;
    QRExpr107: TQRExpr;
    QRShape3: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRExpr97: TQRExpr;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRExpr12: TQRExpr;
    QRShape8: TQRShape;
    QRExpCajero: TQRExpr;
    QRExpr2: TQRExpr;
    QRDBImage1: TQRDBImage;
    QRExpr10: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr21: TQRExpr;
    QRExpr38: TQRExpr;
    QRExpr22: TQRExpr;
    procedure Consulta(idlec:String);
    procedure Imprimir();
    procedure VistaPrevia();
    procedure ImprimirCopia();
    procedure Consulta2(iding:String);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRepfact3: TFormRepfact3;

implementation

uses GeneradorQR, numeroaletras, frmLogin, frmEmpresa;

{$R *.dfm}
procedure TFormRepfact3.Imprimir();
begin
    QRTipo.Expression:= 'if(ADODetalle.tipo_fact=1,'+quotedStr('ORIGINAL')+','+quotedStr(' ')+')';
    QuickRep1.Print;
end;

procedure TFormRepfact3.ImprimirCopia();
begin
    QRTipo.Expression:= QuotedStr('COPIA');
    QuickRep1.Print;
end;

procedure TFormRepfact3.VistaPrevia();
begin
    QuickRep1.preview;
end;

procedure TFormRepfact3.Consulta(idlec:String);
Var
        SQL: String;
begin
    try
        ADOEmpresa.Requery();
        sql:='select * from asociado a, lectura l, factura f, detalle_factura d, usuario u '+
             'where a.id_asoc=l.id_asoc and l.id_lec=f.id_lec and f.id_fact=d.id_fact and l.id_lec='+idlec+' and f.id_usu=u.id_usu '+
             'order by d.id_detfact';

        ADODetalle.close;
        ADODetalle.SQL.Clear;
        ADODetalle.SQL.Add(SQL);
        ADODetalle.Open;


        if not ADODetalle.IsEmpty  then
        begin
            FormGeneradorQR.edtText.Text:=ADODetalle.fieldbyname('cadenaqr_fact').AsString ;
            FormGeneradorQR.BGenerar.Click;
            Image1.Picture.Bitmap := FormgeneradorQR.QRCodeBitmap;

            // Si es factura mostrar el QR sino lo ocultara
            if ADODetalle.FieldByName('tipo_fact').Value=1 then Image1.enabled:=true
             else Image1.enabled:=false;

        end;

    except
        showmessage('ERROR: Al ejecutar la sentencia SQL: '+SQL);
    end;
end;

procedure TFormRepfact3.Consulta2(iding:String);
Var
        SQL: String;
begin
    try
        ADOEmpresa.Requery();

        sql:='select * from factura f, detalle_factura d, usuario u '+
             'where  f.id_fact = d.id_fact and f.id_ing = '+iding+' and f.id_usu = u.id_usu '+
             'order by d.id_detfact';

        ADODetalle.close;
        ADODetalle.SQL.Clear;
        ADODetalle.SQL.Add(SQL);
        ADODetalle.Open;


        if not ADODetalle.IsEmpty  then
        begin
            FormGeneradorQR.edtText.Text:=ADODetalle.fieldbyname('cadenaqr_fact').AsString ;
            FormGeneradorQR.BGenerar.Click;
            Image1.Picture.Bitmap := FormgeneradorQR.QRCodeBitmap;

            // Si es factura mostrar el QR sino lo ocultara
            if ADODetalle.FieldByName('tipo_fact').Value=1 then Image1.enabled:=true
             else Image1.enabled:=false;

        end;

    except
        showmessage('ERROR: Al ejecutar la sentencia SQL: '+SQL);
    end;
end;

end.
