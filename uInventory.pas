unit uInventory;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, System.Rtti, FMX.Layouts, FMX.Grid,
  Data.DB, DBAccess, MyAccess, MemDS, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, FMX.ListBox;

type
  TfrmInventory = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    eUPC: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtID: TEdit;
    edtBrandName: TEdit;
    bBrand: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    bCategory: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Edit6: TEdit;
    Edit7: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Button2: TButton;
    Edit8: TEdit;
    Edit9: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Button3: TButton;
    Edit10: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Edit11: TEdit;
    Button4: TButton;
    Edit12: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Edit17: TEdit;
    grbFlags: TGroupBox;
    Switch1: TSwitch;
    Switch2: TSwitch;
    Switch3: TSwitch;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Switch4: TSwitch;
    Label22: TLabel;
    swtRestrictSale: TSwitch;
    Label23: TLabel;
    Switch6: TSwitch;
    Switch7: TSwitch;
    Switch8: TSwitch;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Switch9: TSwitch;
    Label27: TLabel;
    swtDeposit: TSwitch;
    Label28: TLabel;
    Switch11: TSwitch;
    Label29: TLabel;
    Switch12: TSwitch;
    Label30: TLabel;
    edtDepositValue: TEdit;
    Label31: TLabel;
    grbPosition: TGroupBox;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    edtAge2Restrict: TEdit;
    Label35: TLabel;
    grbItemPircute: TGroupBox;
    imgItemPicture: TImageControl;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    Label36: TLabel;
    GroupBox3: TGroupBox;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Edit27: TEdit;
    Edit28: TEdit;
    Label44: TLabel;
    procedure swtDepositSwitch(Sender: TObject);
    procedure swtRestrictSaleSwitch(Sender: TObject);
    procedure bBrandClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInventory: TfrmInventory;

implementation

{$R *.fmx}

uses uBrand;

procedure TfrmInventory.bBrandClick(Sender: TObject);
begin
   //Mostrar la ventana de Brands
   frmBrand.ShowModal ;
end;

procedure TfrmInventory.swtDepositSwitch(Sender: TObject);
begin
   if swtDeposit.IsChecked  then
      begin
         edtDepositValue.Enabled := True;
         edtDepositValue.SetFocus ;
      end
   else
      begin
         edtDepositValue.Text := '0';
         edtDepositValue.Enabled := False;
      end;

end;

procedure TfrmInventory.swtRestrictSaleSwitch(Sender: TObject);
begin
   if swtRestrictSale.IsChecked  then
      begin
         edtAge2Restrict.Enabled := True;
         edtAge2Restrict.SetFocus ;
      end
   else
      begin
         edtAge2Restrict.Text := '0';
         edtAge2Restrict.Enabled := False;
      end;

end;

end.
