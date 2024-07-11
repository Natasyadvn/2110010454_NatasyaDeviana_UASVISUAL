unit Supplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Unit3;

type
  TFormSupplier = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edtNIK: TEdit;
    btnNew: TButton;
    btnUpdate: TButton;
    btnDelete: TButton;
    dbgrd1: TDBGrid;
    edtCari: TEdit;
    btnCari: TButton;
    btnClose: TButton;
    btnInsert: TButton;
    lbl3: TLabel;
    edtNama: TEdit;
    lbl4: TLabel;
    edtTelpon: TEdit;
    lbl5: TLabel;
    edtAlamat: TEdit;
    lbl6: TLabel;
    edtEmail: TEdit;
    lbl7: TLabel;
    edtPerusahaan: TEdit;
    lbl8: TLabel;
    edtNamaBank: TEdit;
    lbl9: TLabel;
    edtNamaAkun: TEdit;
    lbl10: TLabel;
    edtNoAkunBank: TEdit;
    procedure btnNewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btnInsertClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
        procedure SelectData;
    procedure ResetFormData;
    procedure FormattedGrid;
    procedure clear;
    procedure closeInput;
    procedure openInput;
    function ValidateInput: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSupplier: TFormSupplier;
  idSupplier: Integer;

implementation

uses DB;

{$R *.dfm}

function  TFormSupplier.ValidateInput: Boolean;
var nik, nama, telpon, alamat, email, perusahaan, namaBank, namaAkun, noAkunBank: string;
begin
  nik :=  edtNIK.Text;
  nama := edtNama.Text;
  telpon := edtTelpon.Text;
  email := edtEmail.Text;
  perusahaan :=  edtPerusahaan.Text;
  namaBank :=  edtNamaBank.Text;
  namaAkun := edtNamaAkun.Text;
  noAkunBank := edtNamaAkun.Text;

  if (Trim(nik) = '') or (Trim(nama) = '') or (Trim(telpon) = '') or (Trim(email) = '') or (Trim(perusahaan) = '') or (Trim(namaBank) = '') or (Trim(namaBank) = '') or (Trim(namaAkun) = '') or (Trim(noAkunBank) = '') then
    ValidateInput := True
  else
    ValidateInput := False;
end;
procedure TFormSupplier.btnNewClick(Sender: TObject);
begin
  clear;
  openInput;
  btnInsert.Enabled := True;
end;

procedure TFormSupplier.openInput;
begin
   edtNIK.Enabled := True;
  edtNama.Enabled := True;
  edtTelpon.Enabled := True;
  edtAlamat.Enabled := True;
  edtEmail.Enabled := True;
  edtPerusahaan.Enabled := True;
  edtNamaBank.Enabled := True;
  edtNamaAkun.Enabled := True;
  edtNoAkunBank.Enabled := True;
end;
procedure TFormSupplier.closeInput;
begin
  edtNIK.Enabled := False;
  edtNama.Enabled := False;
  edtTelpon.Enabled := False;
  edtAlamat.Enabled := False;
  edtEmail.Enabled := False;
  edtPerusahaan.Enabled := False;
  edtNamaBank.Enabled := False;
  edtNamaAkun.Enabled := False;
  edtNoAkunBank.Enabled := False;
end;
procedure TFormSupplier.ResetFormData;
begin
  edtNIK.Text := '';
  edtNama.Text := '';
  edtTelpon.Text := '';
  edtAlamat.Text := '';
  edtEmail.Text := '';
  edtPerusahaan.Text := '';
  edtNamaBank.Text := '';
  edtNamaAkun.Text := '';
  edtNoAkunBank.Text := '';
  idSupplier := -1;
  clear;
  btnNew.Enabled := True;
end;

procedure TFormSupplier.SelectData;
var sqlText: string;
begin
  with DataModule3.queryZSupplier do
  begin
      sqlText := 'SELECT * FROM supplier ORDER BY id ASC;';
      SQL.Clear;
      SQL.Text := sqlText;
      Open;

      FormattedGrid;
  end;
end;
procedure TFormSupplier.FormattedGrid;
begin
  dbgrd1.Columns[0].Width := 25; // width kolom id
  dbgrd1.Columns[1].Width := 200; // width kolom nik
  dbgrd1.Columns[2].Width := 200; // width kolom nama
  dbgrd1.Columns[3].Width := 200; // width kolom telpon
  dbgrd1.Columns[4].Width := 200; // width kolom alamat
  dbgrd1.Columns[5].Width := 200; // width kolom email
  dbgrd1.Columns[6].Width := 200; // width kolom perusahaan
  dbgrd1.Columns[7].Width := 200; // width kolom nama bank/ width kolom no akun bank
  dbgrd1.Columns[8].Width := 200;
  dbgrd1.Columns[9].Width := 200;
  dbgrd1.Columns[10].Width := 200;
  dbgrd1.Columns[11].Width := 200;
end;

procedure TFormSupplier.clear;
begin
  btnUpdate.Enabled := False;
  btnInsert.Enabled := False;
  btnDelete.Enabled := False;
  btnNew.Enabled := False;
end;


procedure TFormSupplier.FormShow(Sender: TObject);
begin
  clear;
  closeInput;
  btnNew.Enabled := True;
end;

procedure TFormSupplier.dbgrd1CellClick(Column: TColumn);
begin
  idSupplier := StrToInt(DataModule3.queryZSupplier.Fields[0].AsString);
  edtNIK.Text := DataModule3.queryZSupplier.Fields[1].AsString;
  edtNama.Text := DataModule3.queryZSupplier.Fields[2].AsString;
  edtTelpon.Text := DataModule3.queryZSupplier.Fields[3].AsString;
  edtAlamat.Text := DataModule3.queryZSupplier.Fields[4].AsString;
  edtEmail.Text := DataModule3.queryZSupplier.Fields[5].AsString;
  edtPerusahaan.Text := DataModule3.queryZSupplier.Fields[6].AsString;
  edtNamaBank.Text := DataModule3.queryZSupplier.Fields[7].AsString;
  edtNoAkunBank.Text := DataModule3.queryZSupplier.Fields[8].AsString;


  clear;
  openInput;
  btnUpdate.Enabled := True;
  btnDelete.Enabled := True;
end;

procedure TFormSupplier.btnInsertClick(Sender: TObject);
begin
  if ValidateInput then
  begin
    ShowMessage('Harap lengkapi Input anda!');
    Exit;
  end;
  try
   with DataModule3.queryZSupplier do
    begin
      // Menambahkan record baru ke dalam dataset pendaftaran
      Append;
      FieldByName('nik').AsString := edtNIK.Text;
      FieldByName('name').AsString := edtNama.Text;
      FieldByName('telp').AsString := edtTelpon.Text;
      FieldByName('alamat').AsString := edtAlamat.Text;
      FieldByName('email').AsString := edtEmail.Text;
      FieldByName('perusahaan').AsString := edtPerusahaan.Text;
      FieldByName('nama_bank').AsString := edtNamaBank.Text;
      FieldByName('nama_akun_bank').AsString := edtNamaAkun.Text;
      FieldByName('no_akun_bank').AsString := edtNoAkunBank.Text;
      Post;
      ShowMessage('Berhasil Menambahkan data baru');
    end;
    except
      on E: Exception do
        ShowMessage('Error: ' + E.Message);
    end;
    closeInput;
    ResetFormData;
    btnNew.Enabled := True;
end;

procedure TFormSupplier.btnUpdateClick(Sender: TObject);
begin
   if ValidateInput then
  begin
    ShowMessage('Harap lengkapi Input anda!');
    Exit;
  end;
  try
   with DataModule3.queryZSupplier do
    begin
      // Menambahkan record baru ke dalam dataset pendaftaran
      Edit;
      FieldByName('nik').AsString := edtNIK.Text;
      FieldByName('name').AsString := edtNama.Text;
      FieldByName('telp').AsString := edtTelpon.Text;
      FieldByName('alamat').AsString := edtAlamat.Text;
      FieldByName('email').AsString := edtEmail.Text;
      FieldByName('perusahaan').AsString := edtPerusahaan.Text;
      FieldByName('nama_bank').AsString := edtNamaBank.Text;
      FieldByName('nama_akun_bank').AsString := edtNamaAkun.Text;
      FieldByName('no_akun_bank').AsString := edtNoAkunBank.Text;
      Post;
      ShowMessage('Berhasil Mengupdate data');
    end;
    except
      on E: Exception do
        ShowMessage('Error: ' + E.Message);
    end;
    closeInput;
    ResetFormData;
    btnNew.Enabled := True;
end;

procedure TFormSupplier.btnDeleteClick(Sender: TObject);
begin
    with DataModule3.queryZSupplier do
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
        ResetFormData;
        btnNew.Enabled := True;
        except
          on E: Exception do
            ShowMessage('Error: ' + E.Message);
    end;
    end;
    end;
end;

procedure TFormSupplier.btnCloseClick(Sender: TObject);
begin
  closeInput;
  clear;
  btnNew.Enabled := True;
  ResetFormData;
end;

end.
