inherited formManutProfessores: TformManutProfessores
  Caption = 'formManutProfessores'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 24
    Top = 13
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel [1]
    Left = 24
    Top = 69
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label3: TLabel [2]
    Left = 280
    Top = 13
    Width = 169
    Height = 13
    Caption = 'Data de Nasicmento (YYYY/MM/DD)'
  end
  object Label4: TLabel [3]
    Left = 200
    Top = 13
    Width = 24
    Height = 13
    Caption = 'Sexo'
  end
  object DBEditNome: TDBEdit
    Left = 24
    Top = 32
    Width = 121
    Height = 21
    DataField = 'nomeProfessor'
    DataSource = formProfessor.DataSource1
    TabOrder = 2
  end
  object DBEditSexo: TDBEdit
    Left = 200
    Top = 32
    Width = 31
    Height = 21
    CharCase = ecUpperCase
    DataField = 'sexoProfessor'
    DataSource = formProfessor.DataSource1
    MaxLength = 1
    TabOrder = 3
  end
  object DBEditEndereco: TDBEdit
    Left = 24
    Top = 88
    Width = 516
    Height = 21
    DataField = 'enderecoProfessor'
    DataSource = formProfessor.DataSource1
    TabOrder = 4
  end
  object DBEditDataNascimento: TDBEdit
    Left = 280
    Top = 32
    Width = 121
    Height = 21
    DataField = 'dataNascimento'
    DataSource = formProfessor.DataSource1
    TabOrder = 5
  end
end
