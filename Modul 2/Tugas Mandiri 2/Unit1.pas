unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit13: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
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
  nil1, nil2, nil3, nil4, nil5, hasil: real;
  b1, b2, b3, b4, b5 : real;
  grade, ket : string;
begin
//mengambil data nilai
  nil1 := strtofloat(Edit1.Text);
  nil2 := strtofloat(Edit2.Text);
  nil3 := strtofloat(Edit3.Text);
  nil4 := strtofloat(Edit4.Text);
  nil5 := strtofloat(Edit5.Text);
  //mengambil bobot
  b1 := strtofloat(Edit6.Text)/100;
  b2 := strtofloat(Edit7.Text)/100;
  b3 := strtofloat(Edit8.Text)/100;
  b4 := strtofloat(Edit9.Text)/100;
  b5 := strtofloat(Edit10.Text)/100;
  //menghitung hasil akhir
  hasil := nil1*b1 + nil2*b2 + nil3*b3 + nil4*b4 + nil5*b5;
  // menentukan grade
  if(hasil >= 80)then
  grade := 'A'
  else
  if(hasil >= 70)then
  grade := 'B'
  else
  if(hasil >= 60)then
  grade := 'C'
  else
  if(hasil >= 50)then
  grade := 'D'
  else
  grade := 'E';
  //menentukan keterangan hasil
  if((grade = 'A')or(grade = 'B')or(grade = 'C'))then
  ket := 'LULUS'
  else
  ket := 'TIDAK LULUS';
  //hasil dari proses
  Edit11.Text := floattostr(hasil);
  Edit12.Text := grade;
  Edit13.Text := ket;


end;

end.
