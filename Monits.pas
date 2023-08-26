unit Monits;

interface

uses
  Forms, main, sysutils, param, Windows, Graphics, Buy,
  ActnList, Classes, Gauges, Controls, StdCtrls, ExtCtrls;

type
  TCompl = class(TForm)
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Gauge1: TGauge;
    Label1: TLabel;
    Label2: TLabel;
    Gauge2: TGauge;
    Label3: TLabel;
    Gauge3: TGauge;
    Gauge4: TGauge;
    Label4: TLabel;
    ActionList1: TActionList;
    Open: TAction;
    Label6: TLabel;
    Gauge5: TGauge;
    Label7: TLabel;
    Gauge6: TGauge;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Image1: TImage;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure OpenExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Compl: TCompl;
  harddata:textfile;
  cpx:shortstring='';
  radio:integer;
  previmage:boolean=true;
  TempMultiChrome:shortstring='';

implementation

uses Games;

{$R *.dfm}

procedure TCompl.Button1Click(Sender: TObject);
begin
 Close;
end;

procedure TCompl.FormActivate(Sender: TObject);
var
 p,np:shortstring;
begin
 MainForm.Timer1.Enabled:=false;
 radio := Comp.RadioGroup1.ItemIndex * (random(4)+3);
 np:=''; p:='';
 cpx:='';
 Combobox1.Clear;
 Label8.Caption:='';
 Label14.Caption:='';
 Label8.Caption:='';
 Label9.Caption:='';
 Label10.Caption:='';
 Label11.Caption:='';
 Label12.Caption:='';
 Gauge1.Progress:=0;
 Gauge1.MaxValue:=99;
 Gauge2.Progress:=0;
 Gauge2.MaxValue:=99;
 Gauge3.Progress:=0;
 Gauge3.MaxValue:=99;
 Gauge4.Progress:=0;
 Gauge4.MaxValue:=99;
 Gauge5.Progress:=0;
 Gauge5.MaxValue:=99;
 Gauge6.Progress:=0;
 Gauge6.MaxValue:=99;
 Label16.Visible:=false;
 Label5.Visible:=false;
 Label15.Visible:=false;
 Label13.Visible:=false;
 Label17.Visible:=false;
 Label18.Visible:=false;
 Label19.Visible:=false;
 Label20.Visible:=false;
 Label21.Visible:=false;
 Label22.Visible:=false;
 Label23.Visible:=false;
 Label24.Visible:=false;
 Label25.Visible:=false;
 Label26.Visible:=false;
 Label27.Visible:=false;
 Button2.Enabled:=true;
 reset(harddata);
 while not eof(harddata) do begin
  readln(harddata,p);
  np:=p;
  p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,1,pos(#9,p)-1);
  If hardprm='��������' then begin
   Groupbox1.Height:=137;
   Compl.ClientHeight:=265;
   Label1.Caption:='���������';
   Gauge1.MaxValue:=round(money);
   Label2.Caption:='�������';
   Gauge2.MaxValue:=100;
   Label3.Caption:='����������';
   Gauge3.MaxValue:=round(money);
   combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
  end;
  If ((radio <> 0) and (StrToInt(p) <= year))
  or ((StrToInt(p)=year) and (year<EndYear)) or (year>=EndYear) then begin
   If hardprm='��������' then begin
    Groupbox1.Height:=137;
    Compl.ClientHeight:=265;
    Label1.Caption:='������������';
    Label2.Caption:='���������';
    Label3.Caption:='���������';
    Gauge2.MaxValue:=21;
    Gauge3.MaxValue:=round(money);
    combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
   end;
   If hardprm='����������' then begin
    Groupbox1.Height:=97;
    Compl.ClientHeight:=265;
    Label1.Caption:='����� ������';
    Label2.Caption:='���������';
    Gauge1.MaxValue:=1024;
    Gauge2.MaxValue:=round(money);
    Label24.Visible:=true;
    combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
   end;
   If hardprm='������' then begin
    Groupbox1.Height:=257;
    Compl.ClientHeight:=305;
    Gauge1.MaxValue:=16;
    Gauge2.MaxValue:=16;
    Gauge3.MaxValue:=52;
    Gauge4.MaxValue:=32;
    Gauge5.MaxValue:=52;
    Label1.Caption:='�������� ������ DVD-R';
    Label2.Caption:='�������� ������ DVD-RW';
    Label3.Caption:='�������� ������ CD-R';
    Label4.Caption:='�������� ������ CD-RW';
    Label6.Caption:='�������� ������ CD-ROM';
    Label7.Caption:='���������';
    Gauge6.MaxValue:=round(money);
    combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
   end;
   If hardprm='����' then begin
    combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
    Groupbox1.Height:=57;
    Compl.ClientHeight:=265;
    Label1.Caption:='���������';
    Gauge1.MaxValue:=round(money);
    Label16.Visible:=true;
    Label5.Visible:=true;
    Label15.Visible:=true;
    Label13.Visible:=true;
    Label23.Visible:=true;
    Label25.Visible:=true;
    Label26.Visible:=true;
   end;
   If hardprm='������' then begin
    combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
    Groupbox1.Height:=137;
    Compl.ClientHeight:=289;
    Label1.Caption:='������������������';
    Gauge1.MaxValue:=40000;
    Label2.Caption:='����� ������';
    Gauge2.MaxValue:=1024;
    Label3.Caption:='���������';
    Gauge3.MaxValue:=round(money);
    Label19.Visible:=true;
    Label21.Visible:=true;
    Label22.Visible:=true;
    Label20.Visible:=true;
    Label27.Visible:=true;
   end;
   If hardprm='����' then begin
    Groupbox1.Height:=137;
    Compl.ClientHeight:=265;
    Label1.Caption:='�����';
    Gauge1.MaxValue:=1000;
    Label2.Caption:='�������� �������� ��������';
    Gauge2.MaxValue:=15000;
    Label3.Caption:='���������';
    Gauge3.MaxValue:=round(money);
    combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
   end;
   If hardprm='�����' then begin
    Groupbox1.Height:=137;
    Compl.ClientHeight:=265;
    Label1.Caption:='���������� �������� � ������';
    Gauge1.MaxValue:=7000;
    Label2.Caption:='������� ����';
    Gauge2.MaxValue:=55;
    Label3.Caption:='���������';
    Gauge3.MaxValue:=round(money);
    combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
   end;
   If (hardprm='����������') or (hardprm='����') or (hardprm='�������') or (hardprm='����') or (hardprm='������') or (hardprm='�����') then begin
    combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
    Groupbox1.Height:=57;
    Compl.ClientHeight:=265;
    Label1.Caption:='���������';
    Gauge1.MaxValue:=round(money);
   end;
   If (hardprm='�������') or (hardprm='������') or (hardprm='�����') or (hardprm='����') or (hardprm='�������������') or (hardprm='������') then begin
    combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
    Groupbox1.Height:=97;
    Compl.ClientHeight:=265;
    If hardprm='����' then begin
     Label1.Caption:='������������������';
     Label17.Visible:=true;
     Label18.Visible:=true;
     Gauge1.MaxValue:=35000;
     Compl.ClientHeight:=265;
    end;
    If hardprm='������' then begin
     Label1.Caption:='�������';
     Gauge1.MaxValue:=100;
     Label2.Caption:='���������';
     Gauge2.MaxValue:=round(money);
    end;
    If hardprm='�������' then begin
     Label1.Caption:='�������� ������';
     Gauge1.MaxValue:=40;
    end;
    If hardprm='������' then begin
     Label1.Caption:='�������� ������������';
     Gauge1.MaxValue:=40;
    end;
    If hardprm='�����' then begin
     Label1.Caption:='�������� ������ � ���������';
     Gauge1.MaxValue:=1024000;
    end;
    If hardprm='�������������' then
     Label1.Caption:='����������';
    Label2.Caption:='���������';
    Gauge2.MaxValue:=round(money);
  end;
 end;
 end;
 Combobox1.ItemIndex:=0;
 Open.Execute;
 Combobox1.SetFocus;
end;

procedure TCompl.Button2Click(Sender: TObject);
var
 p,mnp, np:shortstring;
 x, PriceLow:integer;
begin
reset(harddata); p:=''; np:=''; mnp:='';
cpx:='buy';
{===========��������============}
 If hardprm='��������' then begin
  reset(harddata);
  while copy(p,1,pos(#9,p)-1)<>Combobox1.Items.Strings[Combobox1.ItemIndex] do
   readln(harddata,p);
  np:=copy(p,1,pos(#9,p)-1); p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  If money>=(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)))) then begin
   money:=money-StrToInt(copy(p,1,pos(#9,p)-1))+((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)));
   If ((radio<>0) and (random(4)<>1)) or (radio=0) then begin
    p:=copy(p,pos(#9,p)+1,255);
    MonitorDiag:=StrToInt(copy(p,1,pos(#9,p)-1));
    Safety:=StrToInt(copy(p,pos(#9,p)+1,255));
    Rating:=rating+3; Nastr:=nastr+3;
    If MainForm.Label27.Caption<>'���' then begin
     reset(harddata);
     while not eof(harddata) do begin
      readln(harddata,p);
      If copy(p,1,pos(#9,p)-1)=MainForm.Label27.Caption then begin
       p:=copy(p,pos(#9,p)+1,255);
       If Year-StrToInt(copy(p,1,pos(#9,p)-1))<9 then
        PriceLow:=Year-StrToInt(copy(p,1,pos(#9,p)-1))+1
       else
        PriceLow:=8;
       p:=copy(p,pos(#9,p)+1,255);
       x:=(StrToInt(copy(p,1,pos(#9,p)-1))*PriceLow*10 div 100);
       If Application.MessageBox(Pchar('�� ������ ������� ���� ������ '+MainForm.Label27.Caption+' �� '+IntToStr(StrToInt(copy(p,1,pos(#9,p)-1))-x)+' �.�.?'),'������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
        money:=money+StrToInt(copy(p,1,pos(#9,p)-1))-x;
      end;
     end;
  end;
    MainForm.Label27.Caption:=np;
    Application.MessageBox('���� ���� ������ ���. �������� �� ������ ������������� ��������� ����� ���������. �������� � ��� ���, �������� ������ �������� ����� ��������.','������!',MB_ICONINFORMATION);
   end
   else
    Application.MessageBox('�� �������� ����� �������������� �������, �� ������� ��� �� �� ������� ������� ��������� �����. ������ ��� ������...','������!',MB_ICONSTOP);
   Close;
  end
  else
   Application.MessageBox('�� ������� �����!','������!',MB_ICONSTOP);
 end;
{===========����������============}
 If hardprm='����������' then begin
  reset(harddata);
  while copy(p,1,pos(#9,p)-1)<>Combobox1.Items.Strings[Combobox1.ItemIndex] do
   readln(harddata,p);
  np:=copy(p,1,pos(#9,p)-1); p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  If money>=(StrToInt(p)-((radio / 100)*StrToInt(p))) then begin
   money:=money-StrToInt(p)+((radio / 100)*StrToInt(p));
   If ((radio<>0) and (random(4)<>1)) or (radio=0) then begin
    If MainForm.Label69.Caption<>'���' then begin
     reset(harddata);
     while not eof(harddata) do begin
      readln(harddata,p);
      If copy(p,1,pos(#9,p)-1)=MainForm.Label69.Caption then begin
       p:=copy(p,pos(#9,p)+1,255);
       If Year-StrToInt(copy(p,1,pos(#9,p)-1))<8 then
        PriceLow:=Year-StrToInt(copy(p,1,pos(#9,p)-1))+1
       else
        PriceLow:=7;
       p:=copy(p,pos(#9,p)+1,255);
       x:=(StrToInt(p)*PriceLow*10 div 100);
       If Application.MessageBox(Pchar('�� ������ ������� ���� ������ '+MainForm.Label69.Caption+' �� '+IntToStr(StrToInt(p)-x)+' �.�.?'),'������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
        money:=money+StrToInt(p)-x;
      end;
     end;
     end;
    MainForm.Label69.Caption:=np;
    Rating:=rating+3; Nastr:=nastr+3;
    Application.MessageBox('���� ���� ������ ���. �������� �� ������ ������������� ��������� ����� ���������. �������� � ��� ���, �������� ������ �������� ����� ��������.','������!',MB_ICONINFORMATION);
   end
   else
    Application.MessageBox('�� �������� ���� �� ���������� � ���������! Error! "Keyboard not found!" - ������ ���������. ������ ������� ��������� ���������� ����� � ����� �� �� �������� ����������!','������!',MB_ICONSTOP);
   Close;
  end
  else
   Application.MessageBox('�� ������� �����!','������!',MB_ICONSTOP);
 end;
{===========�������============}
 If hardprm='�������' then begin
  reset(harddata);
  while copy(p,1,pos(#9,p)-1)<>Combobox1.Items.Strings[Combobox1.ItemIndex] do
   readln(harddata,p);
  np:=copy(p,1,pos(#9,p)-1); p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  If money>=(StrToInt(p)-((radio / 100)*StrToInt(p))) then begin
   money:=money-StrToInt(p)+((radio / 100)*StrToInt(p));
   If ((radio<>0) and (random(4)<>1)) or (radio=0) then begin
    If MainForm.Label71.Caption<>'���' then begin
     reset(harddata);
     while not eof(harddata) do begin
      readln(harddata,p);
      If copy(p,1,pos(#9,p)-1)=MainForm.Label71.Caption then begin
       p:=copy(p,pos(#9,p)+1,255);
       If Year-StrToInt(copy(p,1,pos(#9,p)-1))<8 then
        PriceLow:=Year-StrToInt(copy(p,1,pos(#9,p)-1))+1
       else
        PriceLow:=7;
       p:=copy(p,pos(#9,p)+1,255);
       x:=(StrToInt(p)*PriceLow*10 div 100);
       If Application.MessageBox(Pchar('�� ������ ������� ���� ������ '+MainForm.Label71.Caption+' �� '+IntToStr(StrToInt(p)-x)+' �.�.?'),'������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
        money:=money+StrToInt(p)-x;
      end;
     end;
     end;
    MainForm.Label71.Caption:=np;
    Rating:=rating+3; Nastr:=nastr+3;
    Application.MessageBox('���� ���� ������ ���. �������� �� ������ ������������� ��������� ����� ���������. �������� � ��� ���, �������� ������ �������� ����� ��������.','������!',MB_ICONINFORMATION);
   end
   else
    Application.MessageBox('����� ������� �������, ��� �������� �� �������... �������� �� �������� ��������� �������� ���� ������� �� �����. ��, ������ ����������� � �������.','������!',MB_ICONSTOP);
   Close;
  end
  else
   Application.MessageBox('�� ������� �����!','������!',MB_ICONSTOP);
 end;
{===========������============}
 If hardprm='������' then begin
  reset(harddata);
  while copy(p,1,pos(#9,p)-1)<>Combobox1.Items.Strings[Combobox1.ItemIndex] do
   readln(harddata,p);
  np:=copy(p,1,pos(#9,p)-1); p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  If money>=(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)))) then begin
   money:=money-StrToInt(copy(p,1,pos(#9,p)-1))+((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)));
   If ((radio<>0) and (random(4)<>1)) or (radio=0) then begin
    scanning:=StrToInt(copy(p,pos(#9,p)+1,255));
    If MainForm.Label75.Caption<>'���' then begin
     reset(harddata);
     while not eof(harddata) do begin
      readln(harddata,p);
      If copy(p,1,pos(#9,p)-1)=MainForm.Label75.Caption then begin
       p:=copy(p,pos(#9,p)+1,255);
       If Year-StrToInt(copy(p,1,pos(#9,p)-1))<9 then
        PriceLow:=Year-StrToInt(copy(p,1,pos(#9,p)-1))+1
       else
        PriceLow:=8;
       p:=copy(p,pos(#9,p)+1,255);
       x:=(StrToInt(copy(p,1,pos(#9,p)-1))*PriceLow*10 div 100);
       If Application.MessageBox(Pchar('�� ������ ������� ���� ������ '+MainForm.Label75.Caption+' �� '+IntToStr(StrToInt(copy(p,1,pos(#9,p)-1))-x)+' �.�.?'),'������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
        money:=money+StrToInt(copy(p,1,pos(#9,p)-1))-x;
      end;
     end;
    end;
    MainForm.Label75.Caption:=np;
    Rating:=rating+3; Nastr:=nastr+3;
    Application.MessageBox('���� ���� ������ ���. �������� �� ������ ������������� ��������� ����� ���������. �������� � ��� ���, �������� ������ �������� ����� ��������.','������!',MB_ICONINFORMATION);
   end
   else
    Application.MessageBox('������ ����������� �� ������� ������� ��������� �����. ���� ���� ���� - �������� ��� �������.','������!',MB_ICONSTOP);
   Close;
  end
  else
   Application.MessageBox('�� ������� �����!','������!',MB_ICONSTOP);
 end;
{===========����============}
 If hardprm='����' then begin
  reset(harddata);
  while copy(p,1,pos(#9,p)-1)<>Combobox1.Items.Strings[Combobox1.ItemIndex] do
   readln(harddata,p);
  np:=copy(p,1,pos(#9,p)-1); p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  If money>=(StrToInt(p)-((radio / 100)*StrToInt(p))) then begin
   money:=money-StrToInt(p)+((radio / 100)*StrToInt(p));
   If ((radio<>0) and (random(4)<>1)) or (radio=0) then begin
    If MainForm.Label70.Caption<>'���' then begin
     reset(harddata);
     while not eof(harddata) do begin
      readln(harddata,p);
      If copy(p,1,pos(#9,p)-1)=MainForm.Label70.Caption then begin
       p:=copy(p,pos(#9,p)+1,255);
       If Year-StrToInt(copy(p,1,pos(#9,p)-1))<8 then
        PriceLow:=Year-StrToInt(copy(p,1,pos(#9,p)-1))+1
       else
        PriceLow:=7;
       p:=copy(p,pos(#9,p)+1,255);
       x:=(StrToInt(p)*PriceLow*10 div 100);
       If Application.MessageBox(Pchar('�� ������ ������� ���� ������ ���� '+MainForm.Label70.Caption+' �� '+IntToStr(StrToInt(p)-x)+' �.�.?'),'������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
        money:=money+StrToInt(p)-x;
      end;
     end;
     end;
    MainForm.Label70.Caption:=np;
    Rating:=rating+3; Nastr:=nastr+3;
    Application.MessageBox('���� ���� ������ ���. �������� �� ������ ������������� ��������� ����� ���������. �������� � ��� ���, �������� ������ �������� ����� ��������.','������!',MB_ICONINFORMATION);
   end
   else
    Application.MessageBox('���� ��������� "������"...','������!',MB_ICONINFORMATION);
   Close;
  end
  else
   Application.MessageBox('�� ������� �����!','������!',MB_ICONSTOP);
 end;
{===========��������============}
 If hardprm='�������' then begin
  reset(harddata);
  while copy(p,1,pos(#9,p)-1)<>Combobox1.Items.Strings[Combobox1.ItemIndex] do
   readln(harddata,p);
  np:=copy(p,1,pos(#9,p)-1); p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  If money>=(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)))) then begin
   money:=money-StrToInt(copy(p,1,pos(#9,p)-1))+((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)));
   printing:=StrToInt(copy(p,pos(#9,p)+1,255));
   If ((radio<>0) and (random(4)<>1)) or (radio=0) then begin
    If MainForm.Label74.Caption<>'���' then begin
     reset(harddata);
     while not eof(harddata) do begin
      readln(harddata,p);
      If copy(p,1,pos(#9,p)-1)=MainForm.Label74.Caption then begin
       p:=copy(p,pos(#9,p)+1,255);
       If Year-StrToInt(copy(p,1,pos(#9,p)-1))<9 then
        PriceLow:=Year-StrToInt(copy(p,1,pos(#9,p)-1))+1
       else
        PriceLow:=8;
       p:=copy(p,pos(#9,p)+1,255);
       x:=(StrToInt(copy(p,1,pos(#9,p)-1))*PriceLow*10 div 100);
       If Application.MessageBox(Pchar('�� ������ ������� ���� ������ '+MainForm.Label74.Caption+' �� '+IntToStr(StrToInt(copy(p,1,pos(#9,p)-1))-x)+' �.�.?'),'������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
        money:=money+StrToInt(copy(p,1,pos(#9,p)-1))-x;
      end;
     end;
    end;
    MainForm.Label74.Caption:=np;
    Rating:=rating+3; Nastr:=nastr+3;
    Application.MessageBox('���� ���� ������ ���. �������� �� ������ ������������� ��������� ����� ���������. �������� � ��� ���, �������� ������ �������� ����� ��������.','������!',MB_ICONINFORMATION);
   end
   else
    Application.MessageBox('������� ������� � ������� �� ����� �����-�� �������� ����... ������ �� �� ���������. �� �������� ��������� �������� ����� �������� �� ����������, �� ������.','������!',MB_ICONSTOP);
   Close;
  end
  else
   Application.MessageBox('�� ������� �����!','������!',MB_ICONSTOP);
 end;
{===========������============}
 If hardprm='������' then begin
  reset(harddata);
  while copy(p,1,pos(#9,p)-1)<>Combobox1.Items.Strings[Combobox1.ItemIndex] do
   readln(harddata,p);
  np:=copy(p,1,pos(#9,p)-1); p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  dvdrspeed:=StrToInt(copy(p,1,pos(#9,p)-1));
  p:=copy(p,pos(#9,p)+1,255);
  dvdrwspeed:=StrToInt(copy(p,1,pos(#9,p)-1));
  p:=copy(p,pos(#9,p)+1,255);
  cdrspeed:=StrToInt(copy(p,1,pos(#9,p)-1));
  p:=copy(p,pos(#9,p)+1,255);
  cdrwspeed:=StrToInt(copy(p,1,pos(#9,p)-1));
  p:=copy(p,pos(#9,p)+1,255);
  cdspeed:=StrToInt(copy(p,1,pos(#9,p)-1));
  p:=copy(p,pos(#9,p)+1,255);
  If money>=(StrToInt(p)-((radio / 100)*StrToInt(p))) then begin
   money:=money-StrToInt(p)+((radio / 100)*StrToInt(p));
   If ((radio<>0) and (random(4)<>1)) or (radio=0) then begin
    If Gauge1.Progress>0 then DVD:=true else DVD:=false;
    If MainForm.Label28.Caption<>'���' then begin
     reset(harddata);
     while not eof(harddata) do begin
      readln(harddata,p);
      If copy(p,1,pos(#9,p)-1)=MainForm.Label28.Caption then begin
       p:=copy(p,pos(#9,p)+1,255);
       If Year-StrToInt(copy(p,1,pos(#9,p)-1))<9 then
        PriceLow:=Year-StrToInt(copy(p,1,pos(#9,p)-1))+1
       else
        PriceLow:=8;
       p:=copy(p,pos(#9,p)+1,255);
       p:=copy(p,pos(#9,p)+1,255);
       p:=copy(p,pos(#9,p)+1,255);
       p:=copy(p,pos(#9,p)+1,255);
       p:=copy(p,pos(#9,p)+1,255);
       x:=(StrToInt(copy(p,pos(#9,p)+1,255))*PriceLow*10 div 100);
       If Application.MessageBox(Pchar('�� ������ ������� ���� ������ '+MainForm.Label28.Caption+' �� '+IntToStr(StrToInt(copy(p,pos(#9,p)+1,255))-x)+' �.�.?'),'������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
        money:=money+StrToInt(copy(p,pos(#9,p)+1,255))-x;
      end;
     end;
    end;
    MainForm.Label28.Caption:=np;
    Rating:=rating+3; Nastr:=nastr+3;
    Application.MessageBox('���� ���� ������ ���. �������� �� ������ ������������� ��������� ����� ���������. �������� � ��� ���, �������� ������ �������� ����� ��������.','������!',MB_ICONINFORMATION);
   end
   else
    Application.MessageBox('����� �������� ������ ����������� � ���� ��������. ��� ���� ��� ����� ������, ��� �� ��� ����� �� ����� ������. ����������� �� � ����� ����������� ������� � ���� �� ����...','������!',MB_ICONSTOP);
   Close;
  end
  else
   Application.MessageBox('�� ������� �����!','������!',MB_ICONSTOP);
 end;
{===========������� ����============}
 If hardprm='����' then begin
  reset(harddata);
  while copy(p,1,pos(#9,p)-1)<>Combobox1.Items.Strings[Combobox1.ItemIndex] do
   readln(harddata,p);
  np:=copy(p,1,pos(#9,p)-1); p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  hardspace:=StrToInt(copy(p,1,pos(#9,p)-1))*1000;
  p:=copy(p,pos(#9,p)+1,255);
  hardspeed:=StrToInt(copy(p,1,pos(#9,p)-1));
  If (money>=StrToInt(copy(p,pos(#9,p)+1,255))-hardskidka) and (radio=0) then begin
   money:=money-StrToInt(copy(p,pos(#9,p)+1,255))+hardskidka;
   If Parts<>nil then
    MainForm.ClearPrograms(1,ActivePartition);
   defragspeed:=random(4000);
   Parts:=nil;
   setLength(Parts,1);
   setLength(Parts[0],2);
   Parts[0,0].FileSystem:='FAT';
   Parts[0,0].Size:=Hardspace div 4;
   Parts[0,0].Free:=Parts[0,0].Size;
   Parts[0,0].Active:=true;
   SetToNo(0,0);
   Parts[0,1].FileSystem:='FAT';
   Parts[0,1].Size:=Hardspace - Hardspace div 4;
   Parts[0,1].Free:=Parts[0,1].Size;
   DefragTime:=0;
   Rating:=rating+3; Nastr:=nastr+3;
    If MainForm.Label25.Caption<>'���' then begin
     reset(harddata);
     while not eof(harddata) do begin
      readln(harddata,p);
      If copy(p,1,pos(#9,p)-1)=MainForm.Label25.Caption then begin
       p:=copy(p,pos(#9,p)+1,255);
       If Year-StrToInt(copy(p,1,pos(#9,p)-1))<9 then
        PriceLow:=Year-StrToInt(copy(p,1,pos(#9,p)-1))+1
       else
        PriceLow:=8;
       p:=copy(p,pos(#9,p)+1,255);
       p:=copy(p,pos(#9,p)+1,255);
       p:=copy(p,pos(#9,p)+1,255);
       x:=StrToInt(p)*PriceLow*10 div 100;
       If Application.MessageBox(Pchar('�� ������ ������� ���� ������ '+MainForm.Label25.Caption+' �� '+IntToStr(StrToInt(p)-x)+' �.�.?'),'������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
        money:=money+StrToInt(p)-x;
      end;
     end;
    end;
   MainForm.Label25.Caption:=np;
   Application.MessageBox('���� ���� ������ ���. �������� �� ������ ������������� ��������� ����� ���������. �������� � ��� ���, �������� ������ �������� ����� ��������.','������!',MB_ICONINFORMATION);
   Close;
  end
  else
   If (money>=StrToInt(copy(p,pos(#9,p)+1,255))-((radio / 100)*StrToInt(copy(p,pos(#9,p)+1,255)))) and (radio<>0) then begin
    money:=money-StrToInt(copy(p,pos(#9,p)+1,255))+((radio / 100)*StrToInt(copy(p,pos(#9,p)+1,255)));
    if random(4)<>1 then begin
     If Parts<>nil then
      MainForm.ClearPrograms(1,ActivePartition);
     Rating:=rating+3; Nastr:=nastr+3;
     defragspeed:=random(4000);
     Parts:=nil;
     setLength(Parts,1);
     setLength(Parts[0],2);
     Parts[0,0].FileSystem:='FAT';
     Parts[0,0].Size:=Hardspace div 4;
     Parts[0,0].Free:=Parts[0,0].Size;
     Parts[0,0].Active:=true;
     SetToNo(0,0);
     Parts[0,1].FileSystem:='FAT';
     Parts[0,1].Size:=Hardspace - Hardspace div 4;
     Parts[0,1].Free:=Parts[0,1].Size;
     If MainForm.Label25.Caption<>'���' then begin
      reset(harddata);
      while not eof(harddata) do begin
       readln(harddata,p);
       If copy(p,1,pos(#9,p)-1)=MainForm.Label25.Caption then begin
        p:=copy(p,pos(#9,p)+1,255);
        If Year-StrToInt(copy(p,1,pos(#9,p)-1))<9 then
         PriceLow:=Year-StrToInt(copy(p,1,pos(#9,p)-1))+1
        else
         PriceLow:=8;
        p:=copy(p,pos(#9,p)+1,255);
        p:=copy(p,pos(#9,p)+1,255);
        p:=copy(p,pos(#9,p)+1,255);
        x:=StrToInt(p)*PriceLow*10 div 100;
        If Application.MessageBox(Pchar('�� ������ ������� ���� ������ '+MainForm.Label25.Caption+' �� '+IntToStr(StrToInt(p)-x)+' �.�.?'),'������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
         money:=money+StrToInt(p)-x;
       end;
      end;
     end;
     MainForm.Label25.Caption:=np;
     Application.MessageBox('���� ���� ������ ���. �������� �� ������ ������������� ��������� ����� ���������. �������� � ��� ���, �������� ������ �������� ����� ��������.','������!',MB_ICONINFORMATION);
     Close;
    end
    else
     Application.MessageBox('������� ���� ��� ������ ������� ������� �����������. ������ ��� �������� �� �� ��������...','������!',MB_ICONSTOP);
   end
   else
    Application.MessageBox('�� ������� �����!','������!',MB_ICONSTOP);
 end;
{===========�����============}
 If hardprm='�����' then begin
  reset(harddata);
  while copy(p,1,pos(#9,p)-1)<>Combobox1.Items.Strings[Combobox1.ItemIndex] do
   readln(harddata,p);
  np:=copy(p,1,pos(#9,p)-1); p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  If money>=(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)))) then begin
   money:=money-StrToInt(copy(p,1,pos(#9,p)-1))+((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)));
   If ((radio<>0) and (random(4)<>1)) or (radio=0) then begin
    inetspeed:=StrToInt(copy(p,pos(#9,p)+1,255));
    If MainForm.Label29.Caption<>'���' then begin
     reset(harddata);
     while not eof(harddata) do begin
      readln(harddata,p);
      If copy(p,1,pos(#9,p)-1)=MainForm.Label29.Caption then begin
       p:=copy(p,pos(#9,p)+1,255);
       If Year-StrToInt(copy(p,1,pos(#9,p)-1))<9 then
        PriceLow:=Year-StrToInt(copy(p,1,pos(#9,p)-1))+1
       else
        PriceLow:=8;
       p:=copy(p,pos(#9,p)+1,255);
       x:=(StrToInt(copy(p,1,pos(#9,p)-1))*PriceLow*10 div 100);
       If Application.MessageBox(Pchar('�� ������ ������� ���� ������ '+MainForm.Label29.Caption+' �� '+IntToStr(StrToInt(copy(p,1,pos(#9,p)-1))-x)+' �.�.?'),'������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
        money:=money+StrToInt(copy(p,1,pos(#9,p)-1))-x;
      end;
     end;
    end;
    MainForm.Label29.Caption:=np;
    If StoMBfree then
     InetTraffic:=InetTraffic+100;
    Rating:=rating+3; Nastr:=nastr+3;
    Application.MessageBox('���� ���� ������ ���. �������� �� ������ ������������� ��������� ����� ���������. �������� � ��� ���, �������� ������ �������� ����� ��������.','������!',MB_ICONINFORMATION);
   end
   else
    Application.MessageBox('�� � ����� ��� ����� ���� �����. � �� ���� ��������, ��� ������ ��� ���.','������!',MB_ICONSTOP);
   Close;
  end
  else
   Application.MessageBox('�� ������� �����!','������!',MB_ICONSTOP);
 end;
{===========�������� �����============}
 If hardprm='����' then begin
  reset(harddata);
  while copy(p,1,pos(#9,p)-1)<>Combobox1.Items.Strings[Combobox1.ItemIndex] do
   readln(harddata,p);
  np:=copy(p,1,pos(#9,p)-1); p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  If money>=(StrToInt(p)-((radio / 100)*StrToInt(p))) then begin
   money:=money-StrToInt(p)+((radio / 100)*StrToInt(p));
   If ((radio<>0) and (random(4)<>1)) or (radio=0) then begin
    If MainForm.Label26.Caption<>'���' then begin
     reset(harddata);
     while not eof(harddata) do begin
      readln(harddata,p);
      If copy(p,1,pos(#9,p)-1)=MainForm.Label26.Caption then begin
       p:=copy(p,pos(#9,p)+1,255);
       If Year-StrToInt(copy(p,1,pos(#9,p)-1))<8 then
        PriceLow:=Year-StrToInt(copy(p,1,pos(#9,p)-1))+1
       else
        PriceLow:=7;
       p:=copy(p,pos(#9,p)+1,255);
       x:=(StrToInt(p)*PriceLow*10 div 100);
       If Application.MessageBox(Pchar('�� ������ ������� ���� ������ '+MainForm.Label26.Caption+' �� '+IntToStr(StrToInt(p)-x)+' �.�.?'),'������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
        money:=money+StrToInt(p)-x;
      end;
     end;
    end;
    MainForm.Label26.Caption:=np;
    Rating:=rating+3; Nastr:=nastr+3;
    Application.MessageBox('���� ���� ������ ���. �������� �� ������ ������������� ��������� ����� ���������. �������� � ��� ���, �������� ������ �������� ����� ��������.','������!',MB_ICONINFORMATION);
   end
   else
    Application.MessageBox('� ������� ������� �������... "�������� �����",- �������� �� � ���� ��������� �����.','������!',MB_ICONSTOP);
   Close;
  end
  else
   Application.MessageBox('�� ������� �����!','������!',MB_ICONSTOP);
 end;
{===========���============}
 If hardprm='�������������' then begin
  reset(harddata);
  while copy(p,1,pos(#9,p)-1)<>Combobox1.Items.Strings[Combobox1.ItemIndex] do
   readln(harddata,p);
  np:=copy(p,1,pos(#9,p)-1); p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  If money>=(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)))) then begin
   money:=money-StrToInt(copy(p,1,pos(#9,p)-1))+((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)));
   If ((radio<>0) and (random(4)<>1)) or (radio=0) then begin
    nadeg:=StrToInt(copy(p,pos(#9,p)+1,255));
    If MainForm.Label38.Caption<>'���' then begin
     reset(harddata);
     while not eof(harddata) do begin
      readln(harddata,p);
      If copy(p,1,pos(#9,p)-1)=MainForm.Label38.Caption then begin
       p:=copy(p,pos(#9,p)+1,255);
       If Year-StrToInt(copy(p,1,pos(#9,p)-1))<9 then
        PriceLow:=Year-StrToInt(copy(p,1,pos(#9,p)-1))+1
       else
        PriceLow:=8;
       p:=copy(p,pos(#9,p)+1,255);
       x:=(StrToInt(copy(p,1,pos(#9,p)-1))*PriceLow*10 div 100);
       If Application.MessageBox(Pchar('�� ������ ������� ���� ������ '+MainForm.Label38.Caption+' �� '+IntToStr(StrToInt(copy(p,1,pos(#9,p)-1))-x)+' �.�.?'),'������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
        money:=money+StrToInt(copy(p,1,pos(#9,p)-1))-x;
      end;
     end;
    end;
    MainForm.Label38.Caption:=np;
    Rating:=rating+3; Nastr:=nastr+3;
    Application.MessageBox('���� ���� ������ ���. �������� �� ������ ������������� ��������� ����� ���������. �������� � ��� ���, �������� ������ �������� ����� ��������.','������!',MB_ICONINFORMATION);
   end
   else
    Application.MessageBox('������ ��� ���� "�������������" �� ������ ��� ����...','������!',MB_ICONSTOP);
   Close;
  end
  else
   Application.MessageBox('�� ������� �����!','������!',MB_ICONSTOP);
 end;
{===========������============}
 If hardprm='������' then begin
  reset(harddata);
  while copy(p,1,pos(#9,p)-1)<>Combobox1.Items.Strings[Combobox1.ItemIndex] do
   readln(harddata,p);
  np:=copy(p,1,pos(#9,p)-1); p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  If money>=(StrToInt(p)-((radio / 100)*StrToInt(p))) then begin
   money:=money-StrToInt(p)+((radio / 100)*StrToInt(p));
    If MainForm.Label72.Caption<>'���' then begin
     reset(harddata);
     while not eof(harddata) do begin
      readln(harddata,p);
      If copy(p,1,pos(#9,p)-1)=MainForm.Label72.Caption then begin
       p:=copy(p,pos(#9,p)+1,255);
       If Year-StrToInt(copy(p,1,pos(#9,p)-1))<8 then
        PriceLow:=Year-StrToInt(copy(p,1,pos(#9,p)-1))+1
       else
        PriceLow:=7;
       p:=copy(p,pos(#9,p)+1,255);
       x:=(StrToInt(p)*PriceLow*10 div 100);
       If Application.MessageBox(Pchar('�� ������ ������� ���� ������ '+MainForm.Label72.Caption+' �� '+IntToStr(StrToInt(p)-x)+' �.�.?'),'������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
        money:=money+StrToInt(p)-x;
      end;
     end;
    end;
   MainForm.Label72.Caption:=np;
   If MainForm.Label77.Caption<>'���' then
    MainForm.Label77.Caption:='�����������';
   Rating:=rating+3; Nastr:=nastr+3;
   Application.MessageBox('���� ���� ������ ���. �������� �� ������ ������������� ��������� ����� ���������. �������� � ��� ���, �������� ������ �������� ����� ��������.','������!',MB_ICONINFORMATION);
   Close;
  end
  else
   Application.MessageBox('�� ������� �����!','������!',MB_ICONSTOP);
 end;
{===========���������============}
 If hardprm='����' then begin
  reset(harddata);
  while copy(p,1,pos(#9,p)-1)<>Combobox1.Items.Strings[Combobox1.ItemIndex] do
   readln(harddata,p);
  mnp:=p; np:=copy(p,1,pos(#9,p)-1); p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  If money>=(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)))) then begin
   money:=money-StrToInt(copy(p,1,pos(#9,p)-1))+((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)));
   If ((radio<>0) and (random(4)<>1)) or (radio=0) then begin
    p:=mnp;
    p:=copy(p,pos(#9,p)+1,255);
    p:=copy(p,pos(#9,p)+1,255);
    if copy(p,1,pos(#9,p)-1)<>chipset then begin
     MainForm.Label22.Caption:='���';
     Temperature:=0;
    end;
    chipset:=copy(p,1,pos(#9,p)-1);
    p:=copy(p,pos(#9,p)+1,255);
    If copy(p,1,pos(#9,p)-1)='Y' then
     MainForm.Label99.Caption:='��������'
    else
     MainForm.Label99.Caption:='����������';
    p:=copy(p,pos(#9,p)+1,255);
    If copy(p,1,pos(#9,p)-1)='Y' then
     MainForm.Label121.Caption:='��������'
    else
     MainForm.Label121.Caption:='����������';
    p:=copy(p,pos(#9,p)+1,255);
    If copy(p,1,pos(#9,p)-1)='Y' then
     MainForm.Label101.Caption:='��������'
    else
     MainForm.Label101.Caption:='����������';
    If (mainform.Label26.Caption='����������') or (mainform.Label26.Caption='���') then
     Mainform.Label26.Caption:='����������';
    If (mainform.Label76.Caption='����������') or (mainform.Label76.Caption='���') then
     Mainform.Label76.Caption:='����������';
    If (mainform.Label73.Caption='�����������') or (mainform.Label73.Caption='���') then
     Mainform.Label73.Caption:='�����������';
    If (Parts<>nil) and (MainForm.Label23.Caption<>np) then
     MainForm.ClearPrograms(1,ActivePartition);
    ComboBox1.Clear;
    p:=copy(p,pos(#9,p)+1,255);
    p:=copy(p,pos(#9,p)+1,255);
    If (videochipset<>'') and (videochipset<>copy(p,1,pos(#9,p)-1)) and (copy(p,1,pos(#9,p)-1)<>'AGP&PCI') then begin
     MainForm.Label76.Caption:='����������';
     Application.MessageBox('������������� ���������� �� ���������� � ����� ����������� ������. �������� �� �����. � �� ���� ��������, ��� �� ����� �������. ���� ��� ��� �� �����, �� ���� ��� ����� �����?','������!',MB_ICONWARNING);
     SecondVideoCard:='';
     videoshina:='';
    end;
    videochipset:=copy(p,1,pos(#9,p)-1);
    p:=copy(p,pos(#9,p)+1,255);
    RamType:=copy(p,1,pos(#9,p)-1);
    p:=copy(p,pos(#9,p)+1,255);
    MultiChrome:=p;
    If MainForm.Label23.Caption<>'���' then begin
     reset(harddata);
     while not eof(harddata) do begin
      readln(harddata,p);
      If copy(p,1,pos(#9,p)-1)=MainForm.Label23.Caption then begin
       p:=copy(p,pos(#9,p)+1,255);
       If Year-StrToInt(copy(p,1,pos(#9,p)-1))<9 then
        PriceLow:=Year-StrToInt(copy(p,1,pos(#9,p)-1))+1
       else
        PriceLow:=8;
       p:=copy(p,pos(#9,p)+1,255);
       p:=copy(p,pos(#9,p)+1,255);
       p:=copy(p,pos(#9,p)+1,255);
       p:=copy(p,pos(#9,p)+1,255);
       p:=copy(p,pos(#9,p)+1,255);
       x:=(StrToInt(copy(p,1,pos(#9,p)-1))*PriceLow*10 div 100);
       If Application.MessageBox(Pchar('�� ������ ������� ���� ������ '+MainForm.Label23.Caption+' �� '+IntToStr(StrToInt(copy(p,1,pos(#9,p)-1))-x)+' �.�.?'),'������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
        money:=money+StrToInt(copy(p,1,pos(#9,p)-1))-x;
      end;
     end;
    end;
    MainForm.Label23.Caption:=np;
    Rating:=rating+3; Nastr:=nastr+3;
    Application.MessageBox('���� ���� ������ ���. �������� �� ������ ������������� ��������� ����� ���������. �������� � ��� ���, �������� ������ �������� ����� ��������.','������!',MB_ICONINFORMATION);
   end
   else
    Application.MessageBox('��� �������� �� ��������� � ����, ��� ���. ���������� ��� ��������...','������!',MB_ICONSTOP);
   Close;
  end
  else
   Application.MessageBox('�� ������� �����!','������!',MB_ICONSTOP);
 end;
{===========����������============}
 If hardprm='����' then begin
  reset(harddata);
  while copy(p,1,pos(#9,p)-1)<>Combobox1.Items.Strings[Combobox1.ItemIndex] do
   readln(harddata,p);
  mnp:=p; np:=copy(p,1,pos(#9,p)-1); p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  If (money>=StrToInt(copy(p,1,pos(#9,p)-1))-procskidka) and (radio=0) then begin
   money:=money-StrToInt(copy(p,1,pos(#9,p)-1))+procskidka;
   p:=mnp;
   p:=copy(p,pos(#9,p)+1,255);
   p:=copy(p,pos(#9,p)+1,255);
   p:=copy(p,pos(#9,p)+1,255);
   cpuspeed:=StrToInt(copy(p,1,pos(#9,p)-1));
   htt:=0;
   cpuclock:=0;
   p:=copy(p,pos(#9,p)+1,255);
   cpumnozh:=StrToInt(copy(p,1,pos(#9,p)-1));
   ocpumnozh:=StrToInt(copy(p,1,pos(#9,p)-1));
   p:=copy(p,pos(#9,p)+1,255);
   cpufsb:=StrToInt(copy(p,1,pos(#9,p)-1));
   ocpufsb:=StrToInt(copy(p,1,pos(#9,p)-1));
   cpuvolt:=1.5;
   ocpuvolt:=1.5;
   cpupercent:=random(45)+1;
   Temperature:=40-(coolerspeed div 145);
    If MainForm.Label22.Caption<>'���' then begin
     reset(harddata);
     while not eof(harddata) do begin
      readln(harddata,p);
      If copy(p,1,pos(#9,p)-1)=MainForm.Label22.Caption then begin
       p:=copy(p,pos(#9,p)+1,255);
       If Year-StrToInt(copy(p,1,pos(#9,p)-1))<9 then
        PriceLow:=Year-StrToInt(copy(p,1,pos(#9,p)-1))+1
       else
        PriceLow:=8;
       p:=copy(p,pos(#9,p)+1,255);
       x:=(StrToInt(copy(p,1,pos(#9,p)-1))*PriceLow*10 div 100);
       If Application.MessageBox(Pchar('�� ������ ������� ���� ������ '+MainForm.Label22.Caption+' �� '+IntToStr(StrToInt(copy(p,1,pos(#9,p)-1))-x)+' �.�.?'),'������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
        money:=money+StrToInt(copy(p,1,pos(#9,p)-1))-x;
      end;
     end;
    end;
   MainForm.Label22.Caption:=np;
   Rating:=rating+3; Nastr:=nastr+3;
   Application.MessageBox('���� ���� ������ ���. �������� �� ������ ������������� ��������� ����� ���������. �������� � ��� ���, �������� ������ �������� ����� ��������.','������!',MB_ICONINFORMATION);
   Close;
  end
  else
  If (money>=StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)))) and (radio<>0) then begin
   money:=money-StrToInt(copy(p,1,pos(#9,p)-1))+((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)));
   If random(4)<>1 then begin
    p:=mnp;
    p:=copy(p,pos(#9,p)+1,255);
    p:=copy(p,pos(#9,p)+1,255);
    p:=copy(p,pos(#9,p)+1,255);
    cpuspeed:=StrToInt(copy(p,1,pos(#9,p)-1));
    htt:=0;
    cpuclock:=0;
    p:=copy(p,pos(#9,p)+1,255);
    cpumnozh:=StrToInt(copy(p,1,pos(#9,p)-1));
    ocpumnozh:=StrToInt(copy(p,1,pos(#9,p)-1));
    p:=copy(p,pos(#9,p)+1,255);
    cpufsb:=StrToInt(copy(p,1,pos(#9,p)-1));
    ocpufsb:=StrToInt(copy(p,1,pos(#9,p)-1));
    cpuvolt:=1.5;
    ocpuvolt:=1.5;
    cpupercent:=random(45)+1;
    Temperature:=40-(coolerspeed div 145);
    If MainForm.Label22.Caption<>'���' then begin
     reset(harddata);
     while not eof(harddata) do begin
      readln(harddata,p);
      If copy(p,1,pos(#9,p)-1)=MainForm.Label22.Caption then begin
       p:=copy(p,pos(#9,p)+1,255);
       If Year-StrToInt(copy(p,1,pos(#9,p)-1))<9 then
        PriceLow:=Year-StrToInt(copy(p,1,pos(#9,p)-1))+1
       else
        PriceLow:=8;
       p:=copy(p,pos(#9,p)+1,255);
       x:=(StrToInt(copy(p,1,pos(#9,p)-1))*PriceLow*10 div 100);
       If Application.MessageBox(Pchar('�� ������ ������� ���� ������ '+MainForm.Label22.Caption+' �� '+IntToStr(StrToInt(copy(p,1,pos(#9,p)-1))-x)+' �.�.?'),'������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
        money:=money+StrToInt(copy(p,1,pos(#9,p)-1))-x;
      end;
     end;
    end;
    MainForm.Label22.Caption:=np;
    Rating:=rating+3; Nastr:=nastr+3;
    Application.MessageBox('���� ���� ������ ���. �������� �� ������ ������������� ��������� ����� ���������. �������� � ��� ���, �������� ������ �������� ����� ��������.','������!',MB_ICONINFORMATION);
   end
   else
    Application.MessageBox('�������� �� ����������� ����� �� ���������� ������ "����� ��������". ������ "���" ��� ����...','������!',MB_ICONSTOP);
   Close;
  end
  else
   Application.MessageBox('�� ������� �����!','������!',MB_ICONSTOP);
 end;
{===========�����============}
 If hardprm='�����' then begin
  reset(harddata);
  while copy(p,1,pos(#9,p)-1)<>Combobox1.Items.Strings[Combobox1.ItemIndex] do
   readln(harddata,p);
  np:=copy(p,1,pos(#9,p)-1); p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  If money>=(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)))) then begin
   money:=money-StrToInt(copy(p,1,pos(#9,p)-1))+((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)));
   p:=copy(p,pos(#9,p)+1,255);
   If MainForm.Label22.Caption<>'���' then
    temperature:=temperature-(Round(StrToFloat(copy(p,1,pos(#9,p)-1))) div 145);
   coolerspeed:=StrToInt(copy(p,1,pos(#9,p)-1));
   p:=copy(p,pos(#9,p)+1,255);
   nastr:=nastr-((StrToInt(p) div 10)*2);
    If MainForm.Label73.Caption<>'���' then begin
     reset(harddata);
     while not eof(harddata) do begin
      readln(harddata,p);
      If copy(p,1,pos(#9,p)-1)=MainForm.Label73.Caption then begin
       p:=copy(p,pos(#9,p)+1,255);
       If Year-StrToInt(copy(p,1,pos(#9,p)-1))<9 then
        PriceLow:=Year-StrToInt(copy(p,1,pos(#9,p)-1))+1
       else
        PriceLow:=8;
       p:=copy(p,pos(#9,p)+1,255);
       x:=(StrToInt(copy(p,1,pos(#9,p)-1))*PriceLow*10 div 100);
       If Application.MessageBox(Pchar('�� ������ ������� ���� ������ '+MainForm.Label73.Caption+' �� '+IntToStr(StrToInt(copy(p,1,pos(#9,p)-1))-x)+' �.�.?'),'������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
        money:=money+StrToInt(copy(p,1,pos(#9,p)-1))-x;
      end;
     end;
    end;
   MainForm.Label73.Caption:=np;
   Rating:=rating+3;
   Application.MessageBox('���� ���� ������ ���. �������� �� ������ ������������� ��������� ����� ���������. �������� � ��� ���, �������� ������ �������� ����� ��������.','������!',MB_ICONINFORMATION);
   Close;
  end
  else
   Application.MessageBox('�� ������� �����!','������!',MB_ICONSTOP);
 end;
{===========����������============}
 If hardprm='������' then begin
  reset(harddata);
  while copy(p,1,pos(#9,p)-1)<>Combobox1.Items.Strings[Combobox1.ItemIndex] do
   readln(harddata,p);
  mnp:=p; np:=copy(p,1,pos(#9,p)-1); p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  If (money>=StrToInt(copy(p,1,pos(#9,p)-1))-videoskidka) and (radio=0) then begin
   money:=money-StrToInt(copy(p,1,pos(#9,p)-1))+videoskidka;
   p:=mnp;
   if (videochip<>Label19.Caption) or (TempMultiChrome='None') or ((MultiChrome<>'CF&SLI') and (MultiChrome<>'SLI&CF') and (TempMultiChrome<>MultiChrome) and (TempMultiChrome<>'MH')) or (Application.MessageBox('���� ����������� ����� ������������ ���������� ������ ���� ���������. ������ ���������� ����� ���������� ��� ������ � �������?','������!',MB_ICONQUESTION+MB_YESNO)=IDNO) then begin
    SecondVideoCard:='';
    videochip:=Label19.Caption;
    p:=copy(p,pos(#9,p)+1,255);
    p:=copy(p,pos(#9,p)+1,255);
    p:=copy(p,pos(#9,p)+1,255);
    videospeed:=StrToInt(copy(p,1,pos(#9,p)-1));
    p:=copy(p,pos(#9,p)+1,255);
    p:=copy(p,pos(#9,p)+1,255);
    videomem:=StrToInt(copy(p,1,pos(#9,p)-1));
    ovideomem:=videomem;
    p:=copy(p,pos(#9,p)+1,255);
    videocore:=StrToInt(copy(p,1,pos(#9,p)-1));
    p:=copy(p,pos(#9,p)+1,255);
    p:=copy(p,pos(#9,p)+1,255);
    videoshina:=copy(p,1,pos(#9,p)-1);
    ovideocore:=videocore;
    videomemory:=gauge2.Progress;
    videopercent:=random(30)+1;
    VideoTemp:=25;
    xDone:=false;
    If MainForm.Label76.Caption<>'���' then begin
     reset(harddata);
     while not eof(harddata) do begin
      readln(harddata,p);
      If copy(p,1,pos(#9,p)-1)=MainForm.Label76.Caption then begin
       p:=copy(p,pos(#9,p)+1,255);
       If Year-StrToInt(copy(p,1,pos(#9,p)-1))<9 then
        PriceLow:=Year-StrToInt(copy(p,1,pos(#9,p)-1))+1
       else
        PriceLow:=8;
       p:=copy(p,pos(#9,p)+1,255);
       p:=copy(p,pos(#9,p)+1,255);
       p:=copy(p,pos(#9,p)+1,255);
       p:=copy(p,pos(#9,p)+1,255);
       p:=copy(p,pos(#9,p)+1,255);
       p:=copy(p,pos(#9,p)+1,255);
       x:=(StrToInt(copy(p,1,pos(#9,p)-1))*PriceLow*10 div 100);
       If Application.MessageBox(Pchar('�� ������ ������� ���� ������ '+MainForm.Label76.Caption+' �� '+IntToStr(StrToInt(copy(p,1,pos(#9,p)-1))-x)+' �.�.?'),'������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
        money:=money+StrToInt(copy(p,1,pos(#9,p)-1))-x;
      end;
     end;
    end;
    MainForm.Label76.Caption:=np;
   end
   else
    begin
     SecondVideoCard:=np;
     videospeed:=videospeed+videospeed*(40+random(30)) div 100;
    end;
   Rating:=rating+3; Nastr:=nastr+3;
   Application.MessageBox('���� ���� ������ ���. �������� �� ������ ������������� ��������� ����� ���������. �������� � ��� ���, �������� ������ �������� ����� ��������.','������!',MB_ICONINFORMATION);
   Close;
  end
  else
  If (money>=(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1))))) and (radio<>0) then begin
   money:=money-StrToInt(copy(p,1,pos(#9,p)-1))+((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)));
   If random(4)<>1 then begin
    p:=mnp;
    if (videochip<>Label19.Caption) or (TempMultiChrome='None') or ((MultiChrome<>'CF&SLI') and (MultiChrome<>'SLI&CF') and (TempMultiChrome<>MultiChrome) and (TempMultiChrome<>'MH')) or (Application.MessageBox('���� ����������� ����� ������������ ���������� ������ ���� ���������. ������ ���������� ����� ���������� ��� ������ � �������?','������!',MB_ICONQUESTION+MB_YESNO)=IDNO) then begin
     videochip:=Label19.Caption;
     p:=copy(p,pos(#9,p)+1,255);
     p:=copy(p,pos(#9,p)+1,255);
     p:=copy(p,pos(#9,p)+1,255);
     videospeed:=StrToInt(copy(p,1,pos(#9,p)-1));
     p:=copy(p,pos(#9,p)+1,255);
     p:=copy(p,pos(#9,p)+1,255);
     videomem:=StrToInt(copy(p,1,pos(#9,p)-1));
     ovideomem:=videomem;
     p:=copy(p,pos(#9,p)+1,255);
     videocore:=StrToInt(copy(p,1,pos(#9,p)-1));
     p:=copy(p,pos(#9,p)+1,255);
     p:=copy(p,pos(#9,p)+1,255);
     videoshina:=copy(p,1,pos(#9,p)-1);
     ovideocore:=videocore;
     videomemory:=gauge2.Progress;
     videopercent:=random(30)+1;
     VideoTemp:=25;
     xDone:=false;
     If MainForm.Label76.Caption<>'���' then begin
      reset(harddata);
      while not eof(harddata) do begin
       readln(harddata,p);
       If copy(p,1,pos(#9,p)-1)=MainForm.Label76.Caption then begin
        p:=copy(p,pos(#9,p)+1,255);
        If Year-StrToInt(copy(p,1,pos(#9,p)-1))<9 then
         PriceLow:=Year-StrToInt(copy(p,1,pos(#9,p)-1))+1
        else
         PriceLow:=8;
        p:=copy(p,pos(#9,p)+1,255);
        p:=copy(p,pos(#9,p)+1,255);
        p:=copy(p,pos(#9,p)+1,255);
        p:=copy(p,pos(#9,p)+1,255);
        p:=copy(p,pos(#9,p)+1,255);
        p:=copy(p,pos(#9,p)+1,255);
        x:=(StrToInt(copy(p,1,pos(#9,p)-1))*PriceLow*10 div 100);
        If Application.MessageBox(Pchar('�� ������ ������� ���� ������ '+MainForm.Label76.Caption+' �� '+IntToStr(StrToInt(copy(p,1,pos(#9,p)-1))-x)+' �.�.?'),'������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
         money:=money+StrToInt(copy(p,1,pos(#9,p)-1))-x;
       end;
      end;
     end;
     MainForm.Label76.Caption:=np;
    end
    else
    begin
     SecondVideoCard:=np;
     videospeed:=videospeed+videospeed*(40+random(30)) div 100;
    end;
    Rating:=rating+3; Nastr:=nastr+3;
    Application.MessageBox('���� ���� ������ ���. �������� �� ������ ������������� ��������� ����� ���������. �������� � ��� ���, �������� ������ �������� ����� ��������.','������!',MB_ICONINFORMATION);
   end
   else
    Application.MessageBox('����������... �� �������� ���������. ����� � ���������� ���-�� �����. ������� �������... � ���� ��� ������ ������ ��� ����������...','������!',MB_ICONSTOP);
   Close;
  end
  else
   Application.MessageBox('�� ������� �����!','������!',MB_ICONSTOP);
 end;
{===========����� �������============}
 If hardprm='�����' then begin
  reset(harddata);
  while copy(p,1,pos(#9,p)-1)<>Combobox1.Items.Strings[Combobox1.ItemIndex] do
   readln(harddata,p);
  np:=copy(p,1,pos(#9,p)-1); p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  If money>=(StrToInt(p)-((radio / 100)*StrToInt(p))) then begin
   money:=money-StrToInt(p)+((radio / 100)*StrToInt(p));
   If ((radio<>0) and (random(4)<>1)) or (radio=0) then begin
    If MainForm.Label77.Caption<>'���' then begin
     reset(harddata);
     while not eof(harddata) do begin
      readln(harddata,p);
      If copy(p,1,pos(#9,p)-1)=MainForm.Label77.Caption then begin
       p:=copy(p,pos(#9,p)+1,255);
       If Year-StrToInt(copy(p,1,pos(#9,p)-1))<8 then
        PriceLow:=Year-StrToInt(copy(p,1,pos(#9,p)-1))+1
       else
        PriceLow:=7;
       p:=copy(p,pos(#9,p)+1,255);
       x:=(StrToInt(p)*PriceLow*10 div 100);
       If Application.MessageBox(Pchar('�� ������ ������� ���� ������ '+MainForm.Label77.Caption+' �� '+IntToStr(StrToInt(p)-x)+' �.�.?'),'������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
        money:=money+StrToInt(p)-x;
      end;
     end;
    end;
    MainForm.Label77.Caption:=np;
    Rating:=rating+3; Nastr:=nastr+3;
    Application.MessageBox('���� ���� ������ ���. �������� �� ������ ������������� ��������� ����� ���������. �������� � ��� ���, �������� ������ �������� ����� ��������.','������!',MB_ICONINFORMATION);
   end
   else
    Application.MessageBox('���� ������� ���������� �� ����� �������� ������� � ��� ���������. ��������� ��� �� ����������, ��� ��... ������!','������!',MB_ICONSTOP);
   Close;
  end
  else
   Application.MessageBox('�� ������� �����!','������!',MB_ICONSTOP);
 end;
{===========����������============}
 If hardprm='����������' then begin
  reset(harddata);
  while copy(p,1,pos(#9,p)-1)<>Combobox1.Items.Strings[Combobox1.ItemIndex] do
   readln(harddata,p);
  np:=copy(p,1,pos(#9,p)-1); p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  If money>=(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)))) then begin
   money:=money-StrToInt(copy(p,1,pos(#9,p)-1))+((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)));
   If ((radio<>0) and (random(4)<>1)) or (radio=0) then begin
    p:=copy(p,pos(#9,p)+1,255);
    ozycapacity:=StrToInt(copy(p,1,pos(#9,p)-1));
    p:=copy(p,pos(#9,p)+1,255);
    ramspeed:=StrToInt(copy(p,1,pos(#9,p)-1));
    RamType:=copy(p,pos(#9,p)+1,255);
    If MainForm.Label24.Caption<>'���' then begin
     reset(harddata);
     while not eof(harddata) do begin
      readln(harddata,p);
      If copy(p,1,pos(#9,p)-1)=MainForm.Label24.Caption then begin
       p:=copy(p,pos(#9,p)+1,255);
       If Year-StrToInt(copy(p,1,pos(#9,p)-1))<9 then
        PriceLow:=Year-StrToInt(copy(p,1,pos(#9,p)-1))+1
       else
        PriceLow:=8;
       p:=copy(p,pos(#9,p)+1,255);
       x:=(StrToInt(copy(p,1,pos(#9,p)-1))*PriceLow*10 div 100);
       If Application.MessageBox(Pchar('�� ������ ������� ���� ������ '+MainForm.Label24.Caption+' �� '+IntToStr(StrToInt(copy(p,1,pos(#9,p)-1))-x)+' �.�.?'),'������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
        money:=money+StrToInt(copy(p,1,pos(#9,p)-1))-x;
      end;
     end;
    end;
    MainForm.Label24.Caption:=np;
    Rating:=rating+3; Nastr:=nastr+3;
    Application.MessageBox('���� ���� ������ ���. �������� �� ������ ������������� ��������� ����� ���������. �������� � ��� ���, �������� ������ �������� ����� ��������.','������!',MB_ICONINFORMATION);
   end
   else
    Application.MessageBox('��������� �� ���������� �����. �� ��������� �������� ��������� ���������. ������ ������ ��...','������!',MB_ICONSTOP);
   Close;
  end
  else
   Application.MessageBox('�� ������� �����!','������!',MB_ICONSTOP);
 end;
{===========��������============}
 If hardprm='��������' then begin
  reset(harddata);
  while copy(p,1,pos(#9,p)-1)<>Combobox1.Items.Strings[Combobox1.ItemIndex] do
   readln(harddata,p);
  np:=copy(p,1,pos(#9,p)-1);
  mnp:=p;
  p:=copy(p,pos(#9,p)+1,255);
  If money>=StrToInt(copy(p,1,pos(#9,p)-1)) then begin
   money:=money-StrToInt(copy(p,1,pos(#9,p)-1));
   p:=copy(mnp,pos(#9,mnp)+1,255);
   p:=copy(p,pos(#9,p)+1,255);
   FlatComfort:=StrToInt(copy(p,1,pos(#9,p)-1));
   p:=copy(p,pos(#9,p)+1,255);
   FlatPay:=StrToInt(p);
    If Flat<>'' then begin
     reset(harddata);
     while not eof(harddata) do begin
      readln(harddata,p);
      If copy(p,1,pos(#9,p)-1)=Flat then begin
       p:=copy(p,pos(#9,p)+1,255);
       PriceLow:=2;
       x:=(StrToInt(copy(p,1,pos(#9,p)-1))*PriceLow*10 div 100);
       If Application.MessageBox(Pchar('�� ������ ������� ���� ������ ����� - '+Flat+' �� '+IntToStr(StrToInt(copy(p,1,pos(#9,p)-1))-x)+' �.�.?'),'������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
        money:=money+StrToInt(copy(p,1,pos(#9,p)-1))-x;
      end;
     end;
    end;
   Flat:=np;
   Nastr:=nastr+3; Rating:=rating+3;
   Application.MessageBox('������������ ��� � ����� ����� ��������. ��������, ��� ��� ��� ���������� � �� � ��� ��������� ��� ����� � ����� �����...','������!',MB_ICONINFORMATION);
   Close;
  end
  else
   Application.MessageBox('�� ������� �����!','������!',MB_ICONSTOP);
 end;
{===========������============}
 If hardprm='������' then begin
  reset(harddata);
  while copy(p,1,pos(#9,p)-1)<>Combobox1.Items.Strings[Combobox1.ItemIndex] do
   readln(harddata,p);
  np:=copy(p,1,pos(#9,p)-1);
  p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,pos(#9,p)+1,255);
  If money>=StrToInt(copy(p,1,pos(#9,p)-1)) then begin
   money:=money-StrToInt(copy(p,1,pos(#9,p)-1));
   p:=copy(p,pos(#9,p)+1,255);
   CarPrestige:=StrToInt(p);
    If Car<>'���' then begin
     reset(harddata);
     while not eof(harddata) do begin
      readln(harddata,p);
      If copy(p,1,pos(#9,p)-1)=Car then begin
       p:=copy(p,pos(#9,p)+1,255);
       If Year-StrToInt(copy(p,1,pos(#9,p)-1))<9 then
        PriceLow:=Year-StrToInt(copy(p,1,pos(#9,p)-1))+1
       else
        PriceLow:=8;
       p:=copy(p,pos(#9,p)+1,255);
       x:=(StrToInt(copy(p,1,pos(#9,p)-1))*PriceLow*10 div 100);
       If Application.MessageBox(Pchar('�� ������ ������� ���� ������ ���������� - '+Car+' �� '+IntToStr(StrToInt(copy(p,1,pos(#9,p)-1))-x)+' �.�.?'),'������!',MB_ICONQUESTION+MB_YESNO)=IDYES then
        money:=money+StrToInt(copy(p,1,pos(#9,p)-1))-x;
      end;
     end;
   end;
   Car:=np;
   Rating:=rating+3;
   Nastr:=nastr+3;
   Application.MessageBox('���� ���� ������ ���. �������� �� ������ ������������� ��������� ����� ���������. �������� � ��� ���, �������� ������ �������� ����� ��������.','������!',MB_ICONINFORMATION);
   Close;
  end
  else
   Application.MessageBox('�� ������� �����!','������!',MB_ICONSTOP);
 end;
{====================}
end;

procedure TCompl.OpenExecute(Sender: TObject);
var
 p, np:shortstring;
 podx: boolean;
begin
reset(harddata);
 while true do begin
  readln(harddata,p);
  If Combobox1.Items.Strings[Combobox1.ItemIndex]=copy(p,1,pos(#9,p)-1) then begin
   If FileExists(dir+'\Thumbnails\'+ComboBox1.Items.Strings[ComboBox1.ItemIndex]+'.jpg') then begin
    Image1.Picture.LoadFromFile(dir+'\Thumbnails\'+ComboBox1.Items.Strings[ComboBox1.ItemIndex]+'.jpg');
    PrevImage:=true;
   end
   else
    If PrevImage then begin
     Image1.Picture.LoadFromFile(dir+'\Thumbnails\None.jpg');
     PrevImage:=false;
    end;
   If hardprm='������' then begin
    p:=copy(p,pos(#9,p)+1,255);
    p:=copy(p,pos(#9,p)+1,255);
    Gauge1.Progress:=StrToInt(copy(p,1,pos(#9,p)-1));
    Label8.Caption:='- '+copy(p,1,pos(#9,p)-1)+'x';
    p:=copy(p,pos(#9,p)+1,255);
    Gauge2.Progress:=StrToInt(copy(p,1,pos(#9,p)-1));
    Label14.Caption:='- '+copy(p,1,pos(#9,p)-1)+'x';
    p:=copy(p,pos(#9,p)+1,255);
    Gauge3.Progress:=StrToInt(copy(p,1,pos(#9,p)-1));
    Label9.Caption:='- '+copy(p,1,pos(#9,p)-1)+'x';
    p:=copy(p,pos(#9,p)+1,255);
    Gauge4.Progress:=StrToInt(copy(p,1,pos(#9,p)-1));
    Label10.Caption:='- '+copy(p,1,pos(#9,p)-1)+'x';
    p:=copy(p,pos(#9,p)+1,255);
    Gauge5.Progress:=StrToInt(copy(p,1,pos(#9,p)-1));
    Label11.Caption:='- '+copy(p,1,pos(#9,p)-1)+'x';
    p:=copy(p,pos(#9,p)+1,255);
    Gauge6.Progress:=Round(StrToInt(p)-((radio / 100)*StrToInt(p)));
    Label12.Caption:='- '+FloatToStr(Round(StrToFloat(p)-((radio / 100)*StrToFloat(p))))+' �.�.';
    break;
   end;
   If hardprm='����' then begin
    p:=copy(p,pos(#9,p)+1,255);
    p:=copy(p,pos(#9,p)+1,255);
    Gauge1.Progress:=StrToInt(copy(p,1,pos(#9,p)-1));
    Label8.Caption:='- '+copy(p,1,pos(#9,p)-1)+' ��';
    p:=copy(p,pos(#9,p)+1,255);
    Gauge2.Progress:=StrToInt(copy(p,1,pos(#9,p)-1));
    Label14.Caption:='- '+copy(p,1,pos(#9,p)-1)+' rpm';
    p:=copy(p,pos(#9,p)+1,255);
    If radio=0 then begin
     Label9.Caption:='- '+IntToStr(StrToInt(p)-hardskidka)+' �.�.';
     Gauge3.Progress:=StrToInt(p)-hardskidka;
    end
    else
     begin
      Label9.Caption:='- '+IntToStr(Round(StrToInt(p)-((radio / 100)*StrToInt(p))))+' �.�.';
      Gauge3.Progress:=Round(StrToInt(p)-((radio / 100)*StrToInt(p)));
     end;
    break;
   end;
   If hardprm='�����' then begin
    p:=copy(p,pos(#9,p)+1,255);
    p:=copy(p,pos(#9,p)+1,255);
    Gauge3.Progress:=Round(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1))));
    Label9.Caption:='- '+IntToStr(Round(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)))))+' �.�.';
    p:=copy(p,pos(#9,p)+1,255);
    Gauge1.Progress:=StrToInt(copy(p,1,pos(#9,p)-1));
    Label8.Caption:='- '+copy(p,1,pos(#9,p)-1)+' rpm';
    p:=copy(p,pos(#9,p)+1,255);
    Gauge2.Progress:=StrToInt(p);
    Label14.Caption:='- '+p+' ��';
    break;
   end;
   If hardprm='��������' then begin
    p:=copy(p,pos(#9,p)+1,255);
    p:=copy(p,pos(#9,p)+1,255);
    Gauge3.Progress:=Round(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1))));
    Label9.Caption:='- '+IntToStr(Round(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)))))+' �.�.';
    p:=copy(p,pos(#9,p)+1,255);
    Gauge2.Progress:=StrToInt(copy(p,1,pos(#9,p)-1));
    Label14.Caption:='- '+copy(p,1,pos(#9,p)-1)+'"';
    p:=copy(p,pos(#9,p)+1,255);
    Gauge1.Progress:=StrToInt(p);
    break;
   end;
   If hardprm='����' then begin
    p:=copy(p,pos(#9,p)+1,255);
    p:=copy(p,pos(#9,p)+1,255);
    If copy(p,1,pos(#9,p)-1)='440' then
     Label16.Caption:='������ - Intel 440';
    If copy(p,1,pos(#9,p)-1)='815' then
     Label16.Caption:='������ - Intel 815';
    If copy(p,1,pos(#9,p)-1)='915' then
     Label16.Caption:='������ - Intel 915';
    If copy(p,1,pos(#9,p)-1)='925' then
     Label16.Caption:='������ - Intel 925';
    If copy(p,1,pos(#9,p)-1)='945' then
     Label16.Caption:='������ - Intel 945';
    If copy(p,1,pos(#9,p)-1)='955' then
     Label16.Caption:='������ - Intel 955';
    If copy(p,1,pos(#9,p)-1)='965' then
     Label16.Caption:='������ - Intel 965';
    If copy(p,1,pos(#9,p)-1)='975' then
     Label16.Caption:='������ - Intel 975';
    If copy(p,1,pos(#9,p)-1)='X38' then
     Label16.Caption:='������ - Intel X38';
    If copy(p,1,pos(#9,p)-1)='845' then
     Label16.Caption:='������ - Intel 845';
    If copy(p,1,pos(#9,p)-1)='865' then
     Label16.Caption:='������ - Intel 865';
    If copy(p,1,pos(#9,p)-1)='875' then
     Label16.Caption:='������ - Intel 875';
    If copy(p,1,pos(#9,p)-1)='133' then
     Label16.Caption:='������ - VIA KT133';
    If copy(p,1,pos(#9,p)-1)='266' then
     Label16.Caption:='������ - VIA KT266';
    If copy(p,1,pos(#9,p)-1)='333' then
     Label16.Caption:='������ - VIA KT333';
    If copy(p,1,pos(#9,p)-1)='400' then
     Label16.Caption:='������ - VIA KT400';
    If copy(p,1,pos(#9,p)-1)='890' then
     Label16.Caption:='������ - VIA K8T890';
    If copy(p,1,pos(#9,p)-1)='880' then
     Label16.Caption:='������ - VIA PT880 Ultra';
    If copy(p,1,pos(#9,p)-1)='800' then
     Label16.Caption:='������ - VIA K8T800';
    If copy(p,1,pos(#9,p)-1)='R32' then
     Label16.Caption:='������ - ATI CrossFire XPress 3200';
    If copy(p,1,pos(#9,p)-1)='R41' then
     Label16.Caption:='������ - ATI RC410';
    If copy(p,1,pos(#9,p)-1)='R48' then
     Label16.Caption:='������ - ATI RS480';
    If copy(p,1,pos(#9,p)-1)='R40' then
     Label16.Caption:='������ - ATI RS400';
    If copy(p,1,pos(#9,p)-1)='R58' then
     Label16.Caption:='������ - ATI RD580';
    If copy(p,1,pos(#9,p)-1)='645' then
     Label16.Caption:='������ - SiS 645';
    If copy(p,1,pos(#9,p)-1)='755' then
     Label16.Caption:='������ - SiS 755';
    If copy(p,1,pos(#9,p)-1)='756' then
     Label16.Caption:='������ - SiS 756';
    If copy(p,1,pos(#9,p)-1)='656' then
     Label16.Caption:='������ - SiS 656';
    If copy(p,1,pos(#9,p)-1)='UM1' then
     Label16.Caption:='������ - ULi M1689';
    If copy(p,1,pos(#9,p)-1)='nf1' then
     Label16.Caption:='������ - nVidia nForce';
    If copy(p,1,pos(#9,p)-1)='nf2' then
     Label16.Caption:='������ - nVidia nForce2';
    If copy(p,1,pos(#9,p)-1)='nf3' then
     Label16.Caption:='������ - nVidia nForce3';
    If copy(p,1,pos(#9,p)-1)='nf4' then
     Label16.Caption:='������ - nVidia nForce4';
    If copy(p,1,pos(#9,p)-1)='n43' then
     Label16.Caption:='������ - nVidia nForce 430';
    If copy(p,1,pos(#9,p)-1)='n57' then
     Label16.Caption:='������ - nVidia nForce 570';
    If copy(p,1,pos(#9,p)-1)='n59' then
     Label16.Caption:='������ - nVidia nForce 590';
    If copy(p,1,pos(#9,p)-1)='n65' then
     Label16.Caption:='������ - nVidia nForce 650';
    If copy(p,1,pos(#9,p)-1)='n67' then
     Label16.Caption:='������ - nVidia nForce 670';
    If copy(p,1,pos(#9,p)-1)='n68' then
     Label16.Caption:='������ - nVidia nForce 680';
    If copy(p,1,pos(#9,p)-1)='n69' then
     Label16.Caption:='������ - nVidia nForce 690';
    p:=copy(p,pos(#9,p)+1,255);
    if copy(p,1,pos(#9,p)-1)='Y' then
     Label5.Caption:='����� ������ FSB - ��������'
    else
     Label5.Caption:='����� ������ FSB - ����������';
    p:=copy(p,pos(#9,p)+1,255);
    if copy(p,1,pos(#9,p)-1)='Y' then
     Label13.Caption:='����� ���������� �� ���������� - ��������'
    else
     Label13.Caption:='����� ���������� �� ���������� - ����������';
    p:=copy(p,pos(#9,p)+1,255);
    if copy(p,1,pos(#9,p)-1)='Y' then
     Label15.Caption:='����� ������������ ��������� - ��������'
    else
     Label15.Caption:='����� ������������ ��������� - ����������';
    p:=copy(p,pos(#9,p)+1,255);
    Gauge1.Progress:=Round(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1))));
    Label8.Caption:='- '+IntToStr(Round(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)))))+' �.�.';
    p:=copy(p,pos(#9,p)+1,255);
    If copy(p,1,pos(#9,p)-1)='AGP' then Label23.Caption:='�������������� ���� ��� ���������� - AGP';
    If copy(p,1,pos(#9,p)-1)='PCI' then Label23.Caption:='�������������� ���� ��� ���������� - PCI Express';
    If (copy(p,1,pos(#9,p)-1)='AGP&PCI') or (copy(p,1,pos(#9,p)-1)='PCI&AGP') then Label23.Caption:='�������������� ���� ��� ���������� - AGP � PCI Express';
    p:=copy(p,pos(#9,p)+1,255);
    Label25.Caption:='�������������� ��� ����������� ������ - '+copy(p,1,pos(#9,p)-1);
    p:=copy(p,pos(#9,p)+1,255);
    If p='SLI' then Label26.Caption:='��������� ���� ��������� - ���������� SLI' else
    If p='CF' then Label26.Caption:='��������� ���� ��������� - ���������� CrossFire' else
    If (p='SLI&CF') or (p='CF&SLI') then Label26.Caption:='��������� ���� ��������� - ���������� SLI � CrossFire' else
     Label26.Caption:='��������� ���� ��������� - �����������';
    break;
   end;
   If (hardprm='�������') or (hardprm='������') or (hardprm='�����') or (hardprm='�������������') or (hardprm='������') then begin
    If hardprm='�����' then begin
     p:=copy(p,pos(#9,p)+1,255);
     p:=copy(p,pos(#9,p)+1,255);
     Gauge1.Progress:=StrToInt(copy(p,pos(#9,p)+1,255));
     Label8.Caption:='- '+IntToStr(StrToInt(copy(p,pos(#9,p)+1,255)) div 1000)+'k';
     Gauge2.Progress:=Round(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1))));
     Label14.Caption:='- '+IntToStr(Round(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)))))+' �.�.';
     Break;
    end
    else
     begin
      p:=copy(p,pos(#9,p)+1,255);
      p:=copy(p,pos(#9,p)+1,255);
      Gauge1.Progress:=StrToInt(copy(p,pos(#9,p)+1,pos(#9,p)));
      Gauge2.Progress:=Round(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1))));
      Label14.Caption:='- '+IntToStr(Round(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)))))+' �.�.';
      If (hardprm='�������') or (hardprm='������') then
       Label8.Caption:='- '+copy(p,pos(#9,p)+1,255)+' ���/���';
      If hardprm='�������������' then
       Label8.Caption:='';
      Break;
     end;
   end;
   If hardprm='������' then begin
    p:=copy(p,pos(#9,p)+1,255);
    p:=copy(p,pos(#9,p)+1,255);
    If copy(p,1,pos(#9,p)-1)='GTS' then
     Label19.Caption:='��� - GeForce 2 GTS';
    If copy(p,1,pos(#9,p)-1)='MX2' then
     Label19.Caption:='��� - GeForce 2 MX';
    If copy(p,1,pos(#9,p)-1)='2000' then
     Label19.Caption:='��� - Savage 2000';
    If copy(p,1,pos(#9,p)-1)='G450' then
     Label19.Caption:='��� - Matrox G450';
    If copy(p,1,pos(#9,p)-1)='8500' then
     Label19.Caption:='��� - ATI Radeon 8500';
    If copy(p,1,pos(#9,p)-1)='M440' then
     Label19.Caption:='��� - nVidia GeForce 4 MX 440';
    If copy(p,1,pos(#9,p)-1)='M420' then
     Label19.Caption:='��� - nVidia GeForce 4 MX 420';
    If copy(p,1,pos(#9,p)-1)='M460' then
     Label19.Caption:='��� - nVidia GeForce 4 MX 460';
    If copy(p,1,pos(#9,p)-1)='M480' then
     Label19.Caption:='��� - nVidia GeForce 4 MX 480';
    If copy(p,1,pos(#9,p)-1)='A400' then
     Label19.Caption:='��� - SiS Xabre 400';
    If copy(p,1,pos(#9,p)-1)='A600' then
     Label19.Caption:='��� - SiS Xabre 600';
    If copy(p,1,pos(#9,p)-1)='Delt' then
     Label19.Caption:='��� - S3 Graphics DeltaChrome';
    If copy(p,1,pos(#9,p)-1)='5600' then
     Label19.Caption:='��� - nVidia GeForce FX 5600';
    If copy(p,1,pos(#9,p)-1)='5500' then
     Label19.Caption:='��� - nVidia GeForce FX 5500';
    If copy(p,1,pos(#9,p)-1)='5200' then
     Label19.Caption:='��� - nVidia GeForce FX 5200';
    If copy(p,1,pos(#9,p)-1)='5800' then
     Label19.Caption:='��� - nVidia GeForce FX 5800';
    If copy(p,1,pos(#9,p)-1)='5700' then
     Label19.Caption:='��� - nVidia GeForce FX 5700';
    If copy(p,1,pos(#9,p)-1)='5750' then
     Label19.Caption:='��� - nVidia GeForce FX 5750';
    If copy(p,1,pos(#9,p)-1)='5900' then
     Label19.Caption:='��� - nVidia GeForce FX 5900';
    If copy(p,1,pos(#9,p)-1)='5950' then
     Label19.Caption:='��� - nVidia GeForce FX 5950';
    If copy(p,1,pos(#9,p)-1)='4200' then
     Label19.Caption:='��� - nVidia GeForce 4 Ti 4200';
    If copy(p,1,pos(#9,p)-1)='4600' then
     Label19.Caption:='��� - nVidia GeForce 4 Ti 4600';
    If copy(p,1,pos(#9,p)-1)='4800' then
     Label19.Caption:='��� - nVidia GeForce 4 Ti 4800';
    If copy(p,1,pos(#9,p)-1)='4400' then
     Label19.Caption:='��� - nVidia GeForce 4 Ti 4400';
    If copy(p,1,pos(#9,p)-1)='8800' then
     Label19.Caption:='��� - nVidia GeForce 8800';
    If copy(p,1,pos(#9,p)-1)='8600' then
     Label19.Caption:='��� - nVidia GeForce 8600';
    If copy(p,1,pos(#9,p)-1)='8500' then
     Label19.Caption:='��� - nVidia GeForce 8500';
    If copy(p,1,pos(#9,p)-1)='8400' then
     Label19.Caption:='��� - nVidia GeForce 8400';
    If copy(p,1,pos(#9,p)-1)='7950' then
     Label19.Caption:='��� - nVidia GeForce 7950';
    If copy(p,1,pos(#9,p)-1)='7900' then
     Label19.Caption:='��� - nVidia GeForce 7900';
    If copy(p,1,pos(#9,p)-1)='7800' then
     Label19.Caption:='��� - nVidia GeForce 7800';
    If copy(p,1,pos(#9,p)-1)='7600' then
     Label19.Caption:='��� - nVidia GeForce 7600';
    If copy(p,1,pos(#9,p)-1)='7500' then
     Label19.Caption:='��� - nVidia GeForce 7500';
    If copy(p,1,pos(#9,p)-1)='7300' then
     Label19.Caption:='��� - nVidia GeForce 7300';
    If copy(p,1,pos(#9,p)-1)='7200' then
     Label19.Caption:='��� - nVidia GeForce 7200';
    If copy(p,1,pos(#9,p)-1)='7100' then
     Label19.Caption:='��� - nVidia GeForce 7100';
    If copy(p,1,pos(#9,p)-1)='6800' then
     Label19.Caption:='��� - nVidia GeForce 6800';
    If copy(p,1,pos(#9,p)-1)='6600' then
     Label19.Caption:='��� - nVidia GeForce 6600';
    If copy(p,1,pos(#9,p)-1)='6500' then
     Label19.Caption:='��� - nVidia GeForce 6500';
    If copy(p,1,pos(#9,p)-1)='6200' then
     Label19.Caption:='��� - nVidia GeForce 6200';
    If copy(p,1,pos(#9,p)-1)='9200' then
     Label19.Caption:='��� - ATI Radeon 9200';
    If copy(p,1,pos(#9,p)-1)='9500' then
     Label19.Caption:='��� - ATI Radeon 9500';
    If copy(p,1,pos(#9,p)-1)='9550' then
     Label19.Caption:='��� - ATI Radeon 9550';
    If copy(p,1,pos(#9,p)-1)='9600' then
     Label19.Caption:='��� - ATI Radeon 9600';
    If copy(p,1,pos(#9,p)-1)='9700' then
     Label19.Caption:='��� - ATI Radeon 9700';
    If copy(p,1,pos(#9,p)-1)='9800' then
     Label19.Caption:='��� - ATI Radeon 9800';
    If copy(p,1,pos(#9,p)-1)='X290' then
     Label19.Caption:='��� - ATI Radeon X2900';
    If copy(p,1,pos(#9,p)-1)='X280' then
     Label19.Caption:='��� - ATI Radeon X2800';
    If copy(p,1,pos(#9,p)-1)='X260' then
     Label19.Caption:='��� - ATI Radeon X2600';
    If copy(p,1,pos(#9,p)-1)='X240' then
     Label19.Caption:='��� - ATI Radeon X2400';
    If copy(p,1,pos(#9,p)-1)='X230' then
     Label19.Caption:='��� - ATI Radeon X2300';
    If copy(p,1,pos(#9,p)-1)='X195' then
     Label19.Caption:='��� - ATI Radeon X1950';
    If copy(p,1,pos(#9,p)-1)='X190' then
     Label19.Caption:='��� - ATI Radeon X1900';
    If copy(p,1,pos(#9,p)-1)='X180' then
     Label19.Caption:='��� - ATI Radeon X1800';
    If copy(p,1,pos(#9,p)-1)='X165' then
     Label19.Caption:='��� - ATI Radeon X1650';
    If copy(p,1,pos(#9,p)-1)='X160' then
     Label19.Caption:='��� - ATI Radeon X1600';
    If copy(p,1,pos(#9,p)-1)='X130' then
     Label19.Caption:='��� - ATI Radeon X1300';
    If copy(p,1,pos(#9,p)-1)='X850' then
     Label19.Caption:='��� - ATI Radeon X850';
    If copy(p,1,pos(#9,p)-1)='X800' then
     Label19.Caption:='��� - ATI Radeon X800';
    If copy(p,1,pos(#9,p)-1)='X700' then
     Label19.Caption:='��� - ATI Radeon X700';
    If copy(p,1,pos(#9,p)-1)='X600' then
     Label19.Caption:='��� - ATI Radeon X600';
    If copy(p,1,pos(#9,p)-1)='X550' then
     Label19.Caption:='��� - ATI Radeon X550';
    If copy(p,1,pos(#9,p)-1)='X300' then
     Label19.Caption:='��� - ATI Radeon X300';
    If copy(p,1,pos(#9,p)-1)='7500' then
     Label19.Caption:='��� - ATI Radeon 7500';
    If copy(p,1,pos(#9,p)-1)='9000' then
     Label19.Caption:='��� - ATI Radeon 9000';
    If copy(p,1,pos(#9,p)-1)='9100' then
     Label19.Caption:='��� - ATI Radeon 9100';
    If copy(p,1,pos(#9,p)-1)='XGI5' then
     Label19.Caption:='��� - XGI Volari Duo';
    If copy(p,1,pos(#9,p)-1)='XGI8' then
     Label19.Caption:='��� - XGI Volari Duo';
    If copy(p,1,pos(#9,p)-1)='SC27' then
     Label19.Caption:='��� - S3 Chrome S27';
    p:=copy(p,pos(#9,p)+1,255);
    Gauge1.Progress:=StrToInt(copy(p,1,pos(#9,p)-1));
//    Label8.Caption:='- '+copy(p,1,pos(#9,p)-1)+' ������';
    p:=copy(p,pos(#9,p)+1,255);
    Gauge2.Progress:=StrToInt(copy(p,1,pos(#9,p)-1));
    Label14.Caption:='- '+copy(p,1,pos(#9,p)-1)+' ��';
    p:=copy(p,pos(#9,p)+1,255);
    Label21.Caption:='�������� ������� ������ - '+copy(p,1,pos(#9,p)-1)+' ���';
    p:=copy(p,pos(#9,p)+1,255);
    Label22.Caption:='�������� ������� ���� - '+copy(p,1,pos(#9,p)-1)+' ���';
    p:=copy(p,pos(#9,p)+1,255);
    if radio=0 then begin
     Gauge3.Progress:=StrToInt(copy(p,1,pos(#9,p)-1))-videoskidka;
     Label9.Caption:='- '+IntToStr(StrToInt(copy(p,1,pos(#9,p)-1))-videoskidka)+' �.�.';
    end
    else
     begin
      Gauge3.Progress:=Round(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1))));
      Label9.Caption:='- '+IntToStr(Round(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)))))+' �.�.';
     end;
    p:=copy(p,pos(#9,p)+1,255);
    If copy(p,1,pos(#9,p)-1)='AGP' then
     Label20.Caption:='������������ ���� - '+copy(p,1,pos(#9,p)-1);
    If copy(p,1,pos(#9,p)-1)='PCI' then
     Label20.Caption:='������������ ���� - '+copy(p,1,pos(#9,p)-1)+' Express';
    Button2.Enabled:=true;
    Label20.Font.Color:=clWindowText;
    If pos(ANSILOWERCASE(copy(p,1,pos(#9,p)-1)), ANSILOWERCASE(videochipset)) = 0 then begin
     Button2.Enabled:=false;
     Label20.Font.Color:=clRed;
    end;
    p:=copy(p,pos(#9,p)+1,255);
    if p='SLI' then Label27.Caption:='����������� �������� � ������ SLI' else
    if p='CF' then Label27.Caption:='����������� �������� � ������ CrossFire' else
    if p='MH' then Label27.Caption:='����������� �������� � ������ MultiChrome' else
     Label27.Caption:='';
    TempMultiChrome:=p;
    Break;
   end;
   If hardprm='����' then begin
    p:=copy(p,pos(#9,p)+1,255);
    p:=copy(p,pos(#9,p)+1,255);
    If radio=0 then begin
     Gauge2.Progress:=StrToInt(copy(p,1,pos(#9,p)-1))-procskidka;
     Label14.Caption:='- '+IntToStr(StrToInt(copy(p,1,pos(#9,p)-1))-procskidka)+' �.�.';
    end
    else
     begin
      Gauge2.Progress:=Round(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1))));
      Label14.Caption:='- '+IntToStr(Round(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)))))+' �.�.';
     end;
    p:=copy(p,pos(#9,p)+1,255);
    Gauge1.Progress:=StrToInt(copy(p,1,pos(#9,p)-1));
{    Label8.Caption:='- '+copy(p,1,pos(#9,p)-1)+' ������';}
    p:=copy(p,pos(#9,p)+1,255);
    p:=copy(p,pos(#9,p)+1,255);
    Label17.Caption:='������� ��������� ���� - '+copy(p,1,pos(#9,p)-1)+' ���';
    If MainForm.Label23.Caption<>'���' then begin
     p:=copy(p,pos(#9,p)+1,255);
     np:=p;
     repeat
      If copy(p,1,pos('|',p)-1)=chipset then begin
       podx:=true;
       break;
      end
      else
       podx:=false;
      p:=copy(p,pos('|',p)+1,255);
     until
      length(p)=3;
     If podx=false then
      If p=chipset then podx:=true;
     p:=np;
     If podx then begin
      Label18.Caption:='����������� ������ - ��';
      Label18.Font.Color:=clWindowText;
      Button2.Enabled:=true;
     end
     else
      begin
       Label18.Caption:='����������� ������ - ���';
       Label18.Font.Color:=clRed;
       Button2.Enabled:=false;
      end;
     end
     else
      begin
       Label18.Caption:='����������� ������ - ���';
       Label18.Font.Color:=clRed;
       Button2.Enabled:=false;
      end;
      Break;
    end;
   If (hardprm='����������') or (hardprm='����') or (hardprm='�������') or (hardprm='����') or (hardprm='������') or (hardprm='�����') then begin
    p:=copy(p,pos(#9,p)+1,255);
    p:=copy(p,pos(#9,p)+1,255);
    Gauge1.Progress:=Round(StrToInt(p)-((radio / 100)*StrToInt(p)));
    Label8.Caption:='- '+IntToStr(Round(StrToInt(p)-((radio / 100)*StrToInt(p))))+' �.�.';
    break;
   end;
   If hardprm='����������' then begin
    p:=copy(p,pos(#9,p)+1,255);
    p:=copy(p,pos(#9,p)+1,255);
    Gauge2.Progress:=Round(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1))));
    Label14.Caption:='- '+IntToStr(Round(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)))))+' �.�.';
    p:=copy(p,pos(#9,p)+1,255);
    Gauge1.Progress:=StrToInt(copy(p,1,pos(#9,p)-1));
    Label8.Caption:='- '+copy(p,1,pos(#9,p)-1)+' ��';
    p:=copy(p,pos(#9,p)+1,255);
    Label24.Caption:='��� - '+copy(p,pos(#9,p)+1,255)+' '+copy(p,1,pos(#9,p)-1);
    If RamType<>copy(p,pos(#9,p)+1,255) then begin
     Label24.Font.Color:=clRed;
     Button2.Enabled:=false;
    end
    else
     begin
      Label24.Font.Color:=clWindowText;
      Button2.Enabled:=true;
     end;
    break;
   end;
   If hardprm='��������' then begin
    p:=copy(p,pos(#9,p)+1,255);
    Gauge1.Progress:=Round(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1))));
    Label8.Caption:='- '+IntToStr(Round(StrToInt(copy(p,1,pos(#9,p)-1))-((radio / 100)*StrToInt(copy(p,1,pos(#9,p)-1)))))+' �.�.';
    p:=copy(p,pos(#9,p)+1,255);
    Gauge2.Progress:=StrToInt(copy(p,1,pos(#9,p)-1));
    p:=copy(p,pos(#9,p)+1,255);
    Gauge3.Progress:=StrToInt(p);
    Label9.Caption:='- '+p+' �.�.';
    break;
   end;
  end;
 end;
end;
procedure TCompl.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 MainForm.Timer1.Enabled:=true;
 closefile(harddata);
end;

procedure TCompl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
If cpx<>'buy' then
 Application.MessageBox('����� ������ ������, � �� �����!','������!',MB_ICONINFORMATION);
end;

procedure TCompl.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_RETURN) and (Button2.Enabled=true) then
  Button2.OnClick(self);
end;

procedure TCompl.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button1.OnClick(self);
end;

end.
