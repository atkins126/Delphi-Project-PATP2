object frmMenu: TfrmMenu
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 179
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 104
    Top = 72
    object Cadastro: TMenuItem
      Caption = 'Cadastro'
      object Professor: TMenuItem
        Caption = 'Professor'
        OnClick = ProfessorClick
      end
      object Servicos: TMenuItem
        Caption = 'Servi'#231'os'
        OnClick = ServicosClick
      end
      object Planos: TMenuItem
        Caption = 'Planos'
        OnClick = PlanosClick
      end
      object Clientes: TMenuItem
        Caption = 'Clientes'
        OnClick = ClientesClick
      end
    end
    object Relatorios: TMenuItem
      Caption = 'Relat'#243'rios'
    end
    object Fechar: TMenuItem
      Caption = 'Fechar'
      OnClick = FecharClick
    end
  end
end
