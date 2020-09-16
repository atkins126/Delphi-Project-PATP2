unit dmPlanos;

interface

uses
  System.SysUtils, System.Classes, dmCadastro, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TdtmPlanos = class(TdtmCadastro)
    ClientDataSet1idPlano: TIntegerField;
    ClientDataSet1nomePlano: TStringField;
    ClientDataSet1tempoContrato: TIntegerField;
    ClientDataSet1parcelamentoContrato: TIntegerField;
    SQLQuery1idPlano: TIntegerField;
    SQLQuery1nomePlano: TStringField;
    SQLQuery1tempoContrato: TIntegerField;
    SQLQuery1parcelamentoContrato: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmPlanos: TdtmPlanos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
