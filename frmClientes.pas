unit frmClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmCadastro, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TformClientes = class(TformCadastro)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formClientes: TformClientes;

implementation

{$R *.dfm}

uses dmClientes, frmFiltroClientes;

end.
