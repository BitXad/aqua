unit formIngresosEgresos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, sPanel, StdCtrls, Buttons, sBitBtn,
  jpeg, Menus, sLabel, DB, ADODB, Mask, DBCtrls, ComCtrls, acPNG, GraphicEx,
  ExtDlgs, sCheckBox;

type
  TformOtrosIng2 = class(TForm)
    ImgCabecera: TImage;
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
    tipo_ing: TDBEdit;
    Label8: TLabel;
    combo_tipo: TComboBox;
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
    procedure Iniciar();
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
  private
    { Private declarations }
    Ban:Integer;
    SQLX,idingreso:string;
  public
    { Public declarations }
  end;

var
  formOtrosIng2: TformOtrosIng2;

implementation

uses frmLogin, frmPrincipal, FrmPeriodo, frmRepCompIng, frmRepOtrosIng,
  FrmRolUsuario, FrmRepFact2, FrmAlgoritmos, FrmDosificacion,
  FrmInstitucion, numeroaletras, frmRepCompIng2;


{$R *.dfm}

procedure TformOtrosIng2.Consultar(SQL:String);
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

procedure TformOtrosIng2.Ejecutar(SQL:String);
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

procedure TformOtrosIng2.Nuevo();
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
procedure TformOtrosIng2.BInsertarClick(Sender: TObject);
begin
    Nuevo();
end;

procedure TformOtrosIng2.BEditarClick(Sender: TObject);
begin
        PanelActions.Visible:=PanelActions.Visible XOR True; //Mostrar u Ocultar PanelActions
        Ban:=2; //Editar

end;

procedure TformOtrosIng2.BCancelarClick(Sender: TObject);
begin
        BCerrar.Click;
end;

procedure TformOtrosIng2.BEliminarClick(Sender: TObject);
var
        mensaje,id,nombre:String;
begin

    if FormRolUsuario.VerificarRol(Principal.id_usuario,38) then
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

procedure TformOtrosIng2.BCatClick(Sender: TObject);
begin
   DBGCat.Visible:=true;
   DBGCat.SetFocus;

end;

procedure TformOtrosIng2.Salir1Click(Sender: TObject);
begin
        Close;
end;

procedure TformOtrosIng2.BImprimir2Click(Sender: TObject);
begin
        PanelActions.Visible:=PanelActions.Visible XOR True; //Mostrar u Ocultar PanelActions
        Ban:=5; //Imprimir

        formRepCompIng.Consulta(ADODoc.FieldByName('id_ing').AsString);
        formRepCompIng.Iniciar;
end;

procedure TformOtrosIng2.Modificar();
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
procedure TformOtrosIng2.BModificarClick(Sender: TObject);
begin

    if FormRolUsuario.VerificarRol(Principal.id_usuario,38) then
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

procedure TformOtrosIng2.Buscar();
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
procedure TformOtrosIng2.BBuscarClick(Sender: TObject);
begin
        Buscar();

end;

procedure TformOtrosIng2.GenerarFactura();
var
    SQL,id_fact,cant_detfact,punit_detfact,desc_detfact,descrip_detfact,total_detfact,tipo_detfact:String;
    tam,numerofact:integer;
    tipo_factura,codigoControl, cadenaQR:String;
    numero,id_men:String;
begin

    //Por flojera, primero generare la factura, luego la editare con los datos correctos
    SQL:='insert into factura(id_ing) values('+idingreso+')';
    formLogin.ejecutar(SQL);

    //Obtener el numero de factura
    SQL:='select max(id_fact) as idfact from factura';
    formLogin.Consultar(SQL);
    id_fact:=FormLogin.ADO1.fieldbyname('idfact').AsString;

    //Llenando detalle_fatura
    cant_detfact:='1';
    descrip_detfact:=quotedStr(Det.Text+' '+Nombre.Text);
    desc_detfact:='0';
    punit_detfact:=formLogin.sinComa(monto.Text);
    total_detfact:=formLogin.sinComa(monto.Text);
    tipo_detfact:='1';

    SQL:=' insert into detalle_factura(id_fact,cant_detfact,descrip_detfact,punit_detfact,desc_detfact,total_detfact,tipo_detfact) values '+
         ' ( '+id_fact+','+cant_detfact+','+descrip_detfact+','+punit_detfact+','+desc_detfact+','+total_detfact+','+tipo_detfact+' )';
    formLogin.Ejecutar(SQL);

    //Ingresar al Detalle de factura
    //if CheckFacturar.checked then tipo_factura:='1'
    //else Tipo_factura:='0';
    tipo_factura:=tipo_detfact;

    //Obtener el numero de factura en funcion al tipo de factura
    if tipo_factura='1' then
    begin
        formLogin.Consultar('select * from dosificacion');
        numerofact:=formLogin.ADO1.fieldbyname('numfact_dosif').AsInteger + 1;
        FormLogin.Ejecutar('update dosificacion set numfact_dosif='+inttostr(numerofact));
    end
    else
    begin
        formLogin.Consultar('select max(num_fact) as numfact from factura where tipo_fact=0');
        numerofact:=formLogin.ADO1.fieldbyname('numfact').AsInteger + 1;
    end;

    numero:=formLogin.sinComa(monto.Text);
    tam:=  StrLen(pchar(numero));
    //*********************************************
    codigoControl:=FormCodigoControl.CodigodeControl(inttoStr(numerofact),nit_asoc1.Text,formatdatetime('yyyymmdd',date),numero,formDosificacion.ADODosif.fieldbyname('llave_dosif').AsString,formDosificacion.ADODosif.fieldbyname('numorden_dosif').AsString);

    cadenaQR :=FormInstitucion.ADOInst.fieldbyname('nit_col').AsString+'|'+
              inttoStr(numerofact)+'|'+formDosificacion.ADODosif.fieldbyname('numorden_dosif').AsString+'|'+
              formatdatetime('dd/mm/yyyy',date)+'|'+numero+'|'+numero+'|'+
              codigoControl+'|'+
              nit_asoc1.Text+'|0|0|0|0';
    //*********************************************
    SQL:='update factura set '+
    'num_fact='+inttostr(numerofact)+
    ',nit_fact='+quotedStr(nit_asoc1.Text)+
    ',razon_fact='+quotedStr(razon_soc1.Text)+
    ',orden_fact='+quotedStr(formDosificacion.ADODosif.fieldbyname('numorden_dosif').AsString)+
    ',nitemisor_fact='+quotedStr(FormInstitucion.ADOInst.fieldbyname('nit_col').AsString)+
    ',llave_fact='+quotedStr(formDosificacion.ADODosif.fieldbyname('llave_dosif').AsString)+
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
    ' where id_fact='+id_fact;       

    //showmessage(SQL);
    FormLogin.Ejecutar(SQL);

    //Actualiza e indica el numero de factura actual


    //Si esta activada la opcion de impresion de preavisos.
    if CheckImprimir.Checked then
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

end;



procedure TformOtrosIng2.BGuadarClick(Sender: TObject);
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
                PanelActions.Visible:=False; //Ocultar PanelActions
                PanelNuevoEdit.Visible:=False;//Ocultar el panel para Nuevos Registros y Modificaciones
                Ban:=0;

                formlogin.consultar('select max(id_ing) as iding,max(numrec_ing) as maxing,max(numrec_egr) as maxegr from ingreso');
                iding:=formLogin.ADO1.FieldByName('iding').AsString;
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
                        SQL:='update ingreso set numrec_ing='+formLogin.ADO1.FieldByName('maxing').AsString+'+1 '+
                        'where id_ing='+iding+' and tipo_ing='+quotedStr('INGRESO') ;
                    end;

                end
                else
                    SQL:='update ingreso set numrec_egr='+formLogin.ADO1.FieldByName('maxegr').AsString+'+1 '+
                    'where id_ing='+iding+' and tipo_ing='+quotedStr('EGRESO');

                formLogin.ejecutar(SQL);

                if not CheckFact.checked then
                begin
                    formRepCompIng2.Consulta(iding);
                    formRepCompIng2.Iniciar;
                end;
        end;

     end
     else showmessage('ERROR: No debe tener datos importantes vacios.!');

        if Ban=2 then
        begin

                //Fecha.Text:=FormatDateTime('dd/mm/yyyy',selFecha.date);
                ADODoc.Post;
                idusu.Text:=formLogin.ADO1.fieldbyname('id_usu').asString;
                Showmessage('Registro modificado con éxito...!');
                PanelActions.Visible:=False; //Ocultar PanelActions
                PanelNuevoEdit.Visible:=False;//Ocultar el panel para Nuevos Registros y Modificaciones
                Ban:=0;
        end;

        ADODoc.Requery();


end;

procedure TformOtrosIng2.BCerrarClick(Sender: TObject);
begin

        ADODoc.Cancel;
        PanelActions.Visible:=False; //Ocultar PanelActions
        PanelNuevoEdit.Visible:=False;//Ocultar el panel para Nuevos Registros y Modificaciones
        Ban:=0;
end;
procedure TformOtrosIng2.Salto();
begin
      Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
end;
procedure TformOtrosIng2.nombreKeyPress(Sender: TObject; var Key: Char);
begin

    if Key=#13 then
    begin
        Bcat.Click;
        DBGCat.SetFocus;
    end;
    //Salto;

end;

procedure TformOtrosIng2.selFechaKeyPress(Sender: TObject; var Key: Char);
begin
        if Key=#13 then Salto;
end;

procedure TformOtrosIng2.selFechaChange(Sender: TObject);
begin
        //Fecha.Text:=FormatDateTime('dd/mm/yyyy',selFecha.date);
end;

procedure TformOtrosIng2.BMostrarTodoClick(Sender: TObject);
begin
    Parametro.Clear;
    Consultar('Select * from ingreso order by id_ing asc');
end;

procedure TformOtrosIng2.ParametroKeyPress(Sender: TObject; var Key: Char);
begin
        Consultar('Select * from ingreso where '+
                  'nombre_ing like '+QuotedStr('%'+Parametro.Text+'%')+' or '+
                  'detalle_ing like '+QuotedStr('%'+Parametro.Text+'%')+' '+
                  ' order by id_ing asc'
                  );
end;

procedure TformOtrosIng2.Iniciar();
begin
    fecha1.Date:=Date;
    fecha2.Date:=Date;


    Ban:=0;
    if NOT ADODoc.active then ADODoc.active:=true
    else ADODoc.Requery();

    if NOT ADOCat.active then ADOCat.active:=true
    else ADOCat.Requery();

    StatusBar.Panels[1].Text:= 'REGISTROS: '+inttoStr(ADODoc.recordCount);
    show;
    Left:=Principal.width;
    Top:=0;
    Width:=Screen.Width - Principal.width;
    Height:=Screen.Height - 40;


end;
procedure TformOtrosIng2.BsalirClick(Sender: TObject);
begin

    PanelBuscar.Visible:=False;
    PanelActions.Visible:=False;
end;



procedure TformOtrosIng2.Button2Click(Sender: TObject);
begin
        tamanio(-1);
end;
procedure TformOtrosIng2.tamanio(t:integer);
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
procedure TformOtrosIng2.Button1Click(Sender: TObject);
begin
        tamanio(1);
end;
procedure TformOtrosIng2.NomaulaKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then
                DET.SetFocus;
end;

procedure TformOtrosIng2.combo_tipoChange(Sender: TObject);
begin
        tipo_ing.Text:=combo_tipo.Text;
        //titulo.SetFocus;
        nombre.SetFocus;
end;
procedure TformOtrosIng2.Convertir();
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
procedure TformOtrosIng2.sBitBtn6Click(Sender: TObject);
begin
        Convertir;
        if FileExists(DirImagen.Text) then
        begin
            Image11.Picture.LoadFromFile('c:\temp.bmp');
            Foto.Picture.LoadFromFile('c:\temp.bmp');
        end;
end;

procedure TformOtrosIng2.ECodKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then salto;
end;



procedure TformOtrosIng2.DBGCatKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
    begin
        Desc.Text:=ADOCat.fieldbyname('nom_cating').Value;
        Monto.SetFocus;
        DBGCat.Visible:=false;
    end;
end;

procedure TformOtrosIng2.DBGCatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

        if Key=VK_ESCAPE then
        begin
            DBGCat.Visible:=false;
            Monto.SetFocus;
        end;
end;

procedure TformOtrosIng2.DescKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if Key=VK_F4 then
            BCat.Click;
end;
procedure TformOtrosIng2.Filtrar();
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

procedure TformOtrosIng2.BFiltrarClick(Sender: TObject);
begin
    filtrar;
end;

procedure TformOtrosIng2.sBitBtn2Click(Sender: TObject);
begin
    BFiltrar.Click;
    FormRepOtrosing.Consulta2(SQLX);
    FormRepOtrosing.Iniciar;

end;
procedure TformOtrosIng2.insertarCategoria();
var
        sql,nom_cating,id_ging:string;
begin

        nom_cating:=quotedstr(noming.Text);
        id_ging:=inttostr(ComboCateg.Keyvalue);
        sql:='insert into categoria_ingreso(nom_cating,id_ging) '+
             ' values ('+nom_cating+','+id_ging+')' ;
        formLogin.ejecutar(sql);

end;
procedure TformOtrosIng2.BGClick(Sender: TObject);
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

procedure TformOtrosIng2.BSClick(Sender: TObject);
begin
        noming.Clear;
        panelTipo.Visible:=false;
end;

procedure TformOtrosIng2.sBitBtn3Click(Sender: TObject);
begin
        paneltipo.Visible:=true;
        noming.SetFocus;
end;

procedure TformOtrosIng2.nomingKeyPress(Sender: TObject; var Key: Char);
begin
                if key=#13 then
                        comboCateg.SetFocus;
end;

procedure TformOtrosIng2.comboCategKeyPress(Sender: TObject; var Key: Char);
begin
        if key=#13 then  BG.SetFocus;
end;

procedure TformOtrosIng2.CheckFactClick(Sender: TObject);
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

procedure TformOtrosIng2.nit_asoc1KeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in ['0'..'9',#13]) then
        key:=#0;

end;

procedure TformOtrosIng2.Mostrarfacturarelacionada1Click(Sender: TObject);
var
    SQL:String;
begin
        SQL:='SELECT f.* FROM  ingreso i, factura f '+
             ' WHERE  i.id_ing = f.id_ing  AND '+
             ' f.id_ing='+ADODoc.fieldbyname('id_ing').AsString ;
        FormLogin.consultar(SQL);

        if not formLogin.ADO1.IsEmpty then
        begin

            FormRepfact2.Consulta(formLogin.ADO1.FieldByName('id_fact').AsString);
            FormRepfact2.VistaPrevia;

        end
        else showmessage('La inscripción no tiene facturas asociadas...!');
end;

procedure TformOtrosIng2.DBGCatDblClick(Sender: TObject);
begin
        Desc.Text:=ADOCat.fieldbyname('nom_cating').Value;
        Monto.SetFocus;
        DBGCat.Visible:=false;
end;

end.
