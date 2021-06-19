program ProvaDelphiApp;

uses
  Vcl.Forms,
  uProvaDelphiApp in 'uProvaDelphiApp.pas' {fProvaDelphiApp},
  ufTarefa3 in 'ufTarefa3.pas' {fTarefa3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfProvaDelphiApp, fProvaDelphiApp);
  Application.Run;
end.
