program CompEvo4;

uses
  Forms,
  inifiles,
  Windows,
  SysUtils,
  Classes,
  Main in 'Main.pas' {MainForm},
  Buy in 'Buy.pas' {Comp},
  Soft in 'Soft.pas' {Softw},
  Work in 'Work.pas' {Wrks},
  Welc in 'Welc.pas' {Welcome},
  Test in 'Test.pas' {Tst},
  Param in 'Param.pas',
  News in 'News.pas' {Nws},
  Anti in 'Anti.pas' {Antiv},
  Internet in 'Internet.pas' {Inet},
  About in 'About.pas' {Abt},
  Rec in 'Rec.pas' {Records},
  Inetwork in 'Inetwork.pas' {Inetwrk},
  Hist in 'Hist.pas' {History},
  Instal in 'Instal.pas' {Install},
  Harry in 'Harry.pas' {Happy},
  Banks in 'Banks.pas' {Bank},
  xk in 'xk.pas' {Xak},
  Downl in 'Downl.pas' {Down},
  Skn in 'Skn.pas' {ChSkin},
  Prate in 'Prate.pas' {Pirate},
  Develop in 'Develop.pas' {Development},
  Chts in 'Chts.pas' {Cheats},
  SoftSel in 'SoftSel.pas' {SoftSelect},
  Monits in 'Monits.pas' {Compl},
  Overclock in 'Overclock.pas' {Clock},
  BiosUpgrade in 'BiosUpgrade.pas' {Bios},
  Games in 'Games.pas' {Game},
  VidClock in 'VidClock.pas' {Vclock},
  EntWork in 'EntWork.pas' {Ext},
  Plugins in 'Plugins.pas' {Plugs},
  Browsing in 'Browsing.pas' {Browse},
  Tecnic in 'Tecnic.pas' {Technics},
  xModule in 'xModule.pas' {xForm},
  UForm in 'UForm.pas' {UpdateForm},
  PartitionMagic in 'PartitionMagic.pas' {Partition},
  PartitionCreate in 'PartitionCreate.pas' {CreatePart},
  LoadOS in 'LoadOS.pas' {Loading},
  Auction in 'Auction.pas' {ICQSell};

{$R *.res}
var
 OS:TOSVersionInfo;

begin
  Application.Initialize;
  GetDir(0,dir);
  Application.Title := 'Компьютерная эволюция 4';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TComp, Comp);
  Application.CreateForm(TSoftw, Softw);
  Application.CreateForm(TWrks, Wrks);
  Application.CreateForm(TTst, Tst);
  Application.CreateForm(TNws, Nws);
  Application.CreateForm(TInet, Inet);
  Application.CreateForm(TInetwrk, Inetwrk);
  Application.CreateForm(THappy, Happy);
  Application.CreateForm(TBank, Bank);
  Application.CreateForm(TXak, Xak);
  Application.CreateForm(TPirate, Pirate);
  Application.CreateForm(TDevelopment, Development);
  Application.CreateForm(TSoftSelect, SoftSelect);
  Application.CreateForm(TCompl, Compl);
  Application.CreateForm(TClock, Clock);
  Application.CreateForm(TGame, Game);
  Application.CreateForm(TVclock, Vclock);
  Application.CreateForm(TExt, Ext);
  Application.CreateForm(TBrowse, Browse);
  Application.CreateForm(TTechnics, Technics);
  Application.CreateForm(TxForm, xForm);
  Application.CreateForm(TUpdateForm, UpdateForm);
  Application.CreateForm(TPartition, Partition);
  Application.CreateForm(TICQSell, ICQSell);
  Application.CreateForm(TWelcome, Welcome);
  Application.CreateForm(TLoading, Loading);
  Os.dwOSVersionInfoSize:=SizeOf(OS);
  GetVersionEx(OS);
  Welcome.Image1.Picture.LoadFromFile(dir+'\Images\Welcome.jpg');
  Nws.Image1.Picture.LoadFromFile(dir+'\Images\News.jpg');
  Inet.Image1.Picture.LoadFromFile(dir+'\Images\Inet.jpg');
  Development.Image1.Picture.LoadFromFile(dir+'\Images\Develop.jpg');
  Comp.Image1.Picture.LoadFromFile(dir+'\Images\Comp.jpg');
  Softw.Image1.Picture.LoadFromFile(dir+'\Images\Soft.jpg');
  Wrks.Image1.Picture.LoadFromFile(dir+'\Images\Work.jpg');
  Happy.Image1.Picture.LoadFromFile(dir+'\Images\Rest.jpg');
  Bank.Image1.Picture.LoadFromFile(dir+'\Images\Bank.jpg');
  Clock.Image1.Picture.LoadFromFile(dir+'\Images\Motherboard.jpg');
  Game.Image1.Picture.LoadFromFile(dir+'\Images\Games.jpg');
  Vclock.Image1.Picture.LoadFromFile(dir+'\Images\Videoboard.jpg');
  Ext.Image1.Picture.LoadFromFile(dir+'\Images\Printer.jpg');
  Tst.Image1.Picture.LoadFromFile(dir+'\Images\Testing.jpg');
  xak.Image1.Picture.LoadFromFile(dir+'\Images\Hacking.jpg');
  Pirate.Image1.Picture.LoadFromFile(dir+'\Images\Pirate.jpg');
  xForm.Image1.Picture.LoadFromFile(dir+'\Images\xOverclocking.jpg');
  Technics.Image1.Picture.LoadFromFile(dir+'\Images\House.jpg');
  UpdateForm.Image1.Picture.LoadFromFile(dir+'\Images\OSUpdate.jpg');
  Partition.Image1.Picture.LoadFromFile(dir+'\Images\Harddisk.jpg');
  Loading.Image1.Picture.LoadFromFile(dir+'\Images\Monitor.jpg');
  ICQSell.Image1.Picture.LoadFromFile(dir+'\Images\Auction.jpg');
  MainForm.SpamMessages.Lines.LoadFromFile(dir+'\Inf\Spam.inf');
  MainForm.NewsTicker.Lines.LoadFromFile(dir+'\Inf\News.inf');
  Config:=Tinifile.Create(dir+'\Config.ini');
  sFile:=dir+'\Skins\'+config.ReadString('Options','Skin','Keramik.ces');
  MainForm.PlayList.Directory:=dir+'\Music';
  MainForm.PlayList.Mask:=config.ReadString('Options','MusicFormats','*.mid;*.rmi;*.midi');
  MainForm.PlayList.ItemIndex:=0;
  MainForm.MediaPlayer1.FileName:=dir+'\Music\'+MainForm.PlayList.Items.Strings[MainForm.PlayList.ItemIndex];
  If config.ReadInteger('Options','Music',1)=1 then begin
   MainForm.MediaPlayer1.Open;
   MainForm.MediaPlayer1.Play;
   MainForm.N18.Checked:=true;
  end;
  If config.ReadInteger('Options','AutoSave',0)=1 then
   MainForm.N15.Checked:=true
  else
   MainForm.N15.Checked:=false;
  If (config.ReadInteger('Options','WindowMode',1)=0) or ((Screen.Width<=800) and (Screen.Height<=600)) then begin
   If (Screen.Width<=800) and (Screen.Height<=600) then begin
    MainForm.N19.Checked:=false;
    MainForm.N19.Enabled:=false;
   end
   else
   begin
    MainForm.N19.Enabled:=true;
    MainForm.N19.Checked:=false;
   end;
   ZeroMemory(@dm, sizeof(TDEVMODE));
   dm.dmSize := sizeof(TDEVMODE);
   MainForm.BorderStyle:=bsNone;
   dm.dmPelsWidth := 800;
   MainForm.ClientWidth:=800;
   dm.dmPelsHeight := 600;
   MainForm.ClientHeight:=600;
   dm.dmFields := DM_PELSWIDTH or DM_PELSHEIGHT;
   ChangeDisplaySettings(dm, 0);
   MainForm.N26.Enabled:=false;
   Application.CreateForm(TForm, Temp);
   Temp.Width:=800;
   Temp.Height:=600;
   Temp.Position:=poScreenCenter;
   Temp.BorderStyle:=bsNone;
   Temp.Color:=0000000;
   Temp.Show;
  end
  else
   begin
    If os.dwMajorVersion>=5 then
     MainForm.N26.Enabled:=true;
    TransPercent:= 255 - 255 * config.ReadInteger('Options','Transparency',30) div 100;
    If config.ReadInteger('Options','Transparent',0)=1 then begin
     MainForm.AlphaBlend := true;
     MainForm.AlphaBlendValue := TransPercent;
     MainForm.N26.Enabled:=true;
     MainForm.N26.Checked:=true;
    end;
   end;
  EndYear:=config.ReadInteger('Options','EndYear',2005);
  Year:=config.ReadInteger('Options','StartYear',2001);
  Skin:=Tinifile.Create(sFile);
  MainForm.ChangeSkin.Execute;
  HackPrograms:=TStringList.Create;
  Compl.Image1.Stretch:=Config.ReadBool('Options','StretchThumbnails',False);
  If config.ReadInteger('Options','AddonVersion',0)=1 then
   Welcome.Label2.Caption:=Welcome.Label2.Caption+' Addon by '+Config.ReadString('Options','AddonCreator','');
  If config.ReadInteger('Options','News',0)=1 then begin
   ShowNews:=true;
   MainForm.N25.Checked:=true;
  end
  else
   begin
    ShowNews:=false;
    MainForm.N25.Checked:=false;
   end;
  If config.ReadInteger('Options','UseSystray',0)=1 then begin
   MainForm.MyTray.Enabled:=true;
   MainForm.MyTray.IconVisible:=true;
   MainForm.MyTray.MinimizeToTray:=true;
  end
  else
   MainForm.MyTray.Free;
  ShowHelp:=Config.ReadBool('Options','ShowHelpOnNewGame',False);
  DebugVersion:=Config.ReadBool('Options','DebugVersion',False);
  If FileExists(dir+'\Unzdll.dll') and FileExists(dir+'\Config.ini') and FileExists(dir+'\Zipdll.dll') and FileExists(dir+'\History.txt') then begin
   Welcome.ShowModal;
   MainForm.Hide;
   ClearTempFiles;
   Application.Run;
  end
  else
   Application.MessageBox('Отсутствуют файлы необходимые для запуска игры','Помощь!',MB_ICONSTOP);
end.
