unit FrmIngresosEgresos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, sPanel, StdCtrls, Buttons, sBitBtn,
  jpeg, Menus, sLabel, DB, ADODB, Mask, DBCtrls, ComCtrls, acPNG, GraphicEx,
  ExtDlgs, sEdit;

type
  TformIngresosEgresos = class(TForm)
    PanelActions: TsPanel;
    DBGrid: TDBGrid;
    MainMenu: TMainMenu;
    Archivo1: TMenuItem;
    Salir1: TMenuItem;
    Herramientas1: TMenuItem;
    Opciones1: TMenuItem;
    Ayuda1: TMenuItem;
    emasdeAyud1: TMenuItem;
    herramientas2: TMenuItem;
    Configuracin1: TMenuItem;
    N1: TMenuItem;
    PanelNuevoEdit: TsPanel;
    BGuadar: TsBitBtn;
    BCerrar: TsBitBtn;
    sLabelFX1: TsLabelFX;
    DataDoc: TDataSource;
    PanelBuscar: TsPanel;
    Label4: TLabel;
    Bsalir: TsBitBtn;
    ADODoc: TADOQuery;
    Image2: TImage;
    Parametro: TEdit;
    BMostrarTodo: TsBitBtn;
    StatusBar: TStatusBar;
    Label3: TLabel;
    Nombre: TDBEdit;
    Label5: TLabel;
    Desc: TDBEdit;
    Label17: TLabel;
    Foto: TDBImage;
    sBitBtn6: TsBitBtn;
    Image1: TImage;
    Image11: TImage;
    PicDialog: TOpenPictureDialog;
    DirImagen: TEdit;
    Label1: TLabel;
    Monto: TDBEdit;
    Label7: TLabel;
    Nsillas: TDBEdit;
    Label10: TLabel;
    Estado: TDBEdit;
    ADODocid_ing: TAutoIncField;
    ADODocid_usu: TIntegerField;
    ADODocdetalle_ing: TStringField;
    ADODocnombre_ing: TStringField;
    ADODocfechahora_ing: TDateTimeField;
    ADODocmonto_ing: TFloatField;
    ADODocestado_ing: TStringField;
    BCat: TsBitBtn;
    ADOCat: TADOQuery;
    DataCat: TDataSource;
    DBGCat: TDBGrid;
    IDUSU: TDBEdit;
    Check1: TCheckBox;
    Panel2: TPanel;
    Panelfecha: TsPanel;
    Label37: TLabel;
    Label36: TLabel;
    fecha1: TDateTimePicker;
    fecha2: TDateTimePicker;
    BFiltrar: TsBitBtn;
    sBitBtn2: TsBitBtn;
    Check0: TCheckBox;
    ADOCateg: TADOQuery;
    DataCateg: TDataSource;
    sBitBtn3: TsBitBtn;
    Label6: TLabel;
    DET: TDBEdit;
    ADODocdescripcion_ing: TStringField;
    tipo_ing: TDBEdit;
    Label8: TLabel;
    ADODoctipo_ing: TStringField;
    panelTipo: TsPanel;
    Label9: TLabel;
    Label2: TLabel;
    BG: TsBitBtn;
    BS: TsBitBtn;
    noming: TEdit;
    comboCateg: TDBLookupComboBox;
    ADODocnumrec_ing: TIntegerField;
    ADODocnumrec_egr: TIntegerField;
    Panel1: TPanel;
    Ltitulo: TsLabelFX;
    PanelOperaciones: TPanel;
    BInsertar: TSpeedButton;
    BEditar: TSpeedButton;
    BEliminar: TSpeedButton;
    BCancelar: TSpeedButton;
    BImprimir: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    GroupBuscar: TGroupBox;
    BBuscar: TSpeedButton;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    ECodigo: TsEdit;
    EApellidos: TsEdit;
    ENombres: TsEdit;
    Button2: TButton;
    Button1: TButton;
    combo_tipo: TEdit;
    procedure BInsertarClick(Sender: TObject);
    procedure BEditarClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure BEliminarClick(Sender: TObject);
    procedure BCatClick(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure BImprimirClick(Sender: TObject);
    procedure BModificarClick(Sender: TObject);
    procedure BBuscarClick(Sender: TObject);
    procedure BGuadarClick(Sender: TObject);
    procedure Nuevo();
    procedure BCerrarClick(Sender: TObject);
    procedure nombreKeyPress(Sender: TObject; var Key: Char);
    procedure Salto();
    procedure selFechaKeyPress(Sender: TObject; var Key: Char);
    procedure selFechaChange(Sender: TObject);
    procedure Modificar();
    procedure Buscar();
    procedure Consultar(SQL:String);
    procedure Ejecutar(SQL:String);
    procedure BMostrarTodoClick(Sender: TObject);
    procedure ParametroKeyPress(Sender: TObject; var Key: Char);
    procedure Iniciar(Tipo:String);
    procedure BsalirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure tamanio(t:integer);
    procedure NomaulaKeyPress(Sender: TObject; var Key: Char);
    procedure combo_tipoChange(Sender: TObject);
    procedure sBitBtn6Click(Sender: TObject);
    procedure Convertir();
    procedure ECodKeyPress(Sender: TObject; var Key: Char);
    procedure DBGCatKeyPress(Sender: TObject; var Key: Char);
    procedure DBGCatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DescKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BFiltrarClick(Sender: TObject);
    procedure Filtrar();
    procedure sBitBtn2Click(Sender: TObject);
    procedure BGClick(Sender: TObject);
    procedure insertarCategoria();
    procedure BSClick(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure nomingKeyPress(Sender: TObject; var Key: Char);
    procedure comboCategKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SBuscarClick(Sender: TObject);
    procedure DETKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Ban:Integer;
    SQLX:string;
  public
    { Public declarations }
  end;

var
  formIngresosEgresos: TformIngresosEgresos;

implementation

uses frmLogin, frmRepCompIng, frmRepOtrosIng, frmRepCompIng2;




{$R *.dfm}

procedure TformIngresosEgresos.Consultar(SQL:String);
begin
    try
        ADODoc.close;
        ADODoc.SQL.Clear;
        ADODoc.SQL.Add(SQL);
        ADODoc.Open;
        StatusBar.Panels[1].Text:= 'REGISTROS: '+inttoStr(ADODoc.recordCount);
    except
        showmessage('ERROR: Ocurrio un error al ejecutar la sentencia SQL: '+SQL);
    end;
end;

procedure TformIngresosEgresos.Ejecutar(SQL:String);
begin
    try
        ADODoc.close;
        ADODoc.SQL.Clear;
        ADODoc.SQL.Add(SQL);
        ADODoc.ExecSQL;
    except
        showmessage('ERROR: Ocurrio un error al ejecutar la sentencia SQL: '+SQL);
    end;
end;

procedure TformIngresosEgresos.Nuevo();
var
    mensaje:String;
begin

        if (Ban<>1) and (Ban<>2) then // Si Ban es diferente de Nuevo y Modificar
        begin
            BSalir.Click; // Por si acaso el panel buscador estubiera abierto
            PanelActions.Visible:=True; //Mostrar u Ocultar PanelActions
            PanelNuevoEdit.Visible:=True;//Mostrar el panel para Nuevos Registros y Modificaciones
            ADODoc.Insert;
            nombre.SetFocus;
            Ban:=1;
        end
        else
        begin
              mensaje:='¿Desea cancelar la operación actual?';
              if application.messagebox(Pchar(mensaje),'Alerta',mb_iconquestion+mb_yesno)=6 then
              begin
                 BCerrar.Click;
                 BInsertar.Click;
              end;
        end;
end;
procedure TformIngresosEgresos.BInsertarClick(Sender: TObject);
begin
    Nuevo();
end;

procedure TformIngresosEgresos.BEditarClick(Sender: TObject);
begin
        PanelActions.Visible:=PanelActions.Visible XOR True; //Mostrar u Ocultar PanelActions
        Ban:=2; //Editar

end;

procedure TformIngresosEgresos.BCancelarClick(Sender: TObject);
begin
        BCerrar.Click;
end;

procedure TformIngresosEgresos.BEliminarClick(Sender: TObject);
var
        mensaje,id,nombre:String;
begin
        PanelActions.Visible:=PanelActions.Visible XOR True; //Mostrar u Ocultar PanelActions
        Ban:=4; //Eliminar


      id:=ADODoc.fieldbyname('id_ing').ASString;
      nombre:=ADODoc.fieldbyname('nombre_ing').ASString;
      mensaje:='Esta seguro que desea eliminar el registro con COD: '+id+
               ', NOMBRE: '+nombre+' ?';

      if application.messagebox(Pchar(mensaje),'Alerta',mb_iconquestion+mb_yesno)=6 then
      begin
         ADODoc.Delete;
         ADODoc.Refresh;
      end;
end;

procedure TformIngresosEgresos.BCatClick(Sender: TObject);
begin
   DBGCat.Visible:=true;
   DBGCat.SetFocus;

end;

procedure TformIngresosEgresos.Salir1Click(Sender: TObject);
begin
        Close;
end;

procedure TformIngresosEgresos.BImprimirClick(Sender: TObject);
begin
        PanelActions.Visible:=PanelActions.Visible XOR True; //Mostrar u Ocultar PanelActions
        Ban:=5; //Imprimir

        formRepCompIng.Consulta(ADODoc.FieldByName('id_ing').AsString);
        formRepCompIng.Iniciar;
end;

procedure TformIngresosEgresos.Modificar();
var
    mensaje:String;
begin
        if (Ban<>1) and (Ban<>2) then // Si Ban es diferente de Nuevo y Modificar
        begin
            BSalir.Click; // Por si acaso el panel buscador estubiera abierto
            PanelActions.Visible:=PanelActions.Visible XOR True; //Mostrar u Ocultar PanelActions
            PanelNuevoEdit.Visible:=True;
            Ban:=2; //Modificar
//            NomAula.SetFocus; //Ubicar cursos en el edit del nombre
            ADODoc.Edit;        end
        else
        begin
              mensaje:='¿Desea cancelar la operación actual?';
              if application.messagebox(Pchar(mensaje),'Alerta',mb_iconquestion+mb_yesno)=6 then
              begin
                 BCerrar.Click;
                 BEditar.Click;
              end;
        end;
end;
procedure TformIngresosEgresos.BModificarClick(Sender: TObject);
begin
        Modificar();
end;

procedure TformIngresosEgresos.Buscar();
var
    mensaje:String;
begin
        if (Ban<>1) and (Ban<>2) then // Si Ban es diferente de Nuevo y Modificar
        begin

            PanelActions.Visible:=True;
            PanelBuscar.Visible:=True;
            Parametro.SetFocus;

        end
        else
        begin
              mensaje:='¿Desea cancelar la operación actual?';
              if application.messagebox(Pchar(mensaje),'Alerta',mb_iconquestion+mb_yesno)=6 then
              begin
                 BCerrar.Click;
                 BBuscar.Click;
              end;
        end;

end;
procedure TformIngresosEgresos.BBuscarClick(Sender: TObject);
begin

        Buscar();

end;

procedure TformIngresosEgresos.BGuadarClick(Sender: TObject);
var
    SQL, iding:String;
begin

        if Ban=1 then
        begin

                ADODoc.findfield('tipo_ing').value:=Combo_Tipo.Text;
                idusu.Text:=formLogin.ADOUsuario.fieldbyname('id_usu').asString;
                ADODoc.Post;

                Showmessage('Registro almacenado con éxito...!');
                PanelActions.Visible:=False; //Ocultar PanelActions
                PanelNuevoEdit.Visible:=False;//Ocultar el panel para Nuevos Registros y Modificaciones
                Ban:=0;
                formlogin.consultary('select max(id_ing) as iding,max(numrec_ing) as maxing,max(numrec_egr) as maxegr from ingreso_egreso');
                iding:=formLogin.ADOy.FieldByName('iding').AsString;

                if (tipo_ing.Text='INGRESO') then
                    SQL:='update ingreso_egreso set numrec_ing='+formLogin.ADOy.FieldByName('maxing').AsString+'+1 '+
                    'where id_ing='+iding+' and tipo_ing='+quotedStr('INGRESO')
                else
                    SQL:='update ingreso_egreso set numrec_egr='+formLogin.ADOy.FieldByName('maxegr').AsString+'+1 '+
                    'where id_ing='+iding+' and tipo_ing='+quotedStr('EGRESO');

                formLogin.ejecutary(SQL);

                formRepCompIng.Consulta(iding);
                formRepCompIng.Iniciar;
        end;

        if Ban=2 then
        begin

                //Fecha.Text:=FormatDateTime('dd/mm/yyyy',selFecha.date);
                //ADODoc.findfield('tipo_ing').value:=Combo_Tipo.Text;
                ADODoc.Post;
                idusu.Text:=formLogin.ADOy.fieldbyname('id_usu').asString;
                Showmessage('Registro modificado con éxito...!');
                PanelActions.Visible:=False; //Ocultar PanelActions
                PanelNuevoEdit.Visible:=False;//Ocultar el panel para Nuevos Registros y Modificaciones
                Ban:=0;
        end;

        ADODoc.Requery();


end;

procedure TformIngresosEgresos.BCerrarClick(Sender: TObject);
begin

        ADODoc.Cancel;
        PanelActions.Visible:=False; //Ocultar PanelActions
        PanelNuevoEdit.Visible:=False;//Ocultar el panel para Nuevos Registros y Modificaciones
        Ban:=0;
end;
procedure TformIngresosEgresos.Salto();
begin
      Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
end;
procedure TformIngresosEgresos.nombreKeyPress(Sender: TObject; var Key: Char);
begin
        if Key=#13 then Salto;

end;

procedure TformIngresosEgresos.selFechaKeyPress(Sender: TObject; var Key: Char);
begin
        if Key=#13 then Salto;
end;

procedure TformIngresosEgresos.selFechaChange(Sender: TObject);
begin
        //Fecha.Text:=FormatDateTime('dd/mm/yyyy',selFecha.date);
end;

procedure TformIngresosEgresos.BMostrarTodoClick(Sender: TObject);
begin
    Parametro.Clear;
    Consultar('Select * from ingreso_egreso order by id_ing asc');
end;

procedure TformIngresosEgresos.ParametroKeyPress(Sender: TObject; var Key: Char);
begin
        Consultar('select * from ingreso_egreso where '+
                  'nombre_ing like '+QuotedStr('%'+Parametro.Text+'%')+' or '+
                  'detalle_ing like '+QuotedStr('%'+Parametro.Text+'%')+' '+
                  ' order by id_ing asc'
                  );
end;

procedure TformIngresosEgresos.Iniciar(Tipo:String);
begin
    fecha1.Date:=Date;
    fecha2.Date:=Date;

    combo_tipo.Text:=Tipo;
    Ban:=0;
    if NOT ADODoc.active then ADODoc.active:=true;
    if NOT ADOCat.active then ADOCat.active:=true;

    StatusBar.Panels[1].Text:= 'REGISTROS: '+inttoStr(ADODoc.recordCount);
    show;
///    Left:=Principal.width;
    Top:=0;
///    Width:=Screen.Width - Principal.width;
    Height:=Screen.Height - 40;


end;
procedure TformIngresosEgresos.BsalirClick(Sender: TObject);
begin

    PanelBuscar.Visible:=False;
    PanelActions.Visible:=False;
end;



procedure TformIngresosEgresos.Button2Click(Sender: TObject);
begin
        tamanio(-1);
end;
procedure TformIngresosEgresos.tamanio(t:integer);
var
        i,fin:integer;
begin
        fin:=6; // Numero de colunmas del DBGrid
        DBGrid.Font.Size:=DBGrid.Font.Size + t;
        for i:=0 to fin do
        begin
                DBGrid.Columns[i].Width:=DBGrid.Columns[i].Width + t*4;
                DBGrid.Columns[i].Title.Font.Size:=DBGrid.Columns[i].Title.Font.Size + t;
        end;
end;
procedure TformIngresosEgresos.Button1Click(Sender: TObject);
begin
        tamanio(1);
end;
procedure TformIngresosEgresos.NomaulaKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
                DET.SetFocus;
end;

procedure TformIngresosEgresos.combo_tipoChange(Sender: TObject);
begin
        tipo_ing.Text:=combo_tipo.Text;
        //titulo.SetFocus;
end;
procedure TformIngresosEgresos.Convertir();
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
//                DBImage1.Picture.LoadFromFile(DirImagen.Text);
             End;

             if (Extension='JPG') or (Extension='jpg') then
             Begin
                j.LoadFromFile(img);//el jpg
                b.Assign(j);
                b.SaveToFile('C:\temp.bmp');

                Image1.Picture.LoadFromFile('C:\temp.bmp');
//                DBImage1.Picture.LoadFromFile('C:\temp.bmp');
             End;

             if (Extension='PNG') or (Extension='png') then
             Begin
                Image1.Picture.LoadFromFile(DirImagen.Text);
//                DBImage1.Picture.LoadFromFile(DirImagen.Text);
             End;

        End;

 b.Free;
 j.Free;

end;
procedure TformIngresosEgresos.sBitBtn6Click(Sender: TObject);
begin
        Convertir;
        if FileExists(DirImagen.Text) then
        begin
            Image11.Picture.LoadFromFile('c:\temp.bmp');
            Foto.Picture.LoadFromFile('c:\temp.bmp');
        end;
end;

procedure TformIngresosEgresos.ECodKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then salto;
end;



procedure TformIngresosEgresos.DBGCatKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
    begin
        Desc.Text:=ADOCat.fieldbyname('nom_cating').Value;
        Monto.SetFocus;
        DBGCat.Visible:=false;
    end;
end;

procedure TformIngresosEgresos.DBGCatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

        if Key=VK_ESCAPE then
        begin
            DBGCat.Visible:=false;
            Monto.SetFocus;
        end;
end;

procedure TformIngresosEgresos.DescKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if Key=VK_F4 then
            BCat.Click;
end;
procedure TformIngresosEgresos.Filtrar();
var
        sql,cond0,cond1,cond2,cond3,cond4,ordenar,tipoord:string;
begin
         //Por Fecha de Inscripcion
        if Check0.Checked then
        begin
        if Parametro.Text<>'' then
        begin
                FormRepOtrosIng.F1.Caption:='';
                FormRepOtrosIng.FF2.Caption:='';

                  cond0:=' (nombre_ing like '+QuotedStr('%'+Parametro.Text+'%')+')';
        end;
        end;

        if Check1.Checked then
        begin
                FormRepOtrosIng.F1.Caption:=formatdatetime('dd/mm/yyyy',fecha1.date);
                FormRepOtrosIng.FF2.Caption:=formatdatetime('dd/mm/yyyy',fecha2.date);

                cond1:=' and date(fechahora_ing)>='+quotedstr(formatdatetime('yyyy-mm-dd',fecha1.date))+
                       ' and date(fechahora_ing)<='+quotedstr(formatdatetime('yyyy-mm-dd',fecha2.date))+' ';
        end
        else cond1:='';

        sql:='select * from ingreso_egreso where '+cond0+cond1+cond2+
              ' order by id_ing asc';
        sqlx:=sql;

        Consultar(sql);

end;

procedure TformIngresosEgresos.BFiltrarClick(Sender: TObject);
begin
    filtrar;
end;

procedure TformIngresosEgresos.sBitBtn2Click(Sender: TObject);
begin
    BFiltrar.Click;
    FormRepOtrosing.Consulta2(SQLX);
    FormRepOtrosing.Iniciar;

end;
procedure TformIngresosEgresos.insertarCategoria();
var
        sql,nom_cating,id_ging:string;
begin

        nom_cating:=quotedstr(noming.Text);
        id_ging:=' ';//inttostr(ComboCateg.Keyvalue);
        sql:='insert into categoria_ingreso(nom_cating,id_ging) '+
             ' values ('+nom_cating+','+id_ging+')' ;
        formLogin.ejecutarx(sql);

end;
procedure TformIngresosEgresos.BGClick(Sender: TObject);
begin
        if (noming.Text<>'')  then
        begin
                insertarCategoria;
                panelTipo.Visible:=false;
                Desc.SetFocus;
              //  ADOcat.Requery();
        end
        else
                showmessage('Error: Verifique los parámetros..');
end;

procedure TformIngresosEgresos.BSClick(Sender: TObject);
begin
        noming.Clear;
        panelTipo.Visible:=false;
end;

procedure TformIngresosEgresos.sBitBtn3Click(Sender: TObject);
begin
        paneltipo.Visible:=true;
        noming.SetFocus;
end;

procedure TformIngresosEgresos.nomingKeyPress(Sender: TObject; var Key: Char);
begin
                if key=#13 then
                        comboCateg.SetFocus;
end;

procedure TformIngresosEgresos.comboCategKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then  BG.SetFocus;
end;

procedure TformIngresosEgresos.SpeedButton1Click(Sender: TObject);
begin
    Nuevo();
end;

procedure TformIngresosEgresos.SpeedButton2Click(Sender: TObject);
begin
        Modificar();
end;

procedure TformIngresosEgresos.SpeedButton4Click(Sender: TObject);
begin
        BCerrar.Click;
end;

procedure TformIngresosEgresos.SpeedButton3Click(Sender: TObject);
var
        mensaje,id,nombre:String;
begin
        PanelActions.Visible:=PanelActions.Visible XOR True; //Mostrar u Ocultar PanelActions
        Ban:=4; //Eliminar


      id:=ADODoc.fieldbyname('id_ing').ASString;
      nombre:=ADODoc.fieldbyname('nombre_ing').ASString;
      mensaje:='Esta seguro que desea eliminar el registro con COD: '+id+
               ', NOMBRE: '+nombre+' ?';

      if application.messagebox(Pchar(mensaje),'Alerta',mb_iconquestion+mb_yesno)=6 then
      begin
         ADODoc.Delete;
         ADODoc.Refresh;
      end;
end;


procedure TformIngresosEgresos.SpeedButton5Click(Sender: TObject);
begin

if not ADODoc.IsEmpty then // si la lista de ingresos no esta vacia
begin

        PanelActions.Visible:=PanelActions.Visible XOR True; //Mostrar u Ocultar PanelActions
        Ban:=5; //Imprimir


        if formLogin.Config[1] then //Si esta activada la impresora facturadora
        begin
            formRepCompIng2.Consulta(ADODoc.FieldByName('id_ing').AsString);
            formRepCompIng2.Iniciar;
        end
        else
        begin
            formRepCompIng.Consulta(ADODoc.FieldByName('id_ing').AsString);
            formRepCompIng.Iniciar;
        end;
end
else    showmessage('ERROR: No ha seleccionado ningún elemento para imprimir...!');

end;

procedure TformIngresosEgresos.SBuscarClick(Sender: TObject);
begin
        Buscar();
end;

procedure TformIngresosEgresos.DETKeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then BGuadar.SetFocus;
end;

end.
