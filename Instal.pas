unit Instal;

interface

uses
  Windows, Forms, SysUtils, Graphics,
  Gauges, param, SoftSel, ExtCtrls, ComCtrls, StdCtrls, Controls, Classes;

type
  TInstall = class(TForm)
    Timer1: TTimer;
    Gauge1: TProgressBar;
    Button1: TButton;
    Label1: TLabel;
    Animate1: TAnimate;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Install: TInstall;
  Req:integer;

implementation

uses Main, Games, VidClock, Soft;

{$R *.dfm}

procedure TInstall.Timer1Timer(Sender: TObject);
var
 BSOD: TForm;
 BSODLabel: Tlabel;
begin
 If Gauge1.Position=0 then
  Label1.Caption:='Подготовка к установке...';
 If Gauge1.Position=3 then
  If (Random(10)=4) and ((os='Lin') or (os='BSD')) and (dataprm<>'OS') then begin
   Timer1.Enabled:=false;
    BSOD:=TForm.Create(self);
    BSOD.Position:=poScreenCenter;
    BSOD.BorderIcons:=[biSystemMenu];
    BSOD.BorderStyle:=bsDialog;
    BSOD.Caption:='Неудовлетворенные зависимости';
    BSOD.Color:=clBlack;
    BSODLabel:=TLabel.Create(BSOD);
    BSODLabel.Parent:=BSOD;
    BSODLabel.Left:=8; BSODLabel.Top:=8;
    BSODLabel.Font.Name:='FixedSys';
    BSODLabel.Font.Color:=clWhite;
    BSODLabel.Caption:='[root@Xcomp ~]$ rpm -ivh '+SoftSelect.ComboBox1.Text+'.rpm '+#13+#9+#9+'Ошибка: Нудовлетворенные зависимости'+#13+#9+#9+'ld-2.3.3.so нужен для '+SoftSelect.ComboBox1.Text+'.rpm '+#13+#9+#9+'ld-linux.so.2 нужен для '+SoftSelect.ComboBox1.Text+'.rpm '+#13+#9+#9+'libc.so.6 нужен для '+SoftSelect.ComboBox1.Text+'.rpm '+#13+#9+#9+'libc-2.3.2.so нужен для '+SoftSelect.ComboBox1.Text+'.rpm '+#13+#9+#9+'libnsl.so.1 нужен для '+SoftSelect.ComboBox1.Text+'.rpm '+#13+#9+#9+'libnsl-2.3.2.so нужен для '+SoftSelect.ComboBox1.Text+'.rpm '+#13+#9+#9+'libnss_files.so.2 нужен для '+SoftSelect.ComboBox1.Text+'.rpm '+#13+#9+#9+'libnss_files-2.3.2.so нужен для '+SoftSelect.ComboBox1.Text+'.rpm '+#13+#9+#9+'libtermcap.so.2 нужен для '+SoftSelect.ComboBox1.Text+'.rpm '+#13+#9+#9+'libtermcap.so.2.0.8 нужен для '+SoftSelect.ComboBox1.Text+'.rpm ';
    BSOD.ClientWidth:=BSODLabel.Width+12;
    BSOD.ClientHeight:=BSODLabel.Height+16;
    BSOD.ShowModal;
    BSOD.Free;
   close;
  end;
 If Gauge1.Position=10 then begin
  Label1.Caption:='Определение оборудования...';
  Timer1.Interval:=Timer1.Interval+25;
  Sleep(500);
 end;
 If (Gauge1.Position=14) and (random(5)=2) and (ost='Win') then begin
  Timer1.Enabled:=false;
  BSOD:=TForm.Create(self);
  BSOD.Position:=poScreenCenter;
  BSOD.BorderIcons:=[biSystemMenu];
  BSOD.BorderStyle:=bsDialog;
  BSOD.Caption:='Blue screen of death';
  BSOD.ClientHeight:=240;
  BSOD.ClientWidth:=320;
  BSOD.Color:=clBlue;
  BSODLabel:=TLabel.Create(BSOD);
  BSODLabel.Parent:=BSOD;
  BSODLabel.Left:=8; BSODLabel.Top:=8;
  BSODLabel.Font.Name:='FixedSys';
  BSODLabel.Font.Color:=clWhite;
  BSODLabel.Caption:='*** STOP: 0x000000D1 (0x00000000,'+#13+'0x000000000, 0x00000000, 0xF8BCC2A4)'+#13+#13+'DLL Base DateStmp - Name'+#13'80100000 3202c07e - ntoskrnl.exe'+#13+'80001000 31ed06b4 - atapi.sys'+#13+'fc90a000 31ec6df7 - Fs_Rec.SYS'+#13+'fefa4000 31f91a51 - mga.dll'+#13+'fc5b0000 31ec6cb1 - Serial.SYS'+#13+'fefbc000 31eed262 - NDIS.SYS'+#13+'fc708000 31ec6ccb - Msfs.sys'+#13+#13+'*** Nwiz.sys - Address F8BCCA44 base'+#13+'at F8BCC000, DateStamp 33bb8f1d';
  BSOD.ShowModal;
  BSOD.Free;
  Close;
 end;
 If Gauge1.Position=25 then begin
  Label1.Caption:='Копирование файлов...';
  Timer1.Interval:=Timer1.Interval+25;
  Sleep(250);
 end;
 If Gauge1.Position=39 then
  If Random(10)=4 then begin
   Timer1.Enabled:=false;
   Application.MessageBox('Программа установки выполнила недопустимую операцию и будет закрыта.','Помощь!',MB_ICONSTOP);
   close;
  end;
 If Gauge1.Position=70 then begin
  Label1.Caption:='Завершение установки...';
  Timer1.Interval:=Timer1.Interval-50;
  Sleep(100);
 end;
 if gauge1.Position<100 then
  Gauge1.Position:=Gauge1.Position+1
 else
  begin
   Timer1.Enabled:=false;
   Gauge1.Position:=0;
   If dataprm='OS' then begin
    MainForm.Label30.Caption:=SoftSelect.ComboBox1.Text;
    If (os<>ost) and (os<>'') then begin
     MainForm.ClearPrograms(0,ActivePartition);
     AntivirusBases:='';
     Game.ComboBox1.Clear;
    end;
    if Parts[a,b].Soft.HackPrograms=nil then
     Parts[a,b].Soft.HackPrograms:=TStringList.Create;
    Parts[a,b].Soft.HackPrograms.Add('ping');
    Parts[a,b].Soft.HackPrograms.Add('mkdir');
    Parts[a,b].Soft.HackPrograms.Add('dir');
    Parts[a,b].Soft.HackPrograms.Add('cd');
    Parts[a,b].Soft.HackPrograms.Add('atz');
    Parts[a,b].Soft.HackPrograms.Add('atdp');
    Parts[a,b].Soft.HackPrograms.Add('atdt');
    Parts[a,b].Soft.HackPrograms.Add('exit');
    If MainForm.Label53.Caption='Нет' then begin
     MainForm.Label53.Caption:='Стандартный';
     Parts[a,b].Soft.Defragmenter:='Стандартный';
    end;
    if (ost='Lin') or (ost='BSD') then begin
     if MainForm.Label51.Caption='Нет' then
      MainForm.Label51.Caption:='iptables';
     If MainForm.Label58.Caption='Нет' then
      MainForm.Label58.Caption:='cdparanoia';
     if (ost='Lin') and (MainForm.Label48.Caption='Нет') then begin
      MainForm.Label48.Caption:='Midnight Commander';
      Parts[a,b].Soft.FileManager:=MainForm.Label48.Caption;
      Parts[a,b].Soft.FileManagerRun:='mc';
     end;
     Parts[a,b].Soft.HackPrograms.Add('ifconfig');
     Parts[a,b].Soft.HackPrograms.Add('rm');
     Parts[a,b].Soft.HackPrograms.Add('man');
     Parts[a,b].Soft.HackPrograms.Add('ls');
     Parts[a,b].Soft.HackPrograms.Add('rename');
     Parts[a,b].Soft.HackPrograms.Add('clear');
     Parts[a,b].Soft.Firewall:=MainForm.Label51.Caption;
     Parts[a,b].Soft.AudioGRabber:=MainForm.Label58.Caption;
    end;
    If MainForm.Label131.Caption='Нет' then
     if ost='Win' then begin
      MainForm.Label131.Caption:='Internet Explorer';
      MainForm.Label48.Caption:='Проводник';
      Parts[a,b].Soft.Browser:=MainForm.Label131.Caption;
      Parts[a,b].Soft.FileManager:=MainForm.Label48.Caption;
      Parts[a,b].Soft.FileManagerRun:='explorer';
     end;
    if ost='Win' then begin
     Parts[a,b].Soft.HackPrograms.Add('ipconfig');
     Parts[a,b].Soft.HackPrograms.Add('help');
     Parts[a,b].Soft.HackPrograms.Add('del');
     Parts[a,b].Soft.HackPrograms.Add('erase');
     Parts[a,b].Soft.HackPrograms.Add('ren');
     Parts[a,b].Soft.HackPrograms.Add('cls');
    end;
    MainForm.Label54.Caption:='fdisk';
    Parts[a,b].Soft.DiskOperator:=MainForm.Label54.Caption;
    Money:=Money-cCost;
    Parts[a,b].Free:=Parts[a,b].Free-cSize;
    Parts[a,b].Soft.OS:=SoftSelect.ComboBox1.Text;
    Parts[a,b].Soft.OSType:=ost;
    rating:=rating+5;
    nastr:=nastr+2;
    os:=ost;
   end;
   If dataprm='Games' then begin
    If Parts[a,b].Soft.GamesList=nil then
     Parts[a,b].Soft.GamesList:=TStringList.Create;
    Parts[a,b].Soft.GamesList.Add(SoftSelect.ComboBox1.Text+#9+IntToStr(Req));
    Game.ComboBox1.Items.Add(SoftSelect.ComboBox1.Text);
    Game.ComboBox1.ItemIndex:=0;
    GamesList:=Parts[ActivePartition,0].Soft.GamesList;
    Game.Button2.Enabled:=true;
    Money:=Money-cCost;
    Parts[a,b].Free:=Parts[a,b].Free-cSize;
    nastr:=nastr+5;
    rating:=rating+5;
   end;
   If dataprm='Hacking' then begin
    If Parts[a,b].Soft.HackPrograms=nil then
     Parts[a,b].Soft.HackPrograms:=TStringList.Create;
    Parts[a,b].Soft.HackPrograms.Add(xkCom);
    Money:=Money-cCost;
    Parts[a,b].Free:=Parts[a,b].Free-cSize;
    nastr:=nastr+5;
    rating:=rating+5;
   end;
   If dataprm='Video' then begin
    MainForm.Label109.Caption:=SoftSelect.ComboBox1.Text;
    Parts[a,b].Soft.VideoSoft:=MainForm.Label109.Caption;
    Vclock.Label9.Caption:='Программа для разгона - '+MainForm.Label109.Caption;
    VClock.Groupbox1.Enabled:=true;
    Money:=Money-cCost;
    Parts[a,b].Free:=Parts[a,b].Free-cSize;
    rating:=rating+5;
    nastr:=nastr+2;
   end;
   If dataprm='Dev' then begin
    MainForm.Label32.Caption:=SoftSelect.ComboBox1.Text;
    Parts[a,b].Soft.Dev:=MainForm.Label32.Caption;
    rating:=rating+5;
    devtype:=udevtype;
    Money:=Money-cCost;
    Parts[a,b].Free:=Parts[a,b].Free-cSize;
    Parts[a,b].Soft.DevType:=udevtype;
    nastr:=nastr+2;
   end;
   If dataprm='File Manager' then begin
    MainForm.Label48.Caption:=SoftSelect.ComboBox1.Text;
    Parts[a,b].Soft.FileManager:=MainForm.Label48.Caption;
    Parts[a,b].Soft.FileManagerRun:=xkCom;
    rating:=rating+5;
    Money:=Money-cCost;
    Parts[a,b].Free:=Parts[a,b].Free-cSize;
    nastr:=nastr+2;
   end;
   If dataprm='Spam' then begin
    MainForm.Label123.Caption:=SoftSelect.ComboBox1.Text;
    Parts[a,b].Soft.Antispam:=MainForm.Label123.Caption;
    rating:=rating+5;
    Money:=Money-cCost;
    Parts[a,b].Free:=Parts[a,b].Free-cSize;
    nastr:=nastr+2;
   end;
   If dataprm='Firewall' then begin
    MainForm.Label51.Caption:=SoftSelect.ComboBox1.Text;
    Parts[a,b].Soft.Firewall:=MainForm.Label51.Caption;
    rating:=rating+5;
    Money:=Money-cCost;
    Parts[a,b].Free:=Parts[a,b].Free-cSize;
    nastr:=nastr+2;
   end;
   If dataprm='Defrag' then begin
    MainForm.Label53.Caption:=SoftSelect.ComboBox1.Text;
    Parts[a,b].Soft.Defragmenter:=MainForm.Label53.Caption;
    rating:=rating+5;
    Money:=Money-cCost;
    Parts[a,b].Free:=Parts[a,b].Free-cSize;
    nastr:=nastr+2;
   end;
   If dataprm='Browser' then begin
    MainForm.Label131.Caption:=SoftSelect.ComboBox1.Text;
    Parts[a,b].Soft.Browser:=MainForm.Label131.Caption;
    rating:=rating+5;
    Money:=Money-cCost;
    Parts[a,b].Free:=Parts[a,b].Free-cSize;
    nastr:=nastr+2;
   end;
   If dataprm='DiskOperator' then begin
    MainForm.Label54.Caption:=SoftSelect.ComboBox1.Text;
    Parts[a,b].Soft.DiskOperator:=MainForm.Label54.Caption;
    rating:=rating+5;
    Money:=Money-cCost;
    Parts[a,b].Free:=Parts[a,b].Free-cSize;
    nastr:=nastr+2;
   end;
   If dataprm='Antivirus' then begin
    MainForm.Label31.Caption:=SoftSelect.ComboBox1.Text;
    Parts[a,b].Soft.Antivirus:=MainForm.Label31.Caption;
    AntivirusBases:=IntToStr(day)+'.'+IntToStr(month)+'.'+IntToStr(year);
    Parts[a,b].Soft.AntivirusBases:=AntivirusBases;
    AntivirusServer:=uAntiServer;
    Parts[a,b].Soft.AntivirusServer:=AntivirusServer;
    Softw.Button4.Caption:=IntToStr(Day)+'.'+IntToStr(Month)+'.'+IntToStr(Year);
    Softw.Button4.Enabled:=true;
    rating:=rating+5;
    Money:=Money-cCost;
    Parts[a,b].Free:=Parts[a,b].Free-cSize;
    nastr:=nastr+2;
   end;
   If dataprm='Benchmark' then begin
    MainForm.Label133.Caption:=SoftSelect.ComboBox1.Text;
    Parts[a,b].Soft.Benchmark:=MainForm.Label133.Caption;
    Money:=Money-cCost;
    Parts[a,b].Free:=Parts[a,b].Free-cSize;
    rating:=rating+5;
    nastr:=nastr+2;
   end;
   If dataprm='CopyCD' then begin
    MainForm.Label56.Caption:=SoftSelect.ComboBox1.Text;
    Parts[a,b].Soft.CopyCD:=MainForm.Label56.Caption;
    Money:=Money-cCost;
    Parts[a,b].Free:=Parts[a,b].Free-cSize;
    rating:=rating+5;
    nastr:=nastr+2;
   end;
   If dataprm='AudioEnc' then begin
    MainForm.Label58.Caption:=SoftSelect.ComboBox1.Text;
    Parts[a,b].Soft.AudioGrabber:=MainForm.Label58.Caption;
    Money:=Money-cCost;
    Parts[a,b].Free:=Parts[a,b].Free-cSize;
    rating:=rating+5;
    nastr:=nastr+2;
   end;
   If dataprm='VideoEnc' then begin
    MainForm.Label57.Caption:=SoftSelect.ComboBox1.Text;
    Parts[a,b].Soft.VideoEncoder:=MainForm.Label57.Caption;
    Money:=Money-cCost;
    Parts[a,b].Free:=Parts[a,b].Free-cSize;
    rating:=rating+5;
    nastr:=nastr+2;
   end;
  Closefile(data);
  Install.Close;
  SoftSelect.Close;
 end;
end;

procedure TInstall.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Timer1.Enabled:=false;
 Animate1.Active:=false;
end;

procedure TInstall.FormActivate(Sender: TObject);
var
 speed:integer;
begin
 MainForm.Timer1.Enabled:=false;
 speed:=((softselect.size.progress*10)-(hardspeed+defragspeed+cpuspeed+htt+cpuclock+cdspeed*100+ramspeed*10)) div 100;
 if Speed<=0 then
  Timer1.Interval:=1
 else
  Timer1.Interval:=speed;
 Gauge1.Position:=0;
 Label1.Caption:='Подготовка к установке...';
 Animate1.Active:=true;
 timer1.Enabled:=true;
end;

procedure TInstall.Button1Click(Sender: TObject);
begin
 If Application.MessageBox('Вы действительно хотите прекратить установку данного программного продукта?','Прервать?',MB_YESNO+MB_ICONQUESTION)=IDYES then begin
  Install.Close;
  SoftSelect.Close;
 end;
end;

procedure TInstall.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button1.OnClick(self);
end;

end.


