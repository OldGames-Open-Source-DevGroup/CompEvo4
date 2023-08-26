unit Param;

interface

uses inifiles, Windows, Classes, SysUtils;

procedure LoadDiskStructure(FileName: shortstring);
procedure WriteDiskStructure(FileName: shortstring);
procedure SetToNo(a,b: integer);
procedure ClearTempFiles;
procedure ChangeOS(Partition: integer);
function CheckIP(IP: string): boolean;

type Software = record
 OS: shortstring;
 OSType: shortstring;
 Dev: shortstring;
 DevType: shortstring;
 Antivirus: shortstring;
 AntivirusServer: shortstring;
 AntivirusBases: shortstring;
 Antispam: shortstring;
 Firewall: shortstring;
 Defragmenter: shortstring;
 DiskOperator: shortstring;
 Browser: shortstring;
 FileManager: shortstring;
 FileManagerRun: shortstring;
 Benchmark: shortstring;
 CopyCD: shortstring;
 AudioGrabber: shortstring;
 VideoEncoder: shortstring;
 VideoSoft: shortstring;
 GamesList:TStringList;
 HackPrograms:TStringList;
end;

type Part = record
 Labe1: shortstring;
 FileSystem: shortstring;
 Size: integer;
 Free: integer;
 Active: boolean;
 Soft: software;
end;

var
 rating:real=0;
 money:real;
 UserName:shortstring;
 month:integer;
 year:integer;
 nastr:real;
 day:integer;
 hour:integer=0;
 testk:integer=0;
 nwsk:integer=0;
 n:integer;
 HardSpace:integer=0;
 HardSpeed:integer=0;
 Vozrast:integer;
 l:integer=0;
 Randomizer:integer=0;
 RandomizerCount:integer;
 DangerC:integer=0;
 DangerCCount:integer=0;
 dir:shortstring;
 Antivcount:integer=0;
 vklad,vkladp:integer;
 fldown:boolean;
 statusvalue:integer=0;
 CD:integer=0;
 ass:integer=0;
 pas:integer=0;
 cpp:integer=0;
 bas:integer=0;
 znania:integer=0;
 Config:tinifile;
 skin: Tinifile;
 sFile: shortstring;
 unixxak:integer=0;
 winxak:integer=0;
 cdr:integer=0;
 progs:integer=0;
 vlasti:integer=100;
 dng:integer=0;
 dm : TDEVMODE;
 X: cardinal;
 Y: cardinal;
 Z: word;
 hardprm:shortstring='';
 chipset:shortstring='';
 updatecount:integer=0;
 updateprm:shortstring='';
 scanning:integer=0;
 printing:integer=0;
 safety:integer=0;
 inetspeed:integer=0;
 nadeg:integer=0;
 cpuspeed:integer=0;
 cpuclock:integer=0;
 cdspeed:integer=0;
 videoclock:integer=0;
 EndYear:integer;
 videospeed:integer=0;
 temperature:integer=0;
 coolerspeed:integer=0;
 cdrspeed:integer=0;
 htt:integer=0;
 lastwork:boolean=false;
 zarpl:integer=0;
 cpufsb:integer=0;
 cpumnozh:integer=0;
 cpupercent:integer=0;
 cpuvolt:real=0;
 ocpufsb:integer=0;
 ocpumnozh:integer=0;
 ocpuvolt:real=0;
 videocore:integer=0;
 videomem:integer=0;
 videopercent:integer=0;
 videochip:shortstring='';
 Videomemory:integer=0;
 ovideomem:integer=0;
 ovideocore:integer=0;
 dvd:boolean=false;
 VideoChipset:shortstring='';
 hardskidka:integer=0;
 videoskidka:integer=0;
 procskidka:integer=0;
 shans:integer=0;
 os:shortstring;
 ozycapacity:integer=0;
 dvdrspeed:integer=0;
 dvdrwspeed:integer=0;
 cdrwspeed:integer=0;
 ramspeed:integer=0;
 videoshina:shortstring='';
 devtype:shortstring='';
 spamk:integer=0;
 AntivirusBases:shortstring='';
 arest:integer=0;
 GameSpeed:integer;
 LastGame:shortstring='';
 toshn:integer=0;
 badcd:integer=0;
 defragspeed:integer=0;
 Credit:integer=0;
 CreditPercent:integer=0;
 CreditEnd:integer=0;
 Peni:real=0;
 DefragTime:integer;
 Photo:shortstring='';
 TransPercent:integer;
 AntivirusServer:shortstring='';
 FlatComfort:integer=0;
 CarPrestige:integer=0;
 FlatPay:integer=0;
 MinTop:smallint=0;
 Flat:shortstring='';
 Car:shortstring='';
 Comment:string='';
 Hosting:integer=0;
 VideoTemp:integer=0;
 xDone:boolean=false;
 StoMBfree:boolean=false;
 InetTraffic:integer=0;
 MonitorDiag:integer=0;
 RamType:shortstring='';
 a, b: integer;
 Parts: array of array of Part;
 GamesList:TStringList;
 HackPrograms:TStringList;
 ActivePartition: integer=0;
 Buyers:TStringList;
 IsStudy:boolean=false;
 StudyProgress: integer=0;
 SenderTag:integer=0;
 MultiChrome:shortstring='';
 SecondVideoCard:shortstring='';
 DebugVersion:boolean=false;
 ShowHelp:boolean=false;
 Login:shortstring='';
 Password:shortstring='';
 RememberPassword:boolean=false; // Оставлено для будущих возможностей
 Telefon: shortstring='';
 YourIP: shortstring='';
 ServerIP: shortstring='';

implementation
 uses Main;

procedure LoadDiskStructure(FileName: shortstring);
var
 DiskFile, SoftFile: Tinifile;
 i,j: integer;
begin
 Parts:=nil;
 DiskFile:=Tinifile.Create(FileName);
 setLength(Parts,DiskFile.ReadInteger('Common','Primary',1));
 for i:=0 to Length(Parts)-1 do begin
  setLength(Parts[i],DiskFile.ReadInteger('Primary '+IntToStr(i+1),'Logical',0)+1);
  Parts[i][0].Labe1:=DiskFile.ReadString('Primary '+IntToStr(i+1),'Label','');
  Parts[i][0].FileSystem:=DiskFile.ReadString('Primary '+IntToStr(i+1),'FileSystem','');
  Parts[i][0].Size:=DiskFile.ReadInteger('Primary '+IntToStr(i+1),'Size',0);
  Parts[i][0].Free:=DiskFile.ReadInteger('Primary '+IntToStr(i+1),'Free',0);
  Parts[i][0].Active:=DiskFile.ReadBool('Primary '+IntToStr(i+1),'Active',False);
  If Parts[i][0].Active then
   ActivePartition:=i;
  Parts[i][0].Soft.OS:=DiskFile.ReadString('Primary '+IntToStr(i+1),'OS','');
  Parts[i][0].Soft.OSType:=DiskFile.ReadString('Primary '+IntToStr(i+1),'OSType','');
  //=====Загрузка списка игр и хакерских программ=====
  Parts[i][0].Soft.GamesList:=TStringList.Create;
  Parts[i][0].Soft.HackPrograms:=TStringList.Create;
  If FileExists(ExtractFileDir(FileName)+'\Primary '+IntToStr(i+1)+'.gl') then
   Parts[i][0].Soft.GamesList.LoadFromFile(ExtractFileDir(FileName)+'\Primary '+IntToStr(i+1)+'.gl')
  else
   Parts[i][0].Soft.GamesList.Clear;
  If FileExists(ExtractFileDir(FileName)+'\Primary '+IntToStr(i+1)+'.hl') then
   Parts[i][0].Soft.HackPrograms.LoadFromFile(ExtractFileDir(FileName)+'\Primary '+IntToStr(i+1)+'.hl')
  else
   Parts[i][0].Soft.HackPrograms.Clear;
  //=====Загрузка всего остального софта=====
  SoftFile:=Tinifile.Create(ExtractFileDir(FileName)+'\Primary '+IntToStr(i+1)+'.swl');
  Parts[i,0].Soft.Antivirus:=SoftFile.ReadString('Software','Antivirus','Нет');
  Parts[i,0].Soft.Dev:=SoftFile.ReadString('Software','IDE','Нет');
  Parts[i,0].Soft.DevType:=SoftFile.ReadString('Software','IDEType','');
  Parts[i,0].Soft.FileManager:=SoftFile.ReadString('Software','FileManager','Нет');
  Parts[i,0].Soft.FileManagerRun:=SoftFile.ReadString('Software','FileManagerRun','Нет');
  Parts[i,0].Soft.Firewall:=SoftFile.ReadString('Software','Firewall','Нет');
  Parts[i,0].Soft.Defragmenter:=SoftFile.ReadString('Software','Defragmenter','Нет');
  Parts[i,0].Soft.DiskOperator:=SoftFile.ReadString('Software','DiskOperator','Нет');
  Parts[i,0].Soft.CopyCD:=SoftFile.ReadString('Software','CDCopying','Нет');
  Parts[i,0].Soft.VideoEncoder:=SoftFile.ReadString('Software','VideoEncoder','Нет');
  Parts[i,0].Soft.AudioGrabber:=SoftFile.ReadString('Software','AudioGrabber','Нет');
  Parts[i,0].Soft.VideoSoft:=SoftFile.ReadString('Software','VideoOverclockSoft','Нет');
  Parts[i,0].Soft.Antispam:=SoftFile.ReadString('Software','Antispam','Нет');
  Parts[i,0].Soft.Browser:=SoftFile.ReadString('Software','Browser','Нет');
  Parts[i,0].Soft.Benchmark:=SoftFile.ReadString('Software','Benchmark','Нет');
  for j:=1 to DiskFile.ReadInteger('Primary '+IntToStr(i+1),'Logical',0) do begin
   Parts[i][j].Labe1:=DiskFile.ReadString('Primary '+IntToStr(i+1)+' - Logical '+IntToStr(j),'Label','');
   Parts[i][j].FileSystem:=DiskFile.ReadString('Primary '+IntToStr(i+1)+' - Logical '+IntToStr(j),'FileSystem','');
   Parts[i][j].Size:=DiskFile.ReadInteger('Primary '+IntToStr(i+1)+' - Logical '+IntToStr(j),'Size',0);
   Parts[i][j].Free:=DiskFile.ReadInteger('Primary '+IntToStr(i+1)+' - Logical '+IntToStr(j),'Free',0);
   Parts[i][j].Active:=DiskFile.ReadBool('Primary '+IntToStr(i+1)+' - Logical '+IntToStr(j),'Active',False);
   Parts[i][j].Soft.OS:=DiskFile.ReadString('Primary '+IntToStr(i+1)+' - Logical '+IntToStr(j),'OS','');
   Parts[i][j].Soft.OSType:=DiskFile.ReadString('Primary '+IntToStr(i+1)+' - Logical '+IntToStr(j),'OSType','');
  end;
 end;
 MainForm.Label30.Caption:=Parts[ActivePartition,0].Soft.OS;
 os:=Parts[ActivePartition][0].Soft.OSType;
 GamesList:=Parts[ActivePartition][0].Soft.GamesList;
 HackPrograms:=Parts[ActivePartition][0].Soft.HackPrograms;
 MainForm.Label31.Caption:=Parts[ActivePartition,0].Soft.Antivirus;
 MainForm.Label32.Caption:=Parts[ActivePartition,0].Soft.Dev;
 DevType:=Parts[ActivePartition,0].Soft.DevType;
 MainForm.Label48.Caption:=Parts[ActivePartition,0].Soft.FileManager;
 MainForm.Label51.Caption:=Parts[ActivePartition,0].Soft.Firewall;
 MainForm.Label53.Caption:=Parts[ActivePartition,0].Soft.Defragmenter;
 MainForm.Label54.Caption:=Parts[ActivePartition,0].Soft.DiskOperator;
 MainForm.Label56.Caption:=Parts[ActivePartition,0].Soft.CopyCD;
 MainForm.Label57.Caption:=Parts[ActivePartition,0].Soft.VideoEncoder;
 MainForm.Label58.Caption:=Parts[ActivePartition,0].Soft.AudioGrabber;
 MainForm.Label109.Caption:=Parts[ActivePartition,0].Soft.VideoSoft;
 MainForm.Label123.Caption:=Parts[ActivePartition,0].Soft.Antispam;
 MainForm.Label131.Caption:=Parts[ActivePartition,0].Soft.Browser;
 MainForm.Label133.Caption:=Parts[ActivePartition,0].Soft.Benchmark;
end;

procedure WriteDiskStructure(FileName: shortstring);
var
 DiskFile, SoftFile: Tinifile;
 i,j: integer;
begin
 DiskFile:=Tinifile.Create(FileName);
 for i:=0 to Length(Parts)-1 do begin
  DiskFile.WriteInteger('Common','Primary',Length(Parts));
  DiskFile.WriteInteger('Primary '+IntToStr(i+1),'Logical',Length(Parts[i])-1);
  DiskFile.WriteString('Primary '+IntToStr(i+1),'Label',Parts[i][0].Labe1);
  DiskFile.WriteString('Primary '+IntToStr(i+1),'FileSystem',Parts[i][0].FileSystem);
  DiskFile.WriteInteger('Primary '+IntToStr(i+1),'Size',Parts[i][0].Size);
  DiskFile.WriteInteger('Primary '+IntToStr(i+1),'Free',Parts[i][0].Free);
  DiskFile.WriteBool('Primary '+IntToStr(i+1),'Active',Parts[i][0].Active);
  DiskFile.WriteString('Primary '+IntToStr(i+1),'OS',Parts[i][0].Soft.OS);
  DiskFile.WriteString('Primary '+IntToStr(i+1),'OSType',Parts[i][0].Soft.OSType);
  //=====Загрузка списка игр и хакерских программ=====
  If Parts[i][0].Soft.GamesList<>nil then
   Parts[i][0].Soft.GamesList.SaveToFile(ExtractFileDir(FileName)+'\Primary '+IntToStr(i+1)+'.gl');
  If Parts[i][0].Soft.HackPrograms<>nil then
   Parts[i][0].Soft.HackPrograms.SaveToFile(ExtractFileDir(FileName)+'\Primary '+IntToStr(i+1)+'.hl');
  //=====Загрузка всего остального софта=====
  SoftFile:=Tinifile.Create(ExtractFileDir(FileName)+'\Primary '+IntToStr(i+1)+'.swl');
  SoftFile.WriteString('Software','Antivirus',Parts[i,0].Soft.Antivirus);
  SoftFile.WriteString('Software','IDE',Parts[i,0].Soft.Dev);
  SoftFile.WriteString('Software','IDEType',Parts[i,0].Soft.DevType);
  SoftFile.WriteString('Software','FileManager',Parts[i,0].Soft.FileManager);
  SoftFile.WriteString('Software','FileManagerRun',Parts[i,0].Soft.FileManagerRun);
  SoftFile.WriteString('Software','Firewall',Parts[i,0].Soft.Firewall);
  SoftFile.WriteString('Software','Defragmenter',Parts[i,0].Soft.Defragmenter);
  SoftFile.WriteString('Software','DiskOperator',Parts[i,0].Soft.DiskOperator);
  SoftFile.WriteString('Software','CDCopying',Parts[i,0].Soft.CopyCD);
  SoftFile.WriteString('Software','VideoEncoder',Parts[i,0].Soft.VideoEncoder);
  SoftFile.WriteString('Software','AudioGrabber',Parts[i,0].Soft.AudioGrabber);
  SoftFile.WriteString('Software','VideoOverclockSoft',Parts[i,0].Soft.VideoSoft);
  SoftFile.WriteString('Software','Antispam',Parts[i,0].Soft.Antispam);
  SoftFile.WriteString('Software','Browser',Parts[i,0].Soft.Browser);
  SoftFile.WriteString('Software','Benchmark',Parts[i,0].Soft.Benchmark);
  for j:=1 to Length(Parts[i])-1 do begin
   DiskFile.WriteString('Primary '+IntToStr(i+1)+' - Logical '+IntToStr(j),'Label',Parts[i][j].Labe1);
   DiskFile.WriteString('Primary '+IntToStr(i+1)+' - Logical '+IntToStr(j),'FileSystem',Parts[i][j].FileSystem);
   DiskFile.WriteInteger('Primary '+IntToStr(i+1)+' - Logical '+IntToStr(j),'Size',Parts[i][j].Size);
   DiskFile.WriteInteger('Primary '+IntToStr(i+1)+' - Logical '+IntToStr(j),'Free',Parts[i][j].Free);
   DiskFile.WriteBool('Primary '+IntToStr(i+1)+' - Logical '+IntToStr(j),'Active',Parts[i][j].Active);
   DiskFile.WriteString('Primary '+IntToStr(i+1)+' - Logical '+IntToStr(j),'OS',Parts[i][j].Soft.OS);
   DiskFile.WriteString('Primary '+IntToStr(i+1)+' - Logical '+IntToStr(j),'OSType',Parts[i][j].Soft.OSType);
  end;
 end;
end;

procedure SetToNo(a,b: integer);
begin
 Parts[a,b].Soft.Antivirus:='Нет';
 Parts[a,b].Soft.Dev:='Нет';
 Parts[a,b].Soft.FileManager:='Нет';
 Parts[a,b].Soft.FileManagerRun:='Нет';
 Parts[a,b].Soft.Firewall:='Нет';
 Parts[a,b].Soft.Defragmenter:='Нет';
 Parts[a,b].Soft.DiskOperator:='Нет';
 Parts[a,b].Soft.CopyCD:='Нет';
 Parts[a,b].Soft.VideoEncoder:='Нет';
 Parts[a,b].Soft.AudioGrabber:='Нет';
 Parts[a,b].Soft.VideoSoft:='Нет';
 Parts[a,b].Soft.Antispam:='Нет';
 Parts[a,b].Soft.Browser:='Нет';
 Parts[a,b].Soft.Benchmark:='Нет';
end;

procedure ClearTempFiles;
var
 SearchResult: integer;
 TempFile: TSearchRec;
 FileToDelete: file;
begin
 SearchResult:=FindFirst(dir+'\Temp\*.*', faAnyFile, TempFile);
 while SearchResult=0 do begin
  If (TempFile.Name<>'.') and (TempFile.Name<>'..') then begin
   try
    assignfile(FileToDelete,dir+'\Temp\'+TempFile.Name);
    Erase(FileToDelete);
   except
    on EInOutError do ;
   end;
  end;
  SearchResult:=FindNext(TempFile);
 end;
 FindClose(TempFile);
end;

procedure ChangeOS(Partition: integer);
begin
 os:=Parts[Partition,0].Soft.OSType;
 devtype:=Parts[Partition,0].Soft.DevType;
 with MainForm do begin
  Label30.Caption:=Parts[Partition,0].Soft.OS;
  Label31.Caption:=Parts[Partition,0].Soft.Antivirus;
  Label32.Caption:=Parts[Partition,0].Soft.Dev;
  Label48.Caption:=Parts[Partition,0].Soft.FileManager;
  Label51.Caption:=Parts[Partition,0].Soft.Firewall;
  Label53.Caption:=Parts[Partition,0].Soft.Defragmenter;
  Label54.Caption:=Parts[Partition,0].Soft.DiskOperator;
  Label56.Caption:=Parts[Partition,0].Soft.CopyCD;
  Label57.Caption:=Parts[Partition,0].Soft.VideoEncoder;
  Label58.Caption:=Parts[Partition,0].Soft.AudioGrabber;
  Label109.Caption:=Parts[Partition,0].Soft.VideoSoft;
  Label123.Caption:=Parts[Partition,0].Soft.Antispam;
  Label131.Caption:=Parts[Partition,0].Soft.Browser;
  Label133.Caption:=Parts[Partition,0].Soft.Benchmark;
 end;
 HackPrograms:=Parts[Partition,0].Soft.HackPrograms;
 GamesList:=Parts[Partition,0].Soft.GamesList;
end;

function CheckIP(IP: string): boolean;
var
 i, pc: integer;
 s: string;
begin
 pc:=0; s:=IP+'.';
 if IP[1] in ['1'..'9'] then begin
  for i:=1 to Length(IP)-1 do
   if (IP[i]='.') and (IP[i-1] in ['0'..'9']) and (IP[i+1] in ['0'..'9']) then inc(pc);
  if pc=3 then begin
   while pos('.',s)<>0 do
    if (copy(s,1,pos('.',s)-1)='255') or (copy(s,1,pos('.',s)-1)='0') then
     break
    else
     s:=copy(s,pos('.',s)+1,255);
   if s<>'' then
    Result:=false
   else
    Result:=true;
  end
  else
   Result:=false;
 end
 else
  Result:=false;
end;
end.
