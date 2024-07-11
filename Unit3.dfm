object DataModule3: TDataModule3
  OldCreateOrder = False
  Left = 797
  Top = 228
  Height = 306
  Width = 482
  object dsKategori: TDataSource
    DataSet = queryZKategori
    Left = 40
    Top = 24
  end
  object connection: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'sistem_penjualan'
    User = 'root'
    Password = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\LENOVO\Downloads\NatasyaDeviana_4C-main (1)\NatasyaDevi' +
      'ana_4C-main\libmysql.dll'
    Left = 112
    Top = 16
  end
  object queryZKategori: TZQuery
    Connection = connection
    Active = True
    SQL.Strings = (
      'SELECT * FROM kategori ORDER BY id ASC')
    Params = <>
    Left = 64
    Top = 80
  end
  object queryZSupplier: TZQuery
    Connection = connection
    Active = True
    SQL.Strings = (
      'SELECT * FROM supplier ORDER BY id ASC')
    Params = <>
    Left = 168
    Top = 160
  end
  object dsSupplier: TDataSource
    DataSet = queryZSupplier
    Left = 72
    Top = 160
  end
  object queryZCustomer: TZQuery
    Connection = connection
    Active = True
    SQL.Strings = (
      'SELECT * FROM customer ORDER BY id ASC')
    Params = <>
    Left = 272
    Top = 184
  end
  object dsCustomer: TDataSource
    DataSet = queryZCustomer
    Left = 232
    Top = 112
  end
  object frxrprt2: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45482.478170208330000000
    ReportOptions.LastChange = 45482.478170208330000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 288
    Top = 24
    Datasets = <
      item
        DataSet = frxdbdtst2
        DataSetName = 'satuan'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 306.141930000000000000
          Top = 18.897650000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'LAPORAN DATA SATUAN')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 37.795300000000000000
        Top = 98.267780000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Left = 64.252010000000000000
          Top = 3.779530000000000000
          Width = 196.535560000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 260.787570000000000000
          Top = 3.779530000000000000
          Width = 207.874150000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 468.661720000000000000
          Top = 3.779530000000000000
          Width = 230.551330000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESKRIPSI')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 41.574830000000000000
        Top = 196.535560000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst2
        DataSetName = 'satuan'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 64.252010000000000000
          Width = 196.535560000000000000
          Height = 37.795300000000000000
          DataField = 'id'
          DataSet = frxdbdtst2
          DataSetName = 'satuan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[satuan."id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 260.787570000000000000
          Width = 207.874150000000000000
          Height = 37.795300000000000000
          DataField = 'name'
          DataSet = frxdbdtst2
          DataSetName = 'satuan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[satuan."name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 468.661720000000000000
          Width = 230.551330000000000000
          Height = 37.795300000000000000
          DataField = 'deskripsi'
          DataSet = frxdbdtst2
          DataSetName = 'satuan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[satuan."deskripsi"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxdbdtst2: TfrxDBDataset
    UserName = 'satuan'
    CloseDataSource = True
    FieldAliases.Strings = (
      'id=id'
      'name=name'
      'deskripsi=deskripsi')
    DataSet = querySatuan
    Left = 368
    Top = 32
  end
  object querySatuan: TZQuery
    Connection = connection
    Active = True
    SQL.Strings = (
      'SELECT * FROM satuan')
    Params = <>
    Left = 216
    Top = 40
  end
  object dsSatuan: TDataSource
    DataSet = querySatuan
    Left = 152
    Top = 88
  end
end
