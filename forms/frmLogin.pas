    unit frmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, sComboBox, EDBImage, jpeg, ExtCtrls,
  sSkinManager, DB, ADODB;

type
  TFormLogin = class(TForm)
    ComboImp: TsComboBox;
    pass: TEdit;
    user: TEdit;
    Bingresar: TsBitBtn;
    Bcancelar: TsBitBtn;
    Image1: TImage;
    Skins: TsSkinManager;
    ConexionBD: TADOConnection;
    ADOEstados: TADOQuery;
    DataEstados: TDataSource;
    ADOExpedido: TADOQuery;
    DataExpedido: TDataSource;
    ADOX: TADOQuery;
    DataX: TDataSource;
    ADOY: TADOQuery;
    DataY: TDataSource;
    ADOUsuario: TADOQuery;
    DataUsuario: TDataSource;
    procedure BingresarClick(Sender: TObject);
    procedure BcancelarClick(Sender: TObject);
    procedure Consultarx(SQL:String);
    procedure Ejecutarx(SQL:String);
    procedure Consultary(SQL:String);
    procedure Ejecutary(SQL:String);
    procedure userClick(Sender: TObject);
    procedure userExit(Sender: TObject);
    procedure userKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure userKeyPress(Sender: TObject; var Key: Char);
    procedure passClick(Sender: TObject);
    procedure passExit(Sender: TObject);
    procedure passKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure passKeyPress(Sender: TObject; var Key: Char);
    procedure ComboImpKeyPress(Sender: TObject; var Key: Char);
    procedure BingresarKeyPress(Sender: TObject; var Key: Char);
    procedure Verificar();
    procedure ConsultarUsuario(SQL:String);
    function Fecha(fec:TDate):String;
    procedure Bitacora(Operacion,Sentencia:String);
    function sinComa(num:String):String;
    procedure CargarConf();
  private
    { Private declarations }
    cont:integer;
  public
    { Public declarations }
    Config:Array[1..22] of Boolean;
    Raiz:String;
  end;

var
  FormLogin: TFormLogin;

implementation

uses frmPrincipal, frmEmpresa, FrmZonas, FrmCategorias, FrmServicios,
  FrmTipoUsuario;

{$R *.dfm}


procedure TFormLogin.CargarConf();
Var
        Fin,i:integer;
begin
                    Consultary('select * from configuracion');
                    Fin:=ADOy.recordcount;
                    ADOy.first;
                    For i:=1 to Fin do
                    begin
                        Config[i]:=ADOY.fieldbyname('Valor').value;
                        ADOy.Next;
                    end;

                    if ComboImp.Text<>'Predeterminada' then
                    begin

                        if ComboImp.Text='Facturadora' then
                        begin
                            Config[1]:=true;
                        end;

                        if ComboImp.Text='Carta Normal' then
                        begin
                            Config[1]:=false;
                        end;
                    end;

End;

procedure TFormLogin.BcancelarClick(Sender: TObject);
begin
    Close;
end;

procedure TFormLogin.ConsultarUsuario(SQL:String);
begin

    try
        ADOUsuario.Close;
        ADOUsuario.SQL.Clear;
        ADOUsuario.SQL.Add(SQL);
        ADOUsuario.Open;
    except
        Showmessage('ERROR: Ocurrio un problema al ejecutar la consulta SQL: '+SQL);
    end;

end;

procedure TFormLogin.Consultarx(SQL:String);
begin

    try
        ADOx.Close;
        ADOx.SQL.Clear;
        ADOx.SQL.Add(SQL);
        ADOx.Open;
    except
        Showmessage('ERROR: Ocurrio un problema al ejecutar la consulta SQL: '+SQL);
    end;

end;

procedure TFormLogin.Consultary(SQL:String);
begin

    try
        ADOy.Close;
        ADOy.SQL.Clear;
        ADOy.SQL.Add(SQL);
        ADOy.Open;
    except
        Showmessage('ERROR: Ocurrio un problema al ejecutar la consulta SQL: '+SQL);
    end;

end;

procedure TFormLogin.Ejecutarx(SQL:String);
begin

    try
      //  showmessage(SQL);
        ADOx.Close;
        ADOx.SQL.Clear;
        ADOx.SQL.Add(SQL);
           ADOx.ExecSQL;
    except
        Showmessage('ERROR: Ocurrio un problema al ejecutar la consulta SQL: '+SQL);
    end;

end;

procedure TFormLogin.Ejecutary(SQL:String);
begin

    try
        ADOy.Close;
        ADOy.SQL.Clear;
        ADOy.SQL.Add(SQL);
        ADOy.ExecSQL;
    except
        Showmessage('ERROR: Ocurrio un problema al ejecutar la consulta SQL: '+SQL);
    end;

end;

procedure TFormLogin.userClick(Sender: TObject);
begin
            user.Color:=clwhite;
            pass.Color:=clActiveBorder;
end;

procedure TFormLogin.userExit(Sender: TObject);
begin
        user.Color:=clActiveBorder;
        pass.Color:=clwhite; 
end;

procedure TFormLogin.userKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if Key=VK_ESCAPE then
            Bcancelar.Click;
end;

procedure TFormLogin.userKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then pass.SetFocus;
        user.Color:=clWhite;
        pass.Color:=clActiveBorder;
end;

procedure TFormLogin.passClick(Sender: TObject);
begin
            pass.Color:=clwhite;
            user.Color:=clActiveBorder;
end;

procedure TFormLogin.passExit(Sender: TObject);
begin
        pass.Color:=clActiveBorder;
end;

procedure TFormLogin.passKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if Key=VK_ESCAPE then
            Bcancelar.Click;
end;

procedure TFormLogin.passKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
        begin
            ComboImp.SetFocus;
        end;
        Pass.Color:=clWhite;
        user.Color:=clActiveBorder;
end;

procedure TFormLogin.ComboImpKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
        begin
            Bingresar.Click;
        end;
end;

procedure TFormLogin.Verificar();
Var
        nombre_usu,login_usu,clave_usu,tipo_usu,id_usu,estado:String;
begin
        ConsultarUsuario('select * from usuario where login_usu='+quotedstr(User.Text)+' and clave_usu='+quotedstr(Pass.Text));

        if ADOUsuario.isempty then
        begin
                Cont:=Cont+1;
                Showmessage('ERROR: El nombre de usuario o la contraseña son incorrectos, intente de nuevo...!');
                if cont=3 then
                begin
                    showmessage('Lo sentimos, excedido el limite de intentos permitidos... pruebe nuevamente mas tarde por favor...!');
                    close;
                end;

                pass.Clear;
                user.SelectAll;
                user.SetFocus;
        end
        else
        begin
                //id_usu,estado,tipo_usuario,nombre_usu,login_usu,clave_usu,tipo_usu,imagen_usu
                id_usu:=adousuario.fieldbyname('id_usu').value;
                nombre_usu:=adousuario.fieldbyname('nombre_usu').value;
                tipo_usu:=adousuario.fieldbyname('tipo_usuario').value;
                login_usu:=adousuario.fieldbyname('login_usu').value;
                clave_usu:=adousuario.fieldbyname('clave_usu').value;
                estado:=adousuario.fieldbyname('estado_usu').value;

                Showmessage(USER.Text+' BIENVENIDO al Sistema de Cobro y facturación!');
                hide;
                ADOEstados.Active:=true;
                ADOExpedido.Active:=true;
                FormEmpresa.ADOPrime.Active:=true;
                FormZonas.ADOQuery1.Active:=true;
                FormCategorias.ADOQuery1.Active:=true;
                FormServicios.ADOQuery1.Active:=true;
                FormTipoUsuario.ADOQuery1.Active:=true;

                CargarConf;
                Raiz:=GetCurrentDir;
                FormPrincipal.iniciar();
        end;
end;

procedure TFormLogin.BingresarKeyPress(Sender: TObject; var Key: Char);
begin
        Verificar();
end;
procedure TFormLogin.BingresarClick(Sender: TObject);
begin
//    FormPrincipal.iniciar();
    Verificar;
end;

function TFormLogin.Fecha(fec:TDate):String;
begin
        Fecha:=formatdateTime('yyyy-mm-dd',fec);
end;

procedure TFormLogin.Bitacora(Operacion,Sentencia:String);
Var
   ope,sentenc,usu,coma,SQL,fechax,hora:String;
begin

        coma:=',';
        ope:=quotedstr(operacion);
        sentenc:=quotedstr(sentencia);
        usu:=quotedstr(ADOUsuario.fieldbyname('nombre_usu').AsString);
        fechax:=QuotedStr(Fecha(date));
        hora:=QuotedStr(formatDateTime('HH:mm:ss',time));

        sql:='insert into bitacora(fecha,hora,ope,sentenc,usuario) values('+fechax+coma+hora+coma+ope+coma+sentenc+coma+usu+')';
        ejecutary(sql);
end;

function TformLogin.sinComa(num:String):String;
Var
        c,i:integer;
        Res:String;
begin

        c:=Length(num);
        Res:='';

        For i:=1 to c do
        begin
            if num[i]<>',' then
                Res:=Res+num[i];
        End;

        if Res='' then
               sinComa:='0'
        else
               sinComa:=Res;

end;

end.
