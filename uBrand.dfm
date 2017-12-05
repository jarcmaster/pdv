object dmData: TdmData
  OldCreateOrder = False
  Height = 173
  Width = 254
  object db: TMyConnection
    Database = 'alboe_sg'
    Username = 'jarcmaster'
    Server = 'jarc.ddns.net'
    Connected = True
    LoginPrompt = False
    Left = 23
    Top = 6
    EncryptedPassword = 'CEFFCBFF9EFFCEFF9EFFCFFF9EFFCEFF9BFFCEFF'
  end
  object qItems: TMyQuery
    Connection = db
    SQL.Strings = (
      
        'select store_id,upc,department_id,split,retail from item_to_stor' +
        'e limit 100')
    Active = True
    Left = 23
    Top = 62
  end
  object dsItems: TMyDataSource
    DataSet = qItems
    Left = 79
    Top = 62
  end
end
