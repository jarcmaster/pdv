object dmData: TdmData
  OldCreateOrder = False
  Height = 266
  Width = 372
  object db: TMyConnection
    Database = 'alboe_sg'
    Username = 'jarcmaster'
    Server = 'jarc.ddns.net'
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 120
    EncryptedPassword = 'CEFFCBFF9EFFCEFF9EFFCFFF9EFFCEFF9BFFCEFF'
  end
  object qBrand: TMyQuery
    Connection = db
    SQL.Strings = (
      'select * from brand order by name')
    Active = True
    Left = 96
    Top = 120
  end
  object dsBrand: TMyDataSource
    DataSet = qBrand
    Left = 160
    Top = 120
  end
end
