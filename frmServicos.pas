unit frmServicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmCadastro, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TformServicos = class(TformCadastro)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formServicos: TformServicos;

implementation

{$R *.dfm}

uses dmServicos;

procedure TformServicos.FormCreate(Sender: TObject);
begin
  inherited;
  btnPesquisar.Hide;
end;

end.
