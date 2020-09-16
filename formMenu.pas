unit formMenu;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
 TfrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro: TMenuItem;
    Professor: TMenuItem;
    Servicos: TMenuItem;
    Planos: TMenuItem;
    Clientes: TMenuItem;
    Relatorios: TMenuItem;
    Fechar: TMenuItem;
    procedure FecharClick(Sender: TObject);
    procedure ClientesClick(Sender: TObject);
    procedure ProfessorClick(Sender: TObject);
    procedure ServicosClick(Sender: TObject);
    procedure PlanosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

{ TForm1 }

uses dmCadastro, frmCadastro, dmConexao, frmClientes, dmClientes, dmPlanos,
  dmProfessor, dmServicos, frmPlanos, frmProfessor, frmServicos,
  frmFiltroClientes, frmFiltroProfessor, frmManutProfessores, frmManutServico,
  frmManutClientes, frmManutPlanos;

procedure TfrmMenu.ClientesClick(Sender: TObject);
begin
  dtmClientes := TdtmClientes.Create(self);
  try
    dtmClientes.DataModuleConexao := dtmConexao;
    formClientes := TformClientes.Create(self);
    try
      formClientes.DataModuleCadastro := dtmClientes;
      formClientes.FormFiltroCadastro := TFormFiltroClientes.create(self);
      formClientes.FormManutCadastro := TformManutClientes.create(self);
      formClientes.ShowModal;
    finally
      FreeAndNil(formClientes);
    end;
  finally
    FreeAndNil(dtmClientes);
  end;
end;

procedure TfrmMenu.FecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMenu.PlanosClick(Sender: TObject);
begin
  dtmPlanos := TdtmPlanos.Create(self);
  try
    dtmPlanos.DataModuleConexao := dtmConexao;
    formPlanos := TformPlanos.Create(self);
    try
      formPlanos.DataModuleCadastro := dtmPlanos;
      formPlanos.FormManutCadastro := TformManutPlanos.create(self);
      formPlanos.ShowModal;
    finally
      FreeAndNil(formPlanos);
    end;
  finally
    FreeAndNil(dtmPlanos);
  end;
end;

procedure TfrmMenu.ProfessorClick(Sender: TObject);
begin
  dtmProfessor := TdtmProfessor.Create(self);
  try
    dtmProfessor.DataModuleConexao := dtmConexao;
    formProfessor := TformProfessor.Create(self);
    try
      formProfessor.DataModuleCadastro := dtmProfessor;
      formProfessor.FormFiltroCadastro := TformFiltroProfessor.create(self);
      formProfessor.FormManutCadastro := TformManutProfessores.create(self);
      formProfessor.ShowModal;
    finally
      FreeAndNil(formProfessor);
    end;
  finally
    FreeAndNil(dtmProfessor);
  end;
end;

procedure TfrmMenu.ServicosClick(Sender: TObject);
begin
  dtmServicos := TdtmServicos.Create(self);
  try
    dtmServicos.DataModuleConexao := dtmConexao;
    formServicos := TformServicos.Create(self);
    try
      formServicos.DataModuleCadastro := dtmServicos;
      formServicos.FormManutCadastro :=   TformManutServico.create(self);
      formServicos.ShowModal;
    finally
      FreeAndNil(formServicos);
    end;
  finally
    FreeAndNil(dtmServicos);
  end;
end;

end.
