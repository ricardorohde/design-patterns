unit UnitConversor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Data.DBXJSON, Data.DBXJSONCommon, Data.DBXJSONReflect, System.JSON,
  System.JSONConsts, System.IOUtils, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    btnCarregarJson: TButton;
    btnCarregarXml: TButton;
    btnCarregarCsv: TButton;
    rchTextos: TRichEdit;
    gridJSON: TDBGrid;
    cdsJSON: TClientDataSet;
    dsJSON: TDataSource;
    procedure btnCarregarCsvClick(Sender: TObject);
    procedure btnCarregarJsonClick(Sender: TObject);
    procedure btnCarregarXmlClick(Sender: TObject);
  private const
    ArquivoJSON =
      'C:\Users\Gabriel Scavassa\Documents\Embarcadero\Studio\Projects\Design Patterns\'
      + 'Design-Patterns\Abstract Factory Conversor\mockdata\data.json';
    ArquivoXML =
      'C:\Users\Gabriel Scavassa\Documents\Embarcadero\Studio\Projects\Design Patterns\'
      + 'Design-Patterns\Abstract Factory Conversor\mockdata\data.xml';
    ArquivoCSV =
      'C:\Users\Gabriel Scavassa\Documents\Embarcadero\Studio\Projects\Design Patterns\Design-Patterns\'
      + 'Abstract Factory Conversor\mockdata\data.csv';
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  JSONToDataSet, CSVToDataSet, XMlToDataSet;

{$R *.dfm}

procedure TForm1.btnCarregarCsvClick(Sender: TObject);
begin
//  TCSVToDataSet.Converter(ArquivoCSV, DataSet);
  rchTextos.Lines.Clear;
  TCSVToDataSet.Testando(ArquivoCSV, cdsJSON);
end;

procedure TForm1.btnCarregarJsonClick(Sender: TObject);
begin
  rchTextos.Lines.Clear;
  TJSONToDataSet.Converter(ArquivoJSON, cdsJSON);
end;

procedure TForm1.btnCarregarXmlClick(Sender: TObject);
begin
//  TXMLToDataSet.Converter(ArquivoXML, DataSet);
  rchTextos.Lines.Clear;
  TXMLToDataSet.Testando(ArquivoXML, cdsJSON);
end;

end.
