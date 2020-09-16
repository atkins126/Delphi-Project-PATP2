inherited dtmServicos: TdtmServicos
  OldCreateOrder = True
  inherited SQLQuery1: TSQLQuery
    Active = True
    SQL.Strings = (
      'Select * from servicos')
    object SQLQuery1idServico: TIntegerField
      FieldName = 'idServico'
      Required = True
    end
    object SQLQuery1nomeServico: TStringField
      FieldName = 'nomeServico'
      Required = True
      Size = 45
    end
    object SQLQuery1precoServico: TFMTBCDField
      FieldName = 'precoServico'
      Required = True
      Precision = 12
      Size = 2
    end
  end
  inherited ClientDataSet1: TClientDataSet
    object ClientDataSet1idServico: TIntegerField
      FieldName = 'idServico'
      Required = True
    end
    object ClientDataSet1nomeServico: TStringField
      FieldName = 'nomeServico'
      Required = True
      Size = 45
    end
    object ClientDataSet1precoServico: TFMTBCDField
      FieldName = 'precoServico'
      Required = True
      Precision = 12
      Size = 2
    end
  end
end
