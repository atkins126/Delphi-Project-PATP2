unit frmManutServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmManutCadastro, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TformManutServico = class(TformManutCadastro)
    DBEditNome: TDBEdit;
    DBEditPreco: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formManutServico: TformManutServico;

implementation

{$R *.dfm}

uses frmServicos;

end.
