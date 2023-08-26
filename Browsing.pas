unit Browsing;

interface

uses
  Windows, Forms, SysUtils, Messages, Classes, inifiles,
  param, ComCtrls, Buttons, StdCtrls, ExtCtrls, SHDocVw, OleCtrls, Controls,
  Menus;

type
  TBrowse = class(TForm)
    Panel1: TPanel;
    WebBrowser1: TWebBrowser;
    ProgressBar1: TProgressBar;
    ComboBox1: TComboBox;
    Timer1: TTimer;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Button1: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Browse: TBrowse;
  Visited: TStringList;
  VisitedI: smallint;

implementation

uses Main, Internet;

{$R *.dfm}

procedure TBrowse.FormActivate(Sender: TObject);
var
 Sites: TSearchrec;
 Result: smallint;
begin
 MainForm.Timer1.Enabled:=false;
 ComboBox1.Items.Clear;
 VisitedI:=-1;
 ProgressBar1.Position:=0;
 Browse.Caption:=MainForm.Label131.Caption;
 WebBrowser1.Navigate('about:blank');
 Result:=FindFirst(dir+'\Sites\*', faDirectory, Sites);
 while Result=0 do begin
  if (Sites.Name<>'Browser') and (Sites.Name<>'System') and (Sites.Name<>'.') and (Sites.Name<>'..') then
   ComboBox1.Items.Add('http://www.'+Sites.Name+'/');
  Result:=FindNext(Sites);
 end;
 FindClose(Sites);

 SpeedButton1.Glyph.LoadFromFile(dir+'\Sites\Browser\Backward.bmp');
 SpeedButton2.Glyph.LoadFromFile(dir+'\Sites\Browser\Forward.bmp');
 SpeedButton3.Glyph.LoadFromFile(dir+'\Sites\Browser\Stop.bmp');
 Button1.Glyph.LoadFromFile(dir+'\Sites\Browser\Forward.bmp');

 Visited:=TStringList.Create;
 Timer1.Interval:=1025-(inetSpeed div 1000);
end;

procedure TBrowse.Timer1Timer(Sender: TObject);
var
 Site:shortstring;
 SiteConf:Tinifile;
 i: integer;
begin
 If ProgressBar1.Position<25 then
  ProgressBar1.Position:=ProgressBar1.Position+1
 else
  begin
   Site:=ComboBox1.Items.Strings[ComboBox1.ItemIndex];
   ComboBox1.Items.Delete(ComboBox1.ItemIndex);
   ComboBox1.Text:=site;
   Site:=copy(Site,pos('.',Site)+1,255);
   Site:=copy(Site,1,pos('/',Site)-1);
   WebBrowser1.Cursor:=crDefault;
   Timer1.Enabled:=false;
   SpeedButton2.Enabled:=false;
   SpeedButton3.Enabled:=false;
   ComboBox1.Enabled:=true;
   Button1.Enabled:=true;
   If Site<>'' then begin
    If Visited.Count>0 then
     for i:=VisitedI+1 to Visited.Count-1 do
      Visited.Delete(i);
    inc(VisitedI);
    Visited.Add(Combobox1.Text);
   end;
   If VisitedI>0 then
    SpeedButton1.Enabled:=true
   else
    SpeedButton1.Enabled:=false;
   If FileExists(dir+'\Sites\'+Site+'\page.ini') and FileExists(dir+'\Sites\'+Site+'\page.htm') then begin
    if random(5)<>0 then begin
     WebBrowser1.Navigate(dir+'\Sites\'+Site+'\page.htm');
     SiteConf:=TInifile.Create(dir+'\Sites\'+Site+'\page.ini');
     Browse.Caption:=SiteConf.ReadString('Options','Caption','Описание отсутсвует')+' - '+MainForm.Label131.Caption;
     InetTraffic:=InetTraffic-SiteConf.ReadInteger('Options','Traffic',3);
     if SiteConf.ReadString('Options','AddPoints','')='Mood' then begin
      if SiteConf.ReadInteger('Options','Count',5)>0 then
       Application.MessageBox('Юморной сайт! Гы! Ваше настроение растет!','Помощь!',MB_ICONINFORMATION)
      else
       Application.MessageBox('Чего-то не нравится мне этот сайт. Может свалить отсюда?','Помощь!',MB_ICONINFORMATION);
      Nastr:=Nastr+SiteConf.ReadInteger('Options','Count',5);
     end;
     if SiteConf.ReadString('Options','AddPoints','')='Rating' then begin
      if SiteConf.ReadInteger('Options','Count',5)>0 then
       Application.MessageBox('На этом сайте можно узнать много интересного о компьютерах!','Помощь!',MB_ICONINFORMATION)
      else
       Application.MessageBox('Чего-то не нравится мне этот сайт. Может свалить отсюда?','Помощь!',MB_ICONINFORMATION);
      Rating:=Rating+SiteConf.ReadInteger('Options','Count',5);
     end;
     if SiteConf.ReadString('Options','AddPoints','')='Programming' then begin
      Application.MessageBox('Занимательное чтиво! Оказывается оно способно помочь в программировании!','Помощь!',MB_ICONINFORMATION);
      znania:=znania+SiteConf.ReadInteger('Options','Count',5);
     end;
     if SiteConf.ReadString('Options','AddPoints','')='Money' then begin
      if SiteConf.ReadInteger('Options','Count',5)>0 then
       Application.MessageBox('Тут еще оказывается еще и деньги дают! Надо заходить сюда почаще.','Помощь!',MB_ICONINFORMATION)
      else
       Application.MessageBox('Тут еще оказывается еще не только деньги дают, но и обшмалять могут!','Помощь!',MB_ICONINFORMATION);
      Money:=Money+SiteConf.ReadInteger('Options','Count',5);
     end;
    end
    else
     begin
      WebBrowser1.Navigate(dir+'\Sites\System\hacked.htm');
      InetTraffic:=InetTraffic-2;
      Browse.Caption:=MainForm.Label131.Caption;
      Application.MessageBox('Ой! Страшно по таким сайтам лазить. Может выйти?','Помощь!',MB_ICONINFORMATION);
      Nastr:=Nastr-2;
      If random(7)=1 then begin
       Application.MessageBox('На этом сайте оказался страшный вирус, который используя брешь в вашем браузере снес к чертям собачьим все ваши программы!','Помощь!',MB_ICONSTOP);
       Nastr:=Nastr-5;
       MainForm.ClearPrograms(1,ActivePartition);
       Inet.Close;
       Browse.Close;
      end;
     end;
   end
   else
    begin
     WebBrowser1.Navigate(dir+'\Sites\System\404.htm');
     InetTraffic:=InetTraffic-1;
     Browse.Caption:=MainForm.Label131.Caption;
    end;
  end;
end;

procedure TBrowse.ComboBox1Change(Sender: TObject);
begin
 if ComboBox1.Text='' then Button1.Enabled:=false else Button1.Enabled:=true;
end;

procedure TBrowse.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Timer1.Enabled:=false;
 ProgressBar1.Position:=0;
 Combobox1.Enabled:=true;
 Combobox1.Text:='';
 MainForm.Timer1.Enabled:=true;
 SpeedButton1.Enabled:=false;
 SpeedButton2.Enabled:=false;
 SpeedButton3.Enabled:=false;
 Button1.Enabled:=false;
end;

procedure TBrowse.SpeedButton1Click(Sender: TObject);
var
 OpenURL: shortstring;
begin
  dec(VisitedI);
  OpenURL:=Visited.Strings[VisitedI];
  OpenURL:=copy(OpenURL,pos('.',OpenURL)+1,255);
  OpenURL:=copy(OpenURL,1,pos('/',OpenURL)-1);
  WebBrowser1.Navigate(dir+'\Sites\'+OpenURL+'\page.htm');
  ComboBox1.Text:=Visited.Strings[VisitedI];
  SpeedButton2.Enabled:=true;
  If VisitedI>0 then
   SpeedButton1.Enabled:=true
  else
   SpeedButton1.Enabled:=false;
end;

procedure TBrowse.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=VK_return then
  Button1.OnClick(self);
end;

procedure TBrowse.SpeedButton4Click(Sender: TObject);
begin
 ProgressBar1.Position:=0;
 SpeedButton3.Enabled:=true;
 ComboBox1.Enabled:=false;
 Button1.Enabled:=false;
 Timer1.Enabled:=true;
end;

procedure TBrowse.SpeedButton3Click(Sender: TObject);
begin
 Timer1.Enabled:=false;
 ProgressBar1.Position:=0;
 SpeedButton3.Enabled:=false;
 Button1.Enabled:=true;
 ComboBox1.Enabled:=true;
end;

procedure TBrowse.SpeedButton2Click(Sender: TObject);
var
 OpenURL: shortstring;
begin
 inc(VisitedI);
 OpenURL:=Visited.Strings[VisitedI];
 OpenURL:=copy(OpenURL,pos('.',OpenURL)+1,255);
 OpenURL:=copy(OpenURL,1,pos('/',OpenURL)-1);
 WebBrowser1.Navigate(dir+'\Sites\'+OpenURL+'\page.htm');
 SpeedButton1.Enabled:=true;
 ComboBox1.Text:=Visited.Strings[VisitedI];
 If VisitedI=Visited.Count-1 then
  SpeedButton2.Enabled:=false;
end;

procedure TBrowse.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Close;
end;

end.
