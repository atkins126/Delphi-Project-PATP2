unit frmFiltroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmFiltroCadastro, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TformFiltroClientes = class(TformFiltroCadastro)
    edNome: TLabeledEdit;
    edSexo: TLabeledEdit;
    procedure btnFiltrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formFiltroClientes: TformFiltroClientes;

implementation

{$R *.dfm}

procedure TformFiltroClientes.btnFiltrarClick(Sender: TObject);
begin
  sqlFiltro := 'where 1=1' ;

  if trim(edNome.Text) <> '' then
  begin
     sqlFiltro := sqlFiltro + ' and UPPER(nomeCliente) like UPPER(' + QuotedStr(edNome.Text + '%') + ')';
  end;
  if trim(edSexo.Text) <> '' then
  begin
     sqlFiltro := sqlFiltro + ' and UPPER(sexoCliente) = UPPER(' + QuotedStr(edSexo.Text) + ')';
  end;
  sqlFiltro := sqlFiltro + ' order by nomeCliente';
  inherited;

end;

end.
