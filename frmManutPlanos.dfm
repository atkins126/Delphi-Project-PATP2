inherited formManutPlanos: TformManutPlanos
  Caption = 'formManutPlanos'
  ExplicitWidth = 564
  ExplicitHeight = 580
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 24
    Top = 21
    Width = 30
    Height = 13
    Caption = 'Nome '
  end
  object Label2: TLabel [1]
    Left = 192
    Top = 21
    Width = 65
    Height = 13
    Caption = 'Parcelamento'
  end
  object Label3: TLabel [2]
    Left = 336
    Top = 21
    Width = 93
    Height = 13
    Caption = 'Tempo de Contrato'
  end
  object DBEditNome: TDBEdit
    Left = 24
    Top = 40
    Width = 121
    Height = 21
    DataField = 'nomePlano'
    DataSource = formPlanos.DataSource1
    TabOrder = 2
  end
  object DBEditParcelamento: TDBEdit
    Left = 192
    Top = 40
    Width = 121
    Height = 21
    DataField = 'parcelamentoContrato'
    DataSource = formPlanos.DataSource1
    TabOrder = 3
  end
  object DBEditTempoContrato: TDBEdit
    Left = 336
    Top = 40
    Width = 121
    Height = 21
    DataField = 'tempoContrato'
    DataSource = formPlanos.DataSource1
    TabOrder = 4
  end
end
