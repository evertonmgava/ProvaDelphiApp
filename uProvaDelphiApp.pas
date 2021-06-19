unit uProvaDelphiApp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.Actions, Vcl.ActnList;

type
  TfProvaDelphiApp = class(TForm)
    ActionList: TActionList;
    ActTarefa1: TAction;
    ActTarefa2: TAction;
    ActTarefa3: TAction;
    MenuTarefas: TMainMenu;
    arefas1: TMenuItem;
    arefa11: TMenuItem;
    arefa21: TMenuItem;
    arefa31: TMenuItem;
    procedure ActTarefa1Execute(Sender: TObject);
    procedure CriarFormulario(T: TFormClass;F: TForm);
    procedure ActTarefa2Execute(Sender: TObject);
    procedure ActTarefa3Execute(Sender: TObject);
    private
      { Private declarations }
    public
      { Public declarations }
  end;

var
  fProvaDelphiApp: TfProvaDelphiApp;

implementation

uses
  ufTarefa1, ufTarefa2, ufTarefa3;
{$R *.dfm}

procedure TfProvaDelphiApp.ActTarefa1Execute(Sender: TObject);
begin
  CriarFormulario(TfTarefa1, fTarefa1);
end;

procedure TfProvaDelphiApp.ActTarefa2Execute(Sender: TObject);
begin
  CriarFormulario(TfTarefa2, fTarefa2);
end;

procedure TfProvaDelphiApp.ActTarefa3Execute(Sender: TObject);
begin
  CriarFormulario(TfTarefa3, fTarefa3);
end;

procedure TfProvaDelphiApp.CriarFormulario(T:TFormClass;F:TForm);
begin
  Application.CreateForm(T, F);
  F.Show;
end;

end.
