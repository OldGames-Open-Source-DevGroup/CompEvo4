unit SoftSel;

interface

uses
  Windows, SysUtils, Forms, Graphics,
  Gauges, ActnList, Menus, Classes, Controls, StdCtrls, ExtCtrls;

type
  TSoftSelect = class(TForm)
    GroupBox1: TGroupBox;
    Size: TGauge;
    Label1: TLabel;
    Cost: TGauge;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    Label5: TLabel;
    ActionList1: TActionList;
    ProverkaOS: TAction;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure ProverkaOSExecute(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SoftSelect: TSoftSelect;
  data:textfile;
  ccost,csize:integer;
  dataprm:shortstring;
  ost,osfs:shortstring;
  udevtype:shortstring;
  uAntiServer:shortstring;
  xkCom:shortstring;

implementation

uses Main, param, Instal, Games, PartitionMagic;

{$R *.dfm}

procedure TSoftSelect.Button2Click(Sender: TObject);
begin
 Close;
end;

procedure TSoftSelect.FormActivate(Sender: TObject);
var
 p,np,mnp:shortstring;
 i,k:smallint;
begin
 RadioGroup1.Enabled:=true;
 p:=''; np:='';
 Size.Progress:=0;
 Cost.Progress:=0;
 Size.MaxValue:=0;
 Button1.Enabled:=false;
 RadioGroup1.ItemIndex:=0;
 Label2.Visible:=true;
 If dataprm='OS' then begin
  SoftSelect.ClientHeight:=209;
  Label5.Visible:=false;
 end
 else
  begin
   SoftSelect.ClientHeight:=233;
   Label5.Visible:=true;
  end;
 If money>0 then Cost.MaxValue := Round(money)
            else Cost.MaxValue := 1;
 combobox1.Clear;
 reset(data);
 while not eof(data) do begin
  k:=0;
  readln(data,p);
  np:=p;
  p:=copy(p,pos(#9,p)+1,255);
  p:=copy(p,1,pos(#9,p)-1);
  If StrToInt(p)<=year then begin
   If dataprm='OS' then begin
    If copy(np,1,pos(#9,np)-1)<>MainForm.Label30.Caption then
     combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
   end;
   If dataprm='Dev' then begin
    If copy(np,1,pos(#9,np)-1)<>MainForm.Label32.Caption then
     combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
   end;
   If dataprm='File Manager' then begin
    If copy(np,1,pos(#9,np)-1)<>MainForm.Label48.Caption then
     combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
   end;
   If dataprm='Spam' then begin
    If copy(np,1,pos(#9,np)-1)<>MainForm.Label123.Caption then
     combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
   end;
   If dataprm='Hacking' then begin
    mnp:=copy(np,1,pos(#9,np)-1);
    for i:=1 to 5 do
     np:=copy(np,pos(#9,np)+1,255);
    for i:=0 to HackPrograms.Count-1 do
     If np=HackPrograms.Strings[i] then begin
      k:=k+1;
      break;
     end;
    if k=0 then
     combobox1.Items.Add(mnp);
   end;
   If dataprm='Antivirus' then begin
    If copy(np,1,pos(#9,np)-1)<>MainForm.Label31.Caption then
     combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
   end;
   If (dataprm='Firewall') then begin
    If copy(np,1,pos(#9,np)-1)<>Mainform.Label51.Caption then
     combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
   end;
   If (dataprm='Defrag') then begin
    If copy(np,1,pos(#9,np)-1)<>Mainform.Label53.Caption then
     combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
   end;
   If (dataprm='Browser') then begin
    If copy(np,1,pos(#9,np)-1)<>Mainform.Label131.Caption then
     combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
   end;
   If (dataprm='DiskOperator') then begin
    If copy(np,1,pos(#9,np)-1)<>Mainform.Label54.Caption then
     combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
   end;
   If dataprm='Games' then begin
    for i:=1 to Game.ComboBox1.Items.Count do
     If copy(np,1,pos(#9,np)-1)=Game.ComboBox1.Items.Strings[i-1] then
      k:=k+1;
     if k=0 then
      combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
   end;
   If dataprm='Video' then begin
    If copy(np,1,pos(#9,np)-1)<>MainForm.Label109.Caption then
     combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
   end;
   If dataprm='CopyCD' then begin
    If copy(np,1,pos(#9,np)-1)<>MainForm.Label56.Caption then
     combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
   end;
   If dataprm='AudioEnc' then begin
    If copy(np,1,pos(#9,np)-1)<>MainForm.Label58.Caption then
     combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
   end;
   If dataprm='VideoEnc' then begin
    If copy(np,1,pos(#9,np)-1)<>MainForm.Label57.Caption then
     combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
   end;
   If dataprm='Benchmark' then begin
    If copy(np,1,pos(#9,np)-1)<>MainForm.Label133.Caption then
     combobox1.Items.Add(copy(np,1,pos(#9,np)-1));
   end;
  end;
 end;
{ reset(data);}
 If combobox1.Items.Count=0 then begin
  Combobox1.Items.Add('На данный момент ничего нет');
  Label3.Caption:='- 0 Мб';
  Label4.Caption:='- 0 д.е.';
  Combobox1.ItemIndex:=0;
 end
 else
 begin
  Combobox1.ItemIndex:=0;
  proverkaos.Execute;
 end;
 Combobox1.SetFocus;
end;

procedure TSoftSelect.Button1Click(Sender: TObject);
var
	VPlus: integer;
begin
	case RadioGroup1.ItemIndex of
		0: VPlus := 4;
		1: VPlus := -10;
	end;

	if (RadioGroup1.ItemIndex = 1) or (cCost = 0) then cCost := 20;

	if Size.MaxValue >= cSize then
	begin
		if Money >= cCost then
		begin
			vlasti := vlasti + VPlus;
			if Install = nil then Application.CreateForm(TInstall, Install);
			Install.ShowModal;
		end
		else	Application.MessageBox('Да где денег взять-то?','Помощь!',MB_ICONSTOP);
	end
	else	Application.MessageBox('Не хватает свободного места на жестком диске!','Помощь!',MB_ICONSTOP);
end;

procedure TSoftSelect.RadioGroup1Click(Sender: TObject);
begin
	case RadioGroup1.ItemIndex of
		0: begin
			SoftSelect.ClientHeight := SoftSelect.ClientHeight + 40;
			GroupBox1.Height := GroupBox1.Height + 40;
			Label2.Visible := true;
		end;
		1: begin
			SoftSelect.ClientHeight := SoftSelect.ClientHeight - 40;
			GroupBox1.Height := GroupBox1.Height - 40;
			Label2.Visible := false;
		end;
	end;
end;

procedure TSoftSelect.ProverkaOSExecute(Sender: TObject);
var
 p:shortstring;
begin
If combobox1.Items.Strings[0]<>'На данный момент ничего нет' then begin
 reset(data);
 while true do begin
  readln(data,p);
  If Combobox1.Items.Strings[Combobox1.ItemIndex]=copy(p,1,pos(#9,p)-1) then begin
   p:=copy(p,pos(#9,p)+1,255);
   p:=copy(p,pos(#9,p)+1,255);
   If dataprm='Games' then begin
    Req:=StrToInt(copy(p,1,pos(#9,p)-1));
    p:=copy(p,pos(#9,p)+1,255);
   end;
   Cost.Progress:=StrToInt(copy(p,1,pos(#9,p)-1));
   Label4.Caption:='- '+copy(p,1,pos(#9,p)-1)+' д.е.';
   ccost:=StrToInt(copy(p,1,pos(#9,p)-1));
   p:=copy(p,pos(#9,p)+1,255);
   Size.Progress:=StrToInt(copy(p,1,pos(#9,p)-1));
   Label3.Caption:='- '+copy(p,1,pos(#9,p)-1)+' Мб';
   csize:=StrToInt(copy(p,1,pos(#9,p)-1));
   p:=copy(p,pos(#9,p)+1,255);
   If dataprm<>'OS' then begin
    If dataprm='Dev'then begin
     udevtype:=ANSILOWERCASE(copy(p,pos(#9,p)+1,255));
     p:=copy(p,1,pos(#9,p)-1);
    end;
    If dataprm='Antivirus'then begin
     uAntiServer:=ANSILOWERCASE(copy(p,pos(#9,p)+1,255));
     p:=copy(p,1,pos(#9,p)-1);
    end;
    If (dataprm='Hacking') or (dataprm='File Manager') then begin
     xkCom:=ANSILOWERCASE(copy(p,pos(#9,p)+1,255));
     p:=copy(p,1,pos(#9,p)-1);
    end;
    while pos('|',p)<>0 do begin
     If copy(p,1,pos('|',p)-1)=os then begin
      Label5.Font.Color:=clWindowText;
      If Size.MaxValue<>0 then
       Button1.Enabled:=true;
      Label5.Caption:='Необходимая операционная система - Да';
      break;
     end
     else
      begin
       p:=copy(p,pos('|',p)+1,255);
       Label5.Caption:='Необходимая операционная система - Нет';
       Label5.Font.Color:=clRed;
       Button1.Enabled:=false;
      end;
   end;
   If length(p)=3 then begin
    If p=os then begin
     Label5.Font.Color:=clWindowText;
     If Size.MaxValue<>0 then
      Button1.Enabled:=true;
     Label5.Caption:='Необходимая операционная система - Да';
    end
    else
     begin
      p:=copy(p,1,pos('|',p)-1);
      Label5.Font.Color:=clRed;
      Button1.Enabled:=false;
      Label5.Caption:='Необходимая операционная система - Нет';
     end;
   end;
   end
   else
    begin
     ost:=copy(p,1,pos(#9,p)-1);
     p:=copy(p,pos(#9,p)+1,255);
     osfs:=p;
     If Size.MaxValue<>0 then
      Button1.Enabled:=true;
    end;
   If (cost.Progress=0) or (dataprm='Hacking') then
    RadioGroup1.Enabled:=false
   else
    RadioGroup1.Enabled:=true;
   break;
  end;
 end;
end;
end;

procedure TSoftSelect.ComboBox1Change(Sender: TObject);
begin
 Button1.Enabled:=false;
 Size.MaxValue:=0;
 Proverkaos.Execute;
end;

procedure TSoftSelect.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (KEY=VK_RETURN) and (Button1.Enabled=true) then
  Button1.OnClick(self);
end;

procedure TSoftSelect.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button2.OnClick(self);
end;

procedure TSoftSelect.Button3Click(Sender: TObject);
begin
 Partition.ShowModal;
 If (a<>-1) and (b<>-1) then begin
  Size.MaxValue:=Parts[a,b].Free;
  ProverkaOS.Execute;
 end
 else
  begin
   Size.MaxValue:=0;
   Button1.Enabled:=false;
  end;
end;

end.
