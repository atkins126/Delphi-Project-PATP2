inherited formClientes: TformClientes
  Caption = 'formClientes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBNavigator1: TDBNavigator
    Hints.Strings = ()
  end
  inherited DataSource1: TDataSource
    AutoEdit = False
    DataSet = dtmClientes.ClientDataSet1
  end
end
