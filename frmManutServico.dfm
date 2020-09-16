inherited formManutServico: TformManutServico
  Caption = 'formManutServico'
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
    Width = 27
    Height = 13
    Caption = 'Pre'#231'o'
  end
  object DBEditNome: TDBEdit
    Left = 24
    Top = 40
    Width = 121
    Height = 21
    DataField = 'nomeServico'
    DataSource = formServicos.DataSource1
    TabOrder = 2
  end
  object DBEditPreco: TDBEdit
    Left = 192
    Top = 40
    Width = 121
    Height = 21
    DataField = 'precoServico'
    DataSource = formServicos.DataSource1
    TabOrder = 3
  end
end
