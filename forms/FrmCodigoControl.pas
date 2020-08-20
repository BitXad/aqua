unit FrmCodigoControl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormCodigoControl = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Button3: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Button4: TButton;
    Edit10: TEdit;
    E1: TEdit;
    E2: TEdit;
    E3: TEdit;
    E4: TEdit;
    E5: TEdit;
    Button5: TButton;
    E0: TEdit;
    ere: TLabel;
    E01: TEdit;
    Label11: TLabel;
    Edit11: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Function ObtenerBase64(Numero:integer):String;
    procedure Button2Click(Sender: TObject);
    function ObtenerVerhoeff(Cifra:String) : Integer;
    function InvierteNumero(C:string):String;
    procedure oeff(Sender: TObject);
    Function CifrarMensajeRC4(Mensaje,Key:String ):String;
    Function RellenaCero(X:String):String;
    function ConvierteAHexadecimal( n:integer ):string;
    function ObtieneSubcadena(Cad:String; Indice,Tamanio:integer):string;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    function CodigodeControl(nf,nt,fec,mon,llave,auto:string):string;
    function Eliminarguion(x:String):string;


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCodigoControl: TFormCodigoControl;

implementation

uses frmLogin;

{$R *.dfm}

Function TFormCodigoControl.ObtenerBase64(Numero:integer):String;
Const
        DICCIONARIO:array [1..64] of Pchar =    ('0','1','2','3','4', '5', '6', '7', '8', '9',
                                                 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
                                                 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T',
                                                 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd',
                                                 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
                                                 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x',
                                                 'y', 'z', '+', '/');
Var
        Cociente,Resto:longint;
        Palabra:string;
Begin
        Cociente := 1;
        Palabra:='';

        While(Cociente > 0) do
        Begin
                Cociente := Numero DIV 64;
                Resto := Numero MOD 64;
                Palabra := Diccionario[Resto+1] + Palabra;
                Numero := Cociente;
        End;
        ObtenerBase64:=Palabra;
End;


Function TFormCodigoControl.ObtenerVerhoeff(Cifra:String) : Integer;
Const
 Mul:Array [0..9,0..9] of integer=     ((0,1,2,3,4,5,6,7,8,9),
                                        (1,2,3,4,0,6,7,8,9,5),
                                        (2,3,4,0,1,7,8,9,5,6),
                                        (3,4,0,1,2,8,9,5,6,7),
                                        (4,0,1,2,3,9,5,6,7,8),
                                        (5,9,8,7,6,0,4,3,2,1),
                                        (6,5,9,8,7,1,0,4,3,2),
                                        (7,6,5,9,8,2,1,0,4,3),
                                        (8,7,6,5,9,3,2,1,0,4),
                                        (9,8,7,6,5,4,3,2,1,0));

 Per:Array [0..7,0..9] of integer =    ((0,1,2,3,4,5,6,7,8,9),
                                        (1,5,7,6,2,8,3,0,9,4),
                                        (5,8,0,3,7,9,6,1,4,2),
                                        (8,9,1,6,0,4,3,5,2,7),
                                        (9,4,5,3,1,2,6,8,7,0),
                                        (4,2,8,6,5,7,3,9,0,1),
                                        (2,7,9,3,8,0,6,4,1,5),
                                        (7,0,4,6,9,1,3,2,5,8));

 Inv : Array [0..9] of integer = (0,4,3,2,1,5,6,7,8,9);

Var
        Check, I:integer;
        NumeroInvertido:String;
Begin
        Check :=0;

        NumeroInvertido := InvierteNumero(Cifra);

        For I:=0 To (Length(NumeroInvertido)-1) Do
        Begin
          //Check = Mul[Check, Per[((I + 1) MODULO 8), A_Numero(NumeroInvertido[I])]]
            Check := Mul[Check, Per[((I+1) MOD 8), Strtoint(NumeroInvertido[I+1])]];
        End;
        ObtenerVerhoeff:=Inv[Check];
end;
procedure TFormCodigoControl.Button2Click(Sender: TObject);
begin
        Edit4.Text:=ObtenerBase64(Strtoint(Edit3.Text));
end;
function TFormCodigoControl.InvierteNumero(C:string):String;
Var
        aux:string;
        i:integer;
begin
        Aux:='';

        for i:=1 to length(C) do
        Begin
            Aux:=C[i]+Aux;
        end;

        InvierteNumero:=Aux;

End;
procedure TFormCodigoControl.oeff(Sender: TObject);
begin
        Edit6.Text:=inttostr(ObtenerVerhoeff(Edit5.text));
//        Edit6.Text:=Inviertenumero(Edit5.Text);
end;

Function TFormCodigoControl.CifrarMensajeRC4(Mensaje,Key:String ):String;
Var
        State:Array[0..255] of Integer;
        Aux,X, Y, Index1, Index2,NMen, I:Integer;
        MensajeCifrado:String;
Begin
        X:=0; Y:=0; Index1:=0; Index2:=0;
        MensajeCifrado:='';

        For I:=0 to 255 Do
        Begin
                State[I] := I;
        End;

        for I:=0 to 255 Do
        Begin
                Index2 := ( ORD(key[Index1+1]) + State[I] + Index2 ) MOD 256;
                //IntercambiaValor( State[I], State[Index2] );
                Aux:=state[I];
                state[I]:=state[Index2];
                state[Index2]:=Aux;
                //**************************
                Index1 := (Index1 + 1) MOD Length(key);
        End;

        For I := 0 To Length(Mensaje)-1 Do
        Begin
                X := (X + 1) MOD 256;
                Y := (State[X] + Y) MOD 256;
                //IntercambiaValor( State[X] , State[Y] );
                Aux:=state[X];
                state[X]:=state[Y];
                state[Y]:=Aux;
                //**************************
                NMen := ORD(Mensaje[I+1]) XOR State[(State[X] + State[Y]) MOD 256];

                MensajeCifrado := MensajeCifrado +'-'+RellenaCero(ConvierteAHexadecimal(NMen));
        End;
        CifrarMensajeRC4:=ObtieneSubCadena(MensajeCifrado, 1, Length(MensajeCifrado));
End;
Function TFormCodigoControl.RellenaCero(X:String):String;
Begin
        if Length(X)=1 then
                X:='0'+X;
        if x='' then X:='00';
        RellenaCero:=X;
end;
function TFormCodigoControl.ConvierteAHexadecimal( n:integer ):string;
const hex:array [0..15] of char =('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F');
var
cad:String;
begin
  while n<>0 do
  begin
     cad:=hex[ 15 and n ]+cad; {=(n mod 15)}
     n:=n shr 4;
  end; {=n div 16}

        ConvierteAHexadecimal:=Cad;
end;
function TFormCodigoControl.ObtieneSubcadena(Cad:String; Indice,Tamanio:integer):string;
Var
        i:integer;
        aux:string;
begin
        aux:='';
        for i:=indice+1 to Tamanio do
        Begin
                aux:=Aux+Cad[i];
        End;
        ObtieneSubcadena:=Aux;
end;


procedure TFormCodigoControl.Button1Click(Sender: TObject);
begin
        Edit7.Text:=CifrarMensajeRC4(edit1.Text,Edit2.Text);
end;
function TFormCodigoControl.Eliminarguion(x:String):string;
Var
        y:string;
        i:integer;
begin
        y:='';
        for i:=1 to length(x) do
        Begin
                if (x[i]<>'-')AND(x[i]<>' ') then
                        y:=y+x[i];
        End;
        Eliminarguion:=y;
end;

procedure TFormCodigoControl.Button4Click(Sender: TObject);
begin
        Edit9.Text:= rellenaCero(ConvierteaHexadecimal(strtoint(edit8.Text)));
//                     RellenaCero(ConvierteAHexadecimal(NMen));
end;

function TFormCodigoControl.CodigodeControl(nf,nt,fec,mon,llave,auto:string):string;
Var
        suma,total,numfact,nit,fecha,monto,verhoeff,p1,p2,p3,p4,p5:int64;
        x,c1,c2,c3,c4,c5,v,cad,key:string;
        i,j:integer;
        numerofact:integer;
begin
try
//*************************  PASO 1 *********************************
// se obtienen dos digitos recursivos verhoeff para el numero de factura, nit, fecha, y monto

        numfact:=(strtoint64(nf)*10 + Obtenerverhoeff(nf))*10+Obtenerverhoeff(nf+inttostr(Obtenerverhoeff(nf)));
        if nt<>'0' then
            nit:=(strtoint64(nt)*10 + Obtenerverhoeff(nt))*10+Obtenerverhoeff(nt+inttostr(Obtenerverhoeff(nt)))
        else
        Begin
            nit:= Obtenerverhoeff('0')*10+Obtenerverhoeff('0'+inttostr(Obtenerverhoeff('0')));
        end;

        fecha:=(strtoint64(fec)*10 + Obtenerverhoeff(fec))*10+Obtenerverhoeff(fec+inttostr(Obtenerverhoeff(fec)));
        mon:= inttostr(round(strtofloat(mon)));
        monto:=(strtoint64(mon)*10 + Obtenerverhoeff(mon))*10+Obtenerverhoeff(mon+inttostr(Obtenerverhoeff(mon)));
//una vez obtenidos y concatenados los 2 digitos verhoeff, se obtiene la sumatoria
        Suma:=(numfact+nit+fecha+monto);

        x:='';
//seobtienen 5 digitos verhoeff consevutivos a la sumatoria de los datos del valos antrerior
        x:=inttostr(suma);
        suma:= (suma*10+Obtenerverhoeff(X));
        x:=inttostr(suma);
        suma:= (suma*10+Obtenerverhoeff(X));
        x:=inttostr(suma);
        suma:= (suma*10+Obtenerverhoeff(X));
        x:=inttostr(suma);
        suma:= (suma*10+Obtenerverhoeff(X));
        x:=inttostr(suma);
        suma:= (suma*10+Obtenerverhoeff(X));

//Ultimos digitos verhoeff
  //      verhoeff:= suma mod 100000;

        v:=inttostr(suma);
        i:=length(V);
        v:=v[i-4]+v[i-3]+v[i-2]+v[i-1]+v[i];

//*************************  PASO 2 *********************************
//Separacion de las cadenas del codigo de control
        c1:=''; j:=1;//indica el digito verhoeff a recorrer
        for i:=1 to strtoint(v[j])+1 do
          c1:=c1+llave[i];

        c1:=auto+c1;


        c2:=''; j:=j+1;//indica el digito verhoeff a recorrer
        for i:=i to i+strtoint(v[j]) do
                c2:=c2+llave[i];
        c2:=inttostr(numfact)+c2;


        c3:=''; j:=j+1; //indica el digito verhoeff a recorrer
        for i:=i to i+strtoint(v[j]) do
                c3:=c3+llave[i];

        if nt='0' then
                c3:='0'+inttostr(nit)+c3
       else
                c3:=inttostr(nit)+c3;

        c4:=''; j:=j+1; //indica el digito verhoeff a recorrer
        for i:=i to i+strtoint(v[j]) do
                c4:=c4+llave[i];
        c4:=inttostr(fecha)+c4;

        c5:=''; j:=j+1; //indica el digito verhoeff a recorrer
        for i:=i to i+strtoint(v[j]) do
                c5:=c5+llave[i];
        c5:=inttostr(monto)+c5;

//aplicar el algoritmo alleged RC4
        cad:=c1+c2+c3+c4+c5;
        key:=llave+v;

//         edit11.Text:=cad;

//obteniendo las 5 cadenas por separado

        cad:=eliminarguion(CifrarMensajeRC4(cad,key));

        total:=0;
        for i:=1 to length(cad)  do
        Begin
             if cad[i]<>'-' then
                 total:=total+ord(cad[i]);
        end;

        p1:=0; i:=1;
        while (i<=length(cad) ) do
        Begin
             p1:=p1+ord(cad[i]);
            i:=i+5;
        End;

        p2:=0; i:=2;
        while (i<=length(cad) ) do
        Begin
             p2:=p2+ord(cad[i]);
            i:=i+5;
        End;

        p3:=0; i:=3;
        while (i<=length(cad) ) do
        Begin
             p3:=p3+ord(cad[i]);
            i:=i+5;
        End;

        p4:=0; i:=4;
        while (i<=length(cad) ) do
        Begin
             p4:=p4+ord(cad[i]);
            i:=i+5;
        End;

        p5:=0; i:=5;
        while (i<=length(cad) ) do
        Begin
             p5:=p5+ord(cad[i]);
            i:=i+5;
        End;

       p1:=(total * p1) div (strtoint(v[1])+1);

       p2:=(total * p2) div (strtoint(v[2])+1);

       p3:=(total * p3) div (strtoint(v[3])+1);

       p4:=(total * p4) div (strtoint(v[4])+1);

       p5:=(total * p5) div (strtoint(v[5])+1);

       suma:=p1+p2+p3+p4+p5;

       codigodeControl:=CifrarMensajeRC4(Obtenerbase64(suma),key);
except

    //Recuperar factura en curso y actualizar
    formLogin.Consultarx('select * from dosificacion');
    numerofact:=formLogin.ADOX.fieldbyname('numfact_dosif').AsInteger - 1;
    FormLogin.Ejecutarx('update dosificacion set numfact_dosif='+inttostr(numerofact));
    //*********************************************


    showmessage('ERROR: Existe un problema con unos de los parámetros de la factura.. Verifique los datos de facturación por favor.');
    
end;
end;

procedure TFormCodigoControl.Button5Click(Sender: TObject);
begin
               // CodigodeControl(nf,nt,fec,mon,llave,auto:string):string;

        E5.Text:= codigodecontrol(e1.text,e2.text,e3.text,e4.text,E0.text,E01.text);
end;

end.
