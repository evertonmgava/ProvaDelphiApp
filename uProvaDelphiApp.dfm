object fProvaDelphiApp: TfProvaDelphiApp
  Left = 0
  Top = 0
  Caption = 'ProvaDelphiApp'
  ClientHeight = 405
  ClientWidth = 815
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MenuTarefas
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object ActionList: TActionList
    Left = 648
    Top = 16
    object ActTarefa1: TAction
      Caption = 'Tarefa 1'
      OnExecute = ActTarefa1Execute
    end
    object ActTarefa2: TAction
      Caption = 'Tarefa 2'
      OnExecute = ActTarefa2Execute
    end
    object ActTarefa3: TAction
      Caption = 'Tarefa 3'
      OnExecute = ActTarefa3Execute
    end
  end
  object MenuTarefas: TMainMenu
    Left = 648
    Top = 80
    object arefas1: TMenuItem
      Caption = 'Tarefas'
      object arefa11: TMenuItem
        Action = ActTarefa1
      end
      object arefa21: TMenuItem
        Action = ActTarefa2
      end
      object arefa31: TMenuItem
        Action = ActTarefa3
      end
    end
  end
end
