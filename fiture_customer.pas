unit fiture_customer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Unit3;

type
  TFormKustomer = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lblDiskon: TLabel;
    lbl8: TLabel;
    edtNIK: TEdit;
    edtNama: TEdit;
    edtAlamat: TEdit;
    edtTelpon: TEdit;
    edtEmail: TEdit;
    cbbMember: TComboBox;
    btnNew: TButton;
    btnInsert: TButton;
    btnUpdate: TButton;
    btnDelete: TButton;
    btnClose: TButton;
    dbgrd1: TDBGrid;
    edtFilter: TEdit;
    btnCetak: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure cbbMemberChange(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btnCetakClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    procedure closeInput;
    procedure openInput;
    procedure clear;
    function ValidateInput: Boolean;
    procedure ResetFormData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormKustomer: TFormKustomer;

implementation

{$R *.dfm}


procedure TFormKustomer.ResetFormData;
begin
  edtNIK.Text := '';
  edtNama.Text := '';
  edtAlamat.Text := '';
  edtTelpon.Text := '';
  edtEmail.Text := '';
  cbbMember.ItemIndex := -1;
  cbbMember.Text := 'Masukkan data...';
end;
function TFormKustomer.ValidateInput: Boolean;
var nik, nama, alamat, telp, email: string;
member: Integer;
begin
  nik := edtNIK.Text;
  nama := edtNama.Text;
  alamat := edtAlamat.Text;
  telp := edtTelpon.Text;
  email :=  edtEmail.text;
  member := cbbMember.ItemIndex;
  if (Trim(nik) = '') or (Trim(nama) = '') or (Trim(alamat) = '') or (Trim(telp) ='') or (Trim(email) = '') or (member < 0) then
    ValidateInput := True
  else
    ValidateInput := False;
end;
procedure TFormKustomer.clear;
begin
    btnUpdate.Enabled := False;
  btnInsert.Enabled := False;
  btnDelete.Enabled := False;
  btnNew.Enabled := False;
end;
procedure TFormKustomer.openInput;
begin
  edtNIK.Enabled := True;
  edtNama.Enabled := True;
  edtAlamat.Enabled := True;
  edtTelpon.Enabled := True;
  edtEmail.Enabled := True;
  cbbMember.Enabled := True;
end;
procedure TFormKustomer.closeInput;
begin
    edtNIK.Enabled := False;
  edtNama.Enabled := False;
  edtAlamat.Enabled := False;
  edtTelpon.Enabled := False;
  edtEmail.Enabled := False;
  cbbMember.Enabled := False;
end;
procedure TFormKustomer.FormShow(Sender: TObject);
begin
  clear;
  closeInput;
  btnNew.Enabled := True;
end;

procedure TFormKustomer.btnNewClick(Sender: TObject);
begin
  clear;
  openInput;
  btnInsert.Enabled := True;
end;

procedure TFormKustomer.btnInsertClick(Sender: TObject);
begin
 if ValidateInput then
  begin
    ShowMessage('Harap lengkapi Input anda!');
    Exit;
  end;
  try
   with DataModule3.queryZCustomer do
    begin
      // Menambahkan record baru ke dalam dataset pendaftaran
      Append;
      FieldByName('nik').AsString := edtNIK.Text;
      FieldByName('name').AsString := edtNama.Text;
      FieldByName('telp').AsString := edtTelpon.Text;
      FieldByName('email').AsString := edtEmail.Text;
      FieldByName('alamat').AsString := edtAlamat.Text;
      FieldByName('member').AsString := cbbMember.Text;
      Post;
      ShowMessage('Berhasil Menambahkan data baru');
    end;
    except
      on E: Exception do
        ShowMessage('Error: ' + E.Message);
    end;
    clear;
    closeInput;
    ResetFormData;
    btnNew.Enabled := True;
end;

procedure TFormKustomer.cbbMemberChange(Sender: TObject);
begin
  if cbbMember.Text = 'Yes' then
    lblDiskon.Caption := 'Diskon 10%'
  else if (cbbMember.Text = 'No') then
    lblDiskon.Caption  := 'Diskon 5%'
  else
    lblDiskon.Caption := '';

end;

procedure TFormKustomer.btnUpdateClick(Sender: TObject);
begin
 if ValidateInput then
  begin
    ShowMessage('Harap lengkapi Input anda!');
    Exit;
  end;
  try
   with DataModule3.queryZCustomer do
    begin
      // Menambahkan record baru ke dalam dataset pendaftaran
      Edit;
   FieldByName('nik').AsString := edtNIK.Text;
      FieldByName('name').AsString := edtNama.Text;
      FieldByName('telp').AsString := edtTelpon.Text;
      FieldByName('email').AsString := edtEmail.Text;
      FieldByName('alamat').AsString := edtAlamat.Text;
      FieldByName('member').AsString := cbbMember.Text;
      Post;
      ShowMessage('Berhasil Mengupdate data');
    end;
    except
      on E: Exception do
        ShowMessage('Error: ' + E.Message);
    end;
    closeInput;
    clear;
    ResetFormData;
    btnNew.Enabled := True;
end;

procedure TFormKustomer.btnDeleteClick(Sender: TObject);
begin
  with DataModule3.queryZCustomer do
    begin
      if IsEmpty then
      begin
        ShowMessage('Tidak ada data yang dipilih.');
        Exit;
      end;

      if (MessageDlg('Anda yakin ingin menghapus data ini?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      begin
        try
        Delete;
        ShowMessage('Data berhasil di hapus.');
        closeInput;
        clear;
        ResetFormData;
        btnNew.Enabled := True;
        except
          on E: Exception do
            ShowMessage('Error: ' + E.Message);
    end;
    end;
    end;
end;

procedure TFormKustomer.dbgrd1CellClick(Column: TColumn);
var member: string;
begin
  edtNIK.Text := DataModule3.queryZCustomer.Fields[1].AsString;
  edtNama.Text := DataModule3.queryZCustomer.Fields[2].AsString;
  edtAlamat.Text := DataModule3.queryZCustomer.Fields[3].AsString;
  edtTelpon.Text := DataModule3.queryZCustomer.Fields[4].AsString;
  edtEmail.Text := DataModule3.queryZCustomer.Fields[5].AsString;
  member := DataModule3.queryZCustomer.Fields[8].AsString;
  if LowerCase(member) = 'yes' then
  cbbMember.ItemIndex := 0
  else if LowerCase(member) = 'no' then
    cbbMember.ItemIndex := 1;



  clear;
  openInput;
  btnUpdate.Enabled := True;
  btnDelete.Enabled := True;
end;

procedure TFormKustomer.btnCetakClick(Sender: TObject);
begin
  DataModule3.frxrprtKustomer.ShowReport();
end;

procedure TFormKustomer.btnCloseClick(Sender: TObject);
begin
 closeInput;
  clear;
  btnNew.Enabled := True;
  ResetFormData;
end;

end.
