unit Jadwal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls,
  VCLTee.TeeProcs, VCLTee.Chart, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Chart1: TChart;
    Series1: TBarSeries;
    ADOQuery2: TADOQuery;
    Button3: TButton;
    Button4: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UJadwal;

procedure TForm1.BitBtn1Click(Sender: TObject);
var i : integer;
begin
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('select count(No) as jumlah_kelas,sum(kehadiran_total) as total_siswa, kelas as nama_kelas from jadwal_table group by kelas');
ADOQuery2.Open;
Chart1.Series[0].Clear;

for i := 1 to ADOQuery2.RecordCount do
begin
  Chart1.Series[0].Add(StrToInt(ADOQuery2.FieldByName('total_siswa').AsString), ADOQuery2.FieldByName('nama_kelas').AsString);
  ADOQuery2.Next;
end;
end;


procedure TForm1.BitBtn2Click(Sender: TObject);
begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from jadwal_table');
ADOQuery1.Open;
DBGrid1.Columns[0].Width := 20;
DBGrid1.Columns[1].Width := 100;
DBGrid1.Columns[2].Width := 100;
DBGrid1.Columns[3].Width := 90;
DBGrid1.Columns[4].Width := 60;
DBGrid1.Columns[5].Width := 60;
DBGrid1.Columns[6].Width := 110;
DBGrid1.Columns[0].Width := 80;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
DBGrid1.Columns[0].Width := 20;
DBGrid1.Columns[1].Width := 100;
DBGrid1.Columns[2].Width := 100;
DBGrid1.Columns[3].Width := 90;
DBGrid1.Columns[4].Width := 60;
DBGrid1.Columns[5].Width := 60;
DBGrid1.Columns[6].Width := 110;
DBGrid1.Columns[0].Width := 80;
Chart1.Title.Text.Add('GRAFIK KEHADIRAN PRAKTIKUM');
end;

end.
