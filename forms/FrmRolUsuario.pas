unit FrmRolUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, sLabel, ExtCtrls, sPanel, Buttons, sBitBtn,
  DBCtrls, Grids, DBGrids, Mask, Menus, sButton;

type
  TFormRolUsuario = class(TForm)
    sPanel2: TsPanel;
    sLabelFX1: TsLabelFX;
    sPanel1: TsPanel;
    sPanel3: TsPanel;
    ADOUsuario: TADOQuery;
    DataUsuario: TDataSource;
    sPanel4: TsPanel;
    Usuario: TDBLookupComboBox;
    ADORol: TADOQuery;
    DataRol: TDataSource;
    sBitBtn1: TsBitBtn;
    DBGrid1: TDBGrid;
    sPanel5: TsPanel;
    DBNavigator1: TDBNavigator;
    Id_usu: TDBEdit;
    sBitBtn4: TsBitBtn;
    ADOQuery: TADOQuery;
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    Salir1: TMenuItem;
    sPanel6: TsPanel;
    sButton1: TsButton;
    sButton2: TsButton;
    sBitBtn2: TsBitBtn;
    procedure sBitBtn1Click(Sender: TObject);
    procedure NuevosRoles();
    procedure COnsultar(SQL:String);
    procedure Ejecutar(SQL:String);
    procedure COnsultarx(SQL:String);
    procedure Ejecutarx(SQL:String);
    procedure UsuarioClick(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure GuardarRoles();
    procedure CargarRoles();
    procedure Salir1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    function  VerificarRol(Id_usu:String;id_rol:integer):Boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRolUsuario: TFormRolUsuario;

implementation

uses FrmLogin;

{$R *.dfm}
procedure TFormRolUsuario.Ejecutar(SQL:String);
begin
try
        ADORol.Close;
        ADORol.SQL.Clear;
        ADORol.SQL.Add(SQL);
        ADORol.ExecSQL;
except
        showmessage('ERROR: Al ejecutar la sentecia SQL: '+SQL);
end;
end;
procedure TFormRolUsuario.Consultar(SQL:String);
begin
try
        ADORol.Close;
        ADORol.SQL.Clear;
        ADORol.SQL.Add(SQL);
        ADORol.Open;
except
    Showmessage('ERROR: Al ejecutar la sentencia SQL: '+SQL);
end;

end;
procedure TFormRolUsuario.Ejecutarx(SQL:String);
begin
try
        ADOQuery.Close;
        ADOQuery.SQL.Clear;
        ADOQuery.SQL.Add(SQL);
        ADOQuery.ExecSQL;
except
    Showmessage('ERROR: Al ejecutar la sentencia SQL: '+SQL);
end;

end;
procedure TFormRolUsuario.Consultarx(SQL:String);
begin
try
        ADOQuery.Close;
        ADOQuery.SQL.Clear;
        ADOQuery.SQL.Add(SQL);
        ADOQuery.Open;
except
    Showmessage('ERROR: Al ejecutar la sentencia SQL: '+SQL);
end;
end;
procedure TFormRolUsuario.NuevosRoles();
Var
        SQL:String;
begin

if application.messagebox(Pchar('Se eliminaran las modificaciones actuales... Desea continuar?'),'Alerta',mb_iconquestion+mb_yesno)=6 then
  begin

        sql:='delete from bolsarol';
        ejecutar(sql);
        sql:=' insert into bolsarol ( id_rol, rol, estado_rol )'+
             ' select rol.id_rol, rol.nom_rol, 0 as estado'+
             ' from rol;';
        ejecutar(sql);
        sql:='select * from bolsarol order by id_rol asc';
        consultar(sql);
  end;

end;
procedure TFormRolUsuario.sBitBtn1Click(Sender: TObject);
begin
        FormLogin.Bitacora('ROL-USU: ASIGNAR NUEVOS ROLES A USUARIO '+usuario.Text,'');
        NuevosRoles();
end;
procedure TFormRolUsuario.CargarRoles();
Var
        SQL:String;
        i,fin:integer;
        ID_ROL, ROL,ESTADO_ROL,coma:String;
begin
        sql:='delete from bolsarol';
        ejecutar(sql);

        sql:='select u.login_usu,l.id_rol,u.id_usu,l.fecha,r.nom_rol,l.estado_rol '+
             'from usuario u, rol r, rol_usuario l '+
             'where '+
             'l.id_usu = u.id_usu and '+
             'l.id_rol = r.id_rol and '+
             'u.id_usu='+id_usu.text;
        consultarx(sql);
        //showmessage('Aqui bien..!');

       if not adoquery.isempty then
        begin
                coma:=',';
                fin:=adoquery.recordcount;
                adoquery.first;

                for i:=1 to fin do
                begin
                        id_rol:=adoquery.fieldbyname('id_rol').value;
                        rol:=adoquery.fieldbyname('nom_rol').value;
                        //estado_rol:=booltostr(adoquery.fieldbyname('estado_rol').value);
                        estado_rol:=adoquery.fieldbyname('estado_rol').AsString;
                        sql:='insert into bolsarol values('+id_rol+coma+quotedstr(rol)+coma+estado_rol+')';
                        //showmessage(sql);
                        ejecutar(sql);
                        adoquery.next;
                end;

                consultar('select * from bolsarol order by id_rol asc');
        end;


end;

procedure TFormRolUsuario.UsuarioClick(Sender: TObject);
begin
        ADOUsuario.active:=false;
        ADOUsuario.active:=true;

        CargarRoles;

        FormLogin.Bitacora('ROL-USU: SELECCIONAR USUARIO '+usuario.Text,'');
end;
procedure TFormRolUsuario.GuardarRoles();
Var
        SQL:String;
begin
        sql:='delete from rol_usuario where id_usu='+id_usu.text;
        ejecutar(sql);

        sql:='insert into rol_usuario ( id_rol, id_usu, fecha,estado_rol ) '+
             ' select bolsarol.id_rol, '+id_usu.text+' as usuario, now() as fecha,bolsarol.estado_rol  '+
             ' from bolsarol;';
        showmessage(sql);
        ejecutar(sql);
end;
procedure TFormRolUsuario.sBitBtn4Click(Sender: TObject);
begin
  If Usuario.Text<>'' then
  Begin
        if NOT ADORol.IsEmpty then
        Begin
                GuardarRoles();
                CargarRoles();
                //Showmessage('Se asignaron correctamente los roles para el usuario :'+Usuario.Text);
                Formlogin.Bitacora('ROL-USU: GUARDAR ROLES MODIFICADOS DEL USUARIO '+usuario.Text,'');
        End
        Else
                showmessage('ERROR: Debe Especificar lo roles del usuario seleccionado...!');
  End
  else showmessage('ERROR: Debe seleccionar un usuario...!');
end;

procedure TFormRolUsuario.Salir1Click(Sender: TObject);
begin
        Close;
end;

procedure TFormRolUsuario.DBGrid1CellClick(Column: TColumn);
Begin
  if Column.FieldName = 'estado_rol' then
  begin
    ADORol.Edit;
    if ADORol.FindField('estado_rol').value=1 then
    ADORol.FindField('estado_rol').value := 0
    else
    ADORol.FindField('estado_rol').value := 1;
    ADORol.Post;
    Dbgrid1.Refresh; // quizás más bien un Repaint.... pero en fin.
  end;

  iF dbgRID1.Columns[2].Field.value=1 then
        FormLogin.Bitacora('ROL-USU: SELECCIONAR EL ROL '+dbgRID1.Columns[1].Field.value,'')
  else
              FormLogin.Bitacora('ROL-USU: QUITAR SELECCION AL ROL '+dbgRID1.Columns[1].Field.value,'')
end;

procedure TFormRolUsuario.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin

//COlor a las filas
  if ADORol.RecNo MOD 2 =0  then
       if not (gdFocused in State)
        then DBGrid1.canvas.brush.color := clYellow;
    DBGrid1.DefaultDrawColumnCell(rect,DataCol,Column,State);


  if Column.FieldName = 'estado_rol' then
  begin

    DBGrid1.Canvas.FillRect(Rect);
    Check := 0;
    if ADORol.FindField('estado_rol').value=1 then Check :=DFCS_CHECKED;
    R:=Rect;
    InflateRect(R,-2,-2); //Disminuye el tamaño del CheckBox
    DrawFrameControl(DBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;
end;

procedure TFormRolUsuario.sButton1Click(Sender: TObject);
Var
        SQL:String;
begin
        if NOT ADOusuario.IsEmpty then
        begin
        if MessageDlg('Desea quitar la seleccion a todos lo items...?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
                FormLogin.Bitacora('ROL-USU: QUITAR LA SELECCION DE LOS ROLES DEL USUARIO '+usuario.Text,'');
                sql:='update bolsarol set estado_rol=0';
                ejecutar(sql);
                consultar('select * from bolsarol');
        End;
        end
        else
                showmessage('ERROR: No existen roles en la lista...!');
end;

procedure TFormRolUsuario.sButton2Click(Sender: TObject);
Var
        SQL:String;
begin
        if NOT ADOusuario.IsEmpty then
        begin
        if MessageDlg('Desea marcar la seleccion de todos lo items...?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
                FormLogin.Bitacora('ROL-USU: SELECCIONAR TODOS LOS ROLES PARA EL USUARIO '+usuario.Text,'');

                sql:='update bolsarol set estado_rol=1';
                ejecutar(sql);
                consultar('select * from bolsarol');
        End;
        end
        else
                showmessage('ERROR: No existen roles en la lista...!');
end;

function  TFormRolUsuario.VerificarRol(Id_usu:String;id_rol:integer):Boolean;
Var
        SQL:String;
begin
        sql:='select * from rol_usuario where id_usu='+id_usu+' and id_rol='+inttostr(id_rol)+' and estado_rol=1';
        consultarx(sql);
        verificarrol:=(not adoquery.isempty);
end;
procedure TFormRolUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        FormLogin.Bitacora('ROL-USU: CERRAR USUARIOS Y ROLES','');
end;

procedure TFormRolUsuario.sBitBtn2Click(Sender: TObject);
begin
    ADOUsuario.Requery();

end;

End.
