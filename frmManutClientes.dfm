inherited formManutClientes: TformManutClientes
  Caption = 'formManutClientes'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 24
    Top = 21
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel [1]
    Left = 24
    Top = 77
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label3: TLabel [2]
    Left = 280
    Top = 21
    Width = 169
    Height = 13
    Caption = 'Data de Nasicmento (YYYY/MM/DD)'
  end
  object Label4: TLabel [3]
    Left = 200
    Top = 21
    Width = 24
    Height = 13
    Caption = 'Sexo'
  end
  object DBEditNome: TDBEdit
    Left = 24
    Top = 40
    Width = 121
    Height = 21
    DataField = 'NomeCliente'
    DataSource = formClientes.DataSource1
    TabOrder = 2
  end
  object DBEditSexo: TDBEdit
    Left = 200
    Top = 40
    Width = 31
    Height = 21
    CharCase = ecUpperCase
    DataField = 'sexoCliente'
    DataSource = formClientes.DataSource1
    TabOrder = 3
  end
  object DBEditEndereco: TDBEdit
    Left = 24
    Top = 96
    Width = 516
    Height = 21
    DataField = 'enderecoCliente'
    DataSource = formClientes.DataSource1
    TabOrder = 4
  end
  object DBEditDataNascimento: TDBEdit
    Left = 280
    Top = 40
    Width = 121
    Height = 21
    DataField = 'dataNascimento'
    DataSource = formClientes.DataSource1
    TabOrder = 5
  end
end
