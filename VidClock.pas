unit VidClock;

interface

uses
  Windows, Forms, sysutils, xModule,
  param, ExtCtrls, ComCtrls, StdCtrls, Controls, Classes;

type
  TVclock = class(TForm)
    GroupBox1: TGroupBox;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Image1: TImage;
    Button5: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button5Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Vclock: TVclock;
  Tparam:shortstring='';
  chan:boolean=false;
  VideoClocker, Potential, ClockTemp:integer;

implementation

uses Main, SoftSel;

{$R *.dfm}

procedure TVclock.Button2Click(Sender: TObject);
begin
 VideoTemp:=VideoTemp+ClockTemp;
 Close;
end;

procedure TVclock.Button1Click(Sender: TObject);
begin
 If MainForm.Label30.Caption<>'Нет' then begin
  MainForm.Timer1.Enabled:=false;
  SoftSelect.Caption:='Выбор программ для разгона видеокарты';
  dataprm:='Video';
  assignfile(data,dir+'\Data\Videosoft.dat');
  SoftSelect.ShowModal;
 end
 else
  Application.MessageBox('Для начала необходимо установить операционную систему на компьютер!','Помощь!',MB_ICONSTOP);
end;

procedure TVclock.TrackBar1Change(Sender: TObject);
begin
 Button3.Enabled:=true;
 Label1.Caption:='Частота ядра - '+IntToStr(TrackBar1.Position)+' МГц';
 chan:=true;
end;

procedure TVclock.FormActivate(Sender: TObject);
begin
 ClockTemp:=0;
 If SecondVideoCard<>'' then
  Label3.Caption:='В системе установлено две видеокарты.'
 else
  Label3.Caption:='Название - '+MainForm.Label76.Caption;
 Label4.Caption:=videochip;
 Label5.Caption:='Объем видеопамяти - '+IntToStr(videomemory)+' Мб';
 Label7.Caption:='Ядро - '+IntToStr(ovideocore)+' МГц';
 Label8.Caption:='Память - '+IntToStr(ovideomem)+' МГц';
 Trackbar1.Position:=videocore;
 Trackbar2.Position:=videomem;
 Label9.Caption:='Программа для разгона - '+MainForm.Label109.Caption;
 If MAinform.label109.Caption<>'Нет' then
  Groupbox1.Enabled:=true
 else
  Groupbox1.Enabled:=false;
 Label1.Caption:='Частота ядра - '+IntToStr(TrackBar1.Position)+' МГц';
 Label2.Caption:='Частота памяти - '+IntToStr(TrackBar2.Position)+' МГц';
 Potential:=(ovideocore+ovideomem)*videopercent div 100;
 Button3.Enabled:=false;
end;

procedure TVclock.Button3Click(Sender: TObject);
begin
 Tparam:='Test';
 GroupBox1.Enabled:=false;
 Timer1.Enabled:=true;
end;

procedure TVclock.Button4Click(Sender: TObject);
begin
 Tparam:='Detect';
 GroupBox1.Enabled:=false;
 Timer1.Enabled:=true;
end;

procedure TVclock.Timer1Timer(Sender: TObject);
begin
 If ProgressBar1.Position=1 then
  MainForm.Timer1.Enabled:=false;
 If progressbar1.position<100 then
  progressbar1.Position:=progressbar1.Position+1
 else
  begin
   If Tparam='Detect' then begin
    TrackBar1.Position:=ovideocore+((ovideocore*(videopercent-random(5))) div 100);
    TrackBar2.Position:=ovideomem+((ovideomem*(videopercent-random(5))) div 100);
    TParam:='Test';
   end;
   If Tparam='Test' then begin
    videocore:=TrackBar1.Position;
    videomem:=TrackBar2.Position;
    If ((videocore<>ovideocore) or (videomem<>ovideomem)) and (chan=true)  then
     videoclocker:=(ovideocore+ovideomem)+((ovideocore+ovideomem)*videopercent div 100)-(TrackBar1.Position+TrackBar2.Position)
    else
     videoclocker:=Potential;
    If VideoClocker>=0 then begin
     Button3.Enabled:=false;
     If VideoClocker<>Potential then begin
      VideoClock:=(Potential-videoclocker)*10;
      ClockTemp:=VideoPercent;
     end
     else
      begin
       ClockTemp:=25;
       VideoClock:=0;
      end;
    end
     else
      begin
       ProgressBar1.Position:=0;
       Timer1.Enabled:=false;
       Application.MessageBox('Видеокарта не может работать на таких частотах!','Помощь!',MB_ICONSTOP);
      end;
    end;
   GroupBox1.Enabled:=true;
   ProgressBar1.Position:=0;
   Timer1.Enabled:=false;
  end;
end;

procedure TVclock.TrackBar2Change(Sender: TObject);
begin
 Button3.Enabled:=true;
 Label2.Caption:='Частота памяти - '+IntToStr(TrackBar2.Position)+' МГц';
 chan:=true;
end;

procedure TVclock.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 If Button3.Enabled=true then begin
  Application.MessageBox('Нельзя разгонять видеокарту не протестировав предварительно настройки!','Помощь!',MB_ICONSTOP);
  Canclose:=false;
 end
 else
  Canclose:=true;
end;

procedure TVclock.Button5Click(Sender: TObject);
begin
 If not xDone then
  xForm.ShowModal
 else
  Application.MessageBox('Вы уже модифицировали свою видеокарту однажды!','Помощь!',MB_ICONSTOP);
end;

procedure TVclock.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button2.OnClick(self);
end;

end.
