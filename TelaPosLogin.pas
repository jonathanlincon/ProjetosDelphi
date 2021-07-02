unit TelaPosLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TPosLogin = class(TForm)
    LabelBemVindo: TLabel;
    DofusRetro: TPanel;
    Dofus: TPanel;
    Ffxiv: TPanel;
    Tibia: TPanel;
    BlackDesert: TPanel;
    Tera: TPanel;
    Elsword: TPanel;
    Lunia: TPanel;
    ImagemDofusRetroServicos: TImage;
    ImagemDofusServicos: TImage;
    ImagemFfxivServicos: TImage;
    ImageTibiaServicos: TImage;
    ImagemBlackDesertServicos: TImage;
    ImagemTeraServicos: TImage;
    ImagemElswordServicos: TImage;
    ImagemLuniaServicos: TImage;
    PosLoginLabel2: TLabel;
    EntrarDofusRetro: TButton;
    EntrarDofus: TButton;
    EntrarFfxiv: TButton;
    EntrarTibia: TButton;
    EntrarBlackDesert: TButton;
    EntrarTera: TButton;
    EntrarElsword: TButton;
    EntrarLunia: TButton;
    procedure EntrarDofusRetroClick(Sender: TObject);
    procedure EntrarDofusClick(Sender: TObject);
    procedure EntrarFfxivClick(Sender: TObject);
    procedure EntrarTibiaClick(Sender: TObject);
    procedure EntrarBlackDesertClick(Sender: TObject);
    procedure EntrarTeraClick(Sender: TObject);
    procedure EntrarElswordClick(Sender: TObject);
    procedure EntrarLuniaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PosLogin: TPosLogin;

implementation

{$R *.dfm}



procedure TPosLogin.EntrarBlackDesertClick(Sender: TObject);
begin
  ShowMessage('Sem servi�os cadastrados no momento!');
end;

procedure TPosLogin.EntrarDofusClick(Sender: TObject);
begin
  ShowMessage('Sem servi�os cadastrados no momento!');
end;

procedure TPosLogin.EntrarDofusRetroClick(Sender: TObject);
begin
  ShowMessage('Sem servi�os cadastrados no momento!');
end;

procedure TPosLogin.EntrarElswordClick(Sender: TObject);
begin
  ShowMessage('Sem servi�os cadastrados no momento!');
end;

procedure TPosLogin.EntrarFfxivClick(Sender: TObject);
begin
  ShowMessage('Sem servi�os cadastrados no momento!');
end;

procedure TPosLogin.EntrarLuniaClick(Sender: TObject);
begin
  ShowMessage('Sem servi�os cadastrados no momento!');
end;

procedure TPosLogin.EntrarTeraClick(Sender: TObject);
begin
  ShowMessage('Sem servi�os cadastrados no momento!');
end;

procedure TPosLogin.EntrarTibiaClick(Sender: TObject);
begin
  ShowMessage('Sem servi�os cadastrados no momento!');
end;

end.
