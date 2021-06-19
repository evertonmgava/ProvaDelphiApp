unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfTarefa1 = class(TForm)
    MemoColunas: TMemo;
    MemoCondicoes: TMemo;
    MemoTabelas: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    MemoSQL: TMemo;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa1: TfTarefa1;

implementation

{$R *.dfm}

procedure TfTarefa1.Button1Click(Sender: TObject);
begin
 MemoSQL.Text := 'SELECT ' + MemoColunas.Text + ' FROM ' +  MemoTabelas.Text + ' WHERE ' + MemoCondicoes.Text;
end;

procedure TfTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(fTarefa1);
end;

end.
