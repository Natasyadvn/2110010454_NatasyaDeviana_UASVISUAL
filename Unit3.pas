unit Unit3;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, frxClass, frxDBSet;

type
  TDataModule3 = class(TDataModule)
    dsKategori: TDataSource;
    connection: TZConnection;
    queryZKategori: TZQuery;
    queryZSupplier: TZQuery;
    dsSupplier: TDataSource;
    queryZCustomer: TZQuery;
    dsCustomer: TDataSource;
    frxrprt2: TfrxReport;
    frxdbdtst2: TfrxDBDataset;
    querySatuan: TZQuery;
    dsSatuan: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule3: TDataModule3;

implementation

{$R *.dfm}

end.
