unit Test;

interface

uses
  Windows, Messages, SysUtils, Forms,
  Dialogs, Gauges, StdCtrls, param, ComCtrls, ExtCtrls, Controls, Classes;

type
  TTst = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Gauge1: TGauge;
    Gauge2: TGauge;
    Gauge3: TGauge;
    Gauge4: TGauge;
    Button1: TButton;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Timer1: TTimer;
    Button2: TButton;
    Label6: TLabel;
    Gauge5: TGauge;
    Gauge6: TGauge;
    Label8: TLabel;
    Label7: TLabel;
    Gauge7: TGauge;
    Button3: TButton;
    Button4: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Tst: TTst;

implementation

uses Main, Overclock, VidClock;

{$R *.dfm}

procedure TTst.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TTst.FormActivate(Sender: TObject);
begin
 Label1.Caption:='Инициализация теста...';
 Tst.ClientHeight:=57;
If testk<2 then
 testk:=testk+1;
If testk=1 then
 Application.MessageBox('Здесь показывается насколько хорош ваш компьютер. Его характеристики, а также общий рейтинг. Естественно чем он выше, тем лучше.','Помощь!',MB_ICONASTERISK);
 MainForm.Timer1.Enabled:=false;
 Gauge1.Progress:=cpuspeed+cpuclock+htt+ramspeed*10+hardspeed+defragspeed;
 Gauge2.Progress:=nadeg;
 Gauge3.Progress:=inetspeed;
 Gauge4.Progress:=safety;
 Gauge6.Progress:=scanning;
 Gauge5.Progress:=printing;
 Gauge7.Progress:=videospeed+videoclock;
 If (Gauge1.MaxValue-Gauge1.Progress)<=0 then
  Timer1.Interval:=1
 else
  Timer1.Interval:=(Gauge1.MaxValue-Gauge1.Progress) div 100;
 Timer1.Enabled:=true;
 Button2.Enabled:=true;
end;

procedure TTst.Timer1Timer(Sender: TObject);
begin
 ProgressBar1.Position:=ProgressBar1.Position+1;
 If ProgressBar1.Position=200 then begin
  Tst.ClientHeight:=289;
  Label1.Caption:='Тест завершен!';
  Tst.BorderIcons:=[biSystemMenu];
  Timer1.Enabled:=false;
  Button2.Enabled:=false;
 end;
 If ProgressBar1.Position=5 then
  Label1.Caption:='Тест процессора...';

 If ProgressBar1.Position=15 then
  Label1.Caption:='Тест материнской платы...';

 If ProgressBar1.Position=25 then
  Label1.Caption:='Тест оперативной памяти...';

 If ProgressBar1.Position=35 then
  Label1.Caption:='Тест жесткого диска...';

 If ProgressBar1.Position=45 then
  Label1.Caption:='Тест монитора...';

 If ProgressBar1.Position=55 then
  Label1.Caption:='Тест модема...';
 If MainForm.Label29.Caption='Нет' then
  If ProgressBar1.Position=58 then
  begin
   Label1.Caption:='Не удается найти модем! Пропуск теста.';
   ProgressBar1.Position := 62;
  end;

 If ProgressBar1.Position=65 then
  Label1.Caption:='Тест CD-ROM...';
 If MainForm.Label28.Caption='Нет' then
  If ProgressBar1.Position=68 then
  begin
   Label1.Caption:='Не удается найти CD-ROM! Пропуск теста.';
   ProgressBar1.Position := 72;
  end;

 If ProgressBar1.Position=75 then
  Label1.Caption:='Тест звуковой карты...';

 If ProgressBar1.Position=85 then
  Label1.Caption:='Тест сканера...';
 If MainForm.Label75.Caption='Нет' then
  If ProgressBar1.Position=88 then
  begin
   Label1.Caption:='Сканер не обнаружен! Пропуск теста.';
   ProgressBar1.Position := 97;
  end;

 If ProgressBar1.Position=100 then
  Label1.Caption:='Тест принтера...';
 If MainForm.Label74.Caption='Нет' then
  If ProgressBar1.Position=103 then
  begin
   Label1.Caption:='Нет подключенных принтеров! Пропуск теста.';
   ProgressBar1.Position := 112;
  end;

 If ProgressBar1.Position=115 then
  Label1.Caption:='Тест кулера...';

 If ProgressBar1.Position=130 then
  Label1.Caption:='Тест колонок...';
 If MainForm.Label71.Caption='Нет' then
  If ProgressBar1.Position=133 then
  begin
   Label1.Caption:='Акустика не подключена! Пропуск теста.';
   ProgressBar1.Position := 142;
  end;

 If ProgressBar1.Position=145 then
  Label1.Caption:='Тест мыши...';
 If MainForm.Label70.Caption='Нет' then
  If ProgressBar1.Position=157 then
  begin
   Label1.Caption:='Не удается найти манипулятор мышь! Пропуск теста.';
   ProgressBar1.Position := 152;
  end;

 If ProgressBar1.Position=155 then
  Label1.Caption:='Тест клавиатуры...';
 If MainForm.Label69.Caption='Нет' then
  If ProgressBar1.Position=157 then
  begin
   Label1.Caption:='Клавиатура не подключена! Пропуск теста.';
   ProgressBar1.Position := 162;
  end;

 If ProgressBar1.Position=165 then
  Label1.Caption:='Тест видеокарты...';
end;

procedure TTst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 MainForm.Timer1.Enabled:=true;
 ProgressBar1.Position:=0;
 Timer1.Enabled:=false;
end;

procedure TTst.Button3Click(Sender: TObject);
begin
 Clock.showmodal;
end;

procedure TTst.Button4Click(Sender: TObject);
begin
 If (MainForm.Label76.Caption<>'Нет') and (MainForm.Label76.Caption<>'Встроенная') then
  VClock.Showmodal
 else
  Application.MessageBox('Нет видеокарты! Во всяком случае нормальной.','Помощь!',MB_ICONSTOP);
end;

procedure TTst.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button1.OnClick(self);
end;

end.
