inherited formProfessor: TformProfessor
  Caption = 'formProfessor'
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBNavigator1: TDBNavigator
    Hints.Strings = ()
  end
  inherited DBGrid1: TDBGrid
    Top = 92
    Columns = <
      item
        Expanded = False
        FieldName = 'idProfessor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomeProfessor'
        Width = 432
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dataNascimento'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sexoProfessor'
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'enderecoProfessor'
        Width = 400
        Visible = True
      end>
  end
  inherited btnPesquisar: TButton
    Left = 851
    ExplicitLeft = 851
  end
  inherited DataSource1: TDataSource
    DataSet = dtmProfessor.ClientDataSet1
  end
end
