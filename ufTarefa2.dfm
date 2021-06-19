object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  Caption = 'Tarefa 2'
  ClientHeight = 364
  ClientWidth = 534
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
    Left = 24
    Top = 40
    Width = 102
    Height = 13
    Caption = 'Tempo (Ms) Thread 1'
  end
  object Label2: TLabel
    Left = 280
    Top = 40
    Width = 102
    Height = 13
    Caption = 'Tempo (Ms) Thread 2'
  end
  object Label3: TLabel
    Left = 24
    Top = 109
    Width = 123
    Height = 13
    Caption = '                                         '
  end
  object Label4: TLabel
    Left = 280
    Top = 109
    Width = 123
    Height = 13
    Caption = '                                         '
  end
  object Button1: TButton
    Left = 24
    Top = 8
    Width = 377
    Height = 25
    Caption = 'Executar Threads'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 24
    Top = 59
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '1000'
  end
  object Edit2: TEdit
    Left = 280
    Top = 59
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '2000'
  end
  object ProgressBar1: TProgressBar
    Left = 24
    Top = 86
    Width = 121
    Height = 17
    DoubleBuffered = False
    ParentDoubleBuffered = False
    TabOrder = 3
  end
  object ProgressBar2: TProgressBar
    Left = 280
    Top = 86
    Width = 121
    Height = 17
    TabOrder = 4
  end
end
