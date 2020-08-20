unit FrmRepFact2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, QRCtrls, QuickRpt, ExtCtrls,
  jpeg;

type
  TFormRepfact2 = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
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
    Image1: TQRImage;
    QRExpr39: TQRExpr;
    QRExpr40: TQRExpr;
    QRExpr41: TQRExpr;
    QRExpr37: TQRExpr;
    QRExpr6: TQRExpr;
    QRShape10: TQRShape;
    QRExpr34: TQRExpr;
    QRExpr42: TQRExpr;
    QRExpr43: TQRExpr;
    QRExpr44: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr23: TQRExpr;
    QRExpr45: TQRExpr;
    QRExpr46: TQRExpr;
    QRExpr47: TQRExpr;
    QRExpr48: TQRExpr;
    QRExpr49: TQRExpr;
    QRExpr50: TQRExpr;
    QRExpr51: TQRExpr;
    QRExpr52: TQRExpr;
    QRExpr53: TQRExpr;
    QRShape2: TQRShape;
    QRExpr35: TQRExpr;
    QRExpr54: TQRExpr;
    QRExpr55: TQRExpr;
    QRExpr56: TQRExpr;
    QRExpr57: TQRExpr;
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
    QRExpr12: TQRExpr;
    QRShape8: TQRShape;
    QRShape14: TQRShape;
    QRExpr11: TQRExpr;
    QRExpr2: TQRExpr;
    QRDBImage1: TQRDBImage;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRExpr10: TQRExpr;
    QRExpr38: TQRExpr;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    procedure Consulta(idlec:String);
    procedure Imprimir();
    procedure VistaPrevia();
    procedure ImprimirCopia();

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRepfact2: TFormRepfact2;

implementation

uses GeneradorQR, numeroaletras, frmLogin;

{$R *.dfm}
procedure TFormRepfact2.Imprimir();
begin
    QRTipo.Expression:= 'if(ADODetalle.tipo_fact=1,'+quotedStr('ORIGINAL')+','+quotedStr(' ')+')';
    QuickRep1.Print;
end;

procedure TFormRepfact2.ImprimirCopia();
begin
    QRTipo.Expression:= QuotedStr('COPIA');
    QuickRep1.Print;
end;

procedure TFormRepfact2.VistaPrevia();
begin
    QuickRep1.preview;
end;

procedure TFormRepfact2.Consulta(idlec:String);
Var
        SQL: String;
begin
    try
        ADOEmpresa.Requery();
        sql:='select * from asociado a, lectura l, factura f, detalle_factura d '+
             'where a.id_asoc=l.id_asoc and l.id_lec=f.id_lec and f.id_fact=d.id_fact and l.id_lec='+idlec+' '+
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
            if ADODetalle.FieldByName('tipo_fact').Value=1 then Image1.Enabled:=true
            else Image1.Enabled:=false;
        end;

    except
        showmessage('ERROR: Al ejecutar la sentencia SQL: '+SQL);
    end;
end;

end.
