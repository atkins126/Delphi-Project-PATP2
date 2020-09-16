object formCadastro: TformCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 612
  ClientWidth = 1103
  Color = clScrollBar
  TransparentColorValue = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    1103
    612)
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 925
    Top = 24
    Width = 120
    Height = 13
    Caption = '                Outras Op'#231#245'es'
    Color = clTeal
    ParentColor = False
  end
  object btnNovo: TButton
    Left = 8
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 0
    OnClick = btnNovoClick
  end
  object btnExcluir: TButton
    Left = 191
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 1
    OnClick = btnExcluirClick
  end
  object btnCancelar: TButton
    Left = 272
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = btnCancelarClick
  end
  object btnRefresh: TButton
    Left = 932
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Refresh'
    TabOrder = 3
    OnClick = btnRefreshClick
  end
  object btnFechar: TButton
    Left = 1013
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 4
    OnClick = btnFecharClick
  end
  object Panel3: TPanel
    Left = 844
    Top = 22
    Width = 244
    Height = 17
    Caption = 'Outras Op'#231#245'es'
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = 8
    Top = 22
    Width = 339
    Height = 17
    Caption = 'Manipula'#231#227'o de Dados (registro)'
    Color = clActiveCaption
    ParentBackground = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 6
  end
  object DBNavigator1: TDBNavigator
    Left = 855
    Top = 579
    Width = 240
    Height = 25
    TabOrder = 7
  end
  object Panel4: TPanel
    Left = 15
    Top = 559
    Width = 339
    Height = 17
    Anchors = [akRight, akBottom]
    Caption = 'Manipula'#231#227'o de Dados (registro)'
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 8
  end
  object btnPrimeiro: TButton
    Left = 15
    Top = 582
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Primeiro'
    TabOrder = 9
    OnClick = btnPrimeiroClick
  end
  object btnAnterior: TButton
    Left = 96
    Top = 582
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Anterior'
    TabOrder = 10
    OnClick = btnAnteriorClick
  end
  object btnProximo: TButton
    Left = 185
    Top = 582
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Pr'#243'ximo'
    TabOrder = 11
    OnClick = btnProximoClick
  end
  object btnUltimo: TButton
    Left = 279
    Top = 582
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #218'ltimo'
    TabOrder = 12
    OnClick = btnUltimoClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 76
    Width = 1080
    Height = 331
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = btnEditarClick
  end
  object btnStart: TButton
    Left = 376
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 14
    OnClick = btnStartClick
  end
  object btnRollback: TButton
    Left = 464
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Rollback'
    TabOrder = 15
    OnClick = btnRollbackClick
  end
  object btnCommit: TButton
    Left = 552
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Commit'
    TabOrder = 16
    OnClick = btnCommitClick
  end
  object Panel2: TPanel
    Left = 376
    Top = 22
    Width = 251
    Height = 17
    Caption = 'Controle de Transa'#231#227'o'
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 17
  end
  object btnPesquisar: TButton
    Left = 844
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 18
    OnClick = btnPesquisarClick
  end
  object btnEditar: TButton
    Left = 89
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 19
    OnClick = btnEditarClick
  end
  object DataSource1: TDataSource
    Left = 704
    Top = 512
  end
end
