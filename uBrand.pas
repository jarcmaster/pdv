unit uBrand;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, System.Rtti, FMX.Layouts, FMX.Grid,
  FMX.Ani, FMX.Gestures, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope;

type
  TfrmBrand = class(TForm)
    edtBrand: TEdit;
    Label1: TLabel;
    BitmapAnimation1: TBitmapAnimation;
    CornerButton1: TCornerButton;
    CornerButton2: TCornerButton;
    CornerButton3: TCornerButton;
    CornerButton4: TCornerButton;
    StyleBook1: TStyleBook;
    Grid1: TGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    procedure CornerButton1Click(Sender: TObject);
    procedure Grid1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtBrandKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBrand: TfrmBrand;

implementation

{$R *.fmx}

uses uData, uInventory;

procedure TfrmBrand.CornerButton1Click(Sender: TObject);
begin
   frmInventory.edtID.Text := dmData.qBrand.FieldByName('id').Text ;
   frmInventory.edtBrandName.Text := dmData.qBrand.FieldByName('name').Text ;

   dmData.qBrand.Close ;
   Close;

end;

procedure TfrmBrand.edtBrandKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
   dmData.qBrand.Locate('name',edtBrand.Text, loCaseInsensitive, loPartialKey);
end;

procedure TfrmBrand.FormShow(Sender: TObject);
begin
   dmData.qBrand.Open ;
end;

procedure TfrmBrand.Grid1Click(Sender: TObject);
begin
   edtBrand.Text := dmData.qBrand.FieldByName('name').Text ;
end;

end.
