program Inventory;

uses
  System.StartUpCopy,
  FMX.Forms,
  uInventory in 'uInventory.pas' {frmInventory},
  uBrand in 'uBrand.pas' {frmBrand},
  uData in 'uData.pas' {dmData: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmInventory, frmInventory);
  Application.CreateForm(TfrmBrand, frmBrand);
  Application.CreateForm(TdmData, dmData);
  Application.Run;
end.
