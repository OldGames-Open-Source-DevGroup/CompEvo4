unit BiosUpgrade;

interface

uses
  Windows, Forms, sysutils,
  param, ExtCtrls, Classes, Controls, ComCtrls;

type
  TBios = class(TForm)
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Bios: TBios;

implementation

uses Main, Overclock, Test;

{$R *.dfm}

procedure TBios.FormActivate(Sender: TObject);
begin
 ProgressBAr1.Position:=0;
 Timer1.Enabled:=true;
end;

procedure TBios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Timer1.Enabled:=false;
 ProgressBar1.Position:=0;
end;

procedure TBios.Timer1Timer(Sender: TObject);
begin
 Bios.Caption:='Перепрошивка BIOS - '+inttoStr(progressbar1.position)+'%';
 If (ProgressBar1.Position=20+random(7)) and (ProgressBar1.Position=65+random(7)) then begin
  If (random(15)=5) and (MainForm.Label38.Caption='Нет') then begin
   Timer1.Enabled:=false;
   Application.MessageBox('Внезапно погас свет! Теперь можете его больше не включать!','Помощь!',MB_ICONSTOP);
   Mainform.Label23.Caption:='Нет';
   Close;
   Clock.Close;
   Tst.Close;
  end;
 end;
 If ProgressBar1.Position<100 then
  ProgressBar1.Position:=ProgressBar1.Position+1
 else
  begin
   Timer1.Enabled:=false;
   Application.MessageBox('Новая прошивка BIOS успешно установлена! Теперь вам доступно изменение напряжения на процессоре и частоты шины FSB!','Помощь!',MB_ICONINFORMATION);
   Clock.Label8.Caption:='Доступно';
   MainForm.Label99.Caption:='Доступно';
   Clock.Label12.Caption:='Доступно';
   MainForm.Label121.Caption:='Доступно';
   Clock.Edit1.Enabled:=true;
   Clock.UpDown1.Enabled:=true;
   Clock.UpDown1.position:=cpufsb;
   Clock.Edit3.Enabled:=true;
   Clock.UpDown3.Enabled:=true;
   Clock.UpDown3.position:=Round((cpuvolt - 1)*100);
   Clock.Button1.Enabled:=false;
   Close;
  end;
 If ((progressBar1.Position=50+random(5)) and (random(6)=4)) or ((progressBar1.Position=78+random(5)) and (random(6)=4)) then
  sleep(2000+random(2000));
end;

end.
