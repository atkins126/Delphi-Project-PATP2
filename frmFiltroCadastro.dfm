object formFiltroCadastro: TformFiltroCadastro
  Left = 0
  Top = 0
  Caption = 'formFiltroCadastro'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    635
    299)
  PixelsPerInch = 96
  TextHeight = 13
  object btnFiltrar: TButton
    Left = 448
    Top = 266
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Filtrar'
    TabOrder = 0
    OnClick = btnFiltrarClick
  end
  object btnCancelar: TButton
    Left = 552
    Top = 266
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = btnCancelarClick
  end
end
