unit dmServicos;

interface

uses
  System.SysUtils, System.Classes, dmCadastro, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TdtmServicos = class(TdtmCadastro)
    SQLQuery1idServico: TIntegerField;
    SQLQuery1nomeServico: TStringField;
    SQLQuery1precoServico: TFMTBCDField;
    ClientDataSet1idServico: TIntegerField;
    ClientDataSet1nomeServico: TStringField;
    ClientDataSet1precoServico: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmServicos: TdtmServicos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
