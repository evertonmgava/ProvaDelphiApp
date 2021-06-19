unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, StrUtils, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TThreadProgresso = class(TThread)
    private
      FPgbProgresso : TProgressBar;
      FTempo : Integer;
      FLabel :  TLabel;
      procedure atualizarProgressBar;
      procedure avancarProgressBar;
    public
      constructor Create(CreateSuspended : boolean;pgbProgresso : TProgressBar;Tempo : Integer; lLabel : TLabel);
    protected
      procedure Execute;override;
  end;

type
  TfTarefa2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormClose(Sender: TObject;var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    private
      { Private declarations }

    public
      { Public declarations }
  end;

var
  fTarefa2: TfTarefa2;

implementation

{$R *.dfm}

constructor TThreadProgresso.Create(CreateSuspended : boolean;pgbProgresso: TProgressBar;Tempo : Integer; lLabel : TLabel);
begin
  Self.FPgbProgresso := pgbProgresso;
  Self.FTempo        := Tempo;
  Self.FLabel := lLabel;
  inherited Create(CreateSuspended);
end;

procedure TThreadProgresso.avancarProgressBar;
begin
  Self.FPgbProgresso.StepBy(1);
end;

procedure TThreadProgresso.Execute;
begin
  atualizarProgressBar();
end;

procedure TThreadProgresso.atualizarProgressBar;
var
  I: Integer;
begin
  Self.FPgbProgresso.Position := 0;
  for I := 0 to Self.FPgbProgresso.Max - 1 do begin
    if Self.Terminated then
      abort();
    Synchronize(Self.avancarProgressBar);
    Self.FLabel.Caption := IntToStr(I+1);
    Sleep(Self.FTempo);
  end;
end;

procedure TfTarefa2.Button1Click(Sender: TObject);
var
  thread : TThreadProgresso;
begin
  thread := TThreadProgresso.Create(false, ProgressBar1, StrToInt(IfThen(Trim(Edit1.Text) = '', '1000', Edit1.Text)), Label3);
  thread := TThreadProgresso.Create(false, ProgressBar2, StrToInt(IfThen(Trim(Edit2.Text) = '', '1000', Edit2.Text)), Label4);
end;

procedure TfTarefa2.FormClose(Sender: TObject;var Action: TCloseAction);
begin
  FreeAndNil(fTarefa2);
end;

end.
