object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 541
  ClientWidth = 766
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 631
    Top = 16
    Width = 113
    Height = 25
    Caption = 'TAMPILKAN GRAFIK'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Chart1: TChart
    Left = 48
    Top = 283
    Width = 633
    Height = 250
    Title.Text.Strings = (
      'TChart')
    View3D = False
    TabOrder = 1
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TBarSeries
      ColorEachPoint = True
      SeriesColor = clRed
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 80
    Width = 750
    Height = 185
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 320
    Top = 16
    Width = 131
    Height = 25
    Caption = 'TAMBAH DATA BARU'
    TabOrder = 3
  end
  object Button3: TButton
    Left = 457
    Top = 16
    Width = 81
    Height = 25
    Caption = 'LOAD DATA'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 544
    Top = 16
    Width = 81
    Height = 25
    Caption = 'PRINT'
    TabOrder = 5
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\KULIAH\SEMESTER4' +
      '\Pemprograman Visual 2\Modul 3\basis data\latihan.mdb;Persist Se' +
      'curity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 64
    Top = 16
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from jadwal_table')
    Left = 168
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 272
    Top = 16
  end
end
