unit frmFiltroProfessor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmFiltroCadastro, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TformFiltroProfessor = class(TformFiltroCadastro)
    edNome: TLabeledEdit;
    edSexo: TLabeledEdit;
    procedure btnFiltrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formFiltroProfessor: TformFiltroProfessor;

implementation

{$R *.dfm}

procedure TformFiltroProfessor.btnFiltrarClick(Sender: TObject);
begin
  sqlFiltro := 'where 1=1' ;

  if trim(edNome.Text) <> '' then
  begin
     sqlFiltro := sqlFiltro + ' and UPPER(nomeProfessor) like UPPER(' + QuotedStr(edNome.Text + '%') + ')';
  end;
  if trim(edSexo.Text) <> '' then
  begin
     sqlFiltro := sqlFiltro + ' and UPPER(sexoProfessor) = UPPER(' + QuotedStr(edSexo.Text) + ')';
  end;
  sqlFiltro := sqlFiltro + ' order by nomeProfessor';
  inherited;
end;

end.
