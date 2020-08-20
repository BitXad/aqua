unit GeneradorQR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,DelphiZXingQRCode, Buttons;

type
  TFormGeneradorQR = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PaintBox1: TPaintBox;
    edtText: TEdit;
    cmbEncoding: TComboBox;
    edtQuietZone: TEdit;
    Image1: TImage;
    BCopiar: TBitBtn;
    BitBtn2: TBitBtn;
    BGenerar: TBitBtn;
    procedure PaintBox1Paint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cmbEncodingChange(Sender: TObject);
    procedure edtQuietZoneChange(Sender: TObject);
    procedure BCopiarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BGenerarClick(Sender: TObject);
    procedure Update();
  private

  public

    QRCodeBitmap: TBitmap;
  end;


var
  FormGeneradorQR: TFormGeneradorQR;

implementation

{$R *.dfm}

procedure TFormGeneradorQR.PaintBox1Paint(Sender: TObject);
var
  Scale: Double;
begin
  PaintBox1.Canvas.Brush.Color := clWhite;
  PaintBox1.Canvas.FillRect(Rect(0, 0, PaintBox1.Width, PaintBox1.Height));
  if ((QRCodeBitmap.Width > 0) and (QRCodeBitmap.Height > 0)) then
  begin
    if (PaintBox1.Width < PaintBox1.Height) then
    begin
      Scale := PaintBox1.Width / QRCodeBitmap.Width;
    end else
    begin
      Scale := PaintBox1.Height / QRCodeBitmap.Height;
    end;
    PaintBox1.Canvas.StretchDraw(Rect(0, 0, Trunc(Scale * QRCodeBitmap.Width), Trunc(Scale * QRCodeBitmap.Height)), QRCodeBitmap);
  end;
end;

procedure TFormGeneradorQR.Update;
var
  QRCode: TDelphiZXingQRCode;
  Row, Column: Integer;
begin
  QRCode := TDelphiZXingQRCode.Create;
  QRCodeBitmap.Assign(nil);
  try
    QRCode.Data := edtText.Text;
    QRCode.Encoding := TQRCodeEncoding(cmbEncoding.ItemIndex);
    QRCode.QuietZone := StrToIntDef(edtQuietZone.Text, 4);

//    QRCodeBitmap.SetSize(QRCode.Rows, QRCode.Columns);
    QRCodeBitmap.Width:=50;
    QRCodeBitmap.Height:=50;


    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack;
        end else
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
        end;
      end;
    end;
  finally
    QRCode.Free;
  end;
  PaintBox1.Repaint;
end;

procedure TFormGeneradorQR.FormCreate(Sender: TObject);
begin
  QRCodeBitmap := TBitmap.Create;
  Update;
end;

procedure TFormGeneradorQR.FormDestroy(Sender: TObject);
begin
QRCodeBitmap.Free;
end;
procedure TFormGeneradorQR.cmbEncodingChange(Sender: TObject);
begin
  Update;
end;

procedure TFormGeneradorQR.edtQuietZoneChange(Sender: TObject);
begin
  Update;
end;
procedure TFormGeneradorQR.BCopiarClick(Sender: TObject);
begin
    Image1.Picture.Bitmap := QRCodeBitmap;
end;

procedure TFormGeneradorQR.BitBtn2Click(Sender: TObject);
begin
    Close;
end;

procedure TFormGeneradorQR.BGenerarClick(Sender: TObject);
begin
  Update;
end;

end.
