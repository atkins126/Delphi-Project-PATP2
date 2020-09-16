inherited dtmProfessor: TdtmProfessor
  OldCreateOrder = True
  inherited SQLQuery1: TSQLQuery
    Active = True
    SQL.Strings = (
      'select * from professores')
    object SQLQuery1idProfessor: TIntegerField
      FieldName = 'idProfessor'
      Required = True
    end
    object SQLQuery1nomeProfessor: TStringField
      FieldName = 'nomeProfessor'
      Required = True
      Size = 150
    end
    object SQLQuery1dataNascimento: TDateField
      FieldName = 'dataNascimento'
      Required = True
    end
    object SQLQuery1sexoProfessor: TStringField
      FieldName = 'sexoProfessor'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SQLQuery1enderecoProfessor: TStringField
      FieldName = 'enderecoProfessor'
      Required = True
      Size = 200
    end
  end
  inherited ClientDataSet1: TClientDataSet
    object ClientDataSet1idProfessor: TIntegerField
      FieldName = 'idProfessor'
      Required = True
    end
    object ClientDataSet1nomeProfessor: TStringField
      FieldName = 'nomeProfessor'
      Required = True
      Size = 150
    end
    object ClientDataSet1dataNascimento: TDateField
      FieldName = 'dataNascimento'
      Required = True
    end
    object ClientDataSet1sexoProfessor: TStringField
      FieldName = 'sexoProfessor'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1enderecoProfessor: TStringField
      FieldName = 'enderecoProfessor'
      Required = True
      Size = 200
    end
  end
end
