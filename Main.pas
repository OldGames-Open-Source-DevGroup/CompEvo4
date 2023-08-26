unit Main;

interface

uses
  Windows, SysUtils, Graphics, Forms, Menus, param, ActnList,
  about, XPMan, math, UForm, jpeg, ImgList, MPlayer, BmpButton,
  ZipMstr, inifiles, WinInet, ShellAPI, Controls, Classes,
  Dialogs, ExtCtrls, StdCtrls, FileCtrl, ComCtrls, Messages,
  CoolTrayIcon, ExtDlgs, xModule;

type
  TMainForm = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox6: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    Timer1: TTimer;
    Label37: TLabel;
    Label38: TLabel;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    ActionList1: TActionList;
    Label18: TLabel;
    Label36: TLabel;
    Label17: TLabel;
    Label34: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    PopupMenu1: TPopupMenu;
    Image1: TImage;
    Image2: TImage;
    N1: TMenuItem;
    N2: TMenuItem;
    Pause: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    GroupBox5: TGroupBox;
    N3: TMenuItem;
    N11: TMenuItem;
    Image4: TImage;
    DateLabel: TLabel;
    Image5: TImage;
    MediaPlayer1: TMediaPlayer;
    N12: TMenuItem;
    Label45: TLabel;
    BmpButton1: TBmpButton;
    ZipMaster1: TZipMaster;
    N13: TMenuItem;
    N14: TMenuItem;
    ChangeSkin: TAction;
    NastrP: TProgressBar;
    RatingP: TProgressBar;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    GroupBox4: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label59: TLabel;
    VlastiP: TProgressBar;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    GroupBox7: TGroupBox;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    GroupBox8: TGroupBox;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    GroupBox9: TGroupBox;
    Label15: TLabel;
    Label33: TLabel;
    Label16: TLabel;
    Label41: TLabel;
    GroupBox10: TGroupBox;
    Label97: TLabel;
    Label101: TLabel;
    GroupBox11: TGroupBox;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    GroupBox12: TGroupBox;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Image3: TImage;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    PlayList: TFileListBox;
    N20: TMenuItem;
    Image6: TImage;
    Image7: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Label118: TLabel;
    Label119: TLabel;
    Label94: TLabel;
    Label98: TLabel;
    Label95: TLabel;
    Label99: TLabel;
    Label96: TLabel;
    Label100: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    Upd: TAction;
    GameSave: TAction;
    N15: TMenuItem;
    Label122: TLabel;
    Label123: TLabel;
    SpamMessages: TMemo;
    Label124: TLabel;
    Label125: TLabel;
    MyTray: TCoolTrayIcon;
    N24: TMenuItem;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label46: TLabel;
    Label13: TLabel;
    Label31: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    NewsTicker: TMemo;
    N25: TMenuItem;
    Label52: TLabel;
    Label53: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    N26: TMenuItem;
    Label130: TLabel;
    Label131: TLabel;
    N27: TMenuItem;
    N28: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    BmpButton2: TBmpButton;
    BmpButton3: TBmpButton;
    BmpButton4: TBmpButton;
    BmpButton5: TBmpButton;
    BmpButton6: TBmpButton;
    BmpButton7: TBmpButton;
    BmpButton8: TBmpButton;
    BmpButton9: TBmpButton;
    BmpButton10: TBmpButton;
    Label132: TLabel;
    Label133: TLabel;
    UsernameLabel: TLabel;
    Label35: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Image13: TImage;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label56: TLabel;
    Label58: TLabel;
    Label57: TLabel;
    PopupMenu2: TPopupMenu;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    Image8: TImage;
    Label55: TLabel;
    Label140: TLabel;
    N7: TMenuItem;
    Label49: TLabel;
    Label54: TLabel;
    ImageList1: TImageList;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure PauseClick(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure Label36MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label25MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure N1Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure ChangeSkinExecute(Sender: TObject);
    procedure NastrPMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RatingPMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label45MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N19Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure VlastiPMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BmpButton1Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure UpdExecute(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure Label76MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GameSaveExecute(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure Label24MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label29MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label28MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label73MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label74MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label75MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label23MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure N5Click(Sender: TObject);
    procedure Label31MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure MyTrayClick(Sender: TObject);
    procedure GroupBox1Click(Sender: TObject);
    procedure GroupBox2Click(Sender: TObject);
    procedure GroupBox3Click(Sender: TObject);
    procedure GroupBox5Click(Sender: TObject);
    procedure GroupBox4Click(Sender: TObject);
    procedure GroupBox7Click(Sender: TObject);
    procedure GroupBox8Click(Sender: TObject);
    procedure GroupBox9Click(Sender: TObject);
    procedure GroupBox10Click(Sender: TObject);
    procedure GroupBox11Click(Sender: TObject);
    procedure GroupBox12Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure Label43MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure N25Click(Sender: TObject);
    procedure Label21MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label81MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Label127MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure N26Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure BmpButton10Click(Sender: TObject);
    procedure BmpButton2Click(Sender: TObject);
    procedure BmpButton3Click(Sender: TObject);
    procedure BmpButton4Click(Sender: TObject);
    procedure BmpButton5Click(Sender: TObject);
    procedure BmpButton6Click(Sender: TObject);
    procedure BmpButton7Click(Sender: TObject);
    procedure BmpButton8Click(Sender: TObject);
    procedure BmpButton9Click(Sender: TObject);
    procedure Label134MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure N31Click(Sender: TObject);
    procedure Label136MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label33MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure N11Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure Label27MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label140MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    function LoadGame(SaveName:string):boolean;
    procedure ClearPrograms(Parameter, Partition:integer);
  end;


var
  MainForm: TMainForm;
  Date:string;
  sr:integer;
  TimerSave:integer=0;
  Saveprm:shortstring='';
  skintype:shortstring='';
  HelpString:shortstring='';
  spam:smallint=0;
  NewsCount:smallint=0;
  ShowNews:boolean;
  NewsYear:smallint=0;
  e:integer=0;

implementation
 uses
  soft,buy,work,Test, News, Welc, Internet, Rec, Hist, harry, banks,
  xk, Skn, Chts, Downl, Overclock, Games, Plugins, Monits, Tecnic,
  PartitionMagic;

{$R *.dfm}

const crHand = 1;

function GetInetFile(const fileURL, FileName: String): boolean;
const BufferSize = 1024;
var
 hSession, hURL: HInternet;
 Buffer: array[1..BufferSize] of Byte;
 BufferLen: DWORD;
 f: File;
 sAppName: string;
begin
Result:=False;
sAppName := ExtractFileName(Application.ExeName);
hSession := InternetOpen(PChar(sAppName),INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
try
 hURL := InternetOpenURL(hSession,
           PChar(fileURL),
           nil,0,0,0);
 try
  AssignFile(f, FileName);
  Rewrite(f,1);
  repeat
   InternetReadFile(hURL, @Buffer,
                    SizeOf(Buffer), BufferLen);
   BlockWrite(f, Buffer, BufferLen)
  until BufferLen = 0;
  CloseFile(f);
  Result:=True;
 except
  on EInOutError do
 end;
finally
 InternetCloseHandle(hSession);
 InternetCloseHandle(hURL);
end
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
 If month<10 then begin
  If day<10 then begin
   If hour<10 then
    Date:='0'+IntToStr(hour)+':00'+' '+'0'+IntToStr(day)+'.'+'0'+IntToStr(month)+'.'+IntToStr(year)
   else
    Date:=IntToStr(hour)+':00'+' '+'0'+IntToStr(day)+'.'+'0'+IntToStr(month)+'.'+IntToStr(year);
  end
  else
   begin
    If hour<10 then
     Date:='0'+IntToStr(hour)+':00'+' '+IntToStr(day)+'.'+'0'+IntToStr(month)+'.'+IntToStr(year)
    else
     Date:=IntToStr(hour)+':00'+' '+IntToStr(day)+'.'+'0'+IntToStr(month)+'.'+IntToStr(year);
   end;
 end
 else
  begin
   If day<10 then begin
    If hour<10 then
     Date:='0'+IntToStr(hour)+':00'+' '+'0'+IntToStr(day)+'.'+IntToStr(month)+'.'+IntToStr(year)
    else
     Date:=IntToStr(hour)+':00'+' '+'0'+IntToStr(day)+'.'+IntToStr(month)+'.'+IntToStr(year);
   end
   else
    begin
     If hour<10 then
      Date:='0'+IntToStr(hour)+':00'+' '+IntToStr(day)+'.'+IntToStr(month)+'.'+IntToStr(year)
     else
      Date:=IntToStr(hour)+':00'+' '+IntToStr(day)+'.'+IntToStr(month)+'.'+IntToStr(year);
    end;
  end;
 DateLabel.Caption:=Date;
 If UserName<>'������� ��� ���...' then
  UsernameLabel.Caption:=UserName;
 If (UserName='������� ��� ���...') or (UserName='') then
  UsernameLabel.Caption:='������ X';
 asm
  INC l
  INC shans
  INC RandomizerCount
  INC spam
  INC NewsCount
 end;
 hour:=hour+GameSpeed;
 Rating:=RoundTo(Rating, -4);
 Money:=RoundTo(money, -2);
 Nastrp.Position:=Round(nastr);
 RatingP.Position:=Round(rating);
 Label19.Caption:=FloatToStr(money)+' �.�.';
 Label21.Caption:=IntToStr(winxak+unixxak);
 If HackPrograms<>nil then
  Label43.Caption:=IntToStr(HackPrograms.Count);
 Label46.Caption:=IntToStr(arest);
 Label80.Caption:=IntToStr(cd);
 Label81.Caption:=IntToStr(cdr);
 Label125.Caption:=IntToStr(spamk);
 Label92.Caption:=IntToStr(vklad)+' �.�.';
 Label93.Caption:=IntToStr(vkladp)+' %';
 Label89.Caption:=IntToStr(progs);
 Label98.Caption:=IntToStr(cpufsb)+' ���';
 Label105.Caption:=FloatToStr(cpuvolt)+' �����';
 Label100.Caption:=IntToStr(cpumnozh)+' X';
 Label104.Caption:=IntToStr(Round(cpumnozh*cpufsb))+' ���';
 Label110.Caption:=IntToStr(videocore)+' ���';
 Label111.Caption:=IntToStr(videomem)+' ���';
 Label127.Caption:=IntToStr(Credit)+' �.�.';
 Label140.Caption:=IntToStr(InetTraffic)+' ��';
 vlastip.Position:=round(vlasti);
 If hour>23 then begin
  if (hour>=24) and (GameSpeed>2) then
   hour:=hour-24
  else
   hour:=0;
  inc(day);
  If (Car='') and (MainForm.Label36.Caption<>'���') then begin
   If (NewsCount=25) and (random(4)=2) then begin
    Nws.Memo1.Lines.add('');
    Nws.Memo1.Lines.Add(Date);
    Nws.Memo1.Lines.add('����� ��� �� �������� ������� � �������... ��� ���������. �����-�� ����� ��������� ���� ���� ������ �������. "�������� ��� �������..." - ��������� ��. ���� ���������� ���� ���������� ���������.');
    Application.MessageBox('����� ��� �� �������� ������� � �������... ��� ���������. �����-�� ����� ��������� ���� ���� ������ �������. "�������� ��� �������..." - ��������� ��. ���� ���������� ���� ���������� ���������.','������!',MB_ICONSTOP);
    nastr:=nastr-11;
   end;
   Money:=Money-0.2;
   Nastr:=Nastr-0.03;
  end;
  If DefragTime<45 then
   inc(DefragTime)
  else
   DefragSpeed:=0;
  if CreditEnd>0 then
   dec(CreditEnd);
  If (CreditEnd<=0) and (Credit>0) then begin
   Peni:=Peni+Credit*0.02;
  end;
  If (Peni>=Credit div 4) and (Peni<>0) then begin
   Timer1.Enabled:=false;
   If Application.MessageBox('���� ����� �� ��� � ��� �� ��, ��� �� �� �������� �� ����� ���� �� �������! ���� ��������! ������ ������ ���� ������?','������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
    ShellExecute(Handle,nil,Pchar(dir+'\CompEvo4.exe'),nil,Pchar(dir+'\'),SW_RESTORE);
   ZeroMemory(@dm, sizeof(TDEVMODE));
   dm.dmSize := sizeof(TDEVMODE);
   dm.dmPelsWidth := X;
   dm.dmPelsHeight := Y;
   dm.dmDuplex:=Z;
   dm.dmFields := DM_PELSWIDTH or DM_PELSHEIGHT;
   ChangeDisplaySettings(dm, 0);
   Application.Terminate;
  end;
  If IsStudy then begin
   dec(StudyProgress);
   if StudyProgress<=0 then begin
    StudyProgress:=0;
    IsStudy:=false;
   end;
  end;
  if toshn>0 then
   dec(toshn);
 end;
 If rating<0 then rating:=0;
 {����������� ����������}
 If (( temperature mod 10 ) = 0) or ((( temperature mod 10 ) >= 5) and (( temperature mod 10 ) <= 9)) then
  Label119.Caption:=IntToStr(Temperature)+' ��������'
 else
  If ( temperature mod 10 ) = 1 then
   Label119.Caption:=IntToStr(Temperature)+' ������'
  else
   Label119.Caption:=IntToStr(Temperature)+' �������';
 {����������� ����������}
 If (( VideoTemp mod 10 ) = 0) or ((( VideoTemp mod 10 ) >= 5) and (( VideoTemp mod 10 ) <= 9)) then
  Label138.Caption:=IntToStr(VideoTemp)+' ��������'
 else
  If ( VideoTemp mod 10 ) = 1 then
   Label138.Caption:=IntToStr(VideoTemp)+' ������'
  else
   Label138.Caption:=IntToStr(VideoTemp)+' �������';
 {======================}
 If temperature>=80 then begin
  temperature:=0;
  MainForm.Label22.Caption:='���';
  Nws.Memo1.Lines.add('');
  Nws.Memo1.Lines.Add(Date);
  Nws.Memo1.Lines.add('��������� ������! ���� ������� �� ��� ������������!');
  Application.MessageBox('��������� ������! ���� ������� �� ��� ������������!','������!',MB_ICONWARNING);
 end;
 If VideoTemp>=95 then begin
  VideoTemp:=0;
  MainForm.Label76.Caption:='���';
  xDone:=false;
  SecondVideoCard:='';
  Nws.Memo1.Lines.add('');
  Nws.Memo1.Lines.Add(Date);
  Nws.Memo1.Lines.add('���������� �� ��������� ����� ������� ����������! �� ���� ���� ��� ���������� ��� ���.');
  Application.MessageBox('���������� �� ��������� ����� ������� ����������! �� ���� ���� ��� ���������� ��� ���.','������!',MB_ICONWARNING);
 end;
 If (temperature<=20) and (Label22.Caption<>'���') then
  temperature:=20;
 If (VideoTemp<=15) and (Label76.Caption<>'���') then
  VideoTemp:=15;
 If (vozrast > 20) and (Copy(IntToStr(vozrast),2,255)='1') then
  Label40.Caption:=IntToStr(vozrast)+' ���'
 else
  If vozrast < 20 then
   Label40.Caption:=IntToStr(Vozrast)+' ���'
  else
   If (vozrast > 20) and ((Copy(IntToStr(vozrast),2,255)='2') or (Copy(IntToStr(vozrast),2,255)='3') or (Copy(IntToStr(vozrast),2,255)='4')) then
    Label40.Caption:=IntToStr(vozrast)+' ����'
   else
    Label40.Caption:=IntToStr(vozrast)+' ���';
 If (Label22.Caption<>'���') and (Label23.Caption<>'���') then begin
  If (random(2)=1) then
   temperature:=temperature+1
  else
   temperature:=temperature-1;
 end;
 If (Label76.Caption<>'���') and (Label76.Caption<>'����������') and (Label23.Caption<>'���') then begin
  If (random(2)=1) then
   VideoTemp:=VideoTemp+1
  else
   VideoTemp:=VideoTemp-1;
 end;
 If Hosting>0 then
  Rating:=Rating+0.004;
 If statusvalue=0 then
  label34.Caption:='�������'
 else
  If statusvalue=1 then
   label34.Caption:='������'
  else
   If statusvalue=2 then
    label34.Caption:='����'
   else
    If statusvalue=3 then
     label34.Caption:='�����������'
    else
     If statusvalue=4 then
      label34.Caption:='�������';
 If (l=40) and (rating=0) then
  Nastr:=Nastr-1.5;
 If (l=150) and (Label23.Caption='���') then begin
  Nastr:=Nastr-3;
  Nws.Memo1.Lines.add('');
  Nws.Memo1.Lines.Add(Date);
  Nws.Memo1.Lines.add('� ���� ��� ��-�������� �� �����? ������� ����!');
  Application.MessageBox('� ���� ��� ��-�������� �� �����? ������� ����!','������!',MB_ICONWARNING);
  Rating:=Rating-2.5;
 end;
 If (safety<20) and (Label27.Caption<>'���') then begin
  Nastr:=Nastr-2.5;
  Nws.Memo1.Lines.add('');
  Nws.Memo1.Lines.Add(Date);
  Nws.Memo1.Lines.add('� ����� �� ����������� ������ � �������� ���������? ������� ����!');
  Application.MessageBox('� ����� �� ����������� ������ � �������� ���������? ������� ����!','������!',MB_ICONWARNING);
  Rating:=rating-2.5;
 end;
 If (l=740) and (random(4)=2) and (Label70.Caption<>'���') then begin
  Nws.Memo1.Lines.add('');
  Nws.Memo1.Lines.Add(Date);
  Nws.Memo1.Lines.add('���� �� ��������� ����� "�������" � � ������ ��������� �� ��������� ��������...');
  Label70.Caption:='���';
  Application.MessageBox('���� �� ��������� ����� "�������" � � ������ ��������� �� ��������� ��������...','������!',MB_ICONSTOP);
  nastr:=nastr-4;
 end;
 If (l=850) and (random(4)=2) and (Label69.Caption<>'���') then begin
  Nws.Memo1.Lines.add('');
  Nws.Memo1.Lines.Add(Date);
  Nws.Memo1.Lines.add('����� �� ��� ���� �� ����������? ������ ��������� ���...');
  Label69.Caption:='���';
  Application.MessageBox('����� �� ��� ���� �� ����������? ������ ��������� ���...','������!',MB_ICONSTOP);
  nastr:=nastr-4;
 end;
 If (l=1000) and (random(10)=5) and (vozrast>=16) and (vklad<>0) then begin
  L:=0;
  Nws.Memo1.Lines.add('');
  Nws.Memo1.Lines.Add(Date);
  Nws.Memo1.Lines.add('���� � ������� �� ������� ���� ���������� ����������� � �������!');
  Vkladp:=0;
  vklad:=0;
  Application.MessageBox('���� � ������� �� ������� ���� ���������� ����������� � �������!','������!',MB_ICONSTOP);
  Nastr:=nastr-3;
 end;
 If lastwork=false then
  BMPButton6.Enabled:=true
 else
  BMPButton6.Enabled:=false;
 If (Nastr<40) and (Nastr>10) and (vozrast>60) then begin
  inc(e);
  if e=1 then
   Application.MessageBox('� ���� ���� ���������� ������� �� ���������!','������!',MB_ICONWARNING)
 end;
 If Money<9 then
  Nastr:=Nastr-0.5;
 If Money<75 then
  Nastr:=Nastr-0.25;
 If Nastr<=0 then begin
  Timer1.Enabled:=false;
  If Application.MessageBox('���������� ����� �� ��������! �� ���������! ������ ������ ���� ������?','������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
   ShellExecute(Handle,nil,Pchar(dir+'\CompEvo4.exe'),nil,Pchar(dir+'\'),SW_RESTORE);
  ZeroMemory(@dm, sizeof(TDEVMODE));
  dm.dmSize := sizeof(TDEVMODE);
  dm.dmPelsWidth := X;
  dm.dmPelsHeight := Y;
  dm.dmDuplex:=Z;
  dm.dmFields := DM_PELSWIDTH or DM_PELSHEIGHT;
  ChangeDisplaySettings(dm, 0);
  Application.Terminate;
 end;
 If ((month mod 2=0) and (month<=7)) or ((month>=8) and (month mod 2<>0)) then
  If ((day>=31) or ((month=2) and (day>=29))) then begin
   asm
    inc month
    mov day, 1
   end;
   If Credit>0 then begin
    Money:=Money-Round(Credit*(CreditPercent / 100));
    Credit:=Credit-Round(Credit*(CreditPercent / 100));
   end;
   If nastr<(zarpl div 5) then begin
    If random(4)<>2 then begin
     Nws.Memo1.Lines.add('');
     Nws.Memo1.Lines.Add(Date);
     Nws.Memo1.Lines.add('� ��� ��������� ��������� �������� � �����������. � �������� �������� ����� ��� ���������, ��� ������ ��������� �� ������ � ����� ������ ����������. ��� ���� ����� ������� � ��� ������!');
     Application.MessageBox('� ��� ��������� ��������� �������� � �����������. � �������� �������� ����� ��� ���������, ��� ������ ��������� �� ������ � ����� ������ ����������. ��� ���� ����� ������� � ��� ������!','������!',MB_ICONINFORMATION);
    end
    else
     begin
      Zarpl:=0;
      rating:=rating-20;
      If ((rating>479) and (rating<500)) or ((rating>129) and (rating<150)) or ((rating>29) and (rating<50)) or ((rating<15) and (StatusValue<>0)) then
       dec(StatusValue);
      If rating<0 then rating:=0;
       Label36.Caption:='���';
       Nws.Memo1.Lines.add('');
       Nws.Memo1.Lines.Add(Date);
       Nws.Memo1.Lines.add('������ ���� ������� ������ ��� ����� ���� ������ ����������. ������� ����� �� ��� ������!');
       Application.MessageBox('������ ���� ������� ������ ��� ����� ���� ������ ����������. ������� ����� �� ��� ������!','������!',MB_ICONINFORMATION);
       LastWork:=false;
     end;
   end;
   money:=money+zarpl-flatpay-hosting;
  end;
 If ((month mod 2<>0) and (month<=7)) or ((month>=8) and (month mod 2=0)) then
  If (day>=32) then begin
   month:=month+1;
   day:=1;
   If Credit>0 then begin
    Money:=Money-Credit*(CreditPercent / 100);
    Credit:=Credit-Round(Credit*(CreditPercent / 100));
   end;
   If nastr<(zarpl div 5) then begin
    If random(4)<>2 then begin
     Nws.Memo1.Lines.add('');
     Nws.Memo1.Lines.Add(Date);
     Nws.Memo1.Lines.add('� ��� ��������� ��������� �������� � �����������. � �������� �������� ����� ��� ���������, ��� ������ ��������� �� ������ � ����� ������ ����������. ��� ���� ����� ������� � ��� ������!');
     Application.MessageBox('� ��� ��������� ��������� �������� � �����������. � �������� �������� ����� ��� ���������, ��� ������ ��������� �� ������ � ����� ������ ����������. ��� ���� ����� ������� � ��� ������!','������!',MB_ICONINFORMATION);
    end
    else
     begin
      Zarpl:=0;
      rating:=rating-20;
      If ((rating>479) and (rating<500)) or ((rating>129) and (rating<150)) or ((rating>29) and (rating<50)) or ((rating<15) and (StatusValue<>0)) then
       dec(StatusValue);
      If rating<0 then rating:=0;
      Label36.Caption:='���';
      Nws.Memo1.Lines.add('');
      Nws.Memo1.Lines.Add(Date);
      Nws.Memo1.Lines.add('������ ���� ������� ������ ��� ����� ���� ������ ����������. ������� ����� �� ��� ������!');
      Application.MessageBox('������ ���� ������� ������ ��� ����� ���� ������ ����������. ������� ����� �� ��� ������!','������!',MB_ICONINFORMATION);
      LastWork:=false;
     end;
   end;
   money:=money+zarpl-flatpay-hosting;
  end;
 If (month>=13) and (day>=1) and (hour<GameSpeed) then begin
  inc(Year);
  inc(vozrast);
  month:=1;
  If (random(7)=5) and (vkladp<>0) and (vozrast>=16) and (vklad<>0) then begin
   Nws.Memo1.Lines.add('');
   Nws.Memo1.Lines.Add(Date);
   Nws.Memo1.Lines.add('����������� ��� ������� ������� ������ � ����� ����� �����!');
   Vkladp:=vkladp+random(3);
   Application.MessageBox('����������� ��� ������� ������� ������ � ����� ����� �����!','������!',MB_ICONINFORMATION);
  end
  else
   If (random(7)=4) and (vkladp>0) and (vozrast>=16) and (vklad>0) then begin
    Nws.Memo1.Lines.add('');
    Nws.Memo1.Lines.Add(Date);
    Nws.Memo1.Lines.add('������ � ����� � ������ �������� ���������� ������������!');
    vkladp:=vkladp-random(5);
    Application.MessageBox('������ � ����� � ������ �������� ���������� ������������!','������!',MB_ICONINFORMATION);
    Nastr:=nastr-3;
   end;
  vklad:=vklad+Round(vklad*vkladp/100);
  If (random(6)=4) and (flatpay>0) then begin
   Nws.Memo1.Lines.add('');
   Nws.Memo1.Lines.Add(Date);
   Nws.Memo1.Lines.add('������ ���� ��������� �������� ���������� �� 10%.');
   FlatPay:=FlatPay+(10*FlatPay div 100);
   vkladp:=vkladp-random(5);
   Application.MessageBox('������ ���� ��������� �������� ���������� �� 10%.','������!',MB_ICONINFORMATION);
   Nastr:=nastr-3;
  end
  else
   If (random(8)=5) and (flatpay>0) then begin
    Nws.Memo1.Lines.add('');
    Nws.Memo1.Lines.Add(Date);
    Nws.Memo1.Lines.add('������ � ������ ������� ������������� �������. ���������� ������� �� 5%.');
    FlatPay:=FlatPay-(5*FlatPay div 100);
    vkladp:=vkladp-random(5);
    Application.MessageBox('������ � ������ ������� ������������� �������. ���������� ������� �� 5%.','������!',MB_ICONINFORMATION);
    Nastr:=nastr-3;
   end;
 end;
If Label33.Caption<>'���' then begin
  If Rating<75 then
   Rating:=rating+0.02;
  If Rating>75 then
   Rating:=rating+0.05;
  If Rating>100 then
   Rating:=rating+0.075;
  If Rating>200 then
   Rating:=rating+0.1;
  If Rating>300 then
   Rating:=rating+0.15;
  If Rating>400 then
   Rating:=rating+0.2;
  If Rating>500 then
   Rating:=rating+0.25;
  If Rating>1000 then
   Rating:=rating+0.35;
end;
If Label41.Caption<>'���' then begin
  If Rating<75 then
   Rating:=rating+0.01;
  If Rating>75 then
   Rating:=rating+0.015;
  If Rating>100 then
   Rating:=rating+0.02;
  If Rating>200 then
   Rating:=rating+0.025;
  If Rating>300 then
   Rating:=rating+0.03;
  If Rating>400 then
   Rating:=rating+0.035;
  If Rating>500 then
   Rating:=rating+0.04;
  If Rating>1000 then
   Rating:=rating+0.08;
end;
If Label29.Caption<>'���' then begin
 Inc(AntivCount);
 If AntivCount=200 then begin
  If (Random(20)=16) or (Random(20)=11) then
   Parts[ActivePartition,0].Free:=Parts[ActivePartition,0].Free-3;
  If (Label33.Caption<>'���') and ((Random(20)=5) or (Random(20)=8)) then begin
   Label33.Caption:='���';
   Nws.Memo1.Lines.add('');
   Nws.Memo1.Lines.Add(Date);
   Nws.Memo1.Lines.add('��������! ������� ������ �������� ��� ���� � �����! ������� ����!');
   Application.MessageBox('��������! ������� ������ �������� ��� ���� � �����! ������� ����!','������!',MB_ICONWARNING);
   Rating:=rating-2.5;
  end
  else
  If (Random(20)=3) or (Random(20)=6) and (MainForm.Label30.Caption<>'���') then begin
   Rating:=rating-2.5;
   Nastr:=nastr-3;
   ClearPrograms(1,ActivePartition);
   Nws.Memo1.Lines.add('');
   Nws.Memo1.Lines.Add(Date);
   Nws.Memo1.Lines.add('����� ������� ��� ��! ������� ����!');
   Application.MessageBox('����� ������� ��� ��! ������� ����!','������!',MB_ICONWARNING);
  end
  else
  If (Random(15)=3) or (Random(10)=7) and (MainForm.Label30.Caption<>'���') and (MainForm.Label51.Caption='���') then begin
   Rating:=rating-2.5;
   Nastr:=nastr-3;
   InetTraffic:=0;
   Nws.Memo1.Lines.add('');
   Nws.Memo1.Lines.Add(Date);
   Nws.Memo1.Lines.add('� ���� ��� ����� ���� �������� ������? ����� �����-�� ������ ����� ������ � ��� �� ���������?');
   Application.MessageBox('� ���� ��� ����� ���� �������� ������? ����� �����-�� ������ ����� ������ � ��� �� ���������?','������!',MB_ICONWARNING);
  end
  else
  If (Random(20)=7) or (Random(20)=14) and (MainForm.Label30.Caption<>'���') and (MainForm.Label51.Caption='���') then begin
   Rating:=rating-2.5;
   Nastr:=nastr-3;
   ClearPrograms(1,ActivePartition);
   Nws.Memo1.Lines.add('');
   Nws.Memo1.Lines.Add(Date);
   Nws.Memo1.Lines.add('���������� (�������� � ��� ���) �� ���� �������� ��������� ������� �� ��� ����! ������� ����!');
   Application.MessageBox('���������� (�������� � ��� ���) �� ���� �������� ��������� ������� �� ��� ����! ������� ����!','������!',MB_ICONWARNING);
  end
  else
  If (Random(20)=12) or (Random(20)=15) and (MainForm.Label32.Caption<>'���') then begin
   MainForm.Label32.Caption:='���';
   Nws.Memo1.Lines.add('');
   Nws.Memo1.Lines.Add(Date);
   Nws.Memo1.Lines.add('��! �� ���� �������� �������� �����������! ������� ����!');
   Application.MessageBox('��! �� ���� �������� �������� �����������! ������� ����!','������!',MB_ICONWARNING);
   Rating:=rating-2.5;
   Nastr:=nastr-3;
  end
  else
  If (Random(20)=9) or (Random(20)=10) and (MainForm.Label30.Caption<>'���') and (MainForm.Label51.Caption='���') then begin
   Rating:=rating-2.5;
   Nastr:=nastr-3;
   Nws.Memo1.Lines.add('');
   Nws.Memo1.Lines.Add(Date);
   Nws.Memo1.Lines.add('���� ������ ������ ������� ��������: "� ������� ping-�� �������� ��� ����?" ����� - '+IntToStr(random(2500))+'! ������� ����!');
   Application.MessageBox(PChar('���� ������ ������ ������� ��������: "� ������� ping-�� �������� ��� ����?" ����� - '+IntToStr(random(2500))+'! ������� ����!'),'������!',MB_ICONWARNING);
  end
  else
  If (Random(20)=4) or (Random(20)=16) and (MainForm.Label30.Caption<>'���') and (MainForm.Label51.Caption='���') then begin
   Rating:=rating-2.5;
   Nastr:=nastr-3;
   ClearPrograms(1,ActivePartition);
   Nws.Memo1.Lines.add('');
   Nws.Memo1.Lines.Add(Date);
   Nws.Memo1.Lines.add('������� ���������� ������� ������ ���� �� �����! ������� ����!');
   Application.MessageBox(PChar('������� ���������� ������� ������ ���� �� �����! ������� ����!'),'������!',MB_ICONWARNING);
  end
  else
  If (Random(20)=9) or (Random(20)=1) and (Label33.Caption<>'���') and (Hosting=0) then begin
   Label33.Caption:='���';
   Nws.Memo1.Lines.add('');
   Nws.Memo1.Lines.Add(Date);
   Nws.Memo1.Lines.add('��������� ��������������� ���������� ������� ������ ����� ����-�� �����...');
   Application.MessageBox('��������� ��������������� ���������� ������� ������ ����� ����-�� �����...','������!',MB_ICONWARNING);
   Rating:=rating-2.5;
  end
  else
  If (Random(20)=18) or (Random(20)=20) and (MainForm.Label31.Caption<>'���') then begin
   AntivirusBases:='';
   Label31.Caption:='���';
   Nws.Memo1.Lines.add('');
   Nws.Memo1.Lines.Add(Date);
   Nws.Memo1.Lines.add('������ �������� ���������! ������� ����!');
   Application.MessageBox('������ �������� ���������! ������� ����!','������!',MB_ICONWARNING);
   Rating:=rating-2.5;
   Nastr:=nastr-3;
  end;
 AntivCount:=0;
 end;
end;
 If (shans>50) and (day=2) then
  If random(7)=4 then begin
   hardskidka:=350;
   shans:=0;
   Nws.Memo1.Lines.add('');
   Nws.Memo1.Lines.Add(Date);
   Nws.Memo1.Lines.add('��������! ��������� � ��� � ������� � ���� ������ � �� �������� ������ �� ����� ���������� � ������� 350 �.�.! �������!');
   Application.MessageBox('��������! ��������� � ��� � ������� � ���� ������ � �� �������� ������ �� ����� ���������� � ������� 350 �.�.! �������!','������!',MB_ICONINFORMATION);
  end
  else
   If random(9)=2 then begin
    videoskidka:=400;
    shans:=0;
    Nws.Memo1.Lines.add('');
    Nws.Memo1.Lines.Add(Date);
    Nws.Memo1.Lines.add('������� ����� ���������� � ����� �������� �� ������������ ��������� �� 400 �.�. �������! ����� �������� �� ����� ����� ������! �������!');
    Application.MessageBox('������� ����� ���������� � ����� �������� �� ������������ ��������� �� 400 �.�. �������! ����� �������� �� ����� ����� ������! �������!','������!',MB_ICONINFORMATION);
   end
   else
    If random(8)=1 then begin
     procskidka:=300;
     shans:=0;
     Nws.Memo1.Lines.add('');
     Nws.Memo1.Lines.Add(Date);
     Nws.Memo1.Lines.add('����� ��������������� ��������� �� ���������? ��������� � ��������? ��������� � ��� ������� � ������ ����� ��������� �� 300 �.�. �������! �������!');
     Application.MessageBox('����� ��������������� ��������� �� ���������? ��������� � ��������? ��������� � ��� ������� � ������ ����� ��������� �� 300 �.�. �������! �������!','������!',MB_ICONINFORMATION);
    end
    else
     If random(5)=2 then begin
      StoMBfree:=true;
      shans:=0;
      Nws.Memo1.Lines.add('');
      Nws.Memo1.Lines.Add(Date);
      Nws.Memo1.Lines.add('��������, ��������! ������ ����� � ����� �������� � �������� 100 �� ��������������� ������� ���������� ���������! �������!');
      Application.MessageBox('��������, ��������! ������ ����� � ����� �������� � �������� 100 �� ��������������� ������� ���������� ���������! �������!','������!',MB_ICONINFORMATION);
     end;
 If day>=28 then begin
  hardskidka:=0;
  videoskidka:=0;
  procskidka:=0;
  StoMBfree:=false;
 end;
{����� ����}
If (day>=1) and (month>=1) and (year>=EndYear) then begin
 inc(n);
 If n=1 then begin
  if Records = nil then Application.CreateForm(TRecords, Records);
  Records.Memo1.Lines.Add(#13);
  Records.Memo1.Lines.Add(#13);
  If UserName<>'������� ��� ���...' then
   Records.Memo1.Lines.Add('�����: '+UserName)
  else
   Records.Memo1.Lines.Add('����������� �����');
  Records.Memo1.Lines.Add('     �������: '+FloatToSTr(vozrast));
  If Flat<>'' then
   Records.Memo1.Lines.Add('     �����: '+Flat)
  else
   Records.Memo1.Lines.Add('     �����: ���');
  If Car<>'' then
   Records.Memo1.Lines.Add('     ������: '+Car)
  else
   Records.Memo1.Lines.Add('     ������: ���');
  Records.Memo1.Lines.Add('     ������: '+Label36.Caption);
  Records.Memo1.Lines.Add('     ������: '+FloatToSTr(Money));
  Records.Memo1.Lines.Add('     �������: '+FloatToSTr(Rating));
  Records.Memo1.Lines.Add('     ������: '+Label34.Caption);
  Records.Memo1.Lines.Add('--------------������������ ����������--------------');
  Records.Memo1.Lines.Add('     ���������: '+Label22.Caption);
  Records.Memo1.Lines.Add('     ����������� �����: '+Label23.Caption);
  Records.Memo1.Lines.Add('     ���: '+Label24.Caption);
  Records.Memo1.Lines.Add('     ���������: '+Label25.Caption);
  Records.Memo1.Lines.Add('     �������: '+Label27.Caption);
  Records.Memo1.Lines.Add('     �����: '+Label29.Caption);
  Records.Memo1.Lines.Add('     CD-ROM: '+Label28.Caption);
  Records.Memo1.Lines.Add('     �������� �����: '+Label26.Caption);
  Records.Memo1.Lines.Add('     ���: '+Label38.Caption);
  If SecondVideoCard<>'' then begin
   Records.Memo1.Lines.Add('     ������� ����������: '+Label76.Caption);
   Records.Memo1.Lines.Add('     ������� ����������: '+SecondVideoCard);
  end
  else
   Records.Memo1.Lines.Add('     ����������: '+Label76.Caption);
  Records.Memo1.Lines.Add('     ���� �������: '+Label77.Caption);
  Records.Memo1.Lines.Add('     ����������: '+Label69.Caption);
  Records.Memo1.Lines.Add('     ����: '+Label70.Caption);
  Records.Memo1.Lines.Add('     �������: '+Label71.Caption);
  Records.Memo1.Lines.Add('     ������: '+Label72.Caption);
  Records.Memo1.Lines.Add('     �����: '+Label73.Caption);
  Records.Memo1.Lines.Add('     �������: '+Label74.Caption);
  Records.Memo1.Lines.Add('     ������: '+Label75.Caption);
  Records.Memo1.Lines.Add('--------------����������� �����������--------------');
  Records.Memo1.Lines.Add('     ������������ �������: '+Label30.Caption);
  Records.Memo1.Lines.Add('     ����� ����������: '+Label32.Caption);
  Records.Memo1.Lines.Add('     ���������: '+Label31.Caption);
  Records.Memo1.Lines.Add('     �������������� ������: '+Label123.Caption);
  Records.Memo1.Lines.Add('     ����������: '+Label51.Caption);
  Records.Memo1.Lines.Add('     �������������� �����: '+Label53.Caption);
  Records.Memo1.Lines.Add('     �������� �����: '+Label54.Caption);
  Records.Memo1.Lines.Add('     �������: '+Label131.Caption);
  Records.Memo1.Lines.Add('     �������� ��������: '+Label48.Caption);
  Records.Memo1.Lines.Add('     ���������-������: '+Label133.Caption);
  Records.Memo1.Lines.Add('     ����������� ������: '+Label56.Caption);
  Records.Memo1.Lines.Add('     ������ �����: '+Label58.Caption);
  Records.Memo1.Lines.Add('     ������ �����: '+Label57.Caption);
  Records.Memo1.Lines.Add('---------------------����������--------------------');
  Records.Memo1.Lines.Add('     �������� �����������: '+Label21.Caption);
  Records.Memo1.Lines.Add('     ���������� �������: '+Label46.Caption);
  Records.Memo1.Lines.Add('     �������� ������: '+Label81.Caption);
  Records.Memo1.Lines.Add('     �������� ��������: '+Label89.Caption);
  Records.Memo1.Lines.Add('     �������� �����: '+Label125.Caption);
  Records.Memo1.Lines.Add('     ���� � ���������: '+Label33.Caption);
  Records.Memo1.Lines.Add('     E-mail: '+Label41.Caption);
  Records.Memo1.Lines.Add('----------------������ �������������---------------');
  Records.Memo1.Lines.Add('     ���������. �������������� ����� ������������������: '+IntToStr(cpuclock));
  Records.Memo1.Lines.Add('     ����������. �������������� ����� ������������������: '+IntToStr(videoclock));
  Timer1.Enabled:=false;
  Application.MessageBox('���������� ���! �� ������ ����! ���� ��� ���� �������� � ������� ��������!','������������',MB_ICONINFORMATION);
  if Cheats = nil then Application.CreateForm(TCheats, Cheats);
  Cheats.ShowModal;
  Timer1.Enabled:=true;
  n:=2;
 end;
end;
If RandomizerCount>=801 then
 RandomizerCount:=0;
If RandomizerCount=100 then begin
 Randomizer:=random(6);
 If (Randomizer=2) or (Randomizer=4) then begin
  Nws.Memo1.Lines.add('');
  Nws.Memo1.Lines.Add(Date);
  Nws.Memo1.Lines.Add('�� ��� �� ����� � �������� ����� ������, � ������� ������ �� 250 �.�.!');
  Application.MessageBox('�� ��� �� ����� � �������� ����� ������, � ������� ������ �� 250 �.�.!','�����!',MB_ICONINFORMATION);
  Money:=money+250;
 end;
end;
If RandomizerCount=200 then begin
 Randomizer:=random(6);
 If ((Randomizer=1) or (Randomizer=6)) and (BMPButton5.Enabled=true) then begin
  Nws.Memo1.Lines.add('');
  Nws.Memo1.Lines.Add(Date);
  Nws.Memo1.Lines.Add('�� ������-�� ����������� ��� ������ ������� � ��������! 300 �.�. � ��� � �������!');
  Application.MessageBox('�� ������-�� ����������� ��� ������ ������� � ��������! 300 �.�. � ��� � �������!','�����!',MB_ICONINFORMATION);
  Money:=money+300;
 end;
end;
If RandomizerCount=300 then begin
 If (Label29.Caption<>'���') and (Label41.Caption<>'���') then Begin
  Randomizer:=random(6);
 If (Randomizer=3) or (Randomizer=5) then begin
   Nws.Memo1.Lines.add('');
   Nws.Memo1.Lines.Add(Date);
   Nws.Memo1.Lines.Add('�����-�� ����������� ������� ��� ���� �� ��� ��������� � �����������, ��������� ��������! � �� ���� ���� ����� ��� �������� ��� ������, ��� ��� � ����������� ��� �������� - 100 �.�.!');
   Application.MessageBox('�����-�� ����������� ������� ��� ���� �� ��� ��������� � �����������, ��������� ��������! � �� ���� ���� ����� ��� �������� ��� ������, ��� ��� � ����������� ��� �������� - 100 �.�.!','�������!',MB_ICONINFORMATION);
   Money:=money-100;
   Nastr:=nastr-3;
  end;
 end;
end;
{=========���� �����===========}
If (RandomizerCount=350) and (Label36.Caption<>'���') then begin
 Randomizer:=random(6);
 If (Randomizer=3) or (Randomizer=1) then begin
  MainForm.Timer1.Enabled:=false;
  If Application.MessageBox('������� ����� ����� ���������� �������� ��� �� ��� �����. �� ����� ��� �������� �����-�� ������� � ������ ������. �� ������ ������� � ����?','������!',MB_ICONQUESTION+MB_YESNO)=IDYES then begin
   If Random(5)<>3 then begin
    If Application.MessageBox('������ ������� ��� � ���� ���� ��� ��� ��������� �������� �����������. ������ ��� ���������?','������!',MB_ICONQUESTION+MB_YESNO)=IDYES then begin
     If Application.MessageBox('"� ����� �������� ������ � �������. �� �� ����� �� ��� �������� ��������� �.�.?" - ������ ������.','������!',MB_ICONQUESTION+MB_YESNO)=IDYES then begin
      If Application.MessageBox('"�������?" - ���������� ������� ��. "� ���� ������ � ���� �� ���� ��� � ����� ���� �� �������... ��� ���������... �� �� ����� �� ��� �������� �.�. 20-30?"','������!',MB_ICONINFORMATION+MB_YESNO)=IDYES then begin
       Application.MessageBox(PChar('"�� �������! �� ������������ ���� �������," - � ���� ��� ������� �� ������ �����? ������������� ����� ������� ������ ��� ��� �����-�� ��������. ������� �� ��� ���� ������� ���������. �� ��� �� ����� - ���������� ���. ������� ����� ���-��. '+'� ����� ������ ������� �������... ����� ����� � �������� ���������� �� ��������, ��� �� �������� � ����� ������� � ������� 80 ��! ���� ���������� ������� ����������.'),'������!',MB_ICONINFORMATION);
       Money:=Money-25;
       Nastr:=Nastr+5;
       InetTraffic:=InetTraffic+80;
      end
      else
       Application.MessageBox('"��� ����! �� ��� ���� ����� �� �����!" - ��������� �� ������ �� ������ �����������. �� ���� �������� ��� ���������.','������!',MB_ICONINFORMATION);
     end
     else
      begin
       If Application.MessageBox('"������. � ��� �������. �� � ���� ���� �������� ��� ������� � ��������. ����� ����� 50-70 �� ��������������� �������. �� ����������� �� �� �� ������? ����� 0.15 �.�. �� ��������. ������� ����, ��� � �������� ����������. ��������?"','������!',MB_ICONQUESTION+MB_YESNO)=IDYES then begin
        If Money>9 then begin
         Application.MessageBox('�������� ���������� ��������� �������� �� ������ � ������, ��� ��� ������������� ������� ���� �� �������� ����������.','������!',MB_ICONINFORMATION);
         Money:=Money-10;
         If random(3)<>1 then begin
          Application.MessageBox('�� �������� ��������� 65 �� �������! � �� ��������� ��� �� 60! ��������� ������ ������� ��� ����������.','������!',MB_ICONINFORMATION);
          Nastr:=Nastr+2;
          InetTraffic:=InetTraffic+65;
         end
         else
          Application.MessageBox('�� ��������� ����������. ������� ����� � ������ ���������� �� ��������, �� �� ������, ��� �������� � ����� ������� ��� ��������������. ������� �� ��� - 0 ��.','������!',MB_ICONSTOP);
        end
        else
         Application.MessageBox('"�� ������, � �� � �������������, �� � ���� � ������ ��� �����," - ������� ��.','������!',MB_ICONINFORMATION);
       end
       else
        Application.MessageBox('"���� ��� �� ����������! ��� ���� � ���� - ����� ����� � ������� ������������� �����." - ������� ��.','������!',MB_ICONINFORMATION);
      end;
    end
    else
     Application.MessageBox('"���� ��� �� ����������! ��� ���� � ���� - ����� ����� � ������� ������������� �����." - ������� ��.','������!',MB_ICONINFORMATION);
   end
   else
    begin
     Application.MessageBox('��� ������ �� ������� � ����� � ������ �� ������ �� ������� ��������. ���� ��� ��� � �����, �� ����� ��� �� ����, ����� ������� � �����...','������!',MB_ICONSTOP);
     Money:=0;
     Nastr:=Nastr-5;
    end;
  end;
 end;
 MainForm.Timer1.Enabled:=true;
end;
{==============================}
If RandomizerCount=400 then begin
 Randomizer:=random(6);
 If (Randomizer=1) or (Randomizer=6) then begin
  Nws.Memo1.Lines.add('');
  Nws.Memo1.Lines.Add(Date);
  Nws.Memo1.Lines.Add('��� ���������� �����������. �� � �������� ����������� � ���������� ����� 500 �.�.!');
  Application.MessageBox('��� ���������� �����������. �� � �������� ����������� � ���������� ����� 500 �.�.!','�����!',MB_ICONINFORMATION);
  Money:=money+500;
 end;
end;
If RandomizerCount=500 then begin
 If Label41.Caption<>'���' then Begin
  Randomizer:=random(6);
 If (Randomizer=3) or (Randomizer=5) then begin
   Nws.Memo1.Lines.add('');
   Nws.Memo1.Lines.Add(Date);
   MainForm.Label41.Caption:='';
   Label41.Caption:='���';
   Nws.Memo1.Lines.Add('������� ��������� ��������, ��� �������� ��� 50 �� �� E-mail! ����������� ��� E-mail ������� ������ ���������!');
   Application.MessageBox('������� ��������� ��������, ��� �������� ��� 50 �� �� E-mail! ����������� ��� E-mail ������� ������ ���������!','�������!',MB_ICONINFORMATION);
   Nastr:=nastr-3;
  end;
 end;
end;
If RandomizerCount=600 then begin
 If Label41.Caption<>'���' then Begin
  Randomizer:=random(6);
 If (Randomizer=3) or (Randomizer=5) then begin
   Nws.Memo1.Lines.add('');
   Nws.Memo1.Lines.Add(Date);
   Nws.Memo1.Lines.Add('�� �������� � ������� 250 �.�.!');
   Application.MessageBox('�� �������� � ������� 250 �.�.!','�����!',MB_ICONINFORMATION);
   Nastr:=nastr+3;
   money:=money+250;
  end;
 end;
end;
If RandomizerCount=700 then begin
 If Label41.Caption<>'���' then Begin
  Randomizer:=random(6);
 If (Randomizer=3) or (Randomizer=5) then begin
   Nws.Memo1.Lines.add('');
   Nws.Memo1.Lines.Add(Date);
   Nws.Memo1.Lines.Add('�� ������� ������� ����� ������ �������. ������������� ����� �������� � ���� ���, ��� �������� ��� ���� ������ ��������!');
   cd:=cd+25;
   vlasti:=vlasti-5;
   Application.MessageBox('�� ������� ������� ����� ������ �������. ������������� ����� �������� � ���� ���, ��� �������� ��� ���� ������ ��������!','�����!',MB_ICONINFORMATION);
   Nastr:=nastr+3;
  end;
 end;
end;
If RandomizerCount=800 then begin
 If Label41.Caption<>'���' then Begin
  Randomizer:=random(12);
 If (Randomizer=3) or (Randomizer=5) then begin
   Nws.Memo1.Lines.add('');
   Nws.Memo1.Lines.Add(Date);
   Nws.Memo1.Lines.Add('� ��� �������� ��������, ������� ������ ��� �������� � ���������� ��� ������!');
   Nastr:=nastr-12;
   Money:=0;
   Application.MessageBox('� ��� �������� ��������, ������� ������ ��� �������� � ���������� ��� ������!','�������!',MB_ICONINFORMATION);
  end;
 end;
end;
 If Nadeg<45 then
  Inc(Dangerc);
 If Dangerc>=100 then begin
  DangerCCount:=random(15)*-100;
   If (DangerCCount=7) and (MainForm.Label25.Caption<>'���') and (MainForm.Label38.Caption='���') and (BMPButton4.Enabled) then begin
    Nws.Memo1.Lines.add('');
    Nws.Memo1.Lines.Add(Date);
    Nws.Memo1.Lines.Add('������ ������ ���������� � ���� � ��� ������� ����, �������� �������, ����� ���������! ������� ����!');
    Dangerc:=0;
    Label25.Caption:='���';
    If Label30.Caption<>'���' then
     ClearPrograms(1,ActivePartition);
    Parts:=nil;
    hardspace:=0;
    hardspeed:=0;
    Rating:=rating-2.5;
    Nastr:=nastr-3;
    Nadeg:=0;
    Application.MessageBox('������ ������ ���������� � ���� � ��� ������� ���� �������� ������� ����� ���������! ������� ����!','�������!',MB_ICONWARNING);
   end;
   If (DangerCCount=3) and (MainForm.Label23.Caption<>'���') and (MainForm.Label38.Caption='���') and (BMPButton4.Enabled) then begin
    Nws.Memo1.Lines.add('');
    Nws.Memo1.Lines.Add(Date);
    Nws.Memo1.Lines.Add('��������� ������� � �� ������� ���������! ������� ����!');
    Dangerc:=0;
    Label23.Caption:='���';
    Rating:=rating-2.5;
    Nastr:=nastr-3;
    cpuclock:=0;
    Label99.Caption:='����������';
    Label121.Caption:='����������';
    Label101.Caption:='����������';
    Application.MessageBox('��������� ������� � �� ������� ���������! ������� ����!','�������!',MB_ICONWARNING);
   end;
   If (DangerCCount=11) and (MainForm.Label24.Caption<>'���') and (MainForm.Label38.Caption='���') and (BMPButton4.Enabled) then begin
    Nws.Memo1.Lines.add('');
    Nws.Memo1.Lines.Add(Date);
    Nws.Memo1.Lines.Add('���������� �������� ������� �����! ������� ����!');
    Dangerc:=0;
    Label24.Caption:='���';
    Rating:=rating-2.5;
    Nastr:=nastr-3;
    Application.MessageBox('���������� �������� ������� �����! ������� ����!','�������!',MB_ICONWARNING);
   end;
   If (DangerCCount=18) and (MainForm.Label22.Caption<>'���') and (MainForm.Label38.Caption='���') and (BMPButton4.Enabled) then begin
    Nws.Memo1.Lines.add('');
    Nws.Memo1.Lines.Add(Date);
    Nws.Memo1.Lines.Add('��������� ������������! ������� ����!');
    Dangerc:=0;
    Label22.Caption:='���';
    Rating:=rating-2.5;
    Nastr:=nastr-3;
    cpuspeed:=0;
    htt:=0;
    Label100.Caption:='0 X';
    Label98.Caption:='0 ���';
    Label104.Caption:='0 ���';
    Label105.Caption:='0 �';
    Label119.Caption:='0 ��������';
    Application.MessageBox('��������� ������������! ������� ����!','�������!',MB_ICONWARNING);
   end;
   DangerC:=0;
  end;
 If Flat<>'' then begin
  BMPButton2.Enabled:=true;
  If label29.Caption<>'���' then begin
   If (Label22.Caption='���') or (Label24.Caption='���') or (Label23.Caption='���') or (Label25.Caption='���') or (Label27.Caption='���') or (Label69.Caption='���') or (Label70.Caption='���') or (Label77.Caption='���') or (Label76.Caption='���') then begin
    BMPButton3.Enabled:=false;
    BMPButton5.Enabled:=false;
    BMPButton4.Enabled:=false;
    BMPButton9.Enabled:=false;
   end
   else
    begin
     BMPButton3.Enabled:=true;
     BMPButton5.Enabled:=true;
     BMPButton4.Enabled:=true;
     BMPButton9.Enabled:=true;
    end;
  end
  else
   begin
    BMPButton5.Enabled:=false;
    BMPButton9.Enabled:=false;
    If (Label22.Caption='���') or (Label24.Caption='���') or (Label23.Caption='���') or (Label25.Caption='���') or (Label27.Caption='���') or (Label69.Caption='���') or (Label70.Caption='���') or (Label77.Caption='���') then begin
     BMPButton3.Enabled:=false;
     BMPButton4.Enabled:=false;
     BMPButton5.Enabled:=false;
    end
    else
     begin
      BMPButton3.Enabled:=true;
      BMPButton4.Enabled:=true;
     end;
   end;
 end
 else
  begin
   BMPButton2.Enabled:=false;
   BMPButton3.Enabled:=false;
   BMPButton4.Enabled:=false;
   BMPButton5.Enabled:=false;
   BMPButton9.Enabled:=false;
  end;
If NewsCount=30 then begin
 NewsCount:=random(NewsTicker.Lines.Count);
 NewsYear:=StrToInt(copy(NewsTicker.lines.Strings[NewsCount],pos(#9,NewsTicker.lines.Strings[NewsCount])+1,255));
 If (NewsYear=Year) and (BMPButton9.Enabled<>false) and (InetTraffic>0) then begin
  MainForm.Timer1.Enabled:=false;
  Nws.Memo1.Lines.add('');
  Nws.Memo1.Lines.Add(Date);
  HelpString:=copy(NewsTicker.lines.Strings[NewsCount],1,pos(#9,NewsTicker.lines.Strings[NewsCount])-1);
  Nws.Memo1.Lines.Add(copy(NewsTicker.lines.Strings[NewsCount],1,pos(#9,NewsTicker.lines.Strings[NewsCount])-1));
  If ShowNews then
   Application.MessageBox(Pchar(copy(NewsTicker.lines.Strings[NewsCount],1,pos(#9,NewsTicker.lines.Strings[NewsCount])-1)),'��������� ��������.',MB_ICONINFORMATION);
  NewsTicker.Lines.Delete(NewsCount);
  InetTraffic:=InetTraffic-1;
  MainForm.Timer1.Enabled:=true;
 end;
 NewsCount:=0;
end;
If (spam<=60) and (Label41.Caption<>'���') and (InetTraffic>=1) then begin
 If spam>=60 then
  spam:=0
 else
  begin
   If Label30.Caption<>'���' then begin
    If Label123.Caption<>'���' then
     If random(30)=2 then begin
      inc(spamk);
      Nastr:=nastr-2;
      InetTraffic:=InetTraffic-1;
      Application.MessageBox(Pchar(SpamMessages.Lines.Strings[random(SpamMessages.Lines.Count)]),'�������!',MB_ICONINFORMATION);
     end;
    If Label123.Caption='���' then
     If random(4)=1 then begin
      Nastr:=nastr-2;
      inc(spamk);
      InetTraffic:=InetTraffic-1;
      Application.MessageBox(Pchar(SpamMessages.Lines.Strings[random(SpamMessages.Lines.Count)]),'�������!',MB_ICONINFORMATION);
     end;
   end;
  end;
end;
If (Round(Rating)>=15) and (StatusValue=0) then begin
 Rating:=rating+2;
 Label34.Caption:='������';
 StatusValue:=1;
 Nws.Memo1.Lines.add('');
 Nws.Memo1.Lines.Add(Date);
 Nws.Memo1.Lines.add('������������! ������ �� ����� ��������!');
 Application.MessageBox('������������! ������ �� ����� ��������!','������!',MB_ICONINFORMATION);
end;
If (Round(Rating)>=50) and (StatusValue=1) then begin
 Rating:=rating+2;
 Label34.Caption:='����';
 StatusValue:=2;
 Nws.Memo1.Lines.add('');
 Nws.Memo1.Lines.Add(Date);
 Nws.Memo1.Lines.add('������������! ������ �� ����� ������!');
 Application.MessageBox('������������! ������ �� ����� ������!','������!',MB_ICONINFORMATION);
end;
If (Round(Rating)>=150) and (StatusValue=2) then begin
 Rating:=rating+2;
 Label34.Caption:='�����������';
 StatusValue:=3;
 Nws.Memo1.Lines.add('');
 Nws.Memo1.Lines.Add(Date);
 Nws.Memo1.Lines.add('������������! ������ �� ����� �����������!');
 Application.MessageBox('������������! ������ �� ����� �����������!','������!',MB_ICONINFORMATION);
end;
If (Round(Rating)>=500) and (StatusValue=3) then begin
 Rating:=rating+2;
 Label34.Caption:='�������';
 StatusValue:=4;
 Nws.Memo1.Lines.add('');
 Nws.Memo1.Lines.Add(Date);
 Nws.Memo1.Lines.add('������������! ������ �� ����� ��������!');
 Application.MessageBox('������������! ������ �� ����� ��������!','������!',MB_ICONINFORMATION);
end;
If ass>0 then
 Label85.Caption:='������!'
else
 Label85.Caption:='�� ������';
If pas>0 then
 Label86.Caption:='������!'
else
 Label86.Caption:='�� ������';
If cpp>0 then
 Label87.Caption:='������!'
else
 Label87.Caption:='�� ������';
If bas>0 then
 Label129.Caption:='������!'
else
 Label129.Caption:='�� ������';
If Flat<>'' then
 label134.Caption:='����!'
else
 label134.Caption:='���';
If Car<>'' then
 label136.Caption:='����!'
else
 label136.Caption:='���';
If n18.Checked=true then begin
 If (100*MediaPlayer1.Position div MediaPlayer1.Length)>=100 then begin
  If Playlist.ItemIndex=PlayList.Count-1 then begin
   PlayList.ItemIndex:=0;
   MediaPlayer1.Stop;
   MediaPlayer1.Close;
   MediaPlayer1.FileName:=dir+'\Music\'+PlayList.Items.Strings[PlayList.ItemIndex];
   MediaPLayer1.Open;
   MediaPLayer1.Play;
  end
  else
   begin
    playlist.ItemIndex:=Playlist.ItemIndex+1;
    MediaPlayer1.Stop;
    MediaPlayer1.Close;
    MediaPlayer1.FileName:=dir+'\Music\'+PlayList.Items.Strings[PlayList.ItemIndex];
    MediaPLayer1.Open;
    MediaPLayer1.Play;
   end;
 end;
end;
{��������������}
If N15.Checked=true then begin
 Inc(TimerSave);
 If TimerSave>150 then begin
  SavePrm:='Auto';
  GameSave.Execute;
  SavePrm:='';
  TimerSave:=0;
 end;
end;
{==============}
If vozrast>=100 then begin
 timer1.Enabled:=false;
 Application.MessageBox('� �������� 100 ��� ���� �������������! �� ��������!','������!',MB_ICONINFORMATION);
 If Application.MessageBox('������ ������ ���� ������?','������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
  ShellExecute(Handle,nil,Pchar(dir+'\CompEvo4.exe'),nil,Pchar(dir+'\'),SW_RESTORE);
 ZeroMemory(@dm, sizeof(TDEVMODE));
 dm.dmSize := sizeof(TDEVMODE);
 dm.dmPelsWidth := X;
 dm.dmPelsHeight := Y;
 dm.dmDuplex:=Z;
 dm.dmFields := DM_PELSWIDTH or DM_PELSHEIGHT;
 ChangeDisplaySettings(dm, 0);
 Application.Terminate;
end;
If vlasti<50 then
 inc(dng);
If (dng=75) and (random(3)=2) and (ANSILOWERCASE(Parts[ActivePartition,0].Soft.OSType)='win') then begin
 Application.MessageBox('��������! ������� � ��� ����� �� ���������� 5 �����������, ������� ����� �������� ����������� �� ��������������� ������������ �����������. �������� ��� � ����! ��������� ���� �������������� Windows � ������ ����� ���������� ���!','������!',MB_ICONINFORMATION);
 If Application.MessageBox('������ ������� ������� � ���� �����?','������!',MB_ICONQUESTION+MB_YESNO)=IDYES then begin
  ClearPrograms(1,ActivePartition);
  Vlasti:=vlasti+50;
 end;
end;
If dng=150 then begin
 If (random(4)=1) then begin
  MainForm.Timer1.Enabled:=false;
  Application.MessageBox('��� ��� ��������� ���, ����� �� ������������ �����������! ���� ������� � ������������������� ��������!','������!',MB_ICONSTOP);
  If Application.MessageBox('������ ������ ���� ������?','������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
   ShellExecute(Handle,nil,Pchar(dir+'\CompEvo4.exe'),nil,Pchar(dir+'\'),SW_RESTORE);
  ZeroMemory(@dm, sizeof(TDEVMODE));
  dm.dmSize := sizeof(TDEVMODE);
  dm.dmPelsWidth := X;
  dm.dmPelsHeight := Y;
  dm.dmDuplex:=Z;
  dm.dmFields := DM_PELSWIDTH or DM_PELSHEIGHT;
  ChangeDisplaySettings(dm, 0);
  Application.Terminate;
 end
 else
  begin
   dng:=0;
   vlasti:=vlasti+5;
  end;
end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
 randomize;
 RandomizerCount:=0;
 Screen.Cursors[crHandPoint]:=LoadCursor(0, IDC_HAND);
 OpenDialog1.InitialDir:=dir+'\Saves';
 OpenPictureDialog1.InitialDir:=dir+'\Photos';
end;

procedure TMainForm.FormActivate(Sender: TObject);
begin
 welcome.destroy;
 Timer1.Enabled:=true;
 Buyers:=TStringList.Create;
 Buyers.LoadFromFile(dir+'\Inf\Auction.inf');
 MainForm.PlayList.ItemIndex:=0;
 If config.ReadInteger('Options','AutoUpdate',0)=1 then begin
  N21.Checked:=true;
  upd.Execute;
 end
 else
  N21.Checked:=false;
 SaveDialog1.InitialDir:=dir+'\Saves';
 OpenDialog1.InitialDir:=dir+'\Saves';
 If FileExists(dir+'\CE4help.chm') then begin
  N27.Visible:=true;
  if ShowHelp then
   N27.OnClick(self);
 end;
end;

procedure TMainForm.N7Click(Sender: TObject);
begin
 Timer1.Enabled:=false;
 If OpenPictureDialog1.Execute then begin
  Photo:=OpenPictureDialog1.FileName;
  Image13.Picture.LoadFromFile(Photo);
 end;
 Timer1.Enabled:=true;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 Timer1.Enabled:=false;
 canclose:=Application.MessageBox('�� ������������� ������ ����� �� ���������?','�����?',MB_YESNO+MB_ICONQUESTION)=IDYES;
 If canclose then begin
  if Records <> nil then Records.Memo1.Lines.SaveToFile(dir+'\Inf\Records.inf');
  If N26.Checked=true then
   Config.WriteInteger('Options','Transparent',1)
  else
   Config.WriteInteger('Options','Transparent',0);
  ZeroMemory(@dm, sizeof(TDEVMODE));
  dm.dmSize := sizeof(TDEVMODE);
  dm.dmPelsWidth := X;
  dm.dmPelsHeight := Y;
  dm.dmDuplex:=Z;
  dm.dmFields := DM_PELSWIDTH or DM_PELSHEIGHT;
  ChangeDisplaySettings(dm, 0);
  ClearTempFiles;
 end
 else
  Timer1.Enabled:=true;
end;

procedure TMainForm.PauseClick(Sender: TObject);
begin
 If Timer1.Enabled=true then begin
  Timer1.Enabled:=false;
  Pause.Checked:=true;
  Application.MessageBox('�������� �����! ������� ��, ����� ��������� � ����!','������!',MB_ICONWARNING);
  Pause.Checked:=false;
  Timer1.Enabled:=true;
 end;
end;

procedure TMainForm.N14Click(Sender: TObject);
begin
	if Records = nil then Application.CreateForm(TRecords, Records);
	Records.SHowmodal;
end;

procedure TMainForm.Label36MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 If Label36.Caption='���' then
  Label36.Hint:='������ �������� ���������!';
 If Label36.Caption='�������' then
  Label36.Hint:='���������� �������� ��� ������ ������� '+FloatToStr(RoundTo(41-Rating, -4));
 If (41-RoundTo(Rating, -4))<=0 then
  Label36.Hint:='������ �������� �������!';
 If Label36.Caption='�����' then
  Label36.Hint:='���������� �������� ��� ������ �������� '+FloatToStr(RoundTo(61-Rating, -4));
 If (61-RoundTo(Rating, -4))<=0 then
  Label36.Hint:='������ �������� ��������!';
 If Label36.Caption='������' then
  Label36.Hint:='���������� �������� ��� ������ �������� '+FloatToStr(RoundTo(83-Rating, -4));
 If (83-RoundTo(Rating, -4))<=0 then
  Label36.Hint:='������ �������� ��������!';
 If Label36.Caption='�������' then
  Label36.Hint:='���������� �������� ��� ������ ��������� '+FloatToStr(RoundTo(104-Rating, -4));
 If (104-RoundTo(Rating, -4))<=0 then
  Label36.Hint:='������ �������� ���������!';
 If Label36.Caption='�������' then
  Label36.Hint:='���������� �������� ��� ������ ��������� '+FloatToStr(RoundTo(126-Rating, -4));
 If (126-RoundTo(Rating, -4))<=0 then
  Label36.Hint:='������ �������� ���������!';
 If Label36.Caption='�������' then
  Label36.Hint:='���������� �������� ��� ������ ���������� '+FloatToStr(RoundTo(169-Rating, -4));
 If (169-RoundTo(Rating, -4))<=0 then
  Label36.Hint:='������ �������� ����������!';
 If Label36.Caption='��������' then
  Label36.Hint:='���������� �������� ��� ������ ������������ '+FloatToStr(RoundTo(197-Rating, -4));
 If (197-RoundTo(Rating, -4))<=0 then
  Label36.Hint:='������ �������� ������������!';
 If Label36.Caption='����������' then
  Label36.Hint:='���������� �������� ��� ������ ������� '+FloatToStr(RoundTo(231-Rating, -4));
 If (231-RoundTo(Rating, -4))<=0 then
  Label36.Hint:='������ �������� �������!';
 If Label36.Caption='�����' then
  Label36.Hint:='���������� �������� ��� ������ ������� ��������� '+FloatToStr(RoundTo(274-Rating, -4));
 If (274-RoundTo(Rating, -4))<=0 then
  Label36.Hint:='������ �������� ������� ���������!';
 If Label36.Caption='�. ��������' then
  Label36.Hint:='���������� �������� ��� ������ ����������� '+FloatToStr(RoundTo(308-Rating, -4));
 If (308-RoundTo(Rating, -4))<=0 then
  Label36.Hint:='������ �������� �����������!';
 If Label36.Caption='���������' then
  Label36.Hint:='���������� �������� ��� ������ ������������� '+FloatToStr(RoundTo(427-Rating, -4));
 If (427-RoundTo(Rating, -4))<=0 then
  Label36.Hint:='������ �������� �������������!';
 If Label36.Caption='�����������' then
  Label36.Hint:='���������� �������� ��� ������ ������ ���������� '+FloatToStr(RoundTo(500-Rating, -4));
 If (500-RoundTo(Rating, -4))<=0 then
  Label36.Hint:='������ ����� ������ ����������!';
 If Label36.Caption='���������' then
  Label36.Hint:='� ��� ����� ���������� ������!';
 If Label36.Caption<>'���' then
  Label36.Hint:=Label36.Hint+#13+'�������� - '+IntToStr(Zarpl)+' �.�.';
end;

procedure TMainForm.Label25MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 If Label25.Caption<>'���' then
  Label25.Hint:='����� ����� - '+IntToStr(HardSpace)+' ��.'+#13+'�������� �������� �������� - '+IntToStr(hardspeed)+' rpm'
 else
  Label25.Hint:='� ����� ���������� ��� ����������!';
end;

procedure TMainForm.N1Click(Sender: TObject);
begin
 Timer1.Enabled:=false;
 If Application.MessageBox('�� ������������� ������ ������ ����� ����?','������!',MB_ICONINFORMATION+MB_YESNO)=IDYES then begin
  ShellExecute(Handle,nil,Pchar(dir+'\CompEvo4.exe'),nil,Pchar(dir+'\'),SW_RESTORE);
  ZeroMemory(@dm, sizeof(TDEVMODE));
  dm.dmSize := sizeof(TDEVMODE);
  dm.dmPelsWidth := X;
  dm.dmPelsHeight := Y;
  dm.dmDuplex:=Z;
  dm.dmFields := DM_PELSWIDTH or DM_PELSHEIGHT;
  ChangeDisplaySettings(dm, 0);
  Application.Terminate;
 end
 else
  Timer1.Enabled:=true;
end;

procedure TMainForm.N13Click(Sender: TObject);
begin
	if ChSkin = nil then Application.CreateForm(TChSkin, ChSkin);
	Chskin.showmodal;
end;

procedure TMainForm.ChangeSkinExecute(Sender: TObject);
var
 i: integer;
 img: TBitmap;
 TransColor: integer;
begin
	if not FileExists(sFile) then
	begin
		sFile := dir+'\Skins\Keramik.ces';
		Application.MessageBox('���� ��������� � ����� ������������ �� ������! ������������ ����������� ����!','��������!',MB_ICONWARNING);
	end;
  Skin:=Tinifile.Create(sFile);
  If skin.ReadInteger('Bitmaps parameters','TaskBarActive',0)=1 then begin
   MainForm.Image4.Picture.LoadFromFile(dir+'\Skins\'+Skin.ReadString('Bitmaps','TaskBar',''));
   If skin.ReadInteger('Bitmaps parameters','TaskbarTransparent',0)=1 then
    MainForm.Image4.Transparent:=true;
  end
  else
   begin
    Image4.Stretch:=false;
    Image4.Center:=false;
    Image4.Picture.Bitmap.ReleaseHandle;
   end;
  If skin.ReadInteger('Bitmaps parameters','ComputerActive',0)=1 then begin
   MainForm.Image1.Picture.LoadFromFile(dir+'\Skins\'+Skin.ReadString('Bitmaps','Computer',''));
   If skin.ReadInteger('Bitmaps parameters','ComputerStretch',0)=1 then
    MainForm.Image1.Stretch:=true
   else
    begin
     MainForm.Image1.Stretch:=false;
     If skin.ReadInteger('Bitmaps parameters','ComputerCenter',0)=1 then
      MainForm.Image1.Center:=true
     else
      MainForm.Image1.Center:=false;
    end
  end
  else
   begin
    Image1.Stretch:=false;
    Image1.Center:=false;
    Image1.Picture.Bitmap.ReleaseHandle;
   end;
  If skin.ReadInteger('Bitmaps parameters','HackingActive',0)=1 then begin
   MainForm.Image5.Picture.LoadFromFile(dir+'\Skins\'+Skin.ReadString('Bitmaps','Hacking',''));
   If skin.ReadInteger('Bitmaps parameters','HackingStretch',0)=1 then
    MainForm.Image5.Stretch:=true
   else
    begin
     MainForm.Image5.Stretch:=false;
    If skin.ReadInteger('Bitmaps parameters','HackingCenter',0)=1 then
     MainForm.Image5.Center:=true
    else
     MainForm.Image5.Center:=false;
    end;
  end
  else
   begin
    Image5.Stretch:=false;
    Image5.Center:=false;
    Image5.Picture.Bitmap.ReleaseHandle;
   end;
  If skin.ReadInteger('Bitmaps parameters','SoftwareActive',0)=1 then begin
   MainForm.Image6.Picture.LoadFromFile(dir+'\Skins\'+Skin.ReadString('Bitmaps','Software',''));
   If skin.ReadInteger('Bitmaps parameters','SoftwareStretch',0)=1 then
    MainForm.Image6.Stretch:=true
   else
    begin
     MainForm.Image6.Stretch:=false;
    If skin.ReadInteger('Bitmaps parameters','SoftwareCenter',0)=1 then
     MainForm.Image6.Center:=true
    else
     MainForm.Image6.Center:=false;
    end;
  end
  else
   begin
    Image6.Center:=false;
    Image6.Stretch:=false;
    Image6.Picture.Bitmap.ReleaseHandle;
   end;
 If skin.ReadInteger('Bitmaps parameters','UserActive',0)=1 then begin
  MainForm.Image2.Picture.LoadFromFile(dir+'\Skins\'+Skin.ReadString('Bitmaps','User',''));
  If skin.ReadInteger('Bitmaps parameters','UserStretch',0)=1 then
   MainForm.Image2.Stretch:=true
  else
  begin
   MainForm.Image2.Stretch:=false;
   If skin.ReadInteger('Bitmaps parameters','UserCenter',0)=1 then
    MainForm.Image2.Center:=true
   else
    MainForm.Image2.Center:=false;
   end;
 end
 else
  begin
   Image2.Stretch:=false;
   Image2.Center:=false;
   Image2.Picture.Bitmap.ReleaseHandle;
  end;
  If skin.ReadInteger('Bitmaps parameters','PirateActive',0)=1 then begin
   MainForm.Image3.Picture.LoadFromFile(dir+'\Skins\'+Skin.ReadString('Bitmaps','Pirate',''));
   If skin.ReadInteger('Bitmaps parameters','PirateStretch',0)=1 then
    MainForm.Image3.Stretch:=true
   else
   begin
    MainForm.Image3.Stretch:=false;
    If skin.ReadInteger('Bitmaps parameters','PirateCenter',0)=1 then
     MainForm.Image3.Center:=true
    else
     MainForm.Image3.Center:=false;
   end;
  end
  else
   begin
    Image3.Stretch:=false;
    Image3.Center:=false;
    Image3.Picture.Bitmap.ReleaseHandle;
   end;
  If skin.ReadInteger('Bitmaps parameters','DevelopmentActive',0)=1 then begin
   MainForm.Image7.Picture.LoadFromFile(dir+'\Skins\'+Skin.ReadString('Bitmaps','Development',''));
   If skin.ReadInteger('Bitmaps parameters','DevelopmentStretch',0)=1 then
    MainForm.Image7.Stretch:=true
   else
   begin
     MainForm.Image7.Stretch:=false;
    If skin.ReadInteger('Bitmaps parameters','DevelopmentCenter',0)=1 then
     MainForm.Image7.Center:=true
    else
     MainForm.Image7.Center:=false;
   end;
  end
  else
   begin
    Image7.Stretch:=false;
    Image7.Center:=false;
    Image7.Picture.Bitmap.ReleaseHandle;
   end;
  If skin.ReadInteger('Bitmaps parameters','CashActive',0)=1 then begin
   MainForm.Image8.Picture.LoadFromFile(dir+'\Skins\'+Skin.ReadString('Bitmaps','Cash',''));
   If skin.ReadInteger('Bitmaps parameters','CashStretch',0)=1 then
    MainForm.Image8.Stretch:=true
   else
    begin
     MainForm.Image8.Stretch:=false;
    If skin.ReadInteger('Bitmaps parameters','CashCenter',0)=1 then
     MainForm.Image8.Center:=true
    else
     MainForm.Image8.Center:=false;
    end;
  end
  else
   begin
    Image8.Stretch:=false;
    Image8.Center:=false;
    Image8.Picture.Bitmap.ReleaseHandle;
   end;
  If skin.ReadInteger('Bitmaps parameters','InternetActive',0)=1 then begin
   MainForm.Image9.Picture.LoadFromFile(dir+'\Skins\'+Skin.ReadString('Bitmaps','Internet',''));
   If skin.ReadInteger('Bitmaps parameters','InternetStretch',0)=1 then
    MainForm.Image9.Stretch:=true
   else
   begin
    MainForm.Image9.Stretch:=false;
    If skin.ReadInteger('Bitmaps parameters','InternetCenter',0)=1 then
     MainForm.Image9.Center:=true
    else
     MainForm.Image9.Center:=false;
   end;
  end
  else
   begin
    Image9.Center:=false;
    Image9.Stretch:=false;
    Image9.Picture.Bitmap.ReleaseHandle;
   end;
  If skin.ReadInteger('Bitmaps parameters','MotherboardActive',0)=1 then begin
   MainForm.Image10.Picture.LoadFromFile(dir+'\Skins\'+Skin.ReadString('Bitmaps','Motherboard',''));
   If skin.ReadInteger('Bitmaps parameters','MotherboardStretch',0)=1 then
    MainForm.Image10.Stretch:=true
   else
   begin
     MainForm.Image10.Stretch:=false;
    If skin.ReadInteger('Bitmaps parameters','MotherboardCenter',0)=1 then
     MainForm.Image10.Center:=true
    else
     MainForm.Image10.Center:=false;
   end;
  end
  else
   begin
    Image10.Stretch:=false;
    Image10.Center:=false;
    Image10.Picture.Bitmap.ReleaseHandle;
   end;
  If skin.ReadInteger('Bitmaps parameters','ProcessorActive',0)=1 then begin
   MainForm.Image11.Picture.LoadFromFile(dir+'\Skins\'+Skin.ReadString('Bitmaps','Processor',''));
   If skin.ReadInteger('Bitmaps parameters','ProcessorStretch',0)=1 then
    MainForm.Image11.Stretch:=true
   else
   begin
     MainForm.Image11.Stretch:=false;
    If skin.ReadInteger('Bitmaps parameters','ProcessorCenter',0)=1 then
     MainForm.Image11.Center:=true
    else
     MainForm.Image11.Center:=false;
   end;
  end
  else
   begin
    Image11.Stretch:=false;
    Image11.Center:=false;
    Image11.Picture.Bitmap.ReleaseHandle;
   end;
  If skin.ReadInteger('Bitmaps parameters','VideocardActive',0)=1 then begin
   MainForm.Image12.Picture.LoadFromFile(dir+'\Skins\'+Skin.ReadString('Bitmaps','Videocard',''));
   If skin.ReadInteger('Bitmaps parameters','VideocardStretch',0)=1 then
    MainForm.Image12.Stretch:=true
   else
    begin
     MainForm.Image12.Stretch:=false;
    If skin.ReadInteger('Bitmaps parameters','VideocardCenter',0)=1 then
     MainForm.Image12.Center:=true
    else
     MainForm.Image12.Center:=false;
    end;
  end
  else
   begin
    Image12.Center:=false;
    Image12.Stretch:=false;
    Image12.Picture.Bitmap.ReleaseHandle;
   end;
 If photo='' then
  If skin.ReadInteger('Bitmaps parameters','PhotoActive',0)=1 then begin
    MainForm.Image13.Picture.LoadFromFile(dir+'\Skins\'+Skin.ReadString('Bitmaps','Photo','Default.jpg'));
    If skin.ReadInteger('Bitmaps parameters','PhotoStretch',0)=1 then
     MainForm.Image13.Stretch:=true
    else
     begin
      MainForm.Image13.Stretch:=false;
     If skin.ReadInteger('Bitmaps parameters','PhotoCenter',0)=1 then
      MainForm.Image13.Center:=true
     else
      MainForm.Image13.Center:=false;
     end;
   end
   else
    begin
     MainForm.Image13.Center:=false;
     MainForm.Image13.Stretch:=false;
     MainForm.Image13.Picture:=nil;
     MainForm.Image13.Picture.Bitmap.ReleaseHandle;
    end;
  If skin.ReadInteger('Bitmaps parameters','StartTransparent',0)=1 then
   MainForm.BmpButton1.Transparent:=true
  else
   MainForm.BmpButton1.Transparent:=false;
  If skin.ReadInteger('Bitmaps parameters','HomeTransparent',0)=1 then
   MainForm.BmpButton10.Transparent:=true
  else
   MainForm.BmpButton10.Transparent:=false;
  If skin.ReadInteger('Bitmaps parameters','DevicesTransparent',0)=1 then
   MainForm.BmpButton2.Transparent:=true
  else
   MainForm.BmpButton2.Transparent:=false;
  If skin.ReadInteger('Bitmaps parameters','InstallTransparent',0)=1 then
   MainForm.BmpButton3.Transparent:=true
  else
   MainForm.BmpButton3.Transparent:=false;
  If skin.ReadInteger('Bitmaps parameters','TestingTransparent',0)=1 then
   MainForm.BmpButton4.Transparent:=true
  else
   MainForm.BmpButton4.Transparent:=false;
  If skin.ReadInteger('Bitmaps parameters','CommunicationTransparent',0)=1 then
   MainForm.BmpButton5.Transparent:=true
  else
   MainForm.BmpButton5.Transparent:=false;
  If skin.ReadInteger('Bitmaps parameters','WorkTransparent',0)=1 then
   MainForm.BmpButton6.Transparent:=true
  else
   MainForm.BmpButton6.Transparent:=false;
  If skin.ReadInteger('Bitmaps parameters','RestTransparent',0)=1 then
   MainForm.BmpButton7.Transparent:=true
  else
   MainForm.BmpButton7.Transparent:=false;
  If skin.ReadInteger('Bitmaps parameters','BankTransparent',0)=1 then
   MainForm.BmpButton8.Transparent:=true
  else
   MainForm.BmpButton8.Transparent:=false;
  If skin.ReadInteger('Bitmaps parameters','NewsTransparent',0)=1 then
   MainForm.BmpButton9.Transparent:=true
  else
   MainForm.BmpButton9.Transparent:=false;
  MainForm.BmpButton1.Image.LoadFromFile(dir+'\Skins\'+skin.ReadString('Bitmaps','Start',''));
  MainForm.BmpButton10.Image.LoadFromFile(dir+'\Skins\'+skin.ReadString('Bitmaps','Home',''));
  MainForm.BmpButton2.Image.LoadFromFile(dir+'\Skins\'+skin.ReadString('Bitmaps','Devices',''));
  MainForm.BmpButton3.Image.LoadFromFile(dir+'\Skins\'+skin.ReadString('Bitmaps','Install',''));
  MainForm.BmpButton4.Image.LoadFromFile(dir+'\Skins\'+skin.ReadString('Bitmaps','Testing',''));
  MainForm.BmpButton5.Image.LoadFromFile(dir+'\Skins\'+skin.ReadString('Bitmaps','Communication',''));
  MainForm.BmpButton6.Image.LoadFromFile(dir+'\Skins\'+skin.ReadString('Bitmaps','Work',''));
  MainForm.BmpButton7.Image.LoadFromFile(dir+'\Skins\'+skin.ReadString('Bitmaps','Rest',''));
  MainForm.BmpButton8.Image.LoadFromFile(dir+'\Skins\'+skin.ReadString('Bitmaps','Bank',''));
  MainForm.BmpButton9.Image.LoadFromFile(dir+'\Skins\'+skin.ReadString('Bitmaps','News',''));
  MainForm.Label45.Font.Name:=skin.ReadString('Style','VersionFont','');
  MainForm.Label45.Font.Size:=skin.ReadInteger('Style','VersionFontSize',0);
  MainForm.Label45.Font.Color:=skin.ReadInteger('Style','VersionColor',0);
  MainForm.UsernameLabel.Font.Name:=skin.ReadString('Style','UsernameFont','');
  MainForm.UsernameLabel.Font.Size:=skin.ReadInteger('Style','UsernameFontSize',0);
  MainForm.UsernameLabel.Font.Color:=skin.ReadInteger('Style','UsernameColor',0);
  MainForm.DateLabel.Font.Name:=skin.ReadString('Style','DateFont','');
  MainForm.DateLabel.Font.Size:=skin.ReadInteger('Style','DateFontSize',0);
  MainForm.DateLabel.Font.Color:=skin.ReadInteger('Style','DateColor',0);
  MainForm.Label45.Left:=skin.ReadInteger('Position','VersionLeft',0);
  MainForm.Label45.Top:=skin.ReadInteger('Position','VersionTop',0);
  MainForm.UsernameLabel.Left:=skin.ReadInteger('Position','UsernameLeft',0);
  MainForm.UsernameLabel.Top:=skin.ReadInteger('Position','UsernameTop',0);
  MainForm.DateLabel.Left:=skin.ReadInteger('Position','DateLeft',0);
  MainForm.DateLabel.Top:=skin.ReadInteger('Position','DateTop',0);
  MainForm.Color:=skin.ReadInteger('Style','WindowColor',0);
  MainForm.GroupBox1.Font.Name:=skin.ReadString('Style','TextFont','');
  MainForm.GroupBox2.Font.Name:=skin.ReadString('Style','TextFont','');
  MainForm.GroupBox3.Font.Name:=skin.ReadString('Style','TextFont','');
  MainForm.GroupBox5.Font.Name:=skin.ReadString('Style','TextFont','');
  MainForm.GroupBox6.Font.Name:=skin.ReadString('Style','TextFont','');
  MainForm.GroupBox4.Font.Name:=skin.ReadString('Style','TextFont','');
  MainForm.GroupBox7.Font.Name:=skin.ReadString('Style','TextFont','');
  MainForm.GroupBox8.Font.Name:=skin.ReadString('Style','TextFont','');
  MainForm.GroupBox9.Font.Name:=skin.ReadString('Style','TextFont','');
  MainForm.GroupBox10.Font.Name:=skin.ReadString('Style','TextFont','');
  MainForm.GroupBox11.Font.Name:=skin.ReadString('Style','TextFont','');
  MainForm.GroupBox12.Font.Name:=skin.ReadString('Style','TextFont','');
  MainForm.GroupBox1.Font.Size:=skin.ReadInteger('Style','TextSize',0);
  MainForm.GroupBox2.Font.Size:=skin.ReadInteger('Style','TextSize',0);
  MainForm.GroupBox3.Font.Size:=skin.ReadInteger('Style','TextSize',0);
  MainForm.GroupBox5.Font.Size:=skin.ReadInteger('Style','TextSize',0);
  MainForm.GroupBox6.Font.Size:=skin.ReadInteger('Style','TextSize',0);
  MainForm.GroupBox4.Font.Size:=skin.ReadInteger('Style','TextSize',0);
  MainForm.GroupBox7.Font.Size:=skin.ReadInteger('Style','TextSize',0);
  MainForm.GroupBox8.Font.Size:=skin.ReadInteger('Style','TextSize',0);
  MainForm.GroupBox9.Font.Size:=skin.ReadInteger('Style','TextSize',0);
  MainForm.GroupBox10.Font.Size:=skin.ReadInteger('Style','TextSize',0);
  MainForm.GroupBox11.Font.Size:=skin.ReadInteger('Style','TextSize',0);
  MainForm.GroupBox12.Font.Size:=skin.ReadInteger('Style','TextSize',0);
  MainForm.GroupBox1.Font.Color:=skin.ReadInteger('Style','TextColor',0);
  MainForm.GroupBox2.Font.Color:=skin.ReadInteger('Style','TextColor',0);
  MainForm.GroupBox3.Font.Color:=skin.ReadInteger('Style','TextColor',0);
  MainForm.GroupBox5.Font.Color:=skin.ReadInteger('Style','TextColor',0);
  MainForm.GroupBox6.Font.Color:=skin.ReadInteger('Style','TextColor',0);
  MainForm.GroupBox4.Font.Color:=skin.ReadInteger('Style','TextColor',0);
  MainForm.GroupBox7.Font.Color:=skin.ReadInteger('Style','TextColor',0);
  MainForm.GroupBox8.Font.Color:=skin.ReadInteger('Style','TextColor',0);
  MainForm.GroupBox9.Font.Color:=skin.ReadInteger('Style','TextColor',0);
  MainForm.GroupBox10.Font.Color:=skin.ReadInteger('Style','TextColor',0);
  MainForm.GroupBox11.Font.Color:=skin.ReadInteger('Style','TextColor',0);
  MainForm.GroupBox12.Font.Color:=skin.ReadInteger('Style','TextColor',0);
  MainForm.BMPButton1.Left:=skin.ReadInteger('Position','StartLeft',0);
  MainForm.BMPButton1.Top:=skin.ReadInteger('Position','StartTop',0);
  MainForm.BMPButton10.Left:=skin.ReadInteger('Position','HomeLeft',0);
  MainForm.BMPButton10.Top:=skin.ReadInteger('Position','HomeTop',0);
  MainForm.BMPButton2.Left:=skin.ReadInteger('Position','DevicesLeft',0);
  MainForm.BMPButton2.Top:=skin.ReadInteger('Position','DevicesTop',0);
  MainForm.BMPButton3.Left:=skin.ReadInteger('Position','InstallLeft',0);
  MainForm.BMPButton3.Top:=skin.ReadInteger('Position','InstallTop',0);
  MainForm.BMPButton4.Left:=skin.ReadInteger('Position','TestingLeft',0);
  MainForm.BMPButton4.Top:=skin.ReadInteger('Position','TestingTop',0);
  MainForm.BMPButton5.Left:=skin.ReadInteger('Position','CommunicationLeft',0);
  MainForm.BMPButton5.Top:=skin.ReadInteger('Position','CommunicationTop',0);
  MainForm.BMPButton6.Left:=skin.ReadInteger('Position','WorkLeft',0);
  MainForm.BMPButton6.Top:=skin.ReadInteger('Position','WorkTop',0);
  MainForm.BMPButton7.Left:=skin.ReadInteger('Position','RestLeft',0);
  MainForm.BMPButton7.Top:=skin.ReadInteger('Position','RestTop',0);
  MainForm.BMPButton8.Left:=skin.ReadInteger('Position','BankLeft',0);
  MainForm.BMPButton8.Top:=skin.ReadInteger('Position','BankTop',0);
  MainForm.BMPButton9.Left:=skin.ReadInteger('Position','NewsLeft',0);
  MainForm.BMPButton9.Top:=skin.ReadInteger('Position','NewsTop',0);
  MainForm.image4.Left:=skin.ReadInteger('Position','TaskbarLeft',0);
  MainForm.image4.top:=skin.ReadInteger('Position','TaskbarTop',0);

  If skin.ReadBool('Menu','LoadIcons',False)=True then begin
   img:=TBitmap.Create;

   ImageList1.Height:=StrToInt(copy(skin.ReadString('Menu','Size','32x32'),1,pos('x',skin.ReadString('Menu','Size','32x32'))-1));
   ImageList1.Width:=StrToInt(copy(skin.ReadString('Menu','Size','32x32'),pos('x',skin.ReadString('Menu','Size','32x32'))+1,255));

   PopupMenu1.Images:=ImageList1;
   PopupMenu2.Images:=ImageList1;

   TransColor:=skin.ReadInteger('Menu','TransparentColor',$00000000);

   if FileExists(dir+'\Skins\'+skin.ReadString('Menu','NewGame','')) then begin
    img.LoadFromFile(dir+'\Skins\'+skin.ReadString('Menu','NewGame',''));
    ImageList1.AddMasked(img,TransColor);
    N1.ImageIndex:=ImageList1.Count-1;
   end;
   if FileExists(dir+'\Skins\'+skin.ReadString('Menu','Pause','')) then begin
    img.LoadFromFile(dir+'\Skins\'+skin.ReadString('Menu','Pause',''));
    ImageList1.AddMasked(img,TransColor);
    Pause.ImageIndex:=ImageList1.Count-1;
   end;
   if FileExists(dir+'\Skins\'+skin.ReadString('Menu','LoadGame','')) then begin
    img.LoadFromFile(dir+'\Skins\'+skin.ReadString('Menu','LoadGame',''));
    ImageList1.AddMasked(img,TransColor);
    N5.ImageIndex:=ImageList1.Count-1;
   end;
   if FileExists(dir+'\Skins\'+skin.ReadString('Menu','SaveGame','')) then begin
    img.LoadFromFile(dir+'\Skins\'+skin.ReadString('Menu','SaveGame',''));
    ImageList1.AddMasked(img,TransColor);
    N6.ImageIndex:=ImageList1.Count-1;
   end;
   if FileExists(dir+'\Skins\'+skin.ReadString('Menu','Records','')) then begin
    img.LoadFromFile(dir+'\Skins\'+skin.ReadString('Menu','Records',''));
    ImageList1.AddMasked(img,TransColor);
    N8.ImageIndex:=ImageList1.Count-1;
   end;
   if FileExists(dir+'\Skins\'+skin.ReadString('Menu','Options','')) then begin
    img.LoadFromFile(dir+'\Skins\'+skin.ReadString('Menu','Options',''));
    ImageList1.AddMasked(img,TransColor);
    N16.ImageIndex:=ImageList1.Count-1;
   end;
   if FileExists(dir+'\Skins\'+skin.ReadString('Menu','Update','')) then begin
    img.LoadFromFile(dir+'\Skins\'+skin.ReadString('Menu','Update',''));
    ImageList1.AddMasked(img,TransColor);
    N20.ImageIndex:=ImageList1.Count-1;
   end;
   if FileExists(dir+'\Skins\'+skin.ReadString('Menu','Plugins','')) then begin
    img.LoadFromFile(dir+'\Skins\'+skin.ReadString('Menu','Plugins',''));
    ImageList1.AddMasked(img,TransColor);
    N24.ImageIndex:=ImageList1.Count-1;
   end;
   if FileExists(dir+'\Skins\'+skin.ReadString('Menu','Skin','')) then begin
    img.LoadFromFile(dir+'\Skins\'+skin.ReadString('Menu','Skin',''));
    ImageList1.AddMasked(img,TransColor);
    N13.ImageIndex:=ImageList1.Count-1;
   end;
   if FileExists(dir+'\Skins\'+skin.ReadString('Menu','Help','')) then begin
    img.LoadFromFile(dir+'\Skins\'+skin.ReadString('Menu','Help',''));
    ImageList1.AddMasked(img,TransColor);
    N27.ImageIndex:=ImageList1.Count-1;
   end;
   if FileExists(dir+'\Skins\'+skin.ReadString('Menu','History','')) then begin
    img.LoadFromFile(dir+'\Skins\'+skin.ReadString('Menu','History',''));
    ImageList1.AddMasked(img,TransColor);
    N11.ImageIndex:=ImageList1.Count-1;
   end;
   if FileExists(dir+'\Skins\'+skin.ReadString('Menu','About','')) then begin
    img.LoadFromFile(dir+'\Skins\'+skin.ReadString('Menu','About',''));
    ImageList1.AddMasked(img,TransColor);
    N3.ImageIndex:=ImageList1.Count-1;
   end;
   if FileExists(dir+'\Skins\'+skin.ReadString('Menu','Exit','')) then begin
    img.LoadFromFile(dir+'\Skins\'+skin.ReadString('Menu','Exit',''));
    ImageList1.AddMasked(img,TransColor);
    N10.ImageIndex:=ImageList1.Count-1;
   end;
   if FileExists(dir+'\Skins\'+skin.ReadString('Menu','Comment','')) then begin
    img.LoadFromFile(dir+'\Skins\'+skin.ReadString('Menu','Comment',''));
    ImageList1.AddMasked(img,TransColor);
    N29.ImageIndex:=ImageList1.Count-1;
   end;
   if FileExists(dir+'\Skins\'+skin.ReadString('Menu','Photo','')) then begin
    img.LoadFromFile(dir+'\Skins\'+skin.ReadString('Menu','Photo',''));
    ImageList1.AddMasked(img,TransColor);
    N31.ImageIndex:=ImageList1.Count-1;
   end;
  end
  else
   begin
    PopupMenu1.Images:=nil;
    PopupMenu2.Images:=nil;
   end;

  If skintype='new' then
   Config.WriteString('Options','Skin',copy(extractfilename(sFile),1,pos('.',extractfilename(sFile)))+'csz')
  else
   Config.WriteString('Options','Skin',extractfilename(sFile));
 MinTop:=BMPButton1.Top;
 for i:=0 to ComponentCount-1 do
  If Components[i] is TBMPButton then begin
   (Components[i] as TBMPButton).ParentColor:=true;
   If (Components[i] as TBMPButton).Top<MinTop then
    MinTop:=(Components[i] as TBMPButton).Top;
  end;
 If MinTop<=GroupBox12.Top+GroupBox12.Height then
  MainForm.GroupBox12.Height:=16;
 If MinTop<=GroupBox9.Top+GroupBox9.Height then begin
  MainForm.GroupBox3.Height:=16;
  MainForm.GroupBox9.Top:=344;
 end;
 MainForm.Refresh;
end;

procedure TMainForm.NastrPMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 If (Nastr>=85) and (Nastr<=175) then
  Hint:='� ��� ������� ���������� - '+FloatToStr(RoundTo(Nastr,-4))+' �����';
 If (Nastr<40) and (Nastr>=10) then
  Hint:='� ��� ������ ���������� - '+FloatToStr(RoundTo(Nastr,-4))+' �����';
 If (Nastr>=40) and (nastr<85) then
  Hint:='��� ���� ���������� - '+FloatToStr(RoundTo(Nastr,-4))+' �����';
 If Nastr<10 then
  Hint:='� ��� ������ ������� ���������� - '+FloatToStr(RoundTo(Nastr,-4))+' �����';
 If Nastr>175 then
  Hint:='� ��� �������� ���������� - '+FloatToStr(RoundTo(Nastr,-4))+' �����';
end;

procedure TMainForm.RatingPMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 hint:='������� - '+FloatToStr(Round(Rating));
 If (Round(rating) mod 10=1) then
  hint:=hint+' ����'
 else
 If (Round(rating)>4) and (Round(rating)<21) then
  hint:=hint+' �����'
 else
  If ((Round(rating) mod 10=2) or (Round(rating) mod 10=3) or (Round(rating) mod 10=4)) then
   hint:=hint+' ����'
  else
   hint:=hint+' �����';
end;

procedure TMainForm.Label45MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
 value:shortstring;
begin
 If (button = mbright) and (ssShift in Shift) and (ssAlt in Shift) then begin
  Timer1.Enabled:=false;
  value:=InputBox('Cheats','������� cheat-���','');
  If value='���� �����' then
   Timer1.Enabled:=false
  else
  If value='����� ���' then
   money:=money+10000
  else
  If value='������������' then begin
   If n19.Checked=true then begin
    MainForm.AlphaBlend := n19.Checked;
    MainForm.AlphaBlendValue := TransPercent;
    N26.Enabled:=true;
    N26.Checked:=true;
   end
   else
    Application.MessageBox('������ ���������� ������������ � ������������� ������!','������!',MB_ICONSTOP);
  end
  else
  If value='������� �����' then
   rating:=rating+100
  else
   If value='�� ���' then
    UserName:=InputBox('Cheats','������� ���� ���','')
   else
    If value='� ����' then
     vklad:=vklad+10000
    else
     If value='�������� �������' then
      Timer1.Interval:=StrToInt(InputBox('Cheats','������� �������� ������� �������','1000'))
     else
      If value='� �����-�����' then begin
       statusvalue:=3;
       rating:=1000;
      end
      else
       If value='������� ���' then
        Year:=StrToInt(InputBox('Cheats','������� ���','2000'))
       else
        If value='� �� �����' then begin
         Label36.Caption:='�����������';
         LastWork:=true;
         zarpl:=400;
        end
        else
         If value='������ �������' then
          nastr:=nastr+20
         else
          If value='������������' then
           Vozrast:=StrToInt(InputBox('Cheats','������� ��� �������',''))
          else
           If value='�������������' then
            Application.MessageBox(Pchar('��������� ��������� �� - '+IntToStr(cpupercent)+'%'+#13+'���������� ���������� �� - '+IntToStr(videopercent)+'%'),'������!',MB_ICONINFORMATION)
           else
            If value='������ � �������' then begin
             vlasti:=100;
             dng:=0;
            end
            else
             If value='' then
             else
              Application.MessageBox('���������� ����, �����! �� ������!','������!',MB_ICONINFORMATION);
   end;
 If value<>'���� �����' then
  Timer1.Enabled:=true;
end;

procedure TMainForm.N19Click(Sender: TObject);
var
 OS:TOSVersionInfo;
begin
 Sr:=Playlist.ItemIndex;
 If N19.Checked=true then begin
  N19.Checked:=false;
  X:=dm.dmPelsWidth;
  Y:=dm.dmPelsHeight;
  Z:=dm.dmDuplex;
  ZeroMemory(@dm, sizeof(TDEVMODE));
  MainForm.BorderStyle:=bsNone;
  dm.dmSize := sizeof(TDEVMODE);
  dm.dmPelsWidth := 800;
  MainForm.ClientWidth:=800;
  dm.dmPelsHeight := 600;
  MainForm.ClientHeight:=600;
  dm.dmFields := DM_PELSWIDTH or DM_PELSHEIGHT;
  ChangeDisplaySettings(dm, 0);
  Config.WriteInteger('Options','WindowMode',0);
  N26.Checked:=false;
  MainForm.Left:=0;
  MainForm.Top:=0;
  AlphaBlend := false;
  N26.Enabled:=false;
  Playlist.ItemIndex:=sr;
 end
 else
  begin
   N19.Checked:=true;
   ZeroMemory(@dm, sizeof(TDEVMODE));
   dm.dmSize := sizeof(TDEVMODE);
   dm.dmPelsWidth := X;
   dm.dmPelsHeight := Y;
   dm.dmDuplex:=Z;
   dm.dmFields := DM_PELSWIDTH or DM_PELSHEIGHT;
   ChangeDisplaySettings(dm, 0);
   MainForm.BorderStyle:=bsSingle;
   MainForm.ClientWidth:=800;
   MainForm.ClientHeight:=600;
   Config.WriteInteger('Options','WindowMode',1);
   Playlist.ItemIndex:=sr;
   Os.dwOSVersionInfoSize:=SizeOf(OS);
   GetVersionEx(OS);
   If os.dwMajorVersion>=5 then
    N26.Enabled:=true;
  end;
end;
procedure TMainForm.N18Click(Sender: TObject);
begin
 If n18.Checked=false then begin
  Config.WriteInteger('Options','Music',1);
  n18.Checked:=true;
  MainForm.MediaPlayer1.Open;
  MainForm.MediaPlayer1.Play;
 end
 else
  begin
   Config.WriteInteger('Options','Music',0);
   n18.Checked:=false;
   MainForm.MediaPlayer1.Stop;
   MainForm.MediaPlayer1.Close;
  end;
end;

procedure TMainForm.VlastiPMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 If vlasti<=15 then
  VlastiP.Hint:='������ �� ��� ������!';
 If (vlasti>15) and (vlasti<=32) then
  VlastiP.Hint:='��� ����-���� � ��� �������� �������!';
 If (vlasti>32) and (vlasti<=55) then
  VlastiP.Hint:='��� ��� �����������, �� ���� ��� �������������!';
 If (vlasti>55) and (vlasti<=70) then
  VlastiP.Hint:='�� ���� ���-�� ���������!';
 If (vlasti>70) and (vlasti<85) then
  VlastiP.Hint:='�� ���� �������� �������������!';
 If vlasti>=85 then
  VlastiP.Hint:='������������������ ������ �� ���������� �� �������� ���������� � ���!';
end;

procedure TMainForm.BmpButton1Click(Sender: TObject);
var
 t:Tpoint;
begin
 GetCursorPos(t);
 PopupMenu1.Popup(t.X,t.y);
end;

procedure TMainForm.N21Click(Sender: TObject);
begin
	N21.Checked := not N21.Checked;
	config.WriteBool('Options','AutoUpdate',N21.Checked);
end;

procedure TMainForm.UpdExecute(Sender: TObject);
var
 FileOnNet, LocalFileName, version: string;
 update: textfile;
begin
FileOnNet:='http://www.RPprogs.narod.ru/Download/CEupdate.ini';
LocalFileName:=dir+'\Update\CEupdate.ini';
If updateprm='Check' then begin
 If GetInetFile(FileOnNet,LocalFileName)=True then begin
  assignfile(update,dir+'\Update\CEupdate.ini');
  reset(update);
  readln(update, version);
  If version<>Label45.Caption then begin
   If Application.MessageBox(Pchar('�������� ��� �������� ����� ������ ���� - '+version+'. ������ ���������� �������������� ����������?'),'������!',MB_YESNO+MB_ICONQUESTION)=IDYES then
    ShellExecute(Handle,nil,'http://www.RPprogs.narod.ru/Soft/CompEvo4.htm',nil,nil,handle);
  end
  else
   Application.MessageBox('� ��� ����������� ����� ��������� ������ ����!','������!',MB_ICONINFORMATION);
  closefile(update);
  erase(update);
 end
 else
  Application.MessageBox('������ ��� �������� ����� ����������!','������!',MB_ICONSTOP);
end
else
 begin
  If GetInetFile(FileOnNet,LocalFileName)=True then begin
   assignfile(update,dir+'\Update\CEupdate.ini');
   reset(update);
   readln(update, version);
   If version<>Label45.Caption then begin
    If Application.MessageBox(Pchar('�������� ��� �������� ����� ������ ���� - '+version+'. ������ ���������� �������������� ����������?'),'������!',MB_YESNO+MB_ICONWARNING)=IDYES then
     ShellExecute(Handle,nil,'http://www.RPprogs.narod.ru/Soft/CompEvo4.htm',nil,nil,handle);
   end
   else
    Application.MessageBox('� ��� ����������� ����� ��������� ������ ����!','������!',MB_ICONINFORMATION);
   closefile(update);
   erase(update);
  end
 end;
end;

procedure TMainForm.N23Click(Sender: TObject);
begin
 Updateprm:='Check';
 upd.Execute;
end;

procedure TMainForm.Label76MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 If videoshina='AGP' then
  Label76.Hint:='���������� ����������� �� ���� AGP.'+#13+'����� ������������� ����������� - '+IntToStr(videomemory)+'��'
 else
  If videoshina='PCI' then begin
   Label76.Hint:='���������� ����������� �� ���� PCI Express.';
   If SecondVideoCard<>'' then
    Label76.Hint:=Label76.Hint+#13+'� ������� ����������� ��� ����������.'+#13+'������� ���������� - '+SecondVideoCard;
  end
  else
   If (videoshina='') or (Label76.Caption<>'����������') then
    Label76.Hint:='� ����� ���������� �� ����������� ����������!';
end;

procedure TMainForm.GameSaveExecute(Sender: TObject);
var
 realsave: file of real;
 intsave: file of integer;
 textsave: textfile;
 bolsave: textfile;
 nwssave: textfile;
 hacksave: textfile;
 gamessave: textfile;
 SearchResult: integer;
 AddFiles: TSearchRec;
begin
 Timer1.Enabled:=false;
 ZipMaster1.Load_Zip_Dll;
 If ((SavePrm='Auto') or (SaveDialog1.Execute)) then begin
 If SavePrm<>'Auto' then
  Zipmaster1.ZipFileName:=SaveDialog1.FileName
 else
  ZipMaster1.ZipFileName:=dir+'\Saves\Autosave.evs';
 ZipMaster1.ZipComment:=Label45.Caption;
 AssignFile(realsave,dir+'\Temp\Real');
 AssignFile(intsave,dir+'\Temp\Integer');
 AssignFile(textsave,dir+'\Temp\Text');
 AssignFile(bolsave,dir+'\Temp\Boolean');
 AssignFile(nwssave,dir+'\Temp\News');
 AssignFile(hacksave,dir+'\Temp\Hack');
 AssignFile(gamessave,dir+'\Temp\Games');
 Nws.Memo1.Lines.SaveToFile(dir+'\Temp\News');
 {Reals in save}
   rewrite(realsave);
   write(realsave,rating);
   write(realsave,money);
   write(realsave,nastr);
   write(realsave,cpuvolt);
   write(realsave,ocpuvolt);
 {Integers in save}
   rewrite(intsave);
   write(intsave,month);
   write(intsave,year);
   write(intsave,day);
   write(intsave,testk);
   write(intsave,nwsk);
   write(intsave,n);
   write(intsave,vozrast);
   write(intsave,b);
   write(intsave,l);
   write(intsave,randomizer);
   write(intsave,randomizerCount);
   write(intsave,DangerC);
   write(intsave,DangerCCount);
   write(intsave,antivcount);
   write(intsave,vklad);
   write(intsave,vkladp);
   write(intsave,statusvalue);
   write(intsave,CD);
   write(intsave,ass);
   write(intsave,pas);
   write(intsave,bas);
   write(intsave,cpp);
   write(intsave,unixxak);
   write(intsave,winxak);
   write(intsave,cdr);
   write(intsave,progs);
   write(intsave,vlasti);
   write(intsave,dng);
   write(intsave,scanning);
   write(intsave,printing);
   write(intsave,safety);
   write(intsave,inetspeed);
   write(intsave,nadeg);
   write(intsave,cpuspeed);
   write(intsave,cpuclock);
   write(intsave,cdspeed);
   write(intsave,videoclock);
   write(intsave,videospeed);
   write(intsave,temperature);
   write(intsave,coolerspeed);
   write(intsave,hardspeed);
   write(intsave,hardspace);
   write(intsave,cdrspeed);
   write(intsave,htt);
   write(intsave,cpufsb);
   write(intsave,cpupercent);
   write(intsave,cpumnozh);
   write(intsave,ocpufsb);
   write(intsave,ocpumnozh);
   write(intsave,zarpl);
   write(intsave,videocore);
   write(intsave,videomem);
   write(intsave,videopercent);
   write(intsave,videomemory);
   write(intsave,ovideomem);
   write(intsave,ovideocore);
   write(intsave,hardskidka);
   write(intsave,videoskidka);
   write(intsave,procskidka);
   write(intsave,shans);
   write(intsave,ozycapacity);
   write(intsave,ramspeed);
   write(intsave,dvdrspeed);
   write(intsave,dvdrwspeed);
   write(intsave,cdrwspeed);
   write(intsave,spamk);
   write(intsave,arest);
   write(intsave,badcd);
   write(intsave,defragspeed);
   write(intsave,DefragTime);
   write(intsave,Credit);
   write(intsave,CreditPercent);
   write(intsave,CreditEnd);
   write(intsave,FlatComfort);
   write(intsave,FlatPay);
   write(intsave,CarPrestige);
   write(intsave,Hosting);
   write(intsave,VideoTemp);
   write(intsave,InetTraffic);
   write(intsave,znania);
   write(intsave,MonitorDiag);
   write(intsave,StudyProgress);
   write(intsave,SenderTag);
 {Strings in save}
   rewrite(textsave);
   writeln(textsave,UserName);
   writeln(textsave,Label41.Caption);
   writeln(textsave,Label22.Caption);
   writeln(textsave,Label24.Caption);
   writeln(textsave,Label23.Caption);
   writeln(textsave,Label25.Caption);
   writeln(textsave,Label30.Caption);
   writeln(textsave,Label32.Caption);
   writeln(textsave,Label27.Caption);
   writeln(textsave,Label29.Caption);
   writeln(textsave,Label28.Caption);
   writeln(textsave,Label26.Caption);
   writeln(textsave,Label38.Caption);
   writeln(textsave,Label31.Caption);
   writeln(textsave,Label33.Caption);
   writeln(textsave,Label43.Caption);
   writeln(textsave,Label44.Caption);
   writeln(textsave,Label46.Caption);
   writeln(textsave,Label36.Caption);
   writeln(textsave,Label34.Caption);
   writeln(textsave,Label69.Caption);
   writeln(textsave,Label70.Caption);
   writeln(textsave,Label71.Caption);
   writeln(textsave,Label74.Caption);
   writeln(textsave,Label75.Caption);
   writeln(textsave,Label72.Caption);
   writeln(textsave,Label73.Caption);
   writeln(textsave,Label76.Caption);
   writeln(textsave,Label77.Caption);
   writeln(textsave,chipset);
   writeln(textsave,Label99.Caption);
   writeln(textsave,Label121.Caption);
   writeln(textsave,Label101.Caption);
   writeln(textsave,Label109.Caption);
   writeln(textsave,Label131.Caption);
   writeln(textsave,videochip);
   writeln(textsave,videochipset);
   writeln(textsave,os);
   writeln(textsave,videoshina);
   writeln(textsave,Label123.Caption);
   writeln(textsave,Label31.Caption);
   writeln(textsave,AntivirusBases);
   writeln(textsave,AntivirusServer);
   writeln(textsave,Label48.Caption);
   writeln(textsave,Label51.Caption);
   writeln(textsave,Label53.Caption);
   WriteLn(textsave,Flat);
   WriteLn(textsave,Car);
   WriteLn(textsave,Comment);
   WriteLn(textsave,RamType);
   WriteLn(textsave,MultiChrome);
   WriteLn(textsave,Login);
   WriteLn(textsave,Password);
   WriteLn(textsave,Telefon);
   WriteLn(textsave,YourIP);
   WriteLn(textsave,ServerIP);
   WriteLn(textsave,SecondVideoCard);
   writeLn(textsave,Label56.Caption);
   writeLn(textsave,Label57.Caption);
   writeLn(textsave,Label58.Caption);
   writeLn(textsave,Label133.Caption);
   WriteLn(textsave,ExtractFileName(Photo));
   If Photo<>'' then
    Image13.Picture.SaveToFile(dir+'\Temp\'+ExtractFileName(Photo));
   //-------������ ���� ���������!-------//
 {Booleans in save}
   rewrite(bolsave);
{
   If fldown then
    writeln(bolsave,'True')
   else
    writeln(bolsave,'False');
}
   If lastwork then
    writeln(bolsave,'True')
   else
    writeln(bolsave,'False');
   If dvd then
    writeln(bolsave,'True')
   else
    writeln(bolsave,'False');
   If xDone then
    writeln(bolsave,'True')
   else
    writeln(bolsave,'False');
   If IsStudy then
    writeln(bolsave,'True')
   else
    writeln(bolsave,'False');
   If RememberPassword then
    writeln(bolsave,'True')
   else
    writeln(bolsave,'False');
  closefile(realsave);
  closefile(intsave);
  closefile(textsave);
  closefile(bolsave);
 ZipMaster1.FSpecArgs.Add(dir+'\Temp\News');
 ZipMaster1.FSpecArgs.Add(dir+'\Temp\Games');
 ZipMaster1.FSpecArgs.Add(dir+'\Temp\Real');
 ZipMaster1.FSpecArgs.Add(dir+'\Temp\Integer');
 ZipMaster1.FSpecArgs.Add(dir+'\Temp\Text');
 ZipMaster1.FSpecArgs.Add(dir+'\Temp\Hack');
 ZipMaster1.FSpecArgs.Add(dir+'\Temp\Boolean');
 If Photo<>'' then
  ZipMaster1.FSpecArgs.Add(dir+'\Temp\'+ExtractFileName(Photo));
 {=====������ �������� ��������� � save=====}
 WriteDiskStructure(dir+'\Temp\PartitionList.ini');
 ZipMaster1.FSpecArgs.Add(dir+'\Temp\PartitionList.ini');
 SearchResult:=FindFirst(dir+'\Temp\*.swl', faAnyFile, AddFiles);
 while SearchResult=0 do begin
  ZipMaster1.FSpecArgs.Add(dir+'\Temp\'+AddFiles.Name);
  SearchResult:=FindNext(AddFiles);
 end;
 SearchResult:=FindFirst(dir+'\Temp\*.gl', faAnyFile, AddFiles);
 while SearchResult=0 do begin
  ZipMaster1.FSpecArgs.Add(dir+'\Temp\'+AddFiles.Name);
  SearchResult:=FindNext(AddFiles);
 end;
 SearchResult:=FindFirst(dir+'\Temp\*.hl', faAnyFile, AddFiles);
 while SearchResult=0 do begin
  ZipMaster1.FSpecArgs.Add(dir+'\Temp\'+AddFiles.Name);
  SearchResult:=FindNext(AddFiles);
 end;
 FindClose(AddFiles);
 ZipMaster1.Add;
 ClearTempFiles;
end;
 Zipmaster1.Unload_Zip_Dll;
 Timer1.Enabled:=true;
end;

procedure TMainForm.N6Click(Sender: TObject);
begin
GameSave.Execute;
end;

procedure TMainForm.N15Click(Sender: TObject);
begin
 If n15.Checked=false then begin
  Config.WriteInteger('Options','AutoSave',1);
  N15.Checked:=true;
 end
 else
  begin
   N15.Checked:=false;
   Config.WriteInteger('Options','AutoSave',0);
  end;
end;

procedure TMainForm.Label24MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 If Label24.Caption<>'���' then
  Label24.Hint:='����� ������������� ������ - '+IntToStr(ozycapacity)+' ��'+#13+'��� - DDR '+IntToStr(ramspeed)
 else
  Label24.hint:='� ����� ���������� �� ���������� ������ ����������� ������!';
end;

procedure TMainForm.Label29MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 If Label29.Caption<>'���' then
  Label29.Hint:='�������� ������ ������ - '+IntToStr(inetspeed)+' ���/���'
 else
  Label29.Hint:='� ��� ��� ������!';
end;

procedure TMainForm.Label28MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 If Label28.Caption<>'���' then
  Label28.Hint:='�������� ������ ������ DVD-R - '+IntToStr(dvdrspeed)+'x'+#13+'�������� ������ ������ DVD-RW - '+IntToStr(dvdrwspeed)+'x'+#13+'�������� ������ ������ CD-R - '+IntToStr(cdrspeed)+'x'+#13+'�������� ������ ������ CD-RW - '+IntToStr(cdrwspeed)+'x'+#13+'�������� ������ ������ CD-ROM - '+IntToStr(cdspeed)+'x'
 else
  Label28.Hint:='� ��� ��� ������� ����������� �������!';
end;

procedure TMainForm.Label73MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 If (Label73.Caption<>'���') and (Label73.Caption<>'�����������') then
  Label73.Hint:='�������� ������ ����������� - '+IntToStr(coolerspeed)+' ��/���';
 If Label73.Caption='���' then
  Label73.Hint:='� ����� ���������� �� ���������� �����!';
 If Label73.Caption='�����������' then
  Label73.Hint:='� ����� ���������� ���������� ����������� �����.';
end;

procedure TMainForm.Label74MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 If Label74.Caption<>'���' then
  Label74.Hint:='�������� ������ - '+IntToStr(printing)+' ���/���'
 else
  Label74.Hint:='� ��� ��� ��������!';
end;

procedure TMainForm.Label75MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 If Label75.Caption<>'���' then
  Label75.Hint:='�������� ������������ - '+IntToStr(scanning)+' ���/���'
 else
  Label75.Hint:='� ��� ��� �������!';
end;

procedure TMainForm.Label23MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
If Label23.Caption<>'���' then begin
 If chipset='440' then
  Label23.Hint:='������ - Intel 440';
 If chipset='815' then
  Label23.Hint:='������ - Intel 815';
 If chipset='915' then
  Label23.Hint:='������ - Intel 915';
 If chipset='925' then
  Label23.Hint:='������ - Intel 925';
 If chipset='945' then
  Label23.Hint:='������ - Intel 945';
 If chipset='955' then
  Label23.Hint:='������ - Intel 955';
 If chipset='965' then
  Label23.Hint:='������ - Intel 965';
 If chipset='975' then
  Label23.Hint:='������ - Intel 975';
 If chipset='X38' then
  Label23.Hint:='������ - Intel X38';
 If chipset='845' then
  Label23.Hint:='������ - Intel 845';
 If chipset='865' then
  Label23.Hint:='������ - Intel 865';
 If chipset='875' then
  Label23.Hint:='������ - Intel 875';
 If chipset='133' then
  Label23.Hint:='������ - VIA KT133';
 If chipset='266' then
  Label23.Hint:='������ - VIA KT266';
 If chipset='333' then
  Label23.Hint:='������ - VIA KT333';
 If chipset='400' then
  Label23.Hint:='������ - VIA KT400';
 If chipset='800' then
  Label23.Hint:='������ - VIA K8T800';
 If chipset='880' then
  Label23.Hint:='������ - VIA PT880 Ultra';
 If chipset='890' then
  Label23.Hint:='������ - VIA K8T890';
 If chipset='R48' then
  Label23.Hint:='������ - ATI RS480';
 If chipset='R40' then
  Label23.Hint:='������ - ATI RS400';
 If chipset='R41' then
  Label23.Hint:='������ - ATI RC410';
 If chipset='R58' then
  Label23.Hint:='������ - ATI RD580';
 If chipset='X11' then
  Label23.Hint:='������ - ATI Xpress 1100';
 If chipset='X32' then
  Label23.Hint:='������ - ATI Xpress 3200';
 If chipset='UM1' then
  Label23.Hint:='������ - ULi M1689';
 If chipset='645' then
  Label23.Hint:='������ - SiS 645';
 If chipset='656' then
  Label23.Hint:='������ - SiS 656';
 If chipset='755' then
  Label23.Hint:='������ - SiS 755';
 If chipset='756' then
  Label23.Hint:='������ - SiS 756';
 If chipset='nf1' then
  Label23.Hint:='������ - nVidia nForce';
 If chipset='nf2' then
  Label23.Hint:='������ - nVidia nForce2';
 If chipset='nf3' then
  Label23.Hint:='������ - nVidia nForce3';
 If chipset='nf4' then
  Label23.Hint:='������ - nVidia nForce4';
 If chipset='n43' then
  Label23.Hint:='������ - nVidia nForce 430';
 If chipset='n57' then
  Label23.Hint:='������ - nVidia nForce 570';
 If chipset='n59' then
  Label23.Hint:='������ - nVidia nForce 590';
 If chipset='n65' then
  Label23.Hint:='������ - nVidia nForce 650';
 If chipset='n67' then
  Label23.Hint:='������ - nVidia nForce 670';
 If chipset='n68' then
  Label23.Hint:='������ - nVidia nForce 680';
 If chipset='n69' then
  Label23.Hint:='������ - nVidia nForce 690';

 If videochipset='AGP' then Label23.Hint:=Label23.Hint+#13+'�������������� ���� ��� ���������� - AGP';
 If videochipset='PCI' then Label23.Hint:=Label23.Hint+#13+'�������������� ���� ��� ���������� - PCI Express';
 If (videochipset='AGP&PCI') or (videochipset='PCI&AGP') then Label23.Hint:=Label23.Hint+#13+'�������������� ���� ��� ���������� - AGP � PCI Express';

 Label23.Hint:=Label23.Hint+#13+'�������������� ��� ����������� ������ - '+RamType;

 If MultiChrome='SLI' then label23.Hint:=Label23.Hint+#13+'��������� ���������� SLI';
 If MultiChrome='CF' then label23.Hint:=Label23.Hint+#13+'��������� ���������� CrossFire';
 If (MultiChrome='SLI&CF') or (MultiChrome='CF&SLI') then label23.Hint:=Label23.Hint+#13+'��������� ���������� SLI � CrossFire';
end
else
 Label23.Hint:='� ����� ���������� ��� ����������� �����!';
end;

procedure TMainForm.N5Click(Sender: TObject);
begin
 Timer1.Enabled:=false;
 If OpenDialog1.Execute then
  LoadGame(OpenDialog1.FileName);
 Timer1.Enabled:=true;
end;

function TMainForm.LoadGame(SaveName:string):boolean;
var
 p:string;
 realsave: file of real;
 intsave: file of integer;
 textsave: textfile;
 bolsave: textfile;
 nwssave: textfile;
 gamessave: textfile;
 hacksave: textfile;
 photofile: file;
begin
 MainForm.Timer1.Enabled:=false;
 MainForm.ZipMaster1.Load_Unz_Dll;
 MainForm.Zipmaster1.ZipFileName:=SaveName;
 If (DebugVersion) or (ZipMaster1.ZipComment=MainForm.Label45.Caption) then begin
 MainForm.ZipMaster1.ExtrBaseDir:=dir+'\Temp\';
 MainForm.ZipMaster1.ExtrOptions:=[extrOverwrite];
 MainForm.Zipmaster1.Extract;
  MainForm.Zipmaster1.Unload_Unz_Dll;
  AssignFile(realsave,dir+'\Temp\Real');
  AssignFile(intsave,dir+'\Temp\Integer');
  AssignFile(textsave,dir+'\Temp\Text');
  AssignFile(bolsave,dir+'\Temp\Boolean');
  AssignFile(nwssave,dir+'\Temp\News');
  AssignFile(hacksave,dir+'\Temp\Hack');
  AssignFile(gamessave,dir+'\Temp\Games');
  Nws.Memo1.Lines.LoadFromFile(dir+'\Temp\News');
  {Reals in save}
    reset(realsave);
    read(realsave,rating);
    read(realsave,money);
    read(realsave,nastr);
    read(realsave,cpuvolt);
    read(realsave,ocpuvolt);
  {Integers in save}
    reset(intsave);
    read(intsave,month);
    read(intsave,year);
    read(intsave,day);
    read(intsave,testk);
    read(intsave,nwsk);
    read(intsave,n);
    read(intsave,vozrast);
    read(intsave,b);
    read(intsave,l);
    read(intsave,randomizer);
    read(intsave,randomizerCount);
    read(intsave,DangerC);
    read(intsave,DangerCCount);
    read(intsave,antivcount);
    read(intsave,vklad);
    read(intsave,vkladp);
    read(intsave,statusvalue);
    read(intsave,CD);
    read(intsave,ass);
    read(intsave,pas);
    read(intsave,bas);
    read(intsave,cpp);
    read(intsave,unixxak);
    read(intsave,winxak);
    read(intsave,cdr);
    read(intsave,progs);
    read(intsave,vlasti);
    read(intsave,dng);
    read(intsave,scanning);
    read(intsave,printing);
    read(intsave,safety);
    read(intsave,inetspeed);
    read(intsave,nadeg);
    read(intsave,cpuspeed);
    read(intsave,cpuclock);
    read(intsave,cdspeed);
    read(intsave,videoclock);
    read(intsave,videospeed);
    read(intsave,temperature);
    read(intsave,coolerspeed);
    read(intsave,hardspeed);
    read(intsave,hardspace);
    read(intsave,cdrspeed);
    read(intsave,htt);
    read(intsave,cpufsb);
    read(intsave,cpupercent);
    read(intsave,cpumnozh);
    read(intsave,ocpufsb);
    read(intsave,ocpumnozh);
    read(intsave,zarpl);
    read(intsave,videocore);
    read(intsave,videomem);
    read(intsave,videopercent);
    read(intsave,videomemory);
    read(intsave,ovideomem);
    read(intsave,ovideocore);
    read(intsave,hardskidka);
    read(intsave,videoskidka);
    read(intsave,procskidka);
    read(intsave,shans);
    read(intsave,ozycapacity);
    read(intsave,ramspeed);
    read(intsave,dvdrspeed);
    read(intsave,dvdrwspeed);
    read(intsave,cdrwspeed);
    read(intsave,spamk);
    read(intsave,arest);
    read(intsave,badcd);
    read(intsave,defragspeed);
    read(intsave,DefragTime);
    read(intsave,Credit);
    read(intsave,CreditPercent);
    read(intsave,CreditEnd);
    read(intsave,FlatComfort);
    read(intsave,FlatPay);
    read(intsave,CarPrestige);
    read(intsave,Hosting);
    read(intsave,VideoTemp);
    read(intsave,InetTraffic);
    read(intsave,znania);
    read(intsave,MonitorDiag);
    read(intsave,StudyProgress);
    read(intsave,SenderTag);
  {Strings in save}
    reset(textsave);
    readLn(textsave,UserName);
    ReadLn(textsave,p);
    MainForm.Label41.Caption:=p;
    ReadLn(textsave,p);
    MainForm.Label22.Caption:=p;
    ReadLn(textsave,p);
    MainForm.Label24.Caption:=p;
    ReadLn(textsave,p);
    MainForm.Label23.Caption:=p;
    ReadLn(textsave,p);
    MainForm.Label25.Caption:=p;
    readLn(textsave,p);
    MainForm.Label30.Caption:=p;
    readLn(textsave,p);
    MainForm.Label32.Caption:=p;
    ReadLn(textsave,p);
    MainForm.Label27.Caption:=p;
    ReadLn(textsave,p);
    MainForm.Label29.Caption:=p;
    ReadLn(textsave,p);
    MainForm.Label28.Caption:=p;
    ReadLn(textsave,p);
    MainForm.Label26.Caption:=p;
    ReadLn(textsave,p);
    MainForm.Label38.Caption:=p;
    ReadLn(textsave,p);
    MainForm.Label31.Caption:=p;
    ReadLn(textsave,p);
    If p<>'' then
     MainForm.Label33.Caption:=p
    else
     MainForm.Label33.Caption:='���';
    Readln(textsave,p);
    MainForm.Label43.Caption:=p;
    Readln(textsave,p);
    MainForm.Label44.Caption:=p;
    Readln(textsave,p);
    MainForm.Label46.Caption:=p;
    Readln(textsave,p);
    MainForm.Label36.Caption:=p;
    Readln(textsave,p);
    MainForm.Label34.Caption:=p;
    Readln(textsave,p);
    MainForm.Label69.Caption:=p;
    Readln(textsave,p);
    MainForm.Label70.Caption:=p;
    Readln(textsave,p);
    MainForm.Label71.Caption:=p;
    Readln(textsave,p);
    MainForm.Label74.Caption:=p;
    Readln(textsave,p);
    MainForm.Label75.Caption:=p;
    Readln(textsave,p);
    MainForm.Label72.Caption:=p;
    Readln(textsave,p);
    MainForm.Label73.Caption:=p;
    Readln(textsave,p);
    MainForm.Label76.Caption:=p;
    Readln(textsave,p);
    MainForm.Label77.Caption:=p;
    Readln(textsave,chipset);
    Readln(textsave,p);
    MainForm.Label99.Caption:=p;
    Readln(textsave,p);
    MainForm.Label121.Caption:=p;
    Readln(textsave,p);
    MainForm.Label101.Caption:=p;
    Readln(textsave,p);
    MainForm.Label109.Caption:=p;
    Readln(textsave,p);
    MainForm.Label131.Caption:=p;
    Readln(textsave,videochip);
    Readln(textsave,videoChipset);
    Readln(textsave,os);
    Readln(textsave,videoshina);
    Readln(textsave,p);
    MainForm.Label123.Caption:=p;
    Readln(textsave,p);
    MainForm.Label31.Caption:=p;
    Readln(textsave,AntivirusBases);
    Readln(textsave,AntivirusServer);
    Readln(textsave,p);
    MainForm.Label48.Caption:=p;
    Readln(textsave,p);
    MainForm.Label51.Caption:=p;
    Readln(textsave,p);
    MainForm.Label53.Caption:=p;
    Readln(textsave,Flat);
    Readln(textsave,Car);
    Readln(textsave,Comment);
    Readln(textsave,RamType);
    Readln(textsave,MultiChrome);
    Readln(textsave,Login);
    Readln(textsave,Password);
    Readln(textsave,Telefon);
    Readln(textsave,YourIP);
    Readln(textsave,ServerIP);
    Readln(textsave,SecondVideoCard);
    Readln(textsave,p);
    MainForm.Label56.Caption:=p;
    Readln(textsave,p);
    MainForm.Label57.Caption:=p;
    Readln(textsave,p);
    MainForm.Label58.Caption:=p;
    Readln(textsave,p);
    MainForm.Label133.Caption:=p;
    Readln(textsave,Photo);
    If Photo<>'' then begin
     MainForm.Image13.Picture.LoadFromFile(dir+'\Temp\'+Photo);
     AssignFile(photofile,dir+'\Temp\'+Photo);
     N29.Caption:='������� ����������...';
     N7.Enabled:=true;
    end
    else
     ChangeSkin.Execute;
  {Booleans in save}
    reset(bolsave);
{    readLn(bolsave,p);

    If p='True' then
     fldown:=true
    else
     fldown:=false;
}
    readLn(bolsave,p);
    If p='True' then
     lastwork:=true
    else
     lastwork:=false;
    readLn(bolsave,p);
    If p='True' then
     dvd:=true
    else
     dvd:=false;
    readLn(bolsave,p);
    If p='True' then
     xDone:=true
    else
     xDone:=false;
    readLn(bolsave,p);
    If p='True' then
     IsStudy:=true
    else
     IsStudy:=false;
    readLn(bolsave,p);
    If p='True' then
     RememberPassword:=true
    else
     RememberPassword:=false;
 LoadDiskStructure(dir+'\Temp\PartitionList.ini');
 closefile(realsave);
 closefile(intsave);
 closefile(textsave);
 closefile(bolsave);
 ClearTempFiles;
 HackPrograms:=Parts[ActivePartition,0].Soft.HackPrograms;
 GamesList:=Parts[ActivePartition,0].Soft.GamesList;
 MainForm.Timer1.Enabled:=true;
 Result:=True;
 end
 else
  begin
   Application.MessageBox('���������� ��������� ����������� ���� ��������������� ��� ������ ������.','������!',MB_ICONSTOP);
   Result:=False;
  end;
end;
procedure TMainForm.Label31MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 If (MainForm.Label31.Caption<>'���') and (MainForm.Label30.Caption<>'���') then
  Label31.Hint:='��������� ���������� - '+Antivirusbases
 else
  Label31.Hint:='���, ��� � ��� ����������!';
end;

procedure TMainForm.MyTrayClick(Sender: TObject);
begin
 Application.Restore;
end;

procedure TMainForm.GroupBox1Click(Sender: TObject);
begin
 If (GroupBox1.Top+GroupBox5.Height+GroupBox4.Height+GroupBox7.Height+GroupBox8.Height+169+28<MinTop) then begin
  if GroupBox1.Height=16 then begin
   GroupBox1.Height:=169;
   GroupBox5.Top:=GroupBox5.Top+153;
   GroupBox4.Top:=GroupBox4.Top+153;
   GroupBox7.Top:=GroupBox7.Top+153;
   GroupBox8.Top:=GroupBox8.Top+153;
  end
  else
   begin
    GroupBox1.Height:=16;
    GroupBox5.Top:=GroupBox5.Top-153;
    GroupBox4.Top:=GroupBox4.Top-153;
    GroupBox7.Top:=GroupBox7.Top-153;
    GroupBox8.Top:=GroupBox8.Top-153;
   end;
 end
 else
  Application.MessageBox('���������� ���������� �����, ��� ��� ��� ������� �� ����������� ������ ����� ��� ������ �������� ����! ����� ������� ���������� ������ ����� �������� ������!','������!',MB_ICONSTOP);

 GroupBox1.Repaint;
 GroupBox5.Repaint;
 GroupBox4.Repaint;
 GroupBox7.Repaint;
 GroupBox8.Repaint;
end;

procedure TMainForm.GroupBox2Click(Sender: TObject);
begin
 If (GroupBox2.Height=16) and (GroupBox2.Top+GroupBox2.Height+GroupBox9.Height+GroupBox3.Height+297+14<MinTop) then begin
  GroupBox2.Height:=313;
  GroupBox3.Top:=GroupBox3.Top+297;
  GroupBox9.Top:=GroupBox9.Top+297;
 end
 else
  begin
   if GroupBox2.Height=313 then begin
    GroupBox2.Height:=16;
    GroupBox3.Top:=GroupBox3.Top-297;
    GroupBox9.Top:=GroupBox9.Top-297;
   end
   else
    Application.MessageBox('���������� ���������� �����, ��� ��� ��� ������� �� ����������� ������ ����� ��� ������ �������� ����! ����� ������� ���������� ������ ����� �������� ������!','������!',MB_ICONSTOP);
  end;
 GroupBox2.Repaint;
 GroupBox3.Repaint;
 GroupBox9.Repaint;
end;

procedure TMainForm.GroupBox3Click(Sender: TObject);
begin
 If (GroupBox3.Height=16) and (GroupBox3.Top+GroupBox3.Height+GroupBox9.Height+233+7<MinTop) then begin
  GroupBox3.Height:=233;
  GroupBox9.Top:=GroupBox9.Top+217;
 end
 else
  begin
   if GroupBox3.Height=233 then begin
    GroupBox3.Height:=16;
    GroupBox9.Top:=GroupBox9.Top-217;
   end
   else
    Application.MessageBox('���������� ���������� �����, ��� ��� ��� ������� �� ����������� ������ ����� ��� ������ �������� ����! ����� ������� ���������� ������ ����� �������� ������!','������!',MB_ICONSTOP);
  end;
	GroupBox3.Repaint;
	GroupBox9.Repaint;
end;

procedure TMainForm.GroupBox5Click(Sender: TObject);
begin
 If (GroupBox5.Top+GroupBox4.Height+GroupBox7.Height+GroupBox8.Height+73+21<MinTop) then begin
  if GroupBox5.Height=16 then begin
   GroupBox5.Height:=73;
   GroupBox4.Top:=GroupBox4.Top+57;
   GroupBox7.Top:=GroupBox7.Top+57;
   GroupBox8.Top:=GroupBox8.Top+57;
  end
  else
   begin
    GroupBox5.Height:=16;
    GroupBox4.Top:=GroupBox4.Top-57;
    GroupBox7.Top:=GroupBox7.Top-57;
    GroupBox8.Top:=GroupBox8.Top-57;
   end;
 end
 else
  Application.MessageBox('���������� ���������� �����, ��� ��� ��� ������� �� ����������� ������ ����� ��� ������ �������� ����! ����� ������� ���������� ������ ����� �������� ������!','������!',MB_ICONSTOP);

 GroupBox5.Repaint;
 GroupBox4.Repaint;
 GroupBox7.Repaint;
 GroupBox8.Repaint;
end;

procedure TMainForm.GroupBox4Click(Sender: TObject);
begin
 If (GroupBox4.Top+GroupBox7.Height+GroupBox8.Height+57+14<MinTop) then begin
  if GroupBox4.Height=16 then begin
   GroupBox4.Height:=57;
   GroupBox7.Top:=GroupBox7.Top+41;
   GroupBox8.Top:=GroupBox8.Top+41;
  end
  else
   begin
    GroupBox4.Height:=16;
    GroupBox7.Top:=GroupBox7.Top-41;
    GroupBox8.Top:=GroupBox8.Top-41;
   end;
 end
 else
  Application.MessageBox('���������� ���������� �����, ��� ��� ��� ������� �� ����������� ������ ����� ��� ������ �������� ����! ����� ������� ���������� ������ ����� �������� ������!','������!',MB_ICONSTOP);
 GroupBox4.Repaint;
 GroupBox7.Repaint;
 GroupBox8.Repaint;
end;

procedure TMainForm.GroupBox7Click(Sender: TObject);
begin
 If (GroupBox7.Top+GroupBox8.Height+105+7<MinTop) then begin
  if GroupBox7.Height=16 then begin
   GroupBox7.Height:=105;
   GroupBox8.Top:=GroupBox8.Top+89;
  end
  else
   begin
    GroupBox7.Height:=16;
    GroupBox8.Top:=GroupBox8.Top-89;
   end;
 end
 else
  Application.MessageBox('���������� ���������� �����, ��� ��� ��� ������� �� ����������� ������ ����� ��� ������ �������� ����! ����� ������� ���������� ������ ����� �������� ������!','������!',MB_ICONSTOP);
 GroupBox7.Repaint;
 GroupBox8.Repaint;
end;

procedure TMainForm.GroupBox8Click(Sender: TObject);
begin
 If (GroupBox8.Height=16) and (GroupBox8.Top+GroupBox8.Height+57<MinTop) then
  GroupBox8.Height:=73
 else
   if GroupBox8.Height=73 then GroupBox8.Height:=16
   else Application.MessageBox('���������� ���������� �����, ��� ��� ��� ������� �� ����������� ������ ����� ��� ������ �������� ����! ����� ������� ���������� ������ ����� �������� ������!','������!',MB_ICONSTOP);
 GroupBox8.Repaint;
end;

procedure TMainForm.GroupBox9Click(Sender: TObject);
begin
 If (GroupBox9.Height=16) and (GroupBox9.Top+GroupBox9.Height+73<MinTop) then
  GroupBox9.Height:=89
 else
   if GroupBox9.Height=89 then GroupBox9.Height:=16
   else Application.MessageBox('���������� ���������� �����, ��� ��� ��� ������� �� ����������� ������ ����� ��� ������ �������� ����! ����� ������� ���������� ������ ����� �������� ������!','������!',MB_ICONSTOP);
 GroupBox9.Repaint;
end;

procedure TMainForm.GroupBox10Click(Sender: TObject);
begin
 If (GroupBox10.Height=16) and (GroupBox10.Top+GroupBox10.Height+GroupBox11.Height+GroupBox12.Height+57+14<MinTop) then begin
  GroupBox10.Height:=73;
  GroupBox11.Top:=GroupBox11.Top+57;
  GroupBox12.Top:=GroupBox12.Top+57;
 end
 else
  begin
   if GroupBox10.Height=73 then begin
    GroupBox10.Height:=16;
    GroupBox11.Top:=GroupBox11.Top-57;
    GroupBox12.Top:=GroupBox12.Top-57;
   end
   else
    Application.MessageBox('���������� ���������� �����, ��� ��� ��� ������� �� ����������� ������ ����� ��� ������ �������� ����! ����� ������� ���������� ������ ����� �������� ������!','������!',MB_ICONSTOP);
  end;
 GroupBox10.Repaint;
 GroupBox11.Repaint;
 GroupBox12.Repaint;
end;

procedure TMainForm.GroupBox11Click(Sender: TObject);
begin
 If (GroupBox11.Height=16) and (GroupBox11.Top+GroupBox11.Height+GroupBox12.Height+89+7<MinTop) then begin
  GroupBox11.Height:=105;
  GroupBox12.Top:=GroupBox12.Top+89;
 end
 else
   if GroupBox11.Height=105 then begin
    GroupBox11.Height:=16;
    GroupBox12.Top:=GroupBox12.Top-89;
   end
   else
    Application.MessageBox('���������� ���������� �����, ��� ��� ��� ������� �� ����������� ������ ����� ��� ������ �������� ����! ����� ������� ���������� ������ ����� �������� ������!','������!',MB_ICONSTOP);
 GroupBox11.Repaint;
 GroupBox12.Repaint;
end;

procedure TMainForm.GroupBox12Click(Sender: TObject);
begin
 If (GroupBox12.Height=16) and (GroupBox12.Top+GroupBox12.Height+73<MinTop) then
  GroupBox12.Height:=89
 else
   if GroupBox12.Height=89 then GroupBox12.Height:=16
   else Application.MessageBox('���������� ���������� �����, ��� ��� ��� ������� �� ����������� ������ ����� ��� ������ �������� ����! ����� ������� ���������� ������ ����� �������� ������!','������!',MB_ICONSTOP);
 GroupBox12.Repaint;
end;

procedure TMainForm.N24Click(Sender: TObject);
begin
	if Plugs = nil then Application.CreateForm(TPlugs, Plugs);
	Plugs.ShowModal;
end;

procedure TMainForm.Label43MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
 i:smallint;
begin
 If HackPrograms.Count<>0 then begin
  HackPrograms.Sorted:=true;
  Hint:='������������� ���������:';
  for i:=0 to HackPrograms.Count-1 do
   Hint:=Hint+#13+HackPrograms[i];
 end
 else
  Hint:='';
end;

procedure TmainForm.ClearPrograms(Parameter, Partition:integer);
begin
 if Parameter=1 then begin
  MainForm.Label30.Caption:='���';
  Parts[Partition,0].Soft.OS:='���';
  Parts[Partition,0].Soft.OSType:='';
 end;
 MainForm.Label31.Caption:='���';
 MainForm.Label32.Caption:='���';
 MainForm.Label48.Caption:='���';
 MainForm.Label51.Caption:='���';
 MainForm.Label53.Caption:='���';
 MainForm.Label54.Caption:='���';
 MainForm.Label56.Caption:='���';
 MainForm.Label57.Caption:='���';
 MainForm.Label58.Caption:='���';
 MainForm.Label109.Caption:='���';
 MainForm.Label123.Caption:='���';
 MainForm.Label131.Caption:='���';
 MainForm.Label133.Caption:='���';
 HackPrograms.Clear;
 AntivirusBases:='';
 GamesList.Clear;
 Parts[Partition,0].Soft.Antivirus:='���';
 Parts[Partition,0].Soft.AntivirusServer:='';
 Parts[Partition,0].Soft.AntivirusBases:='';
 Parts[Partition,0].Soft.Dev:='���';
 Parts[Partition,0].Soft.DevType:='���';
 Parts[Partition,0].Soft.FileManager:='���';
 Parts[Partition,0].Soft.Firewall:='���';
 Parts[Partition,0].Soft.Defragmenter:='���';
 Parts[Partition,0].Soft.DiskOperator:='���';
 Parts[Partition,0].Soft.CopyCD:='���';
 Parts[Partition,0].Soft.VideoEncoder:='���';
 Parts[Partition,0].Soft.AudioGrabber:='���';
 Parts[Partition,0].Soft.VideoSoft:='���';
 Parts[Partition,0].Soft.Antispam:='���';
 Parts[Partition,0].Soft.Browser:='���';
 Parts[Partition,0].Soft.Benchmark:='���';
 If Parts[Partition,0].Soft.HackPrograms<>nil then
  Parts[Partition,0].Soft.HackPrograms.Clear;
 If Parts[Partition,0].Soft.GamesList<>nil then
  Parts[Partition,0].Soft.GamesList.Clear;
end;

procedure TMainForm.N25Click(Sender: TObject);
begin
 If N25.Checked=false then begin
  Config.WriteInteger('Options','News',1);
  ShowNews:=true;
  N25.Checked:=true;
 end
 else
  begin
   Config.WriteInteger('Options','News',0);
   ShowNews:=false;
   N25.Checked:=false;
  end;
end;

procedure TMainForm.Label21MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 hint:='�������� Windows-����������� '+IntToStr(winxak)+#13+'�������� Unix-����������� '+IntToStr(unixxak);
end;

procedure TMainForm.Label81MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 Hint:='��������� ������ ��� ������ - '+IntToStr(badcd);
end;

procedure TMainForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If ((Key = VK_RETURN) and (ssAlt in Shift)) and (N19.Enabled=true) then
  N19.OnClick(self);
 If key = VK_F2 then
  Pause.OnClick(self);
 If (key = VK_F1) and (N27.Visible=true) then
  N27.OnClick(self);
 if (key = $4E) and (ssCtrl in Shift) then
  N1.OnClick(self);
 if (key = $4C) and (ssCtrl in Shift) then
  N5.OnClick(self);
 if (key = $53) and (ssCtrl in Shift) then
  N6.OnClick(self);
 if (key = $55) and (ssCtrl in Shift) then
  N23.OnClick(self);
 if (key = $50) and (ssCtrl in Shift) then
  N29.OnClick(self);
 If (key=VK_ESCAPE) then
  Close;
 if (key=VK_F12) then
  If Playlist.ItemIndex=PlayList.Count-1 then begin
   PlayList.ItemIndex:=0;
//   MediaPlayer1.Stop;
//   MediaPlayer1.Close;
   MediaPlayer1.FileName:=dir+'\Music\'+PlayList.Items.Strings[PlayList.ItemIndex];
   MediaPLayer1.Open;
   MediaPLayer1.Play;
   MediaPLayer1.Notify:=true;
  end
  else
   begin
    playlist.ItemIndex:=Playlist.ItemIndex+1;
//    MediaPlayer1.Stop;
//    MediaPlayer1.Close;
    MediaPlayer1.FileName:=dir+'\Music\'+PlayList.Items.Strings[PlayList.ItemIndex];
    MediaPLayer1.Open;
    MediaPLayer1.Play;
    MediaPLayer1.Notify:=true;
   end;
 if (key=VK_F11) then
  If Playlist.ItemIndex=0 then begin
   PlayList.ItemIndex:=PlayList.Items.Count-1;
   MediaPlayer1.Stop;
   MediaPlayer1.Close;
   MediaPlayer1.FileName:=dir+'\Music\'+PlayList.Items.Strings[PlayList.ItemIndex];
   MediaPLayer1.Open;
   MediaPLayer1.Play;
  end
  else
   begin
    playlist.ItemIndex:=Playlist.ItemIndex-1;
    MediaPlayer1.Stop;
    MediaPlayer1.Close;
    MediaPlayer1.FileName:=dir+'\Music\'+PlayList.Items.Strings[PlayList.ItemIndex];
    MediaPLayer1.Open;
    MediaPLayer1.Play;
   end;

end;

procedure TMainForm.Label127MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
 Istek:shortstring;
begin
 If CreditEnd>0 then begin
  If CreditEnd=1 then
   Istek:='������'
  else
   If CreditEnd=2 then
    Istek:='�����������'
   else
   If (CreditEnd=3) or (CreditEnd=4) then
    Istek:='����� '+IntToStr(CreditEnd)+' ���'
   else
    If (CreditEnd>4) and (CreditEnd<21) then
     Istek:='����� '+IntToStr(CreditEnd)+' ����'
    else
     begin
      if (CreditEnd mod 10 = 1) then
       Istek:='����� '+IntToStr(CreditEnd)+' ����'
      else
       if (CreditEnd mod 10 > 1) and (CreditEnd mod 10 < 5) then
        Istek:='����� '+IntToStr(CreditEnd)+' ���'
       else
        if (CreditEnd mod 10 > 4) or (CreditEnd mod 10 = 0) then
         Istek:='����� '+IntToStr(CreditEnd)+' ����';
     end;
 end
 else
  Istek:='-';
 Hint:='����� ������� - '+IntToStr(Credit)+' �.�.'+#13+'������� ������� - '+IntToStr(CreditPercent)+'%'+#13+'���� �������� '+Istek+#13+'���� - '+FloatToStr(Peni)+' �.�.';
end;

procedure TMainForm.N26Click(Sender: TObject);
begin
 N26.Checked := not N26.Checked;
 AlphaBlend := N26.Checked;
 AlphaBlendValue := TransPercent;
end;

procedure TMainForm.N27Click(Sender: TObject);
begin
 ShellExecute(Handle,nil,Pchar(dir+'\CE4help.chm'),nil,nil,SW_MAXIMIZE);
 MainForm.Pause.OnClick(self);
end;

procedure TMainForm.N29Click(Sender: TObject);
begin
 Timer1.Enabled:=false;
 If (photo<>'') then begin
  If Application.MessageBox('�� ������������� ������ ������� ���������� ������?','������!',MB_ICONQUESTION+MB_YESNO)=IDYES then begin
   Photo:='';
   ChangeSkin.Execute;
   N29.Caption:='��������� ����������...';
   N7.Enabled:=false;
  end;
 end
 else
  If OpenPictureDialog1.Execute then begin
   Photo:=OpenPictureDialog1.FileName;
   Image13.Picture.LoadFromFile(Photo);
   N29.Caption:='������� ����������...';
   N7.Enabled:=true;
  end;
end;

procedure TMainForm.BmpButton10Click(Sender: TObject);
begin
 Technics.Showmodal;
end;

procedure TMainForm.BmpButton2Click(Sender: TObject);
begin
 If money>0 then
  Comp.ShowModal
 else
  Application.MessageBox('��� ����� �� ��������� ������ ������!','������!',MB_ICONSTOP);
end;

procedure TMainForm.BmpButton3Click(Sender: TObject);
begin
 Softw.ShowModal;
end;

procedure TMainForm.BmpButton4Click(Sender: TObject);
begin
 If Label30.Caption<>'���' then begin
  If Label133.Caption<>'���' then
   tst.showModal
  else
   Application.MessageBox('��� ������������ ���������� ���������� ���������� ��������������� ���������!','������!',MB_ICONSTOP);
 end
 else
  Application.MessageBox('�� ���������� �� ����������� ������������ �������!','������!',MB_ICONSTOP);
end;

procedure TMainForm.BmpButton5Click(Sender: TObject);
begin
 If MainForm.Label30.Caption<>'���' then
  inet.ShowModal
 else
  Application.MessageBox('�� ����� ���������� �� ����������� ������������ �������!','������!',MB_ICONSTOP);
end;

procedure TMainForm.BmpButton6Click(Sender: TObject);
begin
 If day>10 then
  Application.MessageBox('���������� �� ���������! ������ ����� ������� ������ �� �������� ����� ������!','������!',MB_ICONSTOP)
 else
  Wrks.ShowModal;
end;

procedure TMainForm.BmpButton7Click(Sender: TObject);
begin
 happy.showmodal;
end;

procedure TMainForm.BmpButton8Click(Sender: TObject);
begin
 bank.showModal;
end;

procedure TMainForm.BmpButton9Click(Sender: TObject);
begin
 Nws.ShowModal;
end;

procedure TMainForm.Label134MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 If Flat<>'' then
  Label134.Hint:='����� - '+Flat+#13+'���������� - '+IntToStr(FlatPay)+' �.�.'
 else
  Label134.Hint:='������, ��� �� ���������...';
end;

procedure TMainForm.N31Click(Sender: TObject);
begin
 Timer1.Enabled:=false;
 InputQuery('�����������','������� �������� ����������� ����',Comment);
 Timer1.Enabled:=true;
end;

procedure TMainForm.Label136MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 If Car<>'' then
  Label136.Hint:='���������� - '+Car+#13+'������� - '+IntToStr(CarPrestige)
 else
  Label136.Hint:='�� ������ �� ������ �� ��������.';
end;

procedure TMainForm.Label33MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 If Hosting<>0 then
  Label33.Hint:='����������� ����� �� ������� - '+IntToStr(Hosting)+' �.�.'
 else
  If Label33.Caption<>'���' then
   Label33.Hint:='��� ���� �������� �� ���������� ��������.';
end;

procedure TMainForm.N11Click(Sender: TObject);
begin
	if History = nil then Application.CreateForm(THistory, History);
	History.SHowModal;
end;

procedure TMainForm.N3Click(Sender: TObject);
begin
	if Abt = nil then Application.CreateForm(TAbt, Abt);
	Abt.Showmodal;
end;

procedure TMainForm.N10Click(Sender: TObject);
begin
 Close;
end;

procedure TMainForm.Label27MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 If Label27.Caption<>'���' then
  Label27.Hint:='��� ������� ����� ��������� '+IntToStr(MonitorDiag)+'"'
 else
  Label27.Hint:='� ��� ��� ��������!';
end;

procedure TMainForm.Label140MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 if (InetTraffic=0) or (Login<>'') then
  Hint:='Login - '+Login+#13+'������ - '+Password+#13+'������� ��� ������� - '+Telefon
 else
  Hint:='���� �������������� ������ ����������!';
end;

end.
