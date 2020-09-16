unit frmManutPlanos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmManutCadastro, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TformManutPlanos = class(TformManutCadastro)
    Label1: TLabel;
    Label2: TLabel;
    DBEditNome: TDBEdit;
    DBEditParcelamento: TDBEdit;
    DBEditTempoContrato: TDBEdit;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formManutPlanos: TformManutPlanos;

implementation

{$R *.dfm}

uses frmPlanos;

end.
