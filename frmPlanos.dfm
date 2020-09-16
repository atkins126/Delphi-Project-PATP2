inherited formPlanos: TformPlanos
  Caption = 'formPlanos'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBNavigator1: TDBNavigator
    Hints.Strings = ()
  end
  inherited DataSource1: TDataSource
    AutoEdit = False
    DataSet = dtmPlanos.ClientDataSet1
  end
end
