program SistemaGoldSeller;

uses
  Vcl.Forms,
  UCadastroUsuario in 'UCadastroUsuario.pas' {URegistro},
  UPrincipal in 'UPrincipal.pas' {UMain},
  TelaPosLogin in 'TelaPosLogin.pas' {PosLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TUMain, UMain);
  Application.CreateForm(TPosLogin, PosLogin);
  Application.Run;
end.
