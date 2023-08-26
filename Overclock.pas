unit Overclock;

interface

uses
  Windows, SysUtils, Forms,
  param, ExtCtrls, StdCtrls, ComCtrls, Controls, Classes;

type
  TClock = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Button1: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Button2: TButton;
    Image1: TImage;
    Button3: TButton;
    Edit1: TEdit;
    Label13: TLabel;
    UpDown1: TUpDown;
    Edit2: TEdit;
    UpDown2: TUpDown;
    Label14: TLabel;
    Label15: TLabel;
    Button4: TButton;
    Edit3: TEdit;
    UpDown3: TUpDown;
    Label16: TLabel;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    CheckBox1: TCheckBox;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure UpDown1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Clock: TClock;
  ture:integer=0;
  chan:boolean=false;

implementation

uses Main, BiosUpgrade, Test;

{$R *.dfm}

procedure TClock.Button3Click(Sender: TObject);
begin
 Close;
end;

procedure TClock.Button1Click(Sender: TObject);
begin
 If MainForm.Label29.Caption<>'Нет' then begin
  If InetTraffic>=1 then begin
   InetTraffic:=InetTraffic-1;
   If random(10)<>5 then begin
    if Bios = nil then Application.CreateForm(TBios, Bios);
    Bios.SHowModal;
   end
   else
    Application.MessageBox('Вам не удалось найти обновление BIOS для вашей материнской платы в интернете.','Помощь!',MB_ICONSTOP);
  end
  else
   Application.MessageBox('Закончился преоплаченный трафик. Невозможно скачать новый BIOS!','Помощь!',MB_ICONSTOP);
 end
 else
  Application.MessageBox('Нет модема!','Помощь!',MB_ICONSTOP);
end;

procedure TClock.Button2Click(Sender: TObject);
begin
 If copy(MainForm.Label22.Caption,1,3)='AMD' then begin
  If Application.MessageBox('Хотите поискать в интернете информацию по разблокированию множителя на вашей материнской плате?','Помощь!',MB_ICONQUESTION+MB_YESNO)=IDYES then begin
   If MainForm.Label29.Caption<>'Нет' then begin
    Application.MessageBox('Вы нашли информацию, которая сильно вам помогла!','Помощь!',MB_ICONINFORMATION);
    Clock.Edit2.Enabled:=true;
    Clock.UpDown2.Enabled:=true;
    Clock.Button2.Enabled:=false;
    Clock.Label6.Caption:='Меняется';
    MainForm.Label101.Caption:='Меняется';
    rating:=rating+4;
   end
   else
    Application.MessageBox('Нет модема!','Помощь!',MB_ICONSTOP);
  end
  else
   begin
    If random(5)<>3 then begin
     Application.MessageBox('Да вы просто профессионал! Вам не потребовалось никакой помощи, чтобы соединить в нужным местах мостики!','Помощь!',MB_ICONINFORMATION);
     Clock.Edit2.Enabled:=true;
     Clock.UpDown2.Enabled:=true;
     Clock.Button2.Enabled:=false;
     Clock.Label6.Caption:='Меняется';
     MainForm.Label101.Caption:='Меняется';
    end
    else
     begin
      Application.MessageBox('Пытаясь разблокировать коэффициент умножения вы случайно сломали у процессора две ножки!','Помощь!',MB_ICONSTOP);
      MainForm.Label22.Caption:='Нет';
     end;
   end;
 end
 else
  Application.MessageBox('На процессорах Intel нельзя разблокировать коэффициент умножения!','Помощь!',MB_ICONSTOP);
end;

procedure TClock.FormActivate(Sender: TObject);
begin
 Button1.Enabled:=false;
 Button2.Enabled:=false;
 Button4.Enabled:=true;
 ture:=0;
 If (year>=2003) and (copy(MainForm.Label22.Caption,1,5)='Intel') and ((ocpumnozh*ocpufsb)>3000) then begin
  CheckBox1.Enabled:=true;
  If htt>0 then
   CheckBox1.Checked:=true
  else
   CheckBox1.Checked:=false;
 end;
 If htt<=0 then
  checkbox1.Checked:=false
 else
  checkbox1.Checked:=true;
 Label2.Caption:=IntToStr(Round(cpufsb*cpumnozh))+' МГц';
 If MainForm.Label99.Caption='Доступно' then begin
  Label8.Caption:='Доступно';
  Edit1.Enabled:=true;
  UpDown1.Enabled:=true;
  UpDown1.Position:=cpufsb;
 end
 else
  begin
   Label8.Caption:='Недоступно';;
   Edit1.Enabled:=false;
   UpDown1.Enabled:=false;
   Button1.Enabled:=true;
  end;
 Label10.Caption:=FloatToStr(cpuvolt)+' Вольт';
 If MainForm.Label121.Caption='Доступно' then begin
  Label12.Caption:='Доступно';
  Edit3.Enabled:=true;
  UpDown3.Enabled:=true;
  UpDown3.Position:=Round((cpuvolt - 1)*100);
 end
 else
  begin
   Label12.Caption:='Недоступно';
   Edit3.Enabled:=false;
   UpDown3.Enabled:=false;
   Button1.Enabled:=true;
  end;
 Label4.Caption:=FloatToStr(cpumnozh)+' Х';
 If MainForm.Label101.Caption='Меняется' then begin
  Label6.Caption:='Меняется';
  Edit2.Enabled:=true;
  UpDown2.Enabled:=true;
  UpDown2.Position:=cpumnozh;
 end
 else
  begin
   Label6.Caption:='Блокирован';
   UpDown2.Position:=cpumnozh;
   Edit2.Enabled:=false;
   UpDown2.Enabled:=false;
   Button2.Enabled:=true;
  end;
end;

procedure TClock.Button4Click(Sender: TObject);
begin
 Timer1.Enabled:=true;
end;

procedure TClock.Timer1Timer(Sender: TObject);
var
 clocker:integer;
begin
 Button4.Enabled:=false;
 GroupBox3.Enabled:=false;
 If progressbar1.Position<100 then
  ProgressBar1.Position:=ProgressBar1.Position+1
 else
  begin
   Timer1.Enabled:=false;
   Button4.Enabled:=true;
   ProgressBAr1.Position:=0;
   Clocker:=(ocpumnozh*ocpufsb+((ocpumnozh*ocpufsb*cpupercent) div 100))-(UpDown1.Position*UpDown2.Position);
   GroupBox3.Enabled:=true;
  If Clocker<0 then
   Application.MessageBox('Машина не проходит загрузку BIOS с заданными параметрами!','Помощь!',MB_ICONWARNING)
  else
   If (((Clocker<200) and (UpDown3.Position<63)) or ((Clocker<100) and (UpDown3.Position<74))) and ((cpufsb<>ocpufsb) or (cpumnozh<>ocpumnozh)) then
    Application.MessageBox('Машина с выбранными параметрами виснет!','Помощь!',MB_ICONWARNING)
   else
     If (UpDown3.Position>79+random(5)) then begin
      Application.MessageBox('Ваш процессор сгорел при выбранном напряжении!','Помощь!',MB_ICONSTOP);
      Button4.Enabled:=false;
      Clock.Close;
      Tst.Close;
      Mainform.Label22.Caption:='Нет';
     end
     else
     If upDown3.Position<45 then
      Application.MessageBox('Машина с выбранными параметрами виснет!','Помощь!',MB_ICONWARNING)
     else
      begin
       cpumnozh:=UpDown2.Position;
       cpuvolt:=(UpDown3.Position/100)+1;
       cpufsb:=UpDown1.Position;
       Label2.Caption:=IntToStr(Round(cpufsb*cpumnozh))+' МГц';
       Label10.Caption:=FloatToStr(cpuvolt)+' Вольт';
       Label4.Caption:=IntToStr(cpumnozh)+' Х';
       If (cpuvolt>=74) and (chan=true) then
        ture:=Updown3.Position-50+random(5);
       If (cpuvolt<51) and (chan=true) then
        ture:=Updown3.Position-60+random(5);
       If (cpufsb<>ocpufsb) or (cpumnozh<>ocpumnozh) then
        cpuclock:=(1000-clocker)*2+3000
       else
        Cpuclock:=0;
      end;
  end;
end;

procedure TClock.CheckBox1Click(Sender: TObject);
begin
 If checkbox1.Checked=true then
  htt:=random(6000)+random(2000)
 else
  htt:=0;
end;

procedure TClock.UpDown1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
 chan:=true;
end;

procedure TClock.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 CanClose:=not Timer1.Enabled;
end;

procedure TClock.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button3.OnClick(self);
end;

end.
