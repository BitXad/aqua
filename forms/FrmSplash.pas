unit FrmSplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, acPNG, ExtCtrls, StdCtrls, Buttons, sBitBtn, GIFImage, jpeg,
  sGauge;

type
  TFormSplash = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    sBitBtn1: TsBitBtn;
    Shape1: TShape;
    PB: TsGauge;
    procedure sBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSplash: TFormSplash;

implementation


{$R *.dfm}

procedure TFormSplash.sBitBtn1Click(Sender: TObject);
begin
        Close;
end;

procedure TFormSplash.FormCreate(Sender: TObject);
begin
//        if FileExists(GetCurrentDir+'\Fondos\LogoSplash.jpg') then
//                Image1.Picture.LoadFromFile(GetCurrentDir+'\Fondos\LogoSplash.jpg');

        Label3.Caption:='Password S.R.L.-'+FormatDateTime('yyyy',Date);
end;

end.
