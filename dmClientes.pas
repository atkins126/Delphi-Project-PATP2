unit dmClientes;

interface

uses
  System.SysUtils, System.Classes, dmCadastro, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr;

type
  TdtmClientes = class(TdtmCadastro)
    SQLQuery1idCliente: TIntegerField;
    SQLQuery1NomeCliente: TStringField;
    SQLQuery1dataNascimento: TDateField;
    SQLQuery1sexoCliente: TStringField;
    SQLQuery1enderecoCliente: TStringField;
    SQLQuery1Professor: TIntegerField;
    ClientDataSet1idCliente: TIntegerField;
    ClientDataSet1NomeCliente: TStringField;
    ClientDataSet1dataNascimento: TDateField;
    ClientDataSet1sexoCliente: TStringField;
    ClientDataSet1enderecoCliente: TStringField;
    ClientDataSet1Professor: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmClientes: TdtmClientes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
