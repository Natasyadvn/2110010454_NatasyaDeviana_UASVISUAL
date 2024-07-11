object FormKustomer: TFormKustomer
  Left = 509
  Top = 214
  Width = 689
  Height = 647
  Caption = 'Kustomer'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object lbl1: TLabel
    Left = 16
    Top = 8
    Width = 29
    Height = 19
    Caption = 'NIK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 16
    Top = 48
    Width = 48
    Height = 19
    Caption = 'NAMA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 16
    Top = 88
    Width = 63
    Height = 19
    Caption = 'ALAMAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 16
    Top = 128
    Width = 36
    Height = 19
    Caption = 'TELP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 16
    Top = 176
    Width = 48
    Height = 19
    Caption = 'EMAIL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 16
    Top = 216
    Width = 66
    Height = 19
    Caption = 'MEMBER'
  end
  object lblDiskon: TLabel
    Left = 304
    Top = 208
    Width = 72
    Height = 19
    Caption = 'DISKON : '
  end
  object lbl8: TLabel
    Left = 16
    Top = 568
    Width = 132
    Height = 19
    Caption = 'MASUKAN NAMA'
  end
  object edtNIK: TEdit
    Left = 96
    Top = 8
    Width = 417
    Height = 27
    TabOrder = 0
  end
  object edtNama: TEdit
    Left = 96
    Top = 48
    Width = 417
    Height = 27
    TabOrder = 1
  end
  object edtAlamat: TEdit
    Left = 96
    Top = 88
    Width = 417
    Height = 27
    TabOrder = 2
  end
  object edtTelpon: TEdit
    Left = 96
    Top = 128
    Width = 417
    Height = 27
    TabOrder = 3
  end
  object edtEmail: TEdit
    Left = 96
    Top = 168
    Width = 417
    Height = 27
    TabOrder = 4
  end
  object cbbMember: TComboBox
    Left = 96
    Top = 208
    Width = 193
    Height = 27
    ItemHeight = 19
    TabOrder = 5
    Text = 'Pilih --'
    OnChange = cbbMemberChange
    Items.Strings = (
      'Yes'
      'No')
  end
  object btnNew: TButton
    Left = 8
    Top = 248
    Width = 81
    Height = 33
    Caption = 'BARU'
    TabOrder = 6
    OnClick = btnNewClick
  end
  object btnInsert: TButton
    Left = 120
    Top = 248
    Width = 81
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = btnInsertClick
  end
  object btnUpdate: TButton
    Left = 232
    Top = 248
    Width = 75
    Height = 33
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = btnUpdateClick
  end
  object btnDelete: TButton
    Left = 336
    Top = 248
    Width = 75
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 9
    OnClick = btnDeleteClick
  end
  object btnClose: TButton
    Left = 440
    Top = 248
    Width = 75
    Height = 33
    Caption = 'BATAL'
    TabOrder = 10
    OnClick = btnCloseClick
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 296
    Width = 513
    Height = 249
    DataSource = DataModule3.dsCustomer
    TabOrder = 11
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edtFilter: TEdit
    Left = 160
    Top = 560
    Width = 361
    Height = 27
    TabOrder = 12
  end
  object btnCetak: TButton
    Left = 528
    Top = 248
    Width = 75
    Height = 33
    Caption = 'CETAK'
    TabOrder = 13
    OnClick = btnCetakClick
  end
end
