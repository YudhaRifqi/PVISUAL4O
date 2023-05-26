object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Kalkulator'
  ClientHeight = 264
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
    Left = 120
    Top = 75
    Width = 28
    Height = 13
    Caption = 'Nilai 1'
  end
  object Label2: TLabel
    Left = 120
    Top = 120
    Width = 28
    Height = 13
    Caption = 'Nilai 2'
  end
  object Label3: TLabel
    Left = 126
    Top = 168
    Width = 22
    Height = 13
    Caption = 'Hasil'
  end
  object Edit1: TEdit
    Left = 176
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 176
    Top = 117
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 176
    Top = 165
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 344
    Top = 75
    Width = 75
    Height = 41
    Caption = 'TAMBAH'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 344
    Top = 122
    Width = 75
    Height = 41
    Caption = 'SELESAI'
    TabOrder = 4
    OnClick = Button2Click
  end
end
