unit webC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, acPNG, sBitBtn;

type
  TFormWebCam = class(TForm)
    Iniciar: TBitBtn;
    Detener: TBitBtn;
    BitBtn1: TBitBtn;
    Image2: TImage;
    Image1: TImage;
    Guardar: TSaveDialog;
    BtnAlmacenarVideo: TButton;
    PararVideo: TButton;
    BitBtn2: TBitBtn;
    BInicar: TsBitBtn;
    Bdetener: TsBitBtn;
    Bcapturar: TsBitBtn;
    Bsalir: TsBitBtn;
    procedure IniciarClick(Sender: TObject);
    procedure DetenerClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnAlmacenarVideoClick(Sender: TObject);
    procedure PararVideoClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BcapturarClick(Sender: TObject);
    procedure BdetenerClick(Sender: TObject);
    procedure BInicarClick(Sender: TObject);
    procedure BsalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Ventana: hwnd; //Handle de la ventana de captura
    bandera:integer;
  end;

Const
WM_CAP_START = WM_USER;
WM_CAP_STOP = WM_CAP_START + 68;
WM_CAP_DRIVER_CONNECT = WM_CAP_START + 10;
WM_CAP_DRIVER_DISCONNECT = WM_CAP_START + 11;
WM_CAP_SAVEDIB = WM_CAP_START + 25;
WM_CAP_GRAB_FRAME = WM_CAP_START + 60;
WM_CAP_SEQUENCE = WM_CAP_START + 62;
WM_CAP_FILE_SET_CAPTURE_FILEA = WM_CAP_START + 20;
WM_CAP_EDIT_COPY = WM_CAP_START + 30;
WM_CAP_SET_PREVIEW = WM_CAP_START + 50;
WM_CAP_SET_PREVIEWRATE = WM_CAP_START + 52;


var
  FormWebCam: TFormWebCam;

implementation

uses frmAsociados, frmEmpresa;



{$R *.dfm}
FUNCTION capCreateCaptureWindowA(lpszWindowName: PCHAR; dwStyle: longint; x: integer; y: integer; nWidth: integer; nHeight: integer; ParentWin: HWND; nId: integer): HWND;
STDCALL EXTERNAL 'AVICAP32.DLL';


procedure TFormWebCam.IniciarClick(Sender: TObject);
BEGIN
    Ventana := capCreateCaptureWindowA('Ventana de captura',WS_CHILD OR WS_VISIBLE, image1.Left, image1.Top, image1.Width,image1.Height, formWebCam.Handle, 0);
    IF Ventana <> 0 THEN
    BEGIN
     TRY
        SendMessage(Ventana, WM_CAP_DRIVER_CONNECT, 0, 0);
        SendMessage(Ventana, WM_CAP_SET_PREVIEWRATE, 40, 0);
        SendMessage(Ventana, WM_CAP_SET_PREVIEW, 1, 0);
     EXCEPT
     RAISE;
     END;
    END
    ELSE
    BEGIN
        MessageDlg('Error al conectar Webcam', mtError, [mbok], 0);
    END;
end;

procedure TFormWebCam.DetenerClick(Sender: TObject);
BEGIN
    IF Ventana <> 0 THEN
    BEGIN
        SendMessage(Ventana, WM_CAP_DRIVER_DISCONNECT, 0, 0);
        Ventana := 0;
    END;
END;


procedure TFormWebCam.BitBtn1Click(Sender: TObject);
begin
    IF Ventana <> 0 THEN
    BEGIN
        Guardar.FileName := 'Captura de la imagen';
        Guardar.DefaultExt := 'bmp';
        Guardar.Filter := 'Fichero Bitmap (*.bmp)*.bmp';
        IF Guardar.Execute THEN
            SendMessage(Ventana, WM_CAP_SAVEDIB, 0,longint(pchar(Guardar.FileName)));
    END;
end;
procedure TFormWebCam.BtnAlmacenarVideoClick(Sender: TObject);
BEGIN
    IF Ventana <> 0 THEN
    BEGIN
        Guardar.Filter := 'Fichero AVI (*.avi)*.avi';
        Guardar.DefaultExt := 'avi';
        Guardar.FileName := 'FicheroAvi';
        IF Guardar.Execute THEN
        BEGIN
            SendMessage(Ventana, WM_CAP_FILE_SET_CAPTURE_FILEA, 0,Longint(pchar(Guardar.Filename)));
            SendMessage(Ventana, WM_CAP_SEQUENCE, 0, 0);
        END;
    END;
END;

procedure TFormWebCam.PararVideoClick(Sender: TObject);
BEGIN
IF ventana <> 0 THEN
BEGIN
SendMessage(ventana, WM_CAP_STOP, 0, 0);
END;
END;


procedure TFormWebCam.BitBtn2Click(Sender: TObject);
Var
    Archivo:String;
begin
    IF Ventana <> 0 THEN
    BEGIN
        //Guardar.FileName := 'Captura de la imagen';
        //Guardar.DefaultExt := 'bmp';
        Archivo:='c:\Temp.bmp';
        //Guardar.Filter := 'Fichero Bitmap (*.bmp)*.bmp';
        //IF Guardar.Execute THEN
        SendMessage(Ventana, WM_CAP_SAVEDIB, 0,longint(pchar(Archivo)));
        Image2.Picture.LoadFromFile(Archivo);
    END;
end;

procedure TFormWebCam.BcapturarClick(Sender: TObject);
begin

    if bandera=1 then
    begin
        BitBtn2.Click;
        FormAsociados.DesdeWeb;
        Bsalir.Click;
    end;

    if bandera=2 then
    begin
        BitBtn2.Click;
        FormEmpresa.DesdeWeb;
        Bsalir.Click;
    end;


end;

procedure TFormWebCam.BdetenerClick(Sender: TObject);
begin
    Detener.Click;
end;

procedure TFormWebCam.BInicarClick(Sender: TObject);
begin
    Iniciar.Click;
end;

procedure TFormWebCam.BsalirClick(Sender: TObject);
begin
    Detener.Click;
    Close;
end;

end.
