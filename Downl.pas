unit Downl;

interface

uses
  Windows, Forms, Gauges, param, ExtCtrls, Controls, ComCtrls, Classes,
  StdCtrls;

type
  TDown = class(TForm)
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Label2: TLabel;
    Gauge1: TGauge;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Down: TDown;

implementation

uses xk, Test, Main;

{$R *.dfm}

procedure TDown.Timer1Timer(Sender: TObject);
begin
 If ProgressBar1.Position<100 then
  ProgressBar1.Position:=ProgressBar1.Position+random(4)+1;
 If Gauge1.Progress<100 then
  gauge1.Progress:=gauge1.Progress+1
 else
  begin
   Timer1.Enabled:=false;
   xak.Close;
   InetTraffic:=InetTraffic-10;
   Application.MessageBox('Поздравляем вас за скаченую программу вам дали 250 д.е.','Помощь!',MB_ICONINFORMATION);
   money:=money+250;
   down.Close;
  end;
end;

procedure TDown.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 fldown:=false;
end;

procedure TDown.FormActivate(Sender: TObject);
begin
 fldown:=true;
 Gauge1.Progress:=0;
 ProgressBar1.Position:=0;
 MainForm.Timer1.Enabled:=false;
 Timer1.Enabled:=true;
end;

procedure TDown.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 CanClose:=Gauge1.Progress=100;
end;

end.
