unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UCadastroUsuario,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls,  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, TelaPosLogin;

type
  TUMain = class(TForm)
    Cadastro: TButton;
    Label1: TLabel;
    Label2: TLabel;
    EditLogin: TEdit;
    EditSenha: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Dofus1: TImage;
    BlackDesert: TImage;
    Dofus2: TImage;
    Image3: TImage;
    Fundo: TImage;
    Image2: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image9: TImage;
    Image1: TImage;
    ConexaoBancoLocal: TFDConnection;
    ConsultaSql: TFDQuery;
    procedure CadastroClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UMain: TUMain;

implementation

{$R *.dfm}




procedure TUMain.Button1Click(Sender: TObject);
var VEmail : String;
var VSenha : String;
begin

    ConsultaSql.Close;
    ConsultaSql.SQL.Clear;
    ConsultaSql.SQL.Add(' select Email,Pass from ClienteUsuario where Email = '+QuotedStr(EditLogin.Text)+' and Pass = '+QuotedStr(EditSenha.Text)+'');

    //ConsultaSql.ExecSQL;             // usar o exec em n�o-consultas
    ConsultaSql.Open;

    VEmail := ConsultaSql.FieldByName('Email').AsString;

    //ConsultaSql.Close;
    //ConsultaSql.SQL.Clear;
    //ConsultaSql.SQL.Add(' select Pass from ClienteUsuario where Pass = '+QuotedStr(EditSenha.Text)+'');
    //ConsultaSql.Open;

    VSenha := ConsultaSql.FieldByName('Pass').AsString;

    if VEmail = EditLogin.Text then
      begin
      if VSenha = EditSenha.Text then
        begin
         PosLogin := TPosLogin.Create(Self);
         PosLogin.ShowModal;
         FreeAndNil (PosLogin);
         Close;
       end;
      end;
    if VEmail <> EditLogin.Text then
      begin
        ShowMessage('Login ou senha incorreto');
        Abort;
      end;
    if VEmail = EditLogin.Text then
      begin
        if VSenha <> EditSenha.Text then
          begin
             ShowMessage('Login ou senha incorreto');
             Abort;
          end;
      end;

    end;



procedure TUMain.CadastroClick(Sender: TObject);
begin
  URegistro := TURegistro.Create(Self);
  URegistro.ShowModal;
  //URegistro.Free;       // libera apenas de memoria
  FreeAndNil(URegistro);  // libera de memoria e destroi o objeto

end;





end.
