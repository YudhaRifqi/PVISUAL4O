unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,
  Vcl.Grids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    StringGrid1: TStringGrid;
    Chart1: TChart;
    Series1: TPieSeries;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
begin
StringGrid1.RowCount := StringGrid1.RowCount+1;
  StringGrid1.Cells[0, StringGrid1.RowCount -1] := IntToStr(StringGrid1.RowCount - 1);
  StringGrid1.Cells[1, StringGrid1.RowCount -1] := Edit1.Text;
  StringGrid1.Cells[2, StringGrid1.RowCount -1] := Edit2.Text;
  StringGrid1.Cells[3, StringGrid1.RowCount -1] := ComboBox1.Text;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
i : integer;
begin
  for i := 1 to StringGrid1.RowCount-1 do
  begin
    Chart1.Series[0].Add(StrToFloat(StringGrid1.Cells[1,i]), StringGrid1.Cells[2,i]);
  end;

end;

procedure TForm1.FormShow(Sender: TObject);
begin
  StringGrid1.RowCount := 1;
  StringGrid1.ColCount := 4;
  StringGrid1.Cells[0,0] := 'NO';
  StringGrid1.Cells[1,0] := 'NIM';
  StringGrid1.Cells[2,0] := 'NAMA';
  StringGrid1.Cells[3,0] := 'TAHUN ANGKATAN';

  StringGrid1.ColWidths[0] := 20;
  StringGrid1.ColWidths[1] := 70;
  StringGrid1.ColWidths[2] := 170;
  StringGrid1.ColWidths[3] := 100;
end;

end.
