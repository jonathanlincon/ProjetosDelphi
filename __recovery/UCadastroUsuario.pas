unit UCadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.SqlExpr,
  Data.DBXMSSQL, Data.FMTBcd, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    fisrtName: TLabel;
    EditFirstName: TEdit;
    BotaoOk: TButton;
    lastName: TLabel;
    EditLastName: TEdit;
    SQLConnection1: TSQLConnection;
    SQLQuery1: TSQLQuery;
    cpfUser: TLabel;
    emailUser: TLabel;
    password: TLabel;
    editCPF: TEdit;
    editEmail: TEdit;
    editPassword: TEdit;
    Label1: TLabel;
    Image1: TImage;
    procedure BotaoOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BotaoOkClick(Sender: TObject);
begin
  ShowMessage('Você apertou o botão ok!');
end;

end.
