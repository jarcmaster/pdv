unit uBrand;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, MyAccess, MemDS;

type
  TdmData = class(TDataModule)
    db: TMyConnection;
    qItems: TMyQuery;
    dsItems: TMyDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmData: TdmData;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
