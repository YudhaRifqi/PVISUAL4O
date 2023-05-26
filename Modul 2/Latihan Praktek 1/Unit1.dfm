object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 388
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 59
    Width = 53
    Height = 13
    Caption = 'INPUTAN 1'
  end
  object Label2: TLabel
    Left = 64
    Top = 86
    Width = 53
    Height = 13
    Caption = 'INPUTAN 2'
  end
  object Button1: TButton
    Left = 304
    Top = 56
    Width = 91
    Height = 50
    Caption = 'PROSES SEMUA'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 136
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 136
    Top = 83
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 64
    Top = 176
    Width = 331
    Height = 177
    Caption = 'NILAI PROSES'
    TabOrder = 3
    object Label3: TLabel
      Left = 9
      Top = 31
      Width = 73
      Height = 13
      Caption = 'HASIL TAMBAH'
    end
    object Label4: TLabel
      Left = 7
      Top = 57
      Width = 75
      Height = 13
      Caption = 'HASIH KURANG'
    end
    object Label5: TLabel
      Left = 28
      Top = 84
      Width = 54
      Height = 13
      Caption = 'HASIL KALI'
    end
    object Label6: TLabel
      Left = 26
      Top = 111
      Width = 56
      Height = 13
      Caption = 'HASIL BAGI'
    end
    object Edit3: TEdit
      Left = 88
      Top = 28
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 88
      Top = 54
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit5: TEdit
      Left = 88
      Top = 81
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Edit6: TEdit
      Left = 88
      Top = 108
      Width = 121
      Height = 21
      TabOrder = 3
    end
  end
  object Button2: TButton
    Left = 304
    Top = 198
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 304
    Top = 224
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 304
    Top = 251
    Width = 75
    Height = 25
    Caption = 'x'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 304
    Top = 278
    Width = 75
    Height = 25
    Caption = ':'
    TabOrder = 7
    OnClick = Button5Click
  end
end
