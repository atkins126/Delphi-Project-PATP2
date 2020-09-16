inherited formServicos: TformServicos
  Caption = 'formServicos'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBNavigator1: TDBNavigator
    Hints.Strings = ()
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'idServico'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Servico'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'precoServico'
        Width = 720
        Visible = True
      end>
  end
  inherited DataSource1: TDataSource
    DataSet = dtmServicos.ClientDataSet1
  end
end
