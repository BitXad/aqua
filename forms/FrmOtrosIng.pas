unit FrmOtrosIng;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, sPanel, StdCtrls, Buttons, sBitBtn,
  jpeg, Menus, sLabel, DB, ADODB, Mask, DBCtrls, ComCtrls, acPNG, GraphicEx,
  ExtDlgs, sCheckBox, sEdit;

type
  TformOtrosIng = class(TForm)
    PanelTools: TsPanel;
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
    BInsertar: TsBitBtn;
    BEditar: TsBitBtn;
    BCancelar: TsBitBtn;
    BEliminar: TsBitBtn;
    BImprimir2: TsBitBtn;
    BBuscar: TsBitBtn;
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
    Button1: TButton;
    Button2: TButton;
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
    CheckImprimir: TsCheckBox;
    CheckFact: TsCheckBox;
    panelFact: TsPanel;
    Label11: TLabel;
    Label12: TLabel;
    razon_soc1: TEdit;
    nit_asoc1: TEdit;
    CheckCopia: TsCheckBox;
    PopupMenu1: TPopupMenu;
    Mostrarfacturarelacionada1: TMenuItem;
    PanelOperaciones: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    BImprimir: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    GroupBuscar: TGroupBox;
    SpeedButton5: TSpeedButton;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    ECodigo: TsEdit;
    EApellidos: TsEdit;
    ENombres: TsEdit;
    Button4: TButton;
    Button5: TButton;
    Panel1: TPanel;
    Ltitulo: TsLabelFX;
    tipo_ing: TEdit;
    sBitBtn1: TsBitBtn;
    sBitBtn4: TsBitBtn;
    procedure BInsertarClick(Sender: TObject);
    procedure BEditarClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure BEliminarClick(Sender: TObject);
    procedure BCatClick(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure BImprimir2Click(Sender: TObject);
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
    procedure Iniciar(tipo:String);
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
    procedure GenerarFactura();
    procedure CheckFactClick(Sender: TObject);
    procedure nit_asoc1KeyPress(Sender: TObject; var Key: Char);
    procedure Mostrarfacturarelacionada1Click(Sender: TObject);
    procedure DBGCatDblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BImprimirClick(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    Ban:Integer;
    SQLX,idingreso:string;
  public
    { Public declarations }
  end;

var
  formOtrosIng: TformOtrosIng;

implementation

uses frmLogin, frmPrincipal,frmRepCompIng, frmRepOtrosIng,
  FrmRolUsuario, FrmRepFact2,  FrmDosificacion,
  numeroaletras, frmRepCompIng2, FrmCodigoControl, frmEmpresa, FrmRepFact1,
  FrmRepFact3;


{$R *.dfm}

procedure TformOtrosIng.Consultar(SQL:String);
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

procedure TformOtrosIng.Ejecutar(SQL:String);
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

procedure TformOtrosIng.Nuevo();
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
procedure TformOtrosIng.BInsertarClick(Sender: TObject);
begin
    Nuevo();
end;

procedure TformOtrosIng.BEditarClick(Sender: TObject);
begin
        PanelActions.Visible:=PanelActions.Visible XOR True; //Mostrar u Ocultar PanelActions
        Ban:=2; //Editar

end;

procedure TformOtrosIng.BCancelarClick(Sender: TObject);
begin
        BCerrar.Click;
end;

procedure TformOtrosIng.BEliminarClick(Sender: TObject);
var
        mensaje,id,nombre:String;
begin

    if FormRolUsuario.VerificarRol(FormLogin.ADOUsuario.FieldByName('id_usu').Value,38) then
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

    end
    else
    begin
        ADODoc.Cancel;
        Close;
        showmessage('ERROR: No tiene los privilegios necesarios para realizar esta operación,'+chr(13)+' consulte con el Administrador del Sistema...!');
    end;
end;

procedure TformOtrosIng.BCatClick(Sender: TObject);
begin
   DBGCat.Visible:=true;
   DBGCat.SetFocus;

end;

procedure TformOtrosIng.Salir1Click(Sender: TObject);
begin
        Close;
end;

procedure TformOtrosIng.BImprimir2Click(Sender: TObject);
begin
        PanelActions.Visible:=PanelActions.Visible XOR True; //Mostrar u Ocultar PanelActions
        Ban:=5; //Imprimir

        formRepCompIng.Consulta(ADODoc.FieldByName('id_ing').AsString);
        formRepCompIng.Iniciar;
end;

procedure TformOtrosIng.Modificar();
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
procedure TformOtrosIng.BModificarClick(Sender: TObject);
begin

    if FormRolUsuario.VerificarRol(FormLogin.ADOUsuario.FieldByName('id_usu').Value,38) then
    begin

        Modificar();

    end
    else
    begin
        ADODoc.Cancel;
        Close;
        showmessage('ERROR: No tiene los privilegios necesarios para realizar esta operación,'+chr(13)+' consulte con el Administrador del Sistema...!');
    end;

end;

procedure TformOtrosIng.Buscar();
var
    mensaje:String;
begin
        if (Ban<>1) and (Ban<>2) then // Si Ban es diferente de Nuevo y Modificar
        begin

            PanelActions.Visible:=True;
            PanelNuevoEdit.Visible:=False;
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
procedure TformOtrosIng.BBuscarClick(Sender: TObject);
begin

        Buscar();

end;

procedure TformOtrosIng.GenerarFactura();
var
    SQL,id_fact,cant_detfact,punit_detfact,desc_detfact,descrip_detfact,total_detfact,tipo_detfact:String;
    tam,numerofact:integer;
    tipo_factura,codigoControl, cadenaQR:String;
    numero,id_men:String;
begin

    //Por flojera, primero generare la factura, luego la editare con los datos correctos
    SQL:='insert into factura(id_ing) values('+idingreso+')';
    formLogin.ejecutary(SQL);

    //Obtener el numero de factura
    SQL:='select max(id_fact) as idfact from factura';
    formLogin.Consultary(SQL);
    id_fact:=FormLogin.ADOY.fieldbyname('idfact').AsString;

    //Llenando detalle_fatura
    cant_detfact:='1';
    descrip_detfact:=quotedStr(Det.Text);
    desc_detfact:='0';
    punit_detfact:=formLogin.sinComa(monto.Text);
    total_detfact:=formLogin.sinComa(monto.Text);
    tipo_detfact:='1';

    SQL:=' insert into detalle_factura(id_fact,cant_detfact,descip_detfact,punit_detfact,desc_detfact,total_detfact,tipo_detfact) values '+
         ' ( '+id_fact+','+cant_detfact+','+descrip_detfact+','+punit_detfact+','+desc_detfact+','+total_detfact+','+tipo_detfact+' )';
    formLogin.Ejecutary(SQL);

    //Ingresar al Detalle de factura
    //if CheckFacturar.checked then tipo_factura:='1'
    //else Tipo_factura:='0';
    tipo_factura:=tipo_detfact;

    //Obtener el numero de factura en funcion al tipo de factura
    if tipo_factura='1' then
    begin
        formLogin.Consultary('select * from dosificacion');
        numerofact:=formLogin.ADOY.fieldbyname('numfact_dosif').AsInteger + 1;
        FormLogin.Ejecutary('update dosificacion set numfact_dosif='+inttostr(numerofact));
    end
    else
    begin
        formLogin.Consultary('select max(num_fact) as numfact from factura where tipo_fact=0');
        numerofact:=formLogin.ADOY.fieldbyname('numfact').AsInteger + 1;
    end;

    numero:=formLogin.sinComa(monto.Text);
    tam:=  StrLen(pchar(numero));
    //*********************************************
    codigoControl:=FormCodigoControl.CodigodeControl(inttoStr(numerofact),nit_asoc1.Text,formatdatetime('yyyymmdd',date),numero,formDosificacion.ADODosif.fieldbyname('llave_dosif').AsString,formDosificacion.ADODosif.fieldbyname('numorden_dosif').AsString);

    cadenaQR :=FormEmpresa.ADOPrime.fieldByName('nit_emp').AsString+'|'+
              inttoStr(numerofact)+'|'+formDosificacion.ADODosif.fieldbyname('numorden_dosif').AsString+'|'+
              formatdatetime('dd/mm/yyyy',date)+'|'+numero+'|'+numero+'|'+
              codigoControl+'|'+
              nit_asoc1.Text+'|0|0|0|0';
    //*********************************************
    SQL:='update factura set '+
    'num_fact='+inttostr(numerofact)+
    ',nit_fact='+quotedStr(nit_asoc1.Text)+
    ',razon_fact='+quotedStr(razon_soc1.Text)+
    ',orden_fact='+quotedStr(FormDosificacion.ADODosif.fieldbyname('numorden_dosif').AsString)+
    ',nitemisor_fact='+quotedStr(FormEmpresa.ADOPrime.fieldByName('nit_emp').AsString)+
    ',llave_fact='+quotedStr(FormDosificacion.ADODosif.fieldbyname('llave_dosif').AsString)+
    ',fecha_fact='+quotedStr(formLogin.Fecha(Date))+
    ',hora_fact='+QuotedStr(FormatdateTime('HH:mm:ss',Time))+
    ',fechaemision_fact='+quotedStr(formLogin.Fecha(formDosificacion.ADODosif.fieldbyname('fechalim_dosif').Value))+
    ',montoparc_fact='+numero+
    ',desc_fact='+'0'+
    ',totalconsumo_fact=0'+
    ',totalaportes_fact=0'+
    ',totalrecargos_fact=0'+
    ',montototal_fact='+numero+
    ',cadenaqr_fact='+quotedStr(cadenaQR)+
    ',codcontrol_fact='+quotedStr(codigoControl)+
    ',literal_fact='+quotedStr(FormNumeroaLetras.NumeroToLetra(trunc(StrToFloat(numero)))+' '+numero[tam-1]+numero[tam]+'/100')+
    ',tipo_fact='+tipo_factura+
    ',estado_fact='+quotedStr('CANCELADA')+
    ',id_usu = '+FormLogin.ADOUsuario.fieldByName('id_usu').AsString+
    ' where id_fact='+id_fact;

//    showmessage(SQL);
    FormLogin.Ejecutary(SQL);

    //Actualiza e indica el numero de factura actual


    //Si esta activada la opcion de impresion de preavisos.
    {if CheckImprimir.Checked then
    begin

            FormRepFact2.Consulta(id_fact);
            FormRepFact2.Imprimir;
            if CheckCopia.Checked then
                FormRepfact2.ImprimirCopia;
    end
    else
    begin
            FormRepFact2.Consulta(id_fact);
            FormRepFact2.VistaPrevia;
    end;
               }
end;

procedure TformOtrosIng.BGuadarClick(Sender: TObject);
var
    SQL, iding:String;
begin
    if (Nombre.Text<>'') and (strtofloat(monto.Text)>0) then
    begin

        if Ban=1 then
        begin

                idusu.Text:=formLogin.ADOUsuario.fieldbyname('id_usu').asString;
                ADODoc.Post;

                Showmessage('Registro almacenado con éxito...!');
               // PanelActions.Visible:=False; //Ocultar PanelActions
               // PanelNuevoEdit.Visible:=False;//Ocultar el panel para Nuevos Registros y Modificaciones
                Ban:=0;

                formlogin.consultary('select max(id_ing) as iding,max(numrec_ing) as maxing,max(numrec_egr) as maxegr from ingreso');
                iding:=formLogin.ADOY.FieldByName('iding').AsString;
                idingreso:=iding;

                if (tipo_ing.Text='INGRESO') then
                begin

                    if CheckFact.checked then
                    begin
                        SQL:='update ingreso set numrec_ing=0 '+
                        'where id_ing='+iding+' and tipo_ing='+quotedStr('INGRESO') ;
                        generarFactura();
                    end
                    else
                    begin
                        SQL:='update ingreso set numrec_ing='+FormDosificacion.ADODosif.FieldByName('maxing').AsString+'+1 '+
                        'where id_ing='+iding+' and tipo_ing='+quotedStr('INGRESO') ;
                    end;

                end
                else
                    SQL:='update ingreso set numrec_egr='+formLogin.ADOY.FieldByName('maxegr').AsString+'+1 '+
                    'where id_ing='+iding+' and tipo_ing='+quotedStr('EGRESO');

                formLogin.ejecutary(SQL);

                if CheckFact.checked then
                begin
                    //formRepCompIng2.Consulta(iding);
                    //formRepCompIng2.Iniciar;
                    formRepFact3.Consulta2(idingreso);
                    formRepFact3.Imprimir;

                    if CheckCopia.Checked then
                    begin
                        FormRepfact3.ImprimirCopia;
                    end;

                end;
        end;

     end
     else showmessage('ERROR: No debe tener datos importantes vacios.!');

        if Ban=2 then
        begin

                //Fecha.Text:=FormatDateTime('dd/mm/yyyy',selFecha.date);
                ADODoc.Post;
                idusu.Text:=FormDosificacion.ADODosif.fieldbyname('id_usu').asString;
                Showmessage('Registro modificado con éxito...!');
               // PanelActions.Visible:=False; //Ocultar PanelActions
                //PanelNuevoEdit.Visible:=False;//Ocultar el panel para Nuevos Registros y Modificaciones
                Ban:=0;
        end;

        ADODoc.Requery();


end;

procedure TformOtrosIng.BCerrarClick(Sender: TObject);
begin

        ADODoc.Cancel;
        //PanelActions.Visible:=False; //Ocultar PanelActions
        //PanelNuevoEdit.Visible:=False;//Ocultar el panel para Nuevos Registros y Modificaciones
        Ban:=0;
end;
procedure TformOtrosIng.Salto();
begin
      Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
end;
procedure TformOtrosIng.nombreKeyPress(Sender: TObject; var Key: Char);
begin

    if Key=#13 then
    begin
        Bcat.Click;
        DBGCat.SetFocus;
    end;
    //Salto;

end;

procedure TformOtrosIng.selFechaKeyPress(Sender: TObject; var Key: Char);
begin
        if Key=#13 then Salto;
end;

procedure TformOtrosIng.selFechaChange(Sender: TObject);
begin
        //Fecha.Text:=FormatDateTime('dd/mm/yyyy',selFecha.date);
end;

procedure TformOtrosIng.BMostrarTodoClick(Sender: TObject);
begin
    Parametro.Clear;
    Consultar('Select * from ingreso order by id_ing asc');
end;

procedure TformOtrosIng.ParametroKeyPress(Sender: TObject; var Key: Char);
begin
        Consultar('Select * from ingreso where '+
                  'nombre_ing like '+QuotedStr('%'+Parametro.Text+'%')+' or '+
                  'detalle_ing like '+QuotedStr('%'+Parametro.Text+'%')+' '+
                  ' order by id_ing asc'
                  );
end;

procedure TformOtrosIng.Iniciar(tipo:String);
begin
    fecha1.Date:=Date;
    fecha2.Date:=Date;


    Ban:=0;
    if NOT ADODoc.active then ADODoc.active:=true
    else ADODoc.Requery();

    if NOT ADOCat.active then ADOCat.active:=true
    else ADOCat.Requery();

    StatusBar.Panels[1].Text:= 'REGISTROS: '+inttoStr(ADODoc.recordCount);
    tipo_ing.Text := tipo;
    show;
    //Left:=FormDosificacion.ADODosif.width;
    //Top:=0;
    //Width:=Screen.Width - Principal.width;
    //Height:=Screen.Height - 40;


end;
procedure TformOtrosIng.BsalirClick(Sender: TObject);
begin

    PanelBuscar.Visible:=False;
    //PanelActions.Visible:=False;
end;



procedure TformOtrosIng.Button2Click(Sender: TObject);
begin
        tamanio(-1);
end;
procedure TformOtrosIng.tamanio(t:integer);
var
        i,fin:integer;
begin
        fin:=9; // Numero de colunmas del DBGrid
        DBGrid.Font.Size:=DBGrid.Font.Size + t;
        for i:=0 to fin do
        begin
                DBGrid.Columns[i].Width:=DBGrid.Columns[i].Width + t*4;
                DBGrid.Columns[i].Title.Font.Size:=DBGrid.Columns[i].Title.Font.Size + t;
        end;
end;
procedure TformOtrosIng.Button1Click(Sender: TObject);
begin
        tamanio(1);
end;
procedure TformOtrosIng.NomaulaKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
                DET.SetFocus;
end;

procedure TformOtrosIng.combo_tipoChange(Sender: TObject);
begin
      //  tipo_ing.Text:=combo_tipo.Text;
        //titulo.SetFocus;
        nombre.SetFocus;
end;
procedure TformOtrosIng.Convertir();
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
procedure TformOtrosIng.sBitBtn6Click(Sender: TObject);
begin
        Convertir;
        if FileExists(DirImagen.Text) then
        begin
            Image11.Picture.LoadFromFile('c:\temp.bmp');
            Foto.Picture.LoadFromFile('c:\temp.bmp');
        end;
end;

procedure TformOtrosIng.ECodKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then salto;
end;



procedure TformOtrosIng.DBGCatKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
    begin
        Desc.Text:=ADOCat.fieldbyname('nom_cating').Value;
        Monto.SetFocus;
        DBGCat.Visible:=false;
    end;
end;

procedure TformOtrosIng.DBGCatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

        if Key=VK_ESCAPE then
        begin
            DBGCat.Visible:=false;
            Monto.SetFocus;
        end;
end;

procedure TformOtrosIng.DescKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if Key=VK_F4 then
            BCat.Click;
end;
procedure TformOtrosIng.Filtrar();
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

                  cond0:=' (e.appat_est like '+QuotedStr('%'+Parametro.Text+'%')+' or '+
                         'e.apmat_est like '+QuotedStr('%'+Parametro.Text+'%')+' or '+
                         'e.nombre_est like '+QuotedStr('%'+Parametro.Text+'%')+')';
        end;
        end;

        if Check1.Checked then
        begin
                FormRepOtrosIng.F1.Caption:=formatdatetime('dd/mm/yyyy',fecha1.date);
                FormRepOtrosIng.FF2.Caption:=formatdatetime('dd/mm/yyyy',fecha2.date);

                cond1:=' date(fechahora_ing)>='+quotedstr(formatdatetime('yyyy/mm/dd',fecha1.date))+
                       ' and date(fechahora_ing)<='+quotedstr(formatdatetime('yyyy/mm/dd',fecha2.date))+' ';
        end
        else cond1:='';

        sql:='Select * from ingreso where '+cond1+cond2+
              ' order by id_ing asc';
        sqlx:=sql;

        Consultar(sql);

end;

procedure TformOtrosIng.BFiltrarClick(Sender: TObject);
begin
    filtrar;
end;

procedure TformOtrosIng.sBitBtn2Click(Sender: TObject);
begin
    BFiltrar.Click;
    FormRepOtrosing.Consulta2(SQLX);
    FormRepOtrosing.Iniciar;

end;
procedure TformOtrosIng.insertarCategoria();
var
        sql,nom_cating,id_ging:string;
begin

        nom_cating:=quotedstr(noming.Text);
        id_ging:=inttostr(ComboCateg.Keyvalue);
        sql:='insert into categoria_ingreso(nom_cating,id_ging) '+
             ' values ('+nom_cating+','+id_ging+')' ;
        formLogin.ejecutary(sql);

end;
procedure TformOtrosIng.BGClick(Sender: TObject);
begin
        if (noming.Text<>'') and (combocateg.Text<>'') then
        begin
                insertarCategoria;
                panelTipo.Visible:=false;
                Desc.SetFocus;
                ADOcat.Requery();
        end
        else
                showmessage('Error: Verifique los parámetros..');
end;

procedure TformOtrosIng.BSClick(Sender: TObject);
begin
        noming.Clear;
        panelTipo.Visible:=false;
end;

procedure TformOtrosIng.sBitBtn3Click(Sender: TObject);
begin
        paneltipo.Visible:=true;
        noming.SetFocus;
end;

procedure TformOtrosIng.nomingKeyPress(Sender: TObject; var Key: Char);
begin
                if key=#13 then
                        comboCateg.SetFocus;
end;

procedure TformOtrosIng.comboCategKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then  BG.SetFocus;
end;

procedure TformOtrosIng.CheckFactClick(Sender: TObject);
begin

    if CheckFact.Checked then
    begin
        nit_asoc1.Text:='0';
        razon_soc1.Text:='SIN NOMBRE';
        panelFact.visible:=true
    end
    else
        panelFact.visible:=false;

end;

procedure TformOtrosIng.nit_asoc1KeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in ['0'..'9',#13]) then
        key:=#0;

end;

procedure TformOtrosIng.Mostrarfacturarelacionada1Click(Sender: TObject);
var
    SQL:String;
begin
        SQL:='SELECT f.* FROM  ingreso i, factura f '+
             ' WHERE  i.id_ing = f.id_ing  AND '+
             ' f.id_ing='+ADODoc.fieldbyname('id_ing').AsString ;
        FormLogin.consultary(SQL);

        if not formLogin.ADOY.IsEmpty then
        begin

            FormRepfact2.Consulta(FormDosificacion.ADODosif.FieldByName('id_fact').AsString);
            FormRepfact2.VistaPrevia;

        end
        else showmessage('La inscripción no tiene facturas asociadas...!');
end;

procedure TformOtrosIng.DBGCatDblClick(Sender: TObject);
begin
        Desc.Text:=ADOCat.fieldbyname('nom_cating').Value;
        Monto.SetFocus;
        DBGCat.Visible:=false;
end;

procedure TformOtrosIng.SpeedButton1Click(Sender: TObject);
begin
    Nuevo();
end;

procedure TformOtrosIng.SpeedButton2Click(Sender: TObject);
begin

    if FormRolUsuario.VerificarRol(FormLogin.ADOUsuario.FieldByName('id_usu').Value,38) then
    begin

        Modificar();

    end
    else
    begin
        ADODoc.Cancel;
        Close;
        showmessage('ERROR: No tiene los privilegios necesarios para realizar esta operación,'+chr(13)+' consulte con el Administrador del Sistema...!');
    end;
end;

procedure TformOtrosIng.SpeedButton4Click(Sender: TObject);
begin
        BCerrar.Click;
end;

procedure TformOtrosIng.SpeedButton3Click(Sender: TObject);
var
        mensaje,id,nombre:String;
begin

    if FormRolUsuario.VerificarRol(FormLogin.ADOUsuario.FieldByName('id_usu').Value,38) then
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

    end
    else
    begin
        ADODoc.Cancel;
        Close;
        showmessage('ERROR: No tiene los privilegios necesarios para realizar esta operación,'+chr(13)+' consulte con el Administrador del Sistema...!');
    end;
end;

procedure TformOtrosIng.BImprimirClick(Sender: TObject);
begin
        PanelActions.Visible:=PanelActions.Visible XOR True; //Mostrar u Ocultar PanelActions
        Ban:=5; //Imprimir

        formRepCompIng.Consulta(ADODoc.FieldByName('id_ing').AsString);
        formRepCompIng.Iniciar;
end;

procedure TformOtrosIng.sBitBtn1Click(Sender: TObject);
begin
    FormRepfact3.Consulta2(ADODoc.fieldByName('id_ing').AsString);
    FormRepfact3.VistaPrevia;

end;

procedure TformOtrosIng.sBitBtn4Click(Sender: TObject);
begin
    FormRepfact3.Consulta2(ADODoc.fieldByName('id_ing').AsString);
    FormRepfact3.ImprimirCopia;
end;

end.
