program Jadwal_Praktek;

uses
  Vcl.Forms,
  Jadwal in 'Jadwal.pas' {Form1},
  UJadwal in 'UJadwal.pas' {Form2},
  UMenu in 'UMenu.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
