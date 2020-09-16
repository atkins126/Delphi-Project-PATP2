inherited dtmPlanos: TdtmPlanos
  OldCreateOrder = True
  inherited SQLQuery1: TSQLQuery
    Active = True
    SQL.Strings = (
      'Select * from planos')
    object SQLQuery1idPlano: TIntegerField
      FieldName = 'idPlano'
      Required = True
    end
    object SQLQuery1nomePlano: TStringField
      FieldName = 'nomePlano'
      Required = True
      Size = 45
    end
    object SQLQuery1tempoContrato: TIntegerField
      FieldName = 'tempoContrato'
      Required = True
    end
    object SQLQuery1parcelamentoContrato: TIntegerField
      FieldName = 'parcelamentoContrato'
    end
  end
  inherited ClientDataSet1: TClientDataSet
    object ClientDataSet1idPlano: TIntegerField
      FieldName = 'idPlano'
      Required = True
    end
    object ClientDataSet1nomePlano: TStringField
      FieldName = 'nomePlano'
      Required = True
      Size = 45
    end
    object ClientDataSet1tempoContrato: TIntegerField
      FieldName = 'tempoContrato'
      Required = True
    end
    object ClientDataSet1parcelamentoContrato: TIntegerField
      FieldName = 'parcelamentoContrato'
    end
  end
end
