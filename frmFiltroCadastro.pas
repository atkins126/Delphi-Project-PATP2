unit frmFiltroCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TformFiltroCadastro = class(TForm)
    btnFiltrar: TButton;
    btnCancelar: TButton;
    procedure btnFiltrarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    FsqlFiltro: string;
    { Private declarations }
  public
    { Public declarations }
    property sqlFiltro : string read FsqlFiltro write FsqlFiltro;
  end;

var
  formFiltroCadastro: TformFiltroCadastro;

implementation

{$R *.dfm}

procedure TformFiltroCadastro.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TformFiltroCadastro.btnFiltrarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;
end.
