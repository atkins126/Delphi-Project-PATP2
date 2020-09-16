unit frmCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Data.DBXMySQL, Data.FMTBcd, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.Provider, Datasnap.DBClient, Data.SqlExpr, Data.DBXCommon,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, dmCadastro,
  System.UITypes, frmFiltroCadastro, frmManutCadastro, dmConexao;

type
  TformCadastro = class(TForm)
    btnNovo: TButton;
    btnExcluir: TButton;
    btnCancelar: TButton;
    btnRefresh: TButton;
    btnFechar: TButton;
    Panel3: TPanel;
    Label3: TLabel;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel4: TPanel;
    btnPrimeiro: TButton;
    btnAnterior: TButton;
    btnProximo: TButton;
    btnUltimo: TButton;
    DBGrid1: TDBGrid;
    btnStart: TButton;
    btnRollback: TButton;
    btnCommit: TButton;
    Panel2: TPanel;
    btnPesquisar: TButton;
    btnEditar: TButton;
    DataSource1: TDataSource;
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnCommitClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnRollbackClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DataSource1StateChange(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);

  private
    { Private declarations }
    FDataModuleCadastro: TdtmCadastro;
    FFormFiltroCadastro: TformFiltroCadastro;
    FFormManutCadastro: tformManutCadastro;
    procedure manutCadastroSummon;
  public
    { Public declarations }
    property DataModuleCadastro: TdtmCadastro read FDataModuleCadastro write FDataModuleCadastro;
    property FormFiltroCadastro: TformFiltroCadastro read FFormFiltroCadastro write FFormFiltroCadastro;
    property FormManutCadastro: TformManutCadastro read FFormManutCadastro write FFormManutCadastro;
  end;

var
  formCadastro: TformCadastro;

implementation

{$R *.dfm}




procedure TformCadastro.manutCadastroSummon;
var
  mr: integer;
begin
  mr := FFormManutCadastro.ShowModal;
  if FDataModuleCadastro.onEdicao then
  begin
    if mr = mrOk then
      FDataModuleCadastro.gravarRegistro
    else
      FDataModuleCadastro.cancelarEdicao;
  end;
end;

procedure TformCadastro.btnAnteriorClick(Sender: TObject);
begin
  FDataModuleCadastro.registroAnterior;
end;

procedure TformCadastro.btnCancelarClick(Sender: TObject);
begin
  FDataModuleCadastro.cancelarEdicao;
end;

procedure TformCadastro.btnCommitClick(Sender: TObject);
begin
  FDataModuleCadastro.DataModuleConexao.gravarTransacao;
  DataSource1StateChange(Sender);
  FDataModuleCadastro.atualizarRegistros;
end;

procedure TformCadastro.btnEditarClick(Sender: TObject);
begin
  if not FDataModuleCadastro.DataModuleConexao.transacaoAtiva then
  begin
    MessageDlg(INICIE_TRANSACAO, mtInformation, [mbOK], 0, mbOK);
    exit;
  end;
  manutCadastroSummon;
end;

procedure TformCadastro.btnExcluirClick(Sender: TObject);
begin
  FDataModuleCadastro.excluirRegistro;
end;

procedure TformCadastro.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TformCadastro.btnGravarClick(Sender: TObject);
begin
   FDataModuleCadastro.gravarRegistro;
end;

procedure TformCadastro.btnNovoClick(Sender: TObject);
begin
  FDataModuleCadastro.novoRegistro;
  manutCadastroSummon;
end;

procedure TformCadastro.btnPesquisarClick(Sender: TObject);
begin
    if FormFiltroCadastro.ShowModal = mrOk then
  begin
    DataModuleCadastro.filtroSQL(TRUE, FormFiltroCadastro.sqlFiltro);
  end;
end;

procedure TformCadastro.btnPrimeiroClick(Sender: TObject);
begin
  FDataModuleCadastro.primeiroRegistro;
end;

procedure TformCadastro.btnProximoClick(Sender: TObject);
begin
  FDataModuleCadastro.proximoRegistro;
end;

procedure TformCadastro.btnRefreshClick(Sender: TObject);
begin
 FDataModuleCadastro.atualizarRegistros;
end;

procedure TformCadastro.btnRollbackClick(Sender: TObject);
begin
  FDataModuleCadastro.DataModuleConexao.cancelarTransacao;
  DataSource1StateChange(Sender);
  FDataModuleCadastro.atualizarRegistros;
end;

procedure TformCadastro.btnStartClick(Sender: TObject);
begin
  FDataModuleCadastro.DataModuleConexao.iniciarTransacao;
  DataSource1StateChange(Sender);
end;

procedure TformCadastro.btnUltimoClick(Sender: TObject);
begin
  FDataModuleCadastro.ultimoRegistro;
end;

procedure TformCadastro.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  DataSource1StateChange(Sender);
end;

procedure TformCadastro.DataSource1StateChange(Sender: TObject);
begin
  with dtmCadastro do
  begin
    btnNovo.Enabled := not onEdicao;
    btnExcluir.Enabled := not onEdicao;
    btnCancelar.Enabled := onEdicao;

    btnStart.Enabled := not DataModuleConexao.transacaoAtiva;
    btnRollback.Enabled := DataModuleConexao.transacaoAtiva;
    btnCommit.Enabled := DataModuleConexao.transacaoAtiva;

    btnRefresh.Enabled := not onEdicao;
    btnFechar.Enabled := not onEdicao;

    btnPrimeiro.Enabled := not onEdicao and not tabelaVazia and not inicioDados;
    btnAnterior.Enabled := not onEdicao and not tabelaVazia and not inicioDados;
    btnProximo.Enabled := not onEdicao and not tabelaVazia and not fimDados;
    btnUltimo.Enabled := not onEdicao and not tabelaVazia and not fimDados;
  end;
end;

end.
