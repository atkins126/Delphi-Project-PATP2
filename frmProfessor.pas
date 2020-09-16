unit frmProfessor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmCadastro, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TformProfessor = class(TformCadastro)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formProfessor: TformProfessor;

implementation

{$R *.dfm}

uses dmProfessor;

end.
