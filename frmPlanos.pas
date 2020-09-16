unit frmPlanos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmCadastro, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TformPlanos = class(TformCadastro)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPlanos: TformPlanos;

implementation

{$R *.dfm}

uses dmPlanos;

procedure TformPlanos.FormCreate(Sender: TObject);
begin
  inherited;
  btnPesquisar.Hide;
end;

end.
