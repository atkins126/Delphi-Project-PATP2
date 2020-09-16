unit frmManutClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmManutCadastro, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TformManutClientes = class(TformManutCadastro)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEditNome: TDBEdit;
    DBEditSexo: TDBEdit;
    DBEditEndereco: TDBEdit;
    DBEditDataNascimento: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formManutClientes: TformManutClientes;

implementation

{$R *.dfm}

uses frmClientes;

end.
