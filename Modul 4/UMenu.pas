unit UMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList, Vcl.Menus;

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    FILe1: TMenuItem;
    MasterData1: TMenuItem;
    Pengaturan1: TMenuItem;
    Laporan1: TMenuItem;
    Login1: TMenuItem;
    Logout1: TMenuItem;
    DataJadwal1: TMenuItem;
    ViewJadwal1: TMenuItem;
    LaporanDataJadwal1: TMenuItem;
    DetailJadwalLaporan1: TMenuItem;
    ImageList1: TImageList;
    procedure DataJadwal1Click(Sender: TObject);
    procedure ViewJadwal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Jadwal, UJadwal;

procedure TForm3.DataJadwal1Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm3.ViewJadwal1Click(Sender: TObject);
begin
Form1.ShowModal;
end;

end.
