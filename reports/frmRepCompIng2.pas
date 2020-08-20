unit frmRepCompIng2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TFormRepCompIng2 = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText12: TQRDBText;
    ADO1: TADOQuery;
    Data1: TDataSource;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRLabel1: TQRLabel;
    QRExpr6: TQRExpr;
    QLiteral: TQRLabel;
    Monto: TDBEdit;
    QRLabel7: TQRLabel;
    QRShape3: TQRShape;
    QRShape6: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRExpr1: TQRExpr;
    QRShape25: TQRShape;
    QRLabel6: TQRLabel;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    ADO1id_ing: TAutoIncField;
    ADO1id_usu: TIntegerField;
    ADO1detalle_ing: TStringField;
    ADO1nombre_ing: TStringField;
    ADO1fechahora_ing: TDateTimeField;
    ADO1monto_ing: TFloatField;
    ADO1estado_ing: TStringField;
    QRShape10: TQRShape;
    QRLabel4: TQRLabel;
    QRShape11: TQRShape;
    ADO1id_usu_1: TAutoIncField;
    ADO1nombre_usu: TStringField;
    ADO1tipo_usu: TStringField;
    ADO1login_usu: TStringField;
    ADO1clave_usu: TStringField;
    ADO1fechahabil_usu: TDateTimeField;
    ADO1imagen_usu: TBlobField;
    ADO1estado_usu: TStringField;
    ADO1terminal_usu: TIntegerField;
    ADO1descripcion_ing: TStringField;
    QRExpr7: TQRExpr;
    ADO1tipo_ing: TStringField;
    ADO1numrec_ing: TIntegerField;
    ADO1numrec_egr: TIntegerField;
    QRExpr8: TQRExpr;
    DBLogo: TQRDBImage;
    QRDBEmpresa: TQRDBText;
    QRDBEslogan: TQRDBText;
    QRDBSucursal: TQRDBText;
    QRDBDireccion: TQRDBText;
    QRDBTelf: TQRDBText;
    QRShape1: TQRShape;
    QRExpr9: TQRExpr;
    procedure Iniciar();
    procedure Consulta(Num:String);
    Function NLiteral(x:String):String;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRepCompIng2: TFormRepCompIng2;

implementation

uses frmLogin, numeroaletras, frmEmpresa;




{$R *.dfm}
procedure TFormRepCompIng2.Consulta(Num:String);
Var
        SQL:String;
begin
                 SQL:='select i.*,u.* from ingreso_egreso i,usuario u '+
                      'where '+
                      'i.id_usu=u.id_usu and '+
                      'i.id_ing='+num;

        ADO1.close;
        ADO1.SQL.Clear;
        ADO1.SQL.Add(SQL);
        ADO1.Open;

       if Not ADO1.IsEmpty then
              QLiteral.Caption:= NLiteral( formlogin.sincoma(Monto.text) );

End;

procedure TFormRepCompIng2.Iniciar();
begin

    QuickRep1.preview;
End;
Function TFormRepCompIng2.NLiteral(X:String):String;
var
        i,ban:integer;
        entero,decimal:string;
begin
//Dividir El numero separandolo de su decimal
entero:='';
decimal:='';
 ban:=0;

        for i:=1 to length(X) Do
        begin
            if x[i]='.' then
            ban:=1;

            if ban=1 then
                decimal:=decimal+x[i]
            else
            begin
                if x[i]<>'.' then
                        entero:=entero+x[i];
            end;




        End;
//N:=strtoint(entero);

if ban=1 then
        decimal:=formatfloat('#.00',strtofloat(decimal))
else
        decimal:='00';

        NLiteral:=FormNumeroALetras.NumeroToLetra(strtofloat(entero))+'  '+decimal+'/100 Bs';

end;
end.
