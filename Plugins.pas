unit Plugins;

interface

uses
  Windows, Forms, param, Main, ShellAPI,
  Controls, StdCtrls, Classes, SysUtils;

type
  TPlugs = class(TForm)
    ListBox1: TListBox;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Memo1: TMemo;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Plugs: TPlugs;
  NewHandle:THandle;

implementation

{$R *.dfm}

procedure TPlugs.FormActivate(Sender: TObject);
var
 Plugins: TSearchRec;
 SearchResult: smallint;
 handle:THandle;
 PluginAuthor:function:Pchar; stdcall;
 s:shortstring;
begin
 MainForm.Timer1.Enabled:=false;
 ListBox1.Items.Clear;
 Memo1.Lines.Clear;
 SearchResult:=FindFirst(dir+'\Plugins\*.dll', faAnyFile, Plugins);
 while SearchResult=0 do begin
  ListBox1.Items.Add(copy(Plugins.Name,1,pos('.',Plugins.Name)-1));
  SearchResult:=FindNext(Plugins);
 end;
 FindClose(Plugins);
 If ListBox1.Items.Count<>0 then begin
  ListBox1.ItemIndex:=0;
  @PluginAuthor:=nil;
  handle:=LoadLibrary(Pchar(dir+'\Plugins\'+ListBox1.Items.Strings[ListBox1.ItemIndex]+'.dll'));
  if handle <> 0 then begin
   @pluginAuthor := GetProcAddress(handle,'PluginAuthor');
   s:=PluginAuthor;
   Label3.Caption:=copy(s,1,pos('|',s)-1);
   s:=copy(s,pos('|',s)+1,255);
   Label5.Caption:=copy(s,1,pos('|',s)-1);
   Memo1.Lines.Add(copy(s,pos('|',s)+1,255));
   FreeLibrary(handle);
  end;
  Button2.Enabled:=true;
 end
 else
  Button2.Enabled:=false;
end;

procedure TPlugs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 MainForm.Timer1.Enabled:=true;
end;

procedure TPlugs.Button2Click(Sender: TObject);
var
 PlugExec:function(I,R,S,B:pointer;ISize,RSize,SSize,BSize:integer):boolean; stdcall;
 IntMas:array[0..72] of ^integer;
 RealMas:array[0..4] of ^real;
 StrMas:array[0..35] of ^shortstring;
 BoolMas:array[0..4] of ^boolean;
begin
 @PlugExec:=nil;
 NewHandle:=LoadLibrary(Pchar(dir+'\Plugins\'+ListBox1.Items.Strings[ListBox1.ItemIndex]+'.dll'));
 {Integers}
  IntMas[0]:=@month;
  IntMas[1]:=@year;
  IntMas[2]:=@day;
  IntMas[3]:=@vozrast;
  IntMas[4]:=@vklad;
  IntMas[5]:=@vkladp;
  IntMas[6]:=@statusvalue;
  IntMas[7]:=@cdr;
  IntMas[8]:=@ass;
  IntMas[9]:=@pas;
  IntMas[10]:=@cpp;
  IntMas[11]:=@cd;
  IntMas[12]:=@progs;
  IntMas[13]:=@vlasti;
  IntMas[14]:=@scanning;
  IntMas[15]:=@printing;
  IntMas[16]:=@safety;
  IntMas[17]:=@inetspeed;
  IntMas[18]:=@nadeg;
  IntMas[19]:=@cpuspeed;
  IntMas[20]:=@cpuclock;
  IntMas[21]:=@cpufsb;
  IntMas[22]:=@cpupercent;
  IntMas[23]:=@cpumnozh;
  IntMas[24]:=@temperature;
  IntMas[25]:=@coolerspeed;
  IntMas[26]:=@hardspeed;
  IntMas[27]:=@hardspace;
  IntMas[28]:=@zarpl;
  IntMas[29]:=@videocore;
  IntMas[30]:=@videomem;
  IntMas[31]:=@videopercent;
  IntMas[32]:=@videomemory;
  IntMas[33]:=@videoclock;
  IntMas[34]:=@videospeed;
  IntMas[35]:=@htt;
  IntMas[36]:=@hardskidka;
  IntMas[37]:=@videoskidka;
  IntMas[38]:=@procskidka;
  IntMas[39]:=@ozycapacity;
  IntMas[40]:=@ramspeed;
  IntMas[41]:=@cdspeed;
  IntMas[42]:=@cdrspeed;
  IntMas[43]:=@cdrwspeed;
  IntMas[44]:=@dvdrspeed;
  IntMas[45]:=@dvdrwspeed;
  IntMas[46]:=@GameSpeed;
  IntMas[47]:=@unixxak;
  IntMas[48]:=@winxak;
  IntMas[49]:=@arest;
  IntMas[50]:=@toshn;
  IntMas[51]:=@badcd;
  IntMas[52]:=@hour;
  IntMas[53]:=@AntivCount;
  IntMas[54]:=@Defragspeed;
  IntMas[55]:=@Credit;
  IntMas[56]:=@CreditPercent;
  IntMas[57]:=@CreditEnd;
  IntMas[58]:=@DefragTime;
  IntMas[59]:=@Bas;
  IntMas[60]:=@TransPercent;
  IntMas[61]:=@znania;
  IntMas[62]:=@MonitorDiag;
  IntMas[63]:=@InetTraffic;
  IntMas[64]:=@VideoTemp;
  IntMas[65]:=@Hosting;
  IntMas[66]:=@FlatPay;
  IntMas[67]:=@CarPrestige;
  IntMas[68]:=@FlatComfort;
  IntMas[69]:=@Parts[ActivePartition,0].Size;
  IntMas[70]:=@Parts[ActivePartition,0].Free;
  IntMas[71]:=@StudyProgress;
  IntMas[72]:=@SenderTag;
 {Reals}
  RealMas[0]:=@rating;
  RealMas[1]:=@money;
  RealMas[2]:=@nastr;
  RealMas[3]:=@cpuvolt;
  RealMas[4]:=@Peni;
 {Strings}
  StrMas[0]:=@dir;
  StrMas[1]:=@UserName;
  StrMas[2]:=@chipset;
  StrMas[3]:=@videochip;
  StrMas[4]:=@videochipset;
  StrMas[5]:=@Parts[ActivePartition,0].Soft.OsType;
  StrMas[6]:=@videoshina;
  StrMas[7]:=@Parts[ActivePartition,0].Soft.DevType;
  StrMas[8]:=@antivirusBases;
  StrMas[9]:=@LastGame;
  StrMas[10]:=@RamType;
  StrMas[11]:=@AntivirusServer;
  StrMas[12]:=@Comment;
  StrMas[13]:=@Parts[ActivePartition,0].Labe1;
  StrMas[14]:=@Parts[ActivePartition,0].FileSystem;
  StrMas[15]:=@Parts[ActivePartition,0].Soft.OS;
  StrMas[16]:=@Parts[ActivePartition,0].Soft.Dev;
  StrMas[17]:=@Parts[ActivePartition,0].Soft.Antivirus;
  StrMas[18]:=@Parts[ActivePartition,0].Soft.Antispam;
  StrMas[19]:=@Parts[ActivePartition,0].Soft.Firewall;
  StrMas[20]:=@Parts[ActivePartition,0].Soft.Defragmenter;
  StrMas[21]:=@Parts[ActivePartition,0].Soft.DiskOperator;
  StrMas[22]:=@Parts[ActivePartition,0].Soft.Browser;
  StrMas[23]:=@Parts[ActivePartition,0].Soft.FileManager;
  StrMas[24]:=@Parts[ActivePartition,0].Soft.FileManagerRun;
  StrMas[25]:=@Parts[ActivePartition,0].Soft.Benchmark;
  StrMas[26]:=@Parts[ActivePartition,0].Soft.CopyCD;
  StrMas[27]:=@Parts[ActivePartition,0].Soft.AudioGrabber;
  StrMas[28]:=@Parts[ActivePartition,0].Soft.VideoEncoder;
  StrMas[29]:=@Parts[ActivePartition,0].Soft.VideoSoft;
  StrMas[30]:=@MultiChrome;
  StrMas[31]:=@Login;
  StrMas[32]:=@Password;
  StrMas[33]:=@Telefon;
  StrMas[34]:=@YourIP;
  StrMas[35]:=@ServerIP;
 {Booleans}
  BoolMas[0]:=@LastWork;
  BoolMas[1]:=@DVD;
  BoolMas[2]:=@StoMBFree;
  BoolMas[3]:=@xDone;
  BoolMas[4]:=@IsStudy;
 if NewHandle <> 0 then
 begin
  @PlugExec:=GetProcAddress(NewHandle,'PluginExec');
  PlugExec(@IntMas,@RealMas,@StrMas,@BoolMas,length(IntMas),length(RealMas),length(StrMas),length(BoolMas));
 end;
 FreeLibrary(NewHandle);
 CHangeOS(ActivePartition);
end;

procedure TPlugs.Label5Click(Sender: TObject);
begin
 ShellExecute(Handle,nil,Pchar('mailto:'+Label5.Caption+'?subject='+ListBox1.Items.Strings[ListBox1.ItemIndex]),nil,nil,handle);
end;

procedure TPlugs.Button1Click(Sender: TObject);
begin
 Close;
end;

procedure TPlugs.ListBox1Click(Sender: TObject);
var
 handle:THandle;
 PluginAuthor:function:Pchar;
 s:shortstring;
begin
 If ListBox1.Items.Count<>0 then begin
  handle:=LoadLibrary(Pchar(dir+'\Plugins\'+ListBox1.Items.Strings[ListBox1.ItemIndex]+'.dll'));
  Memo1.Lines.Clear;
  if handle <> 0 then begin
   @pluginAuthor := GetProcAddress(handle,'PluginAuthor');
   s:=PluginAuthor;
   Label3.Caption:=copy(s,1,pos('|',s)-1);
   s:=copy(s,pos('|',s)+1,255);
   Label5.Caption:=copy(s,1,pos('|',s)-1);
   Memo1.Lines.Add(copy(s,pos('|',s)+1,255));
   FreeLibrary(handle);
  end;
 end;
end;

procedure TPlugs.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if listbox1.Items.Count<>0 then
 if key=VK_RETURN then
  Button2.OnClick(self);
end;

procedure TPlugs.Button3Click(Sender: TObject);
begin
 ShellExecute(Handle,nil,'http://www.RPprogs.narod.ru/Soft/CE4plugins.htm',nil,nil,handle);
end;

procedure TPlugs.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button1.OnClick(self);
end;

procedure TPlugs.Button4Click(Sender: TObject);
begin
 If FileExists(dir+'\PluginsDoc.htm') then
  ShellExecute(Handle,nil,Pchar(dir+'\PluginsDoc.htm'),nil,Pchar(dir+'\'),SW_RESTORE)
 else
  If Application.MessageBox('Не найдено руководство по созданию плагинов. Хотите перейти на страничку загрузки руководства?','Помощь!',MB_ICONQUESTION+MB_YESNO)=IDYES then
   ShellExecute(Handle,nil,'http://www.RPprogs.narod.ru/Soft/CompEvo4.htm',nil,nil,SW_RESTORE)
end;

end.
