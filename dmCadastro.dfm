object dtmCadastro: TdtmCadastro
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 289
  Width = 219
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmConexao.SQLConnection1
    Left = 40
    Top = 24
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Constraints = False
    Left = 40
    Top = 96
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    BeforeEdit = ClientDataSet1BeforeEdit
    BeforePost = ClientDataSet1BeforePost
    AfterPost = ClientDataSet1AfterPost
    BeforeDelete = ClientDataSet1BeforeDelete
    AfterDelete = ClientDataSet1AfterDelete
    OnNewRecord = ClientDataSet1NewRecord
    OnReconcileError = ClientDataSet1ReconcileError
    Left = 40
    Top = 168
  end
end
