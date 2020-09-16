inherited dtmClientes: TdtmClientes
  OldCreateOrder = True
  inherited SQLQuery1: TSQLQuery
    Active = True
    SQL.Strings = (
      'select * from clientes'
      '')
    object SQLQuery1idCliente: TIntegerField
      FieldName = 'idCliente'
      Required = True
    end
    object SQLQuery1NomeCliente: TStringField
      FieldName = 'NomeCliente'
      Required = True
      Size = 150
    end
    object SQLQuery1dataNascimento: TDateField
      FieldName = 'dataNascimento'
      Required = True
    end
    object SQLQuery1sexoCliente: TStringField
      FieldName = 'sexoCliente'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SQLQuery1enderecoCliente: TStringField
      FieldName = 'enderecoCliente'
      Required = True
      Size = 200
    end
    object SQLQuery1Professor: TIntegerField
      FieldName = 'Professor'
    end
  end
  inherited ClientDataSet1: TClientDataSet
    object ClientDataSet1idCliente: TIntegerField
      FieldName = 'idCliente'
      Required = True
    end
    object ClientDataSet1NomeCliente: TStringField
      FieldName = 'NomeCliente'
      Required = True
      Size = 150
    end
    object ClientDataSet1dataNascimento: TDateField
      FieldName = 'dataNascimento'
      Required = True
    end
    object ClientDataSet1sexoCliente: TStringField
      FieldName = 'sexoCliente'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1enderecoCliente: TStringField
      FieldName = 'enderecoCliente'
      Required = True
      Size = 200
    end
    object ClientDataSet1Professor: TIntegerField
      FieldName = 'Professor'
    end
  end
end
