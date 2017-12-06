object dmData: TdmData
  OldCreateOrder = False
  Height = 266
  Width = 372
  object db: TMyConnection
    Database = 'alboe_sg'
    Username = 'jarcmaster'
    Server = 'jarc.ddns.net'
    Connected = True
    Left = 32
    Top = 16
    EncryptedPassword = 'CEFFCBFF9EFFCEFF9EFFCFFF9EFFCEFF9BFFCEFF'
  end
  object qBrand: TMyQuery
    Connection = db
    SQL.Strings = (
      'select * from brand order by name')
    Left = 8
    Top = 64
  end
  object dsBrand: TMyDataSource
    DataSet = qBrand
    Left = 72
    Top = 64
  end
end
