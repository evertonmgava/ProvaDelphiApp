object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  Caption = 'Tarefa 1'
  ClientHeight = 416
  ClientWidth = 716
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 21
    Width = 38
    Height = 13
    Caption = 'Colunas'
  end
  object Label2: TLabel
    Left = 207
    Top = 21
    Width = 37
    Height = 13
    Caption = 'Tabelas'
  end
  object Label3: TLabel
    Left = 408
    Top = 21
    Width = 49
    Height = 13
    Caption = 'Condi'#231#245'es'
  end
  object Label4: TLabel
    Left = 16
    Top = 144
    Width = 57
    Height = 13
    Caption = 'SQL Gerado'
  end
  object MemoColunas: TMemo
    Left = 8
    Top = 40
    Width = 185
    Height = 89
    TabOrder = 0
  end
  object MemoCondicoes: TMemo
    Left = 408
    Top = 40
    Width = 185
    Height = 89
    TabOrder = 2
  end
  object MemoTabelas: TMemo
    Left = 207
    Top = 40
    Width = 185
    Height = 89
    TabOrder = 1
  end
  object MemoSQL: TMemo
    Left = 8
    Top = 163
    Width = 585
    Height = 89
    TabOrder = 3
  end
  object Button1: TButton
    Left = 607
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Gerar SQL'
    TabOrder = 4
    OnClick = Button1Click
  end
end
