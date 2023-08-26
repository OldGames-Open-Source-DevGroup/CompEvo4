unit Anti;

interface

uses
  Windows, Forms,
  param, ExtCtrls, StdCtrls, ComCtrls, Controls, Classes;

type
  TAntiv = class(TForm)
    Label1: TLabel;
    Memo1: TMemo;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Timer2: TTimer;
    Button1: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Antiv: TAntiv;
  n, r:integer;

implementation

uses Main, Soft;

{$R *.dfm}

procedure TAntiv.Timer1Timer(Sender: TObject);
begin
 inc(n);
 If n=1 then
  Memo1.Lines.Add('Звоним по номеру '+Telefon);
 If n=2 then
  Memo1.Lines.Add('Подключение...');
 If n=4 then
  Memo1.Lines.Add('Соединение с сайтом '+AntivirusServer);
 If n=5 then begin
  r:=random(4);
  If r <> 2 then
   Memo1.Lines.Add('Закачка файлов...')
  else
  begin
   Timer1.Enabled:=false;
   Timer2.Enabled:=false;
   Application.MessageBox(Pchar('Операция отменена в связи с разбором полетов на '+AntivirusServer),'Помощь!',MB_ICONSTOP);
   n:=-1;
   close;
  end;
 end;
 If n=6 then begin
  Timer2.Enabled:=true;
  Timer1.Enabled:=false;
 end;
 If n=8 then begin
  Memo1.Lines.Add('Закачка файлов завершена!');
  If Parts[ActivePartition,0].Free>=10 then
   Parts[ActivePartition,0].Free:=Parts[ActivePartition,0].Free-10
  else
   Memo1.Lines.Add('Ошибка! На жестком диске не хватает места!');
 end;
 If n=9 then
  Memo1.Lines.Add('Рассоединие...');
 If n=10 then
  Memo1.Lines.Add('Все операции успешно завершены!');
 If n=11 then begin
  n:=0;
  InetTraffic:=InetTraffic-1;
  if Parts[ActivePartition,0].Free>10 then
   Antivirusbases:=Softw.Button4.Caption;
  Close;
 end;
end;

procedure TAntiv.Timer2Timer(Sender: TObject);
begin
 ProgressBar1.Position:=ProgressBar1.Position+1;
 If ProgressBar1.Position=50 then begin
  n:=n+1;
  Timer1.Enabled:=true;
  Timer2.Enabled:=false;
 end;
end;

procedure TAntiv.FormActivate(Sender: TObject);
begin
 Randomize;
 Memo1.Lines.Clear;
 ProgressBar1.Position:=0;
 Timer1.Interval:=1025-(inetSpeed div 1000);
 Timer2.Interval:=1025-(inetSpeed div 1000);
 Timer1.Enabled:=true;
 n:=0;
 MainForm.Timer1.Enabled:=false;
end;

procedure TAntiv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Timer1.Enabled:=false;
 Timer2.Enabled:=false;
 AntivCOunt:=0;
end;

procedure TAntiv.Button1Click(Sender: TObject);
begin
  Timer1.Enabled:=false;
  Timer2.Enabled:=false;
 If Application.MessageBox('Вы действительно хотите разорвать соединение?','Уверены?',MB_YESNO+MB_ICONINFORMATION)=IDYES then begin
  Timer1.Enabled:=false;
  Timer2.Enabled:=false;
  n:=-1;
  CLose;
 end;
  Timer1.Enabled:=true;
  Timer2.Enabled:=true;
end;

procedure TAntiv.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button1.OnClick(self);
end;

end.
