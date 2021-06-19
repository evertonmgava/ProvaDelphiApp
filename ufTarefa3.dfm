object fTarefa3: TfTarefa3
  Left = 0
  Top = 0
  Caption = 'Tarefa 3'
  ClientHeight = 384
  ClientWidth = 618
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 618
    Height = 384
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 160
    ExplicitTop = 16
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 464
      Top = 243
      Width = 40
      Height = 13
      Caption = 'Total R$'
    end
    object Label2: TLabel
      Left = 464
      Top = 283
      Width = 85
      Height = 13
      Caption = 'Total  Divis'#245'es R$'
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 8
      Width = 577
      Height = 233
      DataSource = DataSource1
      Enabled = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'idProjeto'
          Title.Caption = 'ID Projeto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomeProjeto'
          Title.Caption = 'Nome Projeto'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor'
          Title.Caption = 'Valor'
          Width = 70
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 464
      Top = 260
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Button1: TButton
      Left = 383
      Top = 258
      Width = 75
      Height = 25
      Caption = 'Obter Total'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 464
      Top = 300
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Button2: TButton
      Left = 344
      Top = 298
      Width = 114
      Height = 25
      Caption = 'Obter Total Divis'#245'es'
      TabOrder = 4
      OnClick = Button2Click
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 200
    Top = 264
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 88
    Top = 264
    object ClientDataSet1idProjeto: TIntegerField
      FieldName = 'idProjeto'
    end
    object ClientDataSet1nomeProjeto: TStringField
      FieldName = 'nomeProjeto'
    end
    object ClientDataSet1valor: TFloatField
      FieldName = 'valor'
      DisplayFormat = ',0.00'
    end
  end
end
