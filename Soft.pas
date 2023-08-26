unit Soft;

interface

uses
  Windows, SysUtils, Forms, Graphics,
  param, jpeg, news, anti, instal,
  ActnList, Classes, ExtCtrls, ComCtrls, Controls, StdCtrls, Gauges;

type
  TSoftw = class(TForm)
    Image1: TImage;
    Button1: TButton;
    GroupBox1: TGroupBox;
    Osup: TButton;
    Devup: TButton;
    GroupBox2: TGroupBox;
    Button4: TButton;
    Button5: TButton;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Animate1: TAnimate;
    ProgressBar1: TProgressBar;
    Timer4: TTimer;
    ActionList1: TActionList;
    Activate: TAction;
    Button3: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    GroupBox4: TGroupBox;
    Button10: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    Button11: TButton;
    Button12: TButton;
    GroupBox5: TGroupBox;
    Gauge1: TGauge;
    Label3: TLabel;
    Button14: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ActivateExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure OsupClick(Sender: TObject);
    procedure DevupClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button14Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Softw: TSoftw;
  i:integer=0;
  c:integer=0;
  Analys:boolean=false;

implementation

uses Main, Develop, SoftSel, PartitionMagic;

{$R *.dfm}

procedure TSoftw.Button1Click(Sender: TObject);
begin
 Close;
end;

procedure TSoftw.Button5Click(Sender: TObject);
var
 i: shortint;
begin
 If MainForm.Label31.Caption='���' then
  Application.MessageBox('���, ��� � ��� ����������!','������!',MB_ICONSTOP)
 else
  begin
   ProgressBar1.Position:=0;
   If 500-((cpuspeed+cpuclock+htt+hardspeed+defragspeed) div 100)<=0 then
    Timer4.Interval:=1
   else
    Timer4.Interval:=500-((cpuspeed+cpuclock+htt+hardspeed+defragspeed) div 100);
   Animate1.Active:=true;
   GroupBox3.Visible:=true;
  for i:=0 to ComponentCount-1 do
   If Components[i] is TButton then
    If (Components[i] as TButton).Caption<>'�������' then
     (Components[i] as TButton).Enabled:=false;
   Timer4.Enabled:=true;
  end;
end;

procedure TSoftw.Timer4Timer(Sender: TObject);
var
 i: shortint;
begin
 If ProgressBar1.Position<101 then
  ProgressBar1.Position:=ProgressBar1.Position+1;
 If ProgressBar1.Position=100 then begin
   Label6.Caption:='������� �������: '+IntToStr(1+random(4));
   Label6.Caption:='������� �������: '+IntToStr(Random(4));
   Animate1.Active:=false;
   Timer4.Enabled:=false;
   for i:=0 to ComponentCount-1 do
    If Components[i] is TButton then
     If ((Components[i] as TButton).Caption<>'�������') and (((Components[i] as TButton).Caption<>'���������� ����������')) then
      (Components[i] as TButton).Enabled:=true;
   If Label6.Caption<>'������� �������: 0' then begin
    Nws.Memo1.Lines.Add('');
    Nws.Memo1.Lines.Add(Date);
    Nws.Memo1.Lines.Add(Label6.Caption+'. ��� ������ ����������!');
   end;
  If Label6.Caption='������� �������: 0' then begin
   Nws.Memo1.Lines.Add('');
   Nws.Memo1.Lines.Add(Date);
   Nws.Memo1.Lines.Add('� ����� ���������� ������� �� �������! ���!');
  end;
 end;
end;
procedure TSoftw.Button4Click(Sender: TObject);
begin
if Antiv = nil then Application.CreateForm(TAntiv, Antiv);
If MainForm.Label30.Caption<>'���' then begin
 If AntivirusBases=Softw.Button4.Caption then
  Application.MessageBox('��������� �������� �� ������!','������!',MB_ICONWARNING)
 else
  if InetTraffic<1 then
   Application.MessageBox('���� ������������� ������ �� �������� ����������!','������!',MB_ICONSTOP)
  else
   Antiv.ShowModal;
end
else
 Application.MessageBox('�� ���������� �� ����������� ������������ �������!','������!',MB_ICONSTOP);
end;

procedure TSoftw.ActivateExecute(Sender: TObject);
var
 i:shortint;
begin
 ProgressBar1.Position:=0;
 for i:=0 to ComponentCount-1 do begin
  If Components[i] is TTimer then
   (Components[i] as TTimer).Enabled:=false;
  If Components[i] is TButton then
   (Components[i] as TButton).Enabled:=true;
 end;
 Label6.Caption:='������� �������:';
 If (MainForm.Label29.Caption<>'���') and (MainForm.Label30.Caption<>'���') and (MainForm.Label31.Caption<>'���') then begin
  If day=1 then
   If year=1 then
    Button4.Caption:=IntToStr(31)+'.'+IntToStr(12)+'.'+IntToStr(Year-1)
   else
    Button4.Caption:=IntToStr(31)+'.'+IntToStr(Month-1)+'.'+IntToStr(Year)
  else
   Button4.Caption:=IntToStr(Day-1)+'.'+IntToStr(Month)+'.'+IntToStr(Year);
  Button4.Enabled:=true;
 end
 else
  begin
   Button4.Caption:='���������� ����������';
   Button4.Enabled:=false;
  end;
end;

procedure TSoftw.FormActivate(Sender: TObject);
begin
 MainForm.Timer1.Enabled:=false;
 GroupBox3.Visible:=false;
 GroupBox5.Visible:=false;
 Activate.Execute;
 If c<2 then
  inc(c);
 If c=1 then
  Application.MessageBox('����� �� ������ ���������� ������������ ������� �� ���� ���������, � ����� ����� ����������!','������!',MB_ICONINFORMATION);
end;

procedure TSoftw.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 MainForm.Timer1.Enabled:=true;
end;

procedure TSoftw.Button3Click(Sender: TObject);
begin
 If (MainForm.Label36.Caption<>'��������') and (MainForm.Label36.Caption<>'����������') and (MainForm.Label36.Caption<>'���������') and (MainForm.Label36.Caption<>'�����') and (MainForm.Label36.Caption<>'�. ��������') and (MainForm.Label36.Caption<>'�����������') and (MainForm.Label36.Caption<>'���������') then
  Application.MessageBox('�� ������ ���������� �� ������ ���� �� ���������� ����� ������ ���������!','������!',MB_ICONSTOP)
 else
  begin
   If MainForm.Label32.Caption='���' then
    Application.MessageBox('�� ����������� ����� ����������!','������!',MB_ICONSTOP)
   else
    Development.ShowModal;
  end;
end;

procedure TSoftw.OsupClick(Sender: TObject);
begin
 If mainform.Label28.Caption<>'���' then begin
  assignfile(data,dir+'\Data\OS.dat');
  dataprm:='OS';
  SoftSelect.Caption:='����� ������������ ������';
  SoftSelect.Showmodal;
 end
 else
  Application.MessageBox('��� CD-ROM!','������!',mb_iconstop);
end;

procedure TSoftw.DevupClick(Sender: TObject);
begin
 If MainForm.Label30.Caption<>'���' then begin
  If mainform.Label28.Caption<>'���' then begin
   SoftSelect.Caption:='����� ������� ����������';
   dataprm:='Dev';
   assignfile(data,dir+'\Data\Development.dat');
   SoftSelect.ShowModal;
  end
  else
   Application.MessageBox('��� CD-ROM!','������!',mb_iconstop);
 end
 else
  Application.MessageBox('��� ������ ���������� ���������� ������������ ������� �� ���������!','������!',MB_ICONSTOP);
end;

procedure TSoftw.Button6Click(Sender: TObject);
begin
 If MainForm.Label30.Caption<>'���' then begin
  If mainform.Label28.Caption<>'���' then begin
   SoftSelect.Caption:='����� �������������� ��������';
   dataprm:='Spam';
   assignfile(data,dir+'\Data\Antispam.dat');
   SoftSelect.ShowModal;
  end
  else
   Application.MessageBox('��� CD-ROM!','������!',mb_iconstop);
 end
 else
  Application.MessageBox('��� ������ ���������� ���������� ������������ ������� �� ���������!','������!',MB_ICONSTOP);
end;

procedure TSoftw.Button7Click(Sender: TObject);
begin
 If MainForm.Label30.Caption<>'���' then begin
  If mainform.Label28.Caption<>'���' then begin
   SoftSelect.Caption:='����� �����������';
   dataprm:='Antivirus';
   assignfile(data,dir+'\Data\Antivirus.dat');
   SoftSelect.ShowModal;
  end
  else
   Application.MessageBox('��� CD-ROM!','������!',mb_iconstop);
 end
 else
  Application.MessageBox('��� ������ ���������� ���������� ������������ ������� �� ���������!','������!',MB_ICONSTOP);
end;

procedure TSoftw.Button8Click(Sender: TObject);
begin
 If MainForm.Label30.Caption<>'���' then begin
  If mainform.Label28.Caption<>'���' then begin
   SoftSelect.Caption:='����� �������� ����������';
   dataprm:='File Manager';
   assignfile(data,dir+'\Data\Manager.dat');
   SoftSelect.ShowModal;
  end
  else
   Application.MessageBox('��� CD-ROM!','������!',mb_iconstop);
 end
 else
  Application.MessageBox('��� ������ ���������� ���������� ������������ ������� �� ���������!','������!',MB_ICONSTOP);
end;

procedure TSoftw.Button9Click(Sender: TObject);
begin
 If MainForm.Label30.Caption<>'���' then begin
  If mainform.Label28.Caption<>'���' then begin
   SoftSelect.Caption:='����� ������������';
   dataprm:='Firewall';
   assignfile(data,dir+'\Data\Firewall.dat');
   SoftSelect.ShowModal;
  end
  else
   Application.MessageBox('��� CD-ROM!','������!',mb_iconstop);
 end
 else
  Application.MessageBox('��� ������ ���������� ���������� ������������ ������� �� ���������!','������!',MB_ICONSTOP);
end;

procedure TSoftw.Button10Click(Sender: TObject);
begin
 If MainForm.Label30.Caption<>'���' then begin
  If Mainform.Label28.Caption<>'���' then begin
   If MainForm.Label53.Caption='���' then begin
    SoftSelect.Caption:='����� ���������������� �����';
    dataprm:='Defrag';
    assignfile(data,dir+'\Data\Defragmenter.dat');
    SoftSelect.ShowModal;
   end
   else
    begin
     case Application.MessageBox('�� ������ �������� ��������������? � ��������� ������ ����� ����������� ��������� ����� ��������� ��� �������������� �����.','������!',MB_ICONQUESTION+MB_YESNOCANCEL) of
      6:
      begin
       Gauge1.Progress:=0;
       Analys:=false;
       Label3.Caption:='���� ������...';
       If 500-((cpuspeed+cpuclock+htt+hardspeed+defragspeed) div 41)<=0 then
        Timer1.Interval:=1
       else
        Timer1.Interval:=500-((cpuspeed+cpuclock+htt+hardspeed+defragspeed) div 41);
       Timer1.Enabled:=true;
      end;
      7:
      begin
       SoftSelect.Caption:='����� ���������������� �����';
       dataprm:='Defrag';
       assignfile(data,dir+'\Data\Defragmenter.dat');
       SoftSelect.ShowModal;
      end;
     end;
    end;
   end
  else
   Application.MessageBox('��� CD-ROM!','������!',mb_iconstop);
 end
 else
  Application.MessageBox('��� ������ ���������� ���������� ������������ ������� �� ���������!','������!',MB_ICONSTOP);
end;

procedure TSoftw.Timer1Timer(Sender: TObject);
var
 i: shortint;
begin
 If not Analys then begin
  MainForm.Timer1.Enabled:=false;
  Gauge1.ForeColor:=clMenuHighlight;
  GroupBox5.Visible:=true;
  for i:=0 to ComponentCount-1 do
   If Components[i] is TButton then
    If (Components[i] as TButton).Caption<>'�������' then
     (Components[i] as TButton).Enabled:=false;
  If Gauge1.Progress<100 then
   Gauge1.Progress:=Gauge1.Progress+1
  else
   begin
    Analys:=true;
    Label3.Caption:='�������������� �����...';
    Gauge1.Progress:=0;
    Gauge1.ForeColor:=clHighlight;
    If 500-((cpuspeed+cpuclock+htt+hardspeed+defragspeed) div 100)<=0 then
     Timer1.Interval:=1
    else
     Timer1.Interval:=500-((cpuspeed+cpuclock+htt+hardspeed+defragspeed) div 100);
   end;
 end
 else
  If DefragTime>30 then begin
   if Gauge1.Progress<100 then
    Gauge1.Progress:=Gauge1.Progress+1
   else
    begin
     Button10.Enabled:=true;
     Button5.Enabled:=true;
     Timer1.Enabled:=false;
     Label3.Caption:='';
     for i:=0 to ComponentCount-1 do
      If Components[i] is TButton then
       If (Components[i] as TButton).Caption<>'�������' then
        (Components[i] as TButton).Enabled:=true;
     Application.MessageBox('�������������� ����� ���������! ����������� ��� ��������� �������������� ������ �����!','������!',MB_ICONINFORMATION);
     defragspeed:=random(4000);
     DefragTime:=0;
    end;
  end
  else
   begin
    Button10.Enabled:=true;
    Button5.Enabled:=true;
    Timer1.Enabled:=false;
    Label3.Caption:='';
    for i:=0 to ComponentCount-1 do
     If Components[i] is TButton then
      If (Components[i] as TButton).Caption<>'�������' then
       (Components[i] as TButton).Enabled:=true;
    Application.MessageBox('�������������� ����� �� ���������!','������!',MB_ICONINFORMATION);
   end;
end;

procedure TSoftw.Button11Click(Sender: TObject);
begin
 If MainForm.Label30.Caption<>'���' then begin
  If mainform.Label28.Caption<>'���' then begin
   SoftSelect.Caption:='����� ���������';
   dataprm:='Browser';
   assignfile(data,dir+'\Data\Browser.dat');
   SoftSelect.ShowModal;
  end
  else
   Application.MessageBox('��� CD-ROM!','������!',mb_iconstop);
 end
 else
  Application.MessageBox('��� ������ ���������� ���������� ������������ ������� �� ���������!','������!',MB_ICONSTOP);
end;

procedure TSoftw.Button12Click(Sender: TObject);
begin
 If MainForm.Label30.Caption<>'���' then begin
  If mainform.Label28.Caption<>'���' then begin
   SoftSelect.Caption:='����� ��������-��������';
   dataprm:='Benchmark';
   assignfile(data,dir+'\Data\Benchmark.dat');
   SoftSelect.ShowModal;
  end
  else
   Application.MessageBox('��� CD-ROM!','������!',mb_iconstop);
 end
 else
  Application.MessageBox('��� ������ ���������� ���������� ������������ ������� �� ���������!','������!',MB_ICONSTOP);
end;

procedure TSoftw.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button1.OnClick(self);
end;

procedure TSoftw.Button14Click(Sender: TObject);
begin
  case Application.MessageBox('������ �������� ��������� �������� �������� �����? � ��������� ������ ����� ����������� ��������� ����� ��������� ��� ���������� ��������� ���������.','������!',MB_ICONQUESTION+MB_YESNOCANCEL) of
   6: begin
       Operation:='PMagic';
       Partition.ShowModal;
      end;
   7: begin
       If MainForm.Label30.Caption<>'���' then begin
        SoftSelect.Caption:='����� ���������� �����';
        dataprm:='DiskOperator';
        assignfile(data,dir+'\Data\DIskOperator.dat');
        SoftSelect.ShowModal;
       end
       else
       Application.MessageBox('��� ������ ���������� ���������� ������������ ������� �� ���������!','������!',MB_ICONSTOP);
      end;
   end;
end;

procedure TSoftw.Button2Click(Sender: TObject);
begin
 Operation:='Active';
 Partition.ShowModal;
end;

end.
