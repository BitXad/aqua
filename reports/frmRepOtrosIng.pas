unit frmRepOtrosIng;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TFormRepOtrosIng = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel5: TQRLabel;
    Titulo: TQRLabel;
    DBLogo: TQRDBImage;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    ADO1: TADOQuery;
    Monto: TDBEdit;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel19: TQRLabel;
    QRBand2: TQRBand;
    QRExpr5: TQRExpr;
    QRShape2: TQRShape;
    QRShape13: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape5: TQRShape;
    QRShape19: TQRShape;
    QRShape21: TQRShape;
    QRShape24: TQRShape;
    QRShape26: TQRShape;
    QRSysData1: TQRSysData;
    QRBand3: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel27: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape27: TQRShape;
    QRShape32: TQRShape;
    QRExpr3: TQRExpr;
    QRLabel3: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    Data1: TDataSource;
    QRShape8: TQRShape;
    QRExpr8: TQRExpr;
    QRDBText9: TQRDBText;
    QRLabel4: TQRLabel;
    F1: TQRLabel;
    FF2: TQRLabel;
    QRShape9: TQRShape;
    QRShape12: TQRShape;
    QRLabel1: TQRLabel;
    procedure Iniciar();
    procedure Consulta(Num:String);
    procedure Consulta2(sql:String);
    Function NLiteral(x:String):String;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRepOtrosIng: TFormRepOtrosIng;

implementation

uses numeroaletras;


{$R *.dfm}

procedure TFormRepOtrosIng.Consulta2(sql:String);
begin
        ADO1.close;
        ADO1.SQL.Clear;
        ADO1.SQL.Add(SQL);
        ADO1.Open;
End;

procedure TFormRepOtrosIng.Consulta(Num:String);
Var
        SQL:String;
begin

                 SQL:='select i.*,u.* from ingreso i,usuario u '+
                      ' where i.id_usu=u.id_usu '+
                      ' order by id_ing ';

        ADO1.close;
        ADO1.SQL.Clear;
        ADO1.SQL.Add(SQL);
        ADO1.Open;

 //      if Not ADO1.IsEmpty then
//              QLiteral.Caption:= NLiteral(Monto.text);

End;

procedure TFormRepOtrosIng.Iniciar();
begin
    QuickRep1.preview;

End;
Function TFormRepOtrosIng.NLiteral(X:String):String;
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

            if ban=1 then
                decimal:=decimal+x[i]
            else
            begin
                if x[i]<>'.' then
                        entero:=entero+x[i];
            end;


            if x[i]='.' then
                ban:=1;

        End;
//N:=strtoint(entero);

if ban=1 then
        decimal:=decimal+'0'
else
        decimal:='00';
        NLiteral:=FormNumeroALetras.NumeroToLetra(strtofloat(entero))+'  '+decimal+'/100 Bs';

end;
end.


