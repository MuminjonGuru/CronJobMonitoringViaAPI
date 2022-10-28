program CronJobMonitoring;

uses
  System.StartUpCopy,
  FMX.Forms,
  CronJobMonitoring.uMain in 'CronJobMonitoring.uMain.pas' {FormMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
