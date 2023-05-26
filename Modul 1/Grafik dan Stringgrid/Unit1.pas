unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, Vcl.Grids, Vcl.StdCtrls,
  VCLTee.Series;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    StringGrid1: TStringGrid;
    Chart1: TChart;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Series1: TPieSeries;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
 i : integer;
begin
for i := 1 to StringGrid1.RowCount -1 do
  Chart1.Series[0].Add(strtofloat(StringGrid1.Cells[1, i]), StringGrid1.Cells[0, i]);




end;

procedure TForm1.Button3Click(Sender: TObject);
begin
close;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
    StringGrid1.Cells[1, ComboBox1.ItemIndex+1] := Edit1.Text;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  StringGrid1.Cells[0,0] := 'JENIS PENYAKIT';
  StringGrid1.Cells[0,1] := 'COVID 19';
  StringGrid1.Cells[0,2] := 'FLU BIASA';
  StringGrid1.Cells[0,3] := 'DEMAM';
  StringGrid1.Cells[0,4] := 'RINDU';
  StringGrid1.Cells[1,0] := 'JUMLAH';
  Chart1.Title.Text.Add('GRAFIK INFORMASI JENIS PENYAKIT');

end;

end.
