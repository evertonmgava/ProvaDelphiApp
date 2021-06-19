unit uspQuery;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  spComponentes = class(TFDQuery)
  private
    { Private declarations }
    spCondicoes: TStringList;
    spColunas: TStringList;
    spTabelas: TStringList;
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [spComponentes]);
end;

end.
