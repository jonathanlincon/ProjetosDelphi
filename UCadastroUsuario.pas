unit UCadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.SqlExpr,
  Data.DBXMSSQL, Data.FMTBcd, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef;

type
  TURegistro = class(TForm)
    fisrtName: TLabel;
    EditFirstName: TEdit;
    BotaoOk: TButton;
    lastName: TLabel;
    EditLastName: TEdit;
    cpfUser: TLabel;
    emailUser: TLabel;
    password: TLabel;
    editCPF: TEdit;
    editEmail: TEdit;
    editPassword: TEdit;
    Label1: TLabel;
    imgCadastro: TImage;
    EditTelefone: TEdit;
    Telefone: TLabel;
    ConexaoBancoLocal: TFDConnection;
    ConsultaSql: TFDQuery;
    procedure BotaoOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Verifica(PValCpf : string);
  end;

var
  URegistro: TURegistro;

implementation

{$R *.dfm}

procedure TURegistro.BotaoOkClick(Sender: TObject);
begin
  Verifica(editCPF.Text);

  try
    ConsultaSql.Close;
    ConsultaSql.SQL.Clear;
    ConsultaSql.SQL.Add(' Insert into ClienteUsuario ');
    ConsultaSql.SQL.Add(' (Fname,Lname,Pass,CPF,Email,Telefone)');
    ConsultaSql.SQL.Add(' values ');
    ConsultaSql.SQL.Add(' ('+QuotedStr(EditFirstName.Text)+', ');   // QuotedStr converte adicionando aspas simples
    ConsultaSql.SQL.Add(' '+QuotedStr(EditLastName.Text)+', ');
    ConsultaSql.SQL.Add(' '+QuotedStr(editPassword.Text)+', ');
    ConsultaSql.SQL.Add(' '+QuotedStr(editCPF.Text)+', ');
    ConsultaSql.SQL.Add(' '+QuotedStr(editEmail.Text)+', ');
    ConsultaSql.SQL.Add(' '+QuotedStr(editTelefone.Text)+') ');
    ConsultaSql.ExecSQL;             // usar o exec em n�o-consultas
    //ConsultaSql.Open;              // usar o open para consultas
    ShowMessage('Cadastro Realizado Com Sucesso!');
  Except
  on E: Exception do
    //ConsultaSql.SQL.Add('Rollback');
  end;


end;

procedure TURegistro.FormShow(Sender: TObject);
begin
  ConexaoBancoLocal.Connected := True;
end;

procedure TURegistro.Verifica(PValCpf : string);
var
  NumCpf : String;
begin
  ConsultaSql.Close;
  ConsultaSql.SQL.Clear;
  ConsultaSql.SQL.Add(' select CPF from ClienteUsuario where CPF = '+QuotedStr(editCPF.Text)+'');
  //ConsultaSql.ExecSQL;             // usar o exec em n�o-consultas
  ConsultaSql.Open;

  NumCpf := ConsultaSql.FieldByName('CPF').AsString;

  if NumCpf <> '' then
    begin
      ShowMessage('Cpf j� cadastrado no sistema!');
      Abort;
    end;

end;

end.
