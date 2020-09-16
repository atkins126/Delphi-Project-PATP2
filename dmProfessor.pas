unit dmProfessor;

interface

uses
  System.SysUtils, System.Classes, dmCadastro, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TdtmProfessor = class(TdtmCadastro)
    SQLQuery1idProfessor: TIntegerField;
    SQLQuery1nomeProfessor: TStringField;
    SQLQuery1dataNascimento: TDateField;
    SQLQuery1sexoProfessor: TStringField;
    SQLQuery1enderecoProfessor: TStringField;
    ClientDataSet1idProfessor: TIntegerField;
    ClientDataSet1nomeProfessor: TStringField;
    ClientDataSet1dataNascimento: TDateField;
    ClientDataSet1sexoProfessor: TStringField;
    ClientDataSet1enderecoProfessor: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmProfessor: TdtmProfessor;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dmConexao;

{$R *.dfm}

end.
