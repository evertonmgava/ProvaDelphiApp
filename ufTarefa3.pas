unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Datasnap.DBClient, Datasnap.Provider;

type
  TfTarefa3 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    Label2: TLabel;
    Button2: TButton;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1idProjeto: TIntegerField;
    ClientDataSet1nomeProjeto: TStringField;
    ClientDataSet1valor: TFloatField;
    procedure FormClose(Sender: TObject;var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    private
      { Private declarations }
      ClientDataSet : TClientDataSet;
      Datasource : TDataSource;
    public
      { Public declarations }
  end;

var
  fTarefa3: TfTarefa3;

implementation

{$R *.dfm}

procedure TfTarefa3.Button1Click(Sender: TObject);
var
  Valor : Double;
begin
  Valor := 0;
  ClientDataSet1.First;
  while not ClientDataSet1.Eof do begin
    Valor := Valor + ClientDataSet1valor.Value;
    ClientDataSet1.Next;
  end;
  Edit1.Text := FloatToStr(Valor);
end;

procedure TfTarefa3.Button2Click(Sender: TObject);
var
  Valor : Double;
  i : integer;
  valores: array [1 .. 10] of Double;
begin
  Valor := 0;
  ClientDataSet1.First;
  while not ClientDataSet1.Eof do begin
    valores[ClientDataSet1.RecNo - 1] := ClientDataSet1valor.Value;
    ClientDataSet1.Next;
  end;

  for i := 0 to 9 do begin
    if i + 1 < 10 then begin
      Valor := Valor + valores[i + 1] / valores[i];
    end;
  end;

  Edit2.Text := FormatFloat(',0.00', Valor);

end;

procedure TfTarefa3.FormClose(Sender: TObject;var Action: TCloseAction);
begin
  ClientDataSet.Free;
  Datasource.Free;

  FreeAndNil(fTarefa3);
end;

procedure TfTarefa3.FormShow(Sender: TObject);
var
  i : integer;
  Valor : Double;

begin

  ClientDataSet1.CreateDataSet;
  ClientDataSet1.Open;

  for i := 1 to 10 do begin
    ClientDataSet1.Insert;
    ClientDataSet1idProjeto.Value   := i;
    ClientDataSet1nomeProjeto.Value := 'Projeto ' + IntToStr(i);

    ClientDataSet1valor.Value := Random(100);
    while ClientDataSet1valor.Value = 0 do begin
      ClientDataSet1valor.Value := Random(100);
    end;
    ClientDataSet1.Post;
  end;

  ClientDataSet1.IndexFieldNames := 'idProjeto';

end;

end.
