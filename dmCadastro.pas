unit dmCadastro;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, Vcl.Forms, Vcl.Dialogs,
   Data.DBXCommon, System.IniFiles, dmConexao, System.UITypes;

  const
    CANCELE_OU_GRAVE = 'Cancele ou grave o registro atual.';
    EM_EDICAO = 'Registro em edição.';
    NAO_ESTA_EM_EDICAO = 'Registro não está em edição.';
    ERRO_OPERACAO = 'Ocorreu um erro ao processar essa operação:';

type
   TdtmCadastro = class(TDataModule)
    SQLQuery1: TSQLQuery;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
    procedure ClientDataSet1AfterDelete(DataSet: TDataSet);
    procedure ClientDataSet1ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure ClientDataSet1NewRecord(DataSet: TDataSet);
    procedure ClientDataSet1BeforeEdit(DataSet: TDataSet);
    procedure ClientDataSet1BeforeDelete(DataSet: TDataSet);
    procedure ClientDataSet1BeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    strSQL: string;
    FDataModuleConexao: TdtmConexao;
    procedure OpenTables;
    procedure setDataModuleConexao(const Value: TdtmConexao);

  public
    { Public declarations }
    function onEdicao: boolean;
    function tabelaVazia: boolean;
    function inicioDados: boolean;
    function fimDados: boolean;
    function sqlInicial: string;

    // Registros
    procedure novoRegistro;
    procedure gravarRegistro;
    procedure excluirRegistro;
    procedure cancelarEdicao;
    // Atualização
    procedure atualizarRegistros;
    // Ponteiro
    procedure primeiroRegistro;
    procedure registroAnterior;
    procedure proximoRegistro;
    procedure ultimoRegistro;
    procedure filtroSQL(sqlIni: boolean; stringSQL: string);

    property DataModuleConexao: TdtmConexao read FDataModuleConexao write setDataModuleConexao;

  end;

var
  dtmCadastro: TdtmCadastro;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

{ TDataModule1 }

procedure TdtmCadastro.atualizarRegistros;
begin
  if onEdicao then
  begin
    MessageDlg(CANCELE_OU_GRAVE, mtInformation, [mbOK], 0, mbOK);
    exit;
  end;
  ClientDataSet1.Refresh;
end;

procedure TdtmCadastro.cancelarEdicao;
begin
  if not onEdicao then
  begin
   MessageDlg(NAO_ESTA_EM_EDICAO, mtInformation, [mbOK], 0, mbOK);
   exit;
  end;
  ClientDataSet1.Cancel;
end;

procedure TdtmCadastro.excluirRegistro;
begin
  if onEdicao then
  begin
    MessageDlg(CANCELE_OU_GRAVE, mtInformation, [mbOK], 0, mbOK);
    exit;
  end;
  ClientDataSet1.Delete;
end;

function TdtmCadastro.fimDados: boolean;
begin
  result := ClientDataSet1.Eof;
end;

procedure TdtmCadastro.gravarRegistro;
begin
  if not onEdicao then
  begin
    MessageDlg(NAO_ESTA_EM_EDICAO, mtInformation, [mbOK], 0, mbOK);
    exit;
  end;
  ClientDataSet1.Post;
end;

function TdtmCadastro.inicioDados: boolean;
begin
  result := ClientDataSet1.Bof
end;

procedure TdtmCadastro.novoRegistro;
begin
  if onEdicao then
  begin
    MessageDlg(EM_EDICAO, mtInformation, [mbOK], 0, mbOK);
    exit;
  end;
  ClientDataSet1.Append;
end;

function TdtmCadastro.onEdicao: boolean;
begin
  result := dtmCadastro.ClientDataSet1.State in dsEditModes;
end;

procedure TdtmCadastro.OpenTables;
begin
  ClientDataSet1.Close;
  ClientDataSet1.Open;
end;

procedure TdtmCadastro.primeiroRegistro;
begin
  if onEdicao then
  begin
   MessageDlg(CANCELE_OU_GRAVE, mtInformation, [mbOK], 0, mbOK);
   exit;
  end;
  ClientDataSet1.First;
end;

procedure TdtmCadastro.proximoRegistro;
begin
  if onEdicao then
  begin
    MessageDlg(CANCELE_OU_GRAVE, mtInformation, [mbOK], 0, mbOK);
    exit;
  end;
  ClientDataSet1.Next;
end;

procedure TdtmCadastro.registroAnterior;
begin
  if onEdicao then
  begin
    MessageDlg(CANCELE_OU_GRAVE, mtInformation, [mbOK], 0, mbOK);
    exit;
  end;
  ClientDataSet1.Prior;
end;

procedure TdtmCadastro.setDataModuleConexao(const Value: TdtmConexao);
begin
  FDataModuleConexao := Value;
  OpenTables;
end;

function TdtmCadastro.tabelaVazia: boolean;
begin
  result := ClientDataSet1.IsEmpty;
end;

procedure TdtmCadastro.ultimoRegistro;
begin
  if onEdicao then
  begin
    MessageDlg(CANCELE_OU_GRAVE, mtInformation, [mbOK], 0, mbOK);
    exit;
  end;
  ClientDataSet1.Last;
end;

procedure TdtmCadastro.ClientDataSet1AfterDelete(DataSet: TDataSet);
begin
  ClientDataSet1.ApplyUpdates(-1);
end;

procedure TdtmCadastro.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
  ClientDataSet1.ApplyUpdates(-1);
end;

procedure TdtmCadastro.ClientDataSet1BeforeDelete(DataSet: TDataSet);
begin
  if not FDataModuleConexao.transacaoAtiva then
    raise exception.create(INICIE_TRANSACAO);
end;

procedure TdtmCadastro.ClientDataSet1BeforeEdit(DataSet: TDataSet);
begin
  if not FDataModuleConexao.transacaoAtiva then
    raise exception.create(INICIE_TRANSACAO);
end;

procedure TdtmCadastro.ClientDataSet1BeforePost(DataSet: TDataSet);
begin
  if not FDataModuleConexao.transacaoAtiva then
    raise exception.create(INICIE_TRANSACAO);
end;

procedure TdtmCadastro.ClientDataSet1NewRecord(DataSet: TDataSet);
begin
if not FDataModuleConexao.transacaoAtiva then
    raise exception.create(INICIE_TRANSACAO);
end;

procedure TdtmCadastro.ClientDataSet1ReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  MessageDlg(ERRO_OPERACAO + #13#10 + e.Message, mtError, [mbOK], 0, mbOK);
  Action := raCancel;
end;

procedure TdtmCadastro.DataModuleCreate(Sender: TObject);
begin
  strSQL := SQLQuery1.SQL.Text;
end;

procedure TdtmCadastro.filtroSQL(sqlIni: Boolean; stringSQL: string);
begin
  ClientDataSet1.Close;
  SQLQuery1.SQL.Clear;
  if sqlIni then
    SQLQuery1.SQL.Add(sqlInicial());
  SQLQuery1.SQL.Add(stringSQL);
  ClientDataSet1.Open;
end;

function TdtmCadastro.sqlInicial;
begin
  result := strSQL;
end;

end.
