program Hexwork_p;

uses
  Forms,
  Work_u in 'Work_u.pas' {Form1},
  Program_u in 'Program_u.pas' {frmWorkplace: TAdvMetroForm},
  clsCalculations in 'clsCalculations.pas',
  Home_u in 'Home_u.pas' {frmHOME: TAdvMetroForm},
  Tourist_u in 'Tourist_u.pas' {frmTourist: TAdvMetroForm},
  Hexagon_u in 'Hexagon_u.pas' {frmHexagon: TAdvMetroForm},
  Help_u in 'Help_u.pas' {frmHelp: TAdvMetroForm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Hexagon - Nayecora YLO';
  Application.CreateForm(TfrmHOME, frmHOME);
  Application.CreateForm(TfrmWorkplace, frmWorkplace);
  Application.CreateForm(TfrmTourist, frmTourist);
  Application.CreateForm(TfrmHexagon, frmHexagon);
  Application.CreateForm(TfrmHelp, frmHelp);
  Application.Run;
end.
