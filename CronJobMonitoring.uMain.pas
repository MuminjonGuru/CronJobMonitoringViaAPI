unit CronJobMonitoring.uMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, System.Net.URLClient,
  System.Net.HttpClient, System.Net.HttpClientComponent;

type
  TFormMain = class(TForm)
    Label1: TLabel;
    EdtCheckID: TEdit;
    BtnDelete: TButton;
    Label2: TLabel;
    EdtGetChecks: TEdit;
    BtnGetChecks: TButton;
    Label3: TLabel;
    EdtPostPing: TEdit;
    BtnPost: TButton;
    NetHTTPClient1: TNetHTTPClient;
    NetHTTPRequest1: TNetHTTPRequest;
    StyleBook1: TStyleBook;
    Label4: TLabel;
    Edit1: TEdit;
    BtnPostCheck: TButton;
    NetHTTPClient2: TNetHTTPClient;
    NetHTTPRequest2: TNetHTTPRequest;
    NetHTTPClient3: TNetHTTPClient;
    NetHTTPRequest3: TNetHTTPRequest;
    NetHTTPClient4: TNetHTTPClient;
    NetHTTPRequest4: TNetHTTPRequest;
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnGetChecksClick(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

procedure TFormMain.BtnDeleteClick(Sender: TObject);
begin
  var CheckID := EdtCheckID.Text;
  NetHTTPRequest1.Delete('https://api.apilayer.com/cron_monitoring/check/apikey=lUj24Wpc4e6UFpbJX2sRTG3pH0W4YYAE&' + CheckID);

end;

procedure TFormMain.BtnGetChecksClick(Sender: TObject);
begin
  EdtGetChecks.Text
    := NetHTTPRequest2.Get('https://api.apilayer.com/cron_monitoring/checks?apikey=lUj24Wpc4e6UFpbJX2sRTG3pH0W4YYAE')
    .ContentAsString(TEncoding.Default);
end;

procedure TFormMain.BtnPostClick(Sender: TObject);
begin
  //
end;

end.
