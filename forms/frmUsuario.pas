unit FrmUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Menus, DBCtrls, StdCtrls, Mask, Buttons, sBitBtn,
  ExtCtrls, sPanel, Grids, DBGrids, sLabel, ExtDlgs, acPNG,Jpeg, GraphicEx,
  ComCtrls, sEdit;

type
  TFormUsuario = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    Salir1: TMenuItem;
    ADOQuery1: TADOQuery;
    ADOQuery: TADOQuery;
    sPanel2: TsPanel;
    PicDialog: TOpenPictureDialog;
    StatusBar: TStatusBar;
    Operaciones1: TMenuItem;
    AsignarRoles1: TMenuItem;
    PanelOperaciones: TPanel;
    Bit1: TSpeedButton;
    Bit2: TSpeedButton;
    Bit4: TSpeedButton;
    Bit3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    GroupBuscar: TGroupBox;
    SBuscar: TSpeedButton;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    ECodigo: TsEdit;
    EApellidos: TsEdit;
    ENombres: TsEdit;
    Panel1: TPanel;
    tipo_usu: TDBEdit;
    sLabelFX2: TsLabelFX;
    sBitBtn6: TsBitBtn;
    sBitBtn3: TsBitBtn;
    login_usu: TDBEdit;
    Image1: TImage;
    DirImagen: TEdit;
    DBImage1: TDBImage;
    DBEstado: TDBEdit;
    DBEdit1: TDBEdit;
    clave_usu: TDBEdit;
    ci_usu: TDBEdit;
    BitBtn2: TsBitBtn;
    PanelTitulo: TPanel;
    Nav1: TDBNavigator;
    Ltitulo: TsLabelFX;
    sLabelFX1: TsLabelFX;
    sLabelFX3: TsLabelFX;
    sLabelFX4: TsLabelFX;
    sLabelFX5: TsLabelFX;
    sLabelFX6: TsLabelFX;
    procedure Bit1Click(Sender: TObject);
    procedure Bit2Click(Sender: TObject);
    procedure Bit3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure Nav1Click(Sender: TObject; Button: TNavigateBtn);
    procedure BitBtn2Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);

    procedure Buscar(Cond:String);
    procedure Consultar(SQL:String);
    procedure Consultar2(SQL:String);
    Procedure Ejecutar(SQL:String);
    Procedure Iniciar();
    procedure Salir();
    procedure sBitBtn2Click(Sender: TObject);
    procedure skinChange(Sender: TObject);
    procedure ci_usuChange(Sender: TObject);
    procedure tipo_usuChange(Sender: TObject);
    procedure login_usuChange(Sender: TObject);
    procedure clave_usuChange(Sender: TObject);
    procedure fechahabil_usuChange(Sender: TObject);
    procedure imagen_usuChange(Sender: TObject);
    procedure skin_usuChange(Sender: TObject);
    procedure estado_usuChange(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure sBitBtn6Click(Sender: TObject);
    procedure ci_usuKeyPress(Sender: TObject; var Key: Char);
    procedure Salto();
    procedure sBitBtn3Click(Sender: TObject);
    procedure AsignarRoles1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Bit4Click(Sender: TObject);
    procedure EApellidosKeyPress(Sender: TObject; var Key: Char);
    procedure SBuscarClick(Sender: TObject);

  private
    { Private declarations }
     Ban:integer;
  public
    { Public declarations }
  end;

var
  FormUsuario: TFormUsuario;

implementation

uses frmLogin, frmPrincipal, FrmRolUsuario;


{$R *.dfm}

procedure TFormUsuario.Consultar(SQL:String);
begin
        ADOQuery.Close;
        ADOQuery.SQL.Clear;
        ADOQuery.SQL.Add(SQL);
        ADOQuery.Open;
end;
procedure TFormUsuario.Consultar2(SQL:String);
begin
        ADOQuery1.Close;
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Add(SQL);
        ADOQuery1.Open;
end;
procedure TFormUsuario.Ejecutar(SQL:String);
begin
        ADOQuery.Close;
        ADOQuery.SQL.Clear;
        ADOQuery.SQL.Add(SQL);
        ADOQuery.ExecSQL;
end;
procedure TFormUsuario.Iniciar();
begin
        consultar('select * from usuario order by id_usu');
        ban:=0;

    Ban:=0;
    if NOT ADOQuery1.active then ADOQuery1.active:=true;
    StatusBar.Panels[1].Text:= 'REGISTROS: '+inttoStr(ADOQuery1.recordCount);
    //cargarAreas;
    show;
{    Left:=Principal.width;
    Top:=0;
    Width:=Screen.Width - Principal.width;
    Height:=Screen.Height - 40;
}
        show;
end;
procedure TFormUsuario.Buscar(Cond:String);
var
        sql:string;
begin
        sql:='select * from usuario where login_usu like '+chr(39)+'%'+cond+'%'+chr(39);
        adoquery1.close;
        adoquery1.sql.clear;
        adoquery1.sql.add(sql);
        adoquery1.open;
end;

procedure TFormUsuario.Bit1Click(Sender: TObject);
begin

        Nav1.BtnClick(nbinsert);
end;

procedure TFormUsuario.Bit2Click(Sender: TObject);
begin
{         Bit2.Enabled:=False;
         Nav1.BtnClick(nbPost);
         if Ban=0 then
         begin
            FormLogin.Skins.SkinName:=Skin.Text;
         end;
}
end;

procedure TFormUsuario.Bit3Click(Sender: TObject);
begin
       Nav1.BtnClick(nbcancel);
end;

procedure TFormUsuario.Button1Click(Sender: TObject);
begin
       EApellidos.Text:='';
       Buscar(EApellidos.Text);
end;

procedure TFormUsuario.sBitBtn1Click(Sender: TObject);
begin
        Nav1.BtnClick(nbdelete);
end;

procedure TFormUsuario.Nav1Click(Sender: TObject; Button: TNavigateBtn);
begin
       If Button=nbInsert then
        Begin
            ci_usu.SetFocus;
            Ban:=1;
        End;
end;

procedure TFormUsuario.BitBtn2Click(Sender: TObject);
begin
       if ((login_usu.Text<>'')) then   //si la descripcion del producto es diferente de vacio
        begin
        if Ban=1 then //si Ban=1 la operacion es insertar nuevo producto
        Begin
                Nav1.BtnClick(NbPost);  //commit
                //FormRegistro.Skins.SkinName:=Skin.Text;
                Showmessage('Registro almacenado exitosamente...!');
                Ban:=0;  //reestablecemos la bandera Ban=0 no estamols en operacion de insercion
                SBuscar.Click; //Ejecutamos el evento del clic en el button1

        end
        else
        begin
                ADOquery1.Edit;
                ADOquery1.Post;
                Showmessage('Registro modicado exitosamente...!');

                //FormRegistro.Skins.SkinName:=Skin.Text;
        end;
       End
        else
                Showmessage('Algun dato obligatorio no ha sido añadido o ponga guión "-" a los campos que no desea llenar');
        //Contador;
end;

procedure TFormUsuario.Salir1Click(Sender: TObject);
begin
       Salir;
end;

procedure TFormUsuario.Salir();
begin
        Close;
end;

procedure TFormUsuario.sBitBtn2Click(Sender: TObject);
begin
//        FormRepUsuario.iniciar;
end;

procedure TFormUsuario.skinChange(Sender: TObject);
begin
        Nav1.BtnClick(nbedit);
//        skin_usu.Text:=Skin.text;
//        FormLogin.Skins.SkinName:=Skin.Text;
        showmessage('Los cambios se efectuarán una vez reiniciado el sistema...!');
end;

procedure TFormUsuario.ci_usuChange(Sender: TObject);
begin
        if Ban=0 then
        begin
            Nav1.BtnClick(nbEdit);
            Bit2.Enabled:=True;
        end;
end;

procedure TFormUsuario.tipo_usuChange(Sender: TObject);
begin
        if Ban=0 then
        begin
            Nav1.BtnClick(nbEdit);
            Bit2.Enabled:=True;
        end;
end;

procedure TFormUsuario.login_usuChange(Sender: TObject);
begin
        if Ban=0 then
        begin
            Nav1.BtnClick(nbEdit);
            Bit2.Enabled:=True;
        end;
end;

procedure TFormUsuario.clave_usuChange(Sender: TObject);
begin
        if Ban=0 then
        begin
            Nav1.BtnClick(nbEdit);
            Bit2.Enabled:=True;
        end;
end;

procedure TFormUsuario.fechahabil_usuChange(Sender: TObject);
begin
        if Ban=0 then
        begin
            Nav1.BtnClick(nbEdit);
            Bit2.Enabled:=True;
        end;
end;

procedure TFormUsuario.imagen_usuChange(Sender: TObject);
begin
        if Ban=0 then
        begin
            Nav1.BtnClick(nbEdit);
            Bit2.Enabled:=True;
        end;
end;

procedure TFormUsuario.skin_usuChange(Sender: TObject);
begin
        if Ban=0 then
        begin
            Nav1.BtnClick(nbEdit);
            Bit2.Enabled:=True;
        end;
end;

procedure TFormUsuario.estado_usuChange(Sender: TObject);
begin
        if Ban=0 then
        begin
            Nav1.BtnClick(nbEdit);
            Bit2.Enabled:=True;
        end;
end;

procedure TFormUsuario.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
        if Key=#13 then
        if (EApellidos.Text='014025') then
        begin
                DBGrid1.Columns[4].Visible:=DBGrid1.Columns[4].Visible XOR True;
                DBGrid1.Columns[4].Width:=150;
                EApellidos.Clear;
        end;
end;

procedure TFormUsuario.sBitBtn6Click(Sender: TObject);
Var
        Extension,img:String;
        Tam:Integer;
         j: TJPEGImage;
         b: TBitmap;
begin

 j:=TJPEGImage.Create;
 b:=TBitmap.Create;


        PicDialog.Execute;
        DirImagen.Text:=PicDialog.FileName;
        if FileExists(DirImagen.Text) then
        Begin
             img:=DirImagen.Text;
             Tam:=Length(Img);
             Extension:=img[Tam-2]+img[Tam-1]+img[Tam];


             if (Extension='BMP') or (Extension='bmp') then
             Begin
                Image1.Picture.LoadFromFile(DirImagen.Text);
                DBImage1.Picture.LoadFromFile(DirImagen.Text);
             End;

             if (Extension='JPG') or (Extension='jpg') then
             Begin
                j.LoadFromFile(img);//el jpg
                b.Assign(j);
                b.SaveToFile('C:\temp.bmp');

                Image1.Picture.LoadFromFile('C:\temp.bmp');
                DBImage1.Picture.LoadFromFile('C:\temp.bmp');
             End;

             if (Extension='PNG') or (Extension='png') then
             Begin
                Image1.Picture.LoadFromFile(DirImagen.Text);
                DBImage1.Picture.LoadFromFile(DirImagen.Text);
             End;

        End;

 b.Free;
 j.Free;

end;

procedure TFormUsuario.Salto();
begin
    //        If Key=#13 then Salto;
      Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
end;
procedure TFormUsuario.ci_usuKeyPress(Sender: TObject; var Key: Char);
begin

     If Key=#13 then Salto;

end;

procedure TFormUsuario.sBitBtn3Click(Sender: TObject);
var
        sql,id_usu:string;
begin
        id_usu:=adoquery1.fieldbyname('id_usu').asstring;
        if dbestado.text='ACTIVO' then
                sql:='update usuario set estado_usu='+quotedstr('INACTIVO')+' where id_usu='+id_usu
        else
                sql:='update usuario set estado_usu='+quotedstr('ACTIVO')+' where id_usu='+id_usu;
        formlogin.ejecutary(sql);
        adoquery1.requery();
end;
procedure TFormUsuario.AsignarRoles1Click(Sender: TObject);
begin
    FormRolUsuario.show;
end;

procedure TFormUsuario.SpeedButton1Click(Sender: TObject);
begin

        Nav1.BtnClick(nbinsert);
end;

procedure TFormUsuario.SpeedButton2Click(Sender: TObject);
begin
         Bit2.Enabled:=False;
         Nav1.BtnClick(nbPost);
{         if Ban=0 then
         begin
            FormLogin.Skins.SkinName:=Skin.Text;
         end;
}
end;

procedure TFormUsuario.SpeedButton4Click(Sender: TObject);
begin
       Nav1.BtnClick(nbcancel);
end;

procedure TFormUsuario.Bit4Click(Sender: TObject);
begin
        Nav1.BtnClick(nbdelete);
end;

procedure TFormUsuario.EApellidosKeyPress(Sender: TObject; var Key: Char);
begin
        if Key=#13 then
        if (EApellidos.Text='014025') then
        begin
                DBGrid1.Columns[4].Visible:=DBGrid1.Columns[4].Visible XOR True;
                DBGrid1.Columns[4].Width:=150;
                EApellidos.Clear;
        end;
end;

procedure TFormUsuario.SBuscarClick(Sender: TObject);
begin
       EApellidos.Text:='';
       Buscar(EApellidos.Text);
end;

end.
