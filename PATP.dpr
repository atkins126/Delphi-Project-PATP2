program PATP;

uses
  Vcl.Forms,
  dmCadastro in 'dmCadastro.pas' {dtmCadastro: TDataModule},
  frmCadastro in 'frmCadastro.pas' {formCadastro},
  dmConexao in 'dmConexao.pas' {dtmConexao: TDataModule},
  formMenu in 'formMenu.pas' {frmMenu},
  dmProfessor in 'dmProfessor.pas' {dtmProfessor: TDataModule},
  frmProfessor in 'frmProfessor.pas' {formProfessor},
  dmServicos in 'dmServicos.pas' {dtmServicos: TDataModule},
  frmServicos in 'frmServicos.pas' {formServicos},
  dmPlanos in 'dmPlanos.pas' {dtmPlanos: TDataModule},
  frmPlanos in 'frmPlanos.pas' {formPlanos},
  dmClientes in 'dmClientes.pas' {dtmClientes: TDataModule},
  frmClientes in 'frmClientes.pas' {formClientes},
  frmFiltroCadastro in 'frmFiltroCadastro.pas' {formFiltroCadastro},
  frmFiltroProfessor in 'frmFiltroProfessor.pas' {formFiltroProfessor},
  frmFiltroClientes in 'frmFiltroClientes.pas' {formFiltroClientes},
  frmManutCadastro in 'frmManutCadastro.pas' {formManutCadastro},
  frmManutProfessores in 'frmManutProfessores.pas' {formManutProfessores},
  frmManutServico in 'frmManutServico.pas' {formManutServico},
  frmManutClientes in 'frmManutClientes.pas' {formManutClientes},
  frmManutPlanos in 'frmManutPlanos.pas' {formManutPlanos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TdtmConexao, dtmConexao);
  Application.CreateForm(TdtmCadastro, dtmCadastro);
  Application.CreateForm(TformCadastro, formCadastro);
  Application.CreateForm(TformFiltroCadastro, formFiltroCadastro);
  Application.CreateForm(TformManutCadastro, formManutCadastro);
  Application.Run;
end.
