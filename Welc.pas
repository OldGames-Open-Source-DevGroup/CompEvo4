unit Welc;

interface

uses
  Windows, Forms, SysUtils, jpeg, param, ComCtrls, StdCtrls, Controls, Classes, ExtCtrls,
  Dialogs, ExtDlgs, inifiles;

type
  TWelcome = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label5: TLabel;
    Edit2: TEdit;
    UpDown1: TUpDown;
    Label4: TLabel;
    Edit1: TComboBox;
    Label6: TLabel;
    Edit3: TEdit;
    UpDown2: TUpDown;
    Label7: TLabel;
    Image1: TImage;
    Label8: TLabel;
    Button3: TButton;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LoadUserConfig(FileName: shortstring);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Welcome: TWelcome;
  Temp: TForm;

implementation

uses Main;


{$R *.dfm}

procedure TWelcome.Button1Click(Sender: TObject);
var
 i:smallint;
 Exists:boolean;
 Quest:textfile;
 TempString:string;
begin
 GamesList:=TStringList.Create;
 Exists:=false;
 UserName:=Edit1.Text;
 Vozrast:=StrToInt(Edit2.Text);
 asm
  mov Month, 1
  mov day, 1
 end;
 Rating:=0;
 GameSpeed:=UpDown2.Position;
 Temp.Free;
 If Edit1.Items.Count<>0 then
  Edit1.Items.Delete(Edit1.Items.Count-1);
 If (Edit1.Text<>'������� ��� ���...') and (Edit1.Text<>'') then begin
  for i:=1 to Edit1.Items.Count do
   If Edit1.Items.Strings[i-1]=Edit1.Text then Exists:=true;
  If not Exists then
   Edit1.Items.Add(Edit1.Text);
 end;
 If FileExists(dir+'\Saves\'+Edit1.Text+'.evs') and MainForm.LoadGame(dir+'\Saves\'+Edit1.Text+'.evs') then
  ShowHelp:=false
 else
  begin
   If vozrast<21 then begin
    Assignfile(Quest,dir+'\Start\Young\Message.inf');
    LoadUserConfig(dir+'\Start\Young\Config.ini');
   end;
   If (vozrast>=21) and (vozrast<30) then begin
    Assignfile(Quest,dir+'\Start\Adult\Message.inf');
    LoadUserConfig(dir+'\Start\Adult\Config.ini');
   end;
   If vozrast>=30 then begin
    Assignfile(Quest,dir+'\Start\Old\Message.inf');
    LoadUserConfig(dir+'\Start\Old\Config.ini');
   end;
   Reset(Quest);
   ReadLn(Quest,TempString);
   Application.MessageBox(PChar(TempString),'������!',MB_ICONINFORMATION);
   If (random(10)=4) and (vozrast>15) then begin
    Application.MessageBox('� ����� � ���������� ����������� ����������� �� ����� ����� �������� ������� ��������� 750 �.�.!','������!',MB_ICONINFORMATION);
    vklad:=vklad+750;
    vkladp:=random(20);
   end;
  end;
 Edit1.Items.SaveToFile(dir+'\Inf\Players.inf');
 close;
end;

procedure TWelcome.Button2Click(Sender: TObject);
begin
 If Application.MessageBox('�� ������������� ������ ����� �� ���������?','�����?',MB_YESNO+MB_ICONINFORMATION)=IDYES then begin
  ShowHelp:=false;
  Application.Terminate;
 end;
end;

procedure TWelcome.FormCreate(Sender: TObject);
Begin
 Edit1.Items.LoadFromFile(dir+'\Inf\Players.inf');
 If Edit1.Items.Count<>0 then
  Edit1.Items.Add('- �������� ������ -');
 Welcome.BringToFront;
end;

procedure TWelcome.Edit1Enter(Sender: TObject);
begin
 Edit1.Text:='';
end;

procedure TWelcome.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If key=VK_RETURN then
  Button1.OnClick(self);
end;

procedure TWelcome.Edit1Click(Sender: TObject);
begin
 If Edit1.ItemIndex=Edit1.Items.Count-1 then
  Edit1.Items.Clear;
end;

procedure TWelcome.FormShow(Sender: TObject);
begin
If DebugVersion then
 Application.MessageBox('������ ������ ���� �������� ���������������. ��� ����� ��������� ������ ��� �������� �����������. ��� ���� ��������� ������� ��������� ��� �� e-mail.','������!',MB_ICONWARNING);
end;

procedure TWelcome.Edit3Change(Sender: TObject);
begin
 If (UpDown2.Position=1) or (UpDown2.Position=21) then
  Label7.Caption:='- ��� � �������'
 else
  If (UpDown2.Position>4) and (UpDown2.Position<21) then
   Label7.Caption:='- ����� � �������'
  else
  If ((UpDown2.Position>1) and (UpDown2.Position<5)) or (UpDown2.Position>21) then
   Label7.Caption:='- ���� � �������';
end;

procedure TWelcome.Edit2Change(Sender: TObject);
begin
 If (UpDown1.Position>5) and (UpDown1.Position<21) then
  Label8.Caption:='- ���'
 else
  If (UpDown1.Position mod 10 = 1) then
   Label8.Caption:='- ���'
  else
   If (UpDown1.Position div 10 > 1) then
    If (UpDown1.Position mod 10 > 1) and (UpDown1.Position mod 10 < 5) then
     Label8.Caption:='- ����';
    If (UpDown1.Position mod 10 > 4) and (UpDown1.Position mod 10 < 10) or (UpDown1.Position mod 10 = 0) then
     Label8.Caption:='- ���';
end;

procedure TWelcome.Button3Click(Sender: TObject);
begin
 If MainForm.OpenPictureDialog1.Execute then begin
  Photo:=MainForm.OpenPictureDialog1.FileName;
  MainForm.Image13.Picture.LoadFromFile(Photo);
  MainForm.N29.Caption:='������� ����������...';
  MainForm.N7.Enabled:=true;
 end;
end;

procedure TWelcome.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button2.OnClick(self);
end;

procedure TWelcome.LoadUserConfig(FileName: shortstring);
var
 UserConfig: Tinifile;
begin
 UserConfig:=Tinifile.Create(FileName);
 {=====����� ���������=====}
  Nastr:=UserConfig.ReadInteger('Common','Mood',40);
  Money:=UserConfig.ReadInteger('Common','Money',3000)+random(500);
  Rating:=UserConfig.ReadFloat('Common','Rating',0);
  StatusValue:=UserConfig.ReadInteger('Common','Status',0);
  Vlasti:=UserConfig.ReadInteger('Common','Police',100);
 {=====������=====}
  MainForm.Label36.Caption:=UserConfig.ReadString('Work','Name','���');
  Zarpl:=UserConfig.ReadInteger('Work','Wage',0);
 {=====��������=====}
  Flat:=UserConfig.ReadString('Flat','Name','');
  FlatPay:=UserConfig.ReadInteger('Flat','Pay',0);
  FlatComfort:=UserConfig.ReadInteger('Flat','Comfort',0);;
 {=====���������=====}
  MainForm.Label22.Caption:=UserConfig.ReadString('Processor','Name','���');
  CPUspeed:=UserConfig.ReadInteger('Processor','Score',0);
  cpumnozh:=UserConfig.ReadInteger('Processor','Multiplier',0);
  ocpumnozh:=cpumnozh;
  cpufsb:=UserConfig.ReadInteger('Processor','FSB',0);
  ocpufsb:=cpufsb;
  cpuvolt:=UserConfig.ReadFloat('Processor','Voltage',0);
  ocpuvolt:=cpuvolt;
  cpupercent:=UserConfig.ReadInteger('Processor','Overclock',0);
  Temperature:=UserConfig.ReadInteger('Processor','Temperature',0);
 {=====���������=====}
  MainForm.Label23.Caption:=UserConfig.ReadString('Motherboard','Name','���');
  chipset:=UserConfig.ReadString('Motherboard','Chipset','');
  videochipset:=UserConfig.ReadString('Motherboard','SupportVideoBus','');
  RamType:=UserConfig.ReadString('Motherboard','SupportRAMType','');
  If UserConfig.ReadBool('Motherboard','ChangeFSB',False) then
   MainForm.Label99.Caption:='��������'
  else
   MainForm.Label99.Caption:='����������';
  If UserConfig.ReadBool('Motherboard','ChangeVoltage',False) then
   MainForm.Label121.Caption:='��������'
  else
   MainForm.Label121.Caption:='����������';
  If UserConfig.ReadBool('Motherboard','ChangeMultiplier',False) then
   MainForm.Label101.Caption:='��������'
  else
   MainForm.Label101.Caption:='����������';
 {=====����������=====}
  Mainform.Label76.Caption:=UserConfig.ReadString('Videocard','Name','���');
  VideoChip:=UserConfig.ReadString('Videocard','Chip','');
  VideoSpeed:=UserConfig.ReadInteger('Videocard','Score',0);
  VideoMem:=UserConfig.ReadInteger('Videocard','MemoryClock',0);
  oVideoMem:=VideoMem;
  VideoCore:=UserConfig.ReadInteger('Videocard','CoreClock',0);
  oVideoCore:=VideoCore;
  VideoShina:=UserConfig.ReadString('Videocard','Bus','');
  VideoPercent:=UserConfig.ReadInteger('Videocard','Overclock',0);
  VideoTemp:=UserConfig.ReadInteger('Videocard','Temperature',0);
 {=====�����=====}
  Mainform.Label73.Caption:=UserConfig.ReadString('Cooler','Name','���');
  CoolerSpeed:=UserConfig.ReadInteger('Cooler','Speed',0);
 {=====���������=====}
  MainForm.Label24.Caption:=UserConfig.ReadString('RAM','Name','���');
  ozycapacity:=UserConfig.ReadInteger('RAM','Capacity',0);
  ramspeed:=UserConfig.ReadInteger('RAM','Speed',0);
  ramtype:=UserConfig.ReadString('RAM','Type','���');
 {=====����=====}
  If UserCOnfig.ValueExists('HDD','PartitionList') then begin
   MainForm.Label25.Caption:=UserConfig.ReadString('HDD','Name','���');
   defragspeed:=random(4000);
   HardSpace:=UserConfig.ReadInteger('HDD','Capacity',0);
   HardSpeed:=UserConfig.ReadInteger('HDD','Speed',0);
   LoadDiskStructure(dir+'\Start\Young\'+UserConfig.ReadString('HDD','PartitionList',''));
  end;
 {=====�������=====}
  MainForm.Label27.Caption:=UserConfig.ReadString('Monitor','Name','���');
  safety:=UserConfig.ReadInteger('Monitor','Safety',0);
  MonitorDiag:=UserConfig.ReadInteger('Monitor','Diagonal',0);
 {=====CD-ROM=====}
  MainForm.Label28.Caption:=UserConfig.ReadString('CD-ROM','Name','���');
  CDSpeed:=UserConfig.ReadInteger('CD-ROM','CDSpeed',0);
  CDRSpeed:=UserConfig.ReadInteger('CD-ROM','CDRSpeed',0);
  CDRWSpeed:=UserConfig.ReadInteger('CD-ROM','CDRWSpeed',0);
  DVDRSpeed:=UserConfig.ReadInteger('CD-ROM','DVDRSpeed',0);
  DVDRWSpeed:=UserConfig.ReadInteger('CD-ROM','DVDRWSpeed',0);
 {=====�����=====}
  MainForm.Label29.Caption:=UserConfig.ReadString('Modem','Name','���');
  InetSpeed:=UserConfig.ReadInteger('Modem','Speed',0);
  InetTraffic:=UserConfig.ReadInteger('Modem','Traffic',0);
 {=====���=====}
  MainForm.Label38.Caption:=UserConfig.ReadString('UPS','Name','���');
  Nadeg:=UserConfig.ReadInteger('UPS','Reliability',0);
 {=====�������=====}
  MainForm.Label74.Caption:=UserConfig.ReadString('Printer','Name','���');
  Printing:=UserConfig.ReadInteger('Printer','Speed',0);
 {=====������=====}
  MainForm.Label75.Caption:=UserConfig.ReadString('Scanner','Name','���');
  Scanning:=UserConfig.ReadInteger('Scanner','Speed',0);
 {=====���������=====}
  MainForm.Label69.Caption:=UserConfig.ReadString('Peripherals','Keyboard','���');
  MainForm.Label70.Caption:=UserConfig.ReadString('Peripherals','Mouse','���');
  MainForm.Label71.Caption:=UserConfig.ReadString('Peripherals','Speakers','���');
  Mainform.Label26.Caption:=UserConfig.ReadString('Peripherals','Soundcard','���');
 {=====������=====}
  MainForm.Label72.Caption:=UserConfig.ReadString('Peripherals','Tower','���');
  MainForm.Label77.Caption:=UserConfig.ReadString('Peripherals','PowerSupply','���');
 {=====����=====}
  Vklad:=UserConfig.ReadInteger('Bank','Deposit',0);
  Vkladp:=UserConfig.ReadInteger('Bank','Percent',0);
{==================}
end;

end.
