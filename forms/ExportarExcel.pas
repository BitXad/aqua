unit ExportarExcel;

interface

uses Classes, registry, windows, IdGlobal, SysUtils, inifiles,
    forms, OleServer, Excel2000, db, DBGrids, variants, DBClient, MConnect,
  ADODB, StdCtrls, Controls, Grids;

type
  TFormExportar = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Exportar: TButton;
    procedure exportarGridExcel(mGrid : tdbgrid);
    procedure ExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Titulo1,Titulo2,Titulo3:String;
  end;

var
  FormExportar: TFormExportar;

implementation



{$R *.dfm}

procedure TFormExportar.exportarGridExcel (mGrid : tdbgrid);
var
  rangoExcel : Excel2000.range;
  i, fila : integer;
  mMarcador : Tbookmarkstr;
  mTabla : tdataset;
  aplicacionExcel : TExcelApplication;
begin
  //creamos libro excel (abriendo Excel)
  aplicacionExcel := TExcelApplication.Create(nil);
  //asociamos el dataset (tabla) del DBGrid con la tabla
  //que utilizaremos en esta función
  mTabla := mGrid.datasource.dataset;
  //mostramos Excel

  aplicacionExcel.Visible[0] := true;
  //creamos un nuevo libro de Excel
  aplicacionExcel.workbooks.add(NULL, 0);

  //primera fila con los nombres de las columnas
  //para ello recorremos todos las columnas de la tabla
  //y mostramos en Excel el valor de "DisplayLabel"

  rangoExcel := aplicacionExcel.ActiveCell;
{
  rangoExcel.Value :=Titulo1;
  rangoExcel := rangoExcel.Next;

  rangoExcel.Value := Titulo2;
  rangoExcel := rangoExcel.Next;

  rangoExcel.Value := Titulo3;
  rangoExcel := rangoExcel.Next;
 }

  for i:= 0 to mTabla.Fields.Count - 1 do
  begin
    rangoExcel.Value := mTabla.Fields[i].DisplayLabel;
    rangoExcel := rangoExcel.Next;
  end;
  //aplicamos un autoformato de Excel a las filas y columnas añadidas
  rangoExcel.AutoFormat(10, NULL, NULL, NULL, NULL, NULL, NULL);
  mTabla.DisableControls;
  try
    mMarcador := mTabla.Bookmark;
    try
      //recorremos todos los registros de la tabla para ir añadiéndolos
      //a la hoja actual de Excel
      mTabla.First;
      fila := 2;
      while not mTabla.Eof do
      begin
        rangoExcel := aplicacionExcel.Range['A' + inttostr(fila), 'A' + inttostr(fila)];
        //recorremos todos las columnas del registro actual
        for i := 0 to mTabla.Fields.Count - 1 do
        begin
          rangoExcel.Value := mTabla.Fields[i].AsString;
          rangoExcel := rangoExcel.Next;
        end;
        mTabla.Next;
        Inc(fila);
      end;
      finally
        mTabla.Bookmark := mMarcador;
      end;
    finally
      mTabla.EnableControls;
    end;
    //se podría formatear para dejar con mejor aspecto
    //rangoExcel:=aplicacionExcel.Range['A1','E'+inttostr(row-1)];
   //rangoExcel.AutoFormat(3,NULL,NULL,NULL,NULL,NULL,NULL);
 end;
procedure TFormExportar.ExportarClick(Sender: TObject);
begin
        exportarGridExcel(DBGrid1);
end;

end.
