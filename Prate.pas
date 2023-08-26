unit Prate;

interface

uses
  Windows, SysUtils, Forms,
  param, ActnList, ExtCtrls, Classes, ComCtrls, Controls, StdCtrls;
                 
type
  TPirate = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Button1: TButton;
    TabSheet3: TTabSheet;
    ActionList1: TActionList;
    Label10: TLabel;
    TabSheet4: TTabSheet;
    GroupBox3: TGroupBox;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    WriteP: TProgressBar;
    TestP: TProgressBar;
    ProcP: TProgressBar;
    Button12: TButton;
    Button13: TButton;
    Start: TAction;
    Timer1: TTimer;
    Label16: TLabel;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Timer2: TTimer;
    Label5: TLabel;
    Label6: TLabel;
    Timer3: TTimer;
    Image1: TImage;
    TabSheet2: TTabSheet;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure StartExecute(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer3Timer(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet4Hide(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pirate: TPirate;
  i1,i2,k1:integer;
  s:string;
  bolvselected:string;
  hardfree:integer;
  CDminus:shortint=0;
  Zakazov:smallint;

implementation

uses Main, SoftSel;

{$R *.dfm}

procedure TPirate.Button1Click(Sender: TObject);
begin
 MainForm.Timer1.Enabled:=true;
 Close;
end;

procedure TPirate.FormActivate(Sender: TObject);
var
 RW:textfile;
 tmpstr:shortstring;
 i: integer;
begin
 MainForm.Timer1.Enabled:=false;
 PageControl1.ActivePage := TabSheet1;
 for i:=0 to Length(Parts)-1 do
  If Parts[i,0].Active then
   If Parts[i,0].Free>=10 then begin
    hardfree:=Parts[i,0].Free;
    Break;
   end;
 Label10.Caption:='Скорость записи болванок - '+IntToStr(CDRSpeed)+'x';
 Assignfile(RW,dir+'\Inf\RW.inf');
 reset(rw);
 zakazov:=-1;
 while not eof(rw) do begin
  readln(rw,tmpstr);
  inc(zakazov);
 end;
 start.Execute;
end;

procedure TPirate.StartExecute(Sender: TObject);
var
 syear:smallint;
 RW:textfile;
begin
 If InetTraffic>=1 then begin
  InetTraffic:=InetTraffic-1;
  syear:=32575;
  Randomize;
  Assignfile(RW,dir+'\Inf\RW.inf');
  while syear>year do begin
   k1:=-1;
   reset(rw);
   while I1=I2 do
    I1:=Random(zakazov+1);
   While not eof(rw) do begin
    Inc(k1);
    Readln(rw,s);
    if k1=i1 then begin
     i2:=k1;
     Button9.Enabled:=false;
     Button10.Enabled:=false;
     Button11.Enabled:=false;
     Button13.Enabled:=false;
     Label16.Caption:=copy(s,1,pos(#9,s)-1);
     s:=copy(s,pos(#9,s)+1,255);
     syear:=StrToInt(copy(s,1,pos(#9,s)-1));
     s:=copy(s,pos(#9,s)+1,255);
     cdminus:=StrToInt(copy(s,1,pos(#9,s)-1));
     s:=copy(s,pos(#9,s)+1,255);
     if copy(s,1,pos(#9,s)-1)='soft' then
      Button9.Enabled:=true;
     if copy(s,1,pos(#9,s)-1)='audio' then
      Button11.Enabled:=true;
     if copy(s,1,pos(#9,s)-1)='video' then
      Button10.Enabled:=true;
     if copy(s,pos(#9,s)+1,255)='N' then
      Button13.Enabled:=true
     else
      Button13.Enabled:=false;
     break;
    end;
   end;
  end;
  Closefile(rw);
 end
 else
  begin
   InetTraffic:=0;
   Application.MessageBox('Закончился преоплаченный трафик за интернет. Купите больше трафика для продолжения работы!','Помощь!',MB_ICONSTOP);
   Close;
  end;
end;

procedure TPirate.Button12Click(Sender: TObject);
begin
 start.Execute;
end;

procedure TPirate.Button13Click(Sender: TObject);
begin
 If random(10)<>4 then begin
  If random(3)+1=3 then begin
   Application.MessageBox('Вы сообщили властям о нарушителе, которого они давно искали, за это вы получили 200 д.е. в награду!','Помощь!',MB_ICONINFORMATION);
   money:=money+200;
   nastr:=nastr+1;
  end
  else
   Application.MessageBox('Вы сообщили о нарушителе в правоохранительные органы. Правонарушители будут наказаны.','Помощь!',MB_ICONINFORMATION);
 end
  else
   begin
    Application.MessageBox('В вашу дверь постучали два амбала. После короткого разговора вы поняли, что были неправы и расщедрились на 500 д.е.','Помощь!',MB_ICONSTOP);
    money:=money-500;
    nastr:=nastr-10;
   end;
 Start.Execute;
 vlasti:=vlasti+2;
end;

procedure TPirate.Button9Click(Sender: TObject);
begin
  If MainForm.Label56.Caption<>'Нет' then begin
   If CD>=cdminus then begin
    If Button13.Enabled=true then
     vlasti:=vlasti-4
    else
     vlasti:=vlasti+2;
    cd:=cd-cdminus;
    Timer1.Enabled:=true;
   end
   else
    Application.MessageBox('Не хватает болванок! Вывод - докупите!','Помощь!',MB_ICONSTOP);
  end
  else
   Application.MessageBox('Чем будете копировать?','Помощь!',MB_ICONSTOP);
end;

procedure TPirate.Timer1Timer(Sender: TObject);
begin
 If 1024-(inetSpeed div 1000)-cdrspeed*2>0 then
  Timer1.Interval:=1024-(inetSpeed div 1000)-cdrspeed*2
 else
  Timer1.Interval:=1;
 If Testp.Position<200 then
  TestP.Position:=TestP.Position+1;
  Button9.Enabled:=false;
  Button10.Enabled:=false;
  Button11.Enabled:=false;
  Button12.Enabled:=false;
  Button13.Enabled:=false;
 If writep.Position<200 then begin
  If testp.Position>37 then
   Procp.Position:=random(100)+1;
  If testp.Position>37 then
   writep.Position:=writep.Position+1;
 end
 else
  begin
   If random(10)<>8 then begin
    Timer1.Enabled:=false;
    cdr:=cdr+cdminus;
    Application.MessageBox('Клево! Клиент остался доволен!','Помощь!',MB_ICONINFORMATION);
    money:=money+(cdminus*100);
   end
   else
    begin
     Timer1.Enabled:=false;
     Button12.Enabled:=true;
     badcd:=badcd+cdminus;
     Application.MessageBox('Запоренные болванки и испорченное настроение. Калечные болванки...','Помощь!',MB_ICONINFORMATION);
     Nastr:=nastr-4;
     start.Execute;
    end;
   Timer1.Enabled:=false;
   Testp.Position:=0;
   Procp.Position:=0;
   Writep.Position:=0;
   Button12.Enabled:=true;
   Start.Execute;
  end;
end;

procedure TPirate.Button5Click(Sender: TObject);
begin
 If money>=70 then begin
  CD:=Cd+10;
  money:=money-70;
 end
 else
  Application.MessageBox('Не хватает грошей!','Помощь!',MB_ICONSTOP);
 Label6.Caption:=IntToStr(cd)+' - болванок';
 vlasti:=vlasti-3;
end;

procedure TPirate.Button6Click(Sender: TObject);
begin
 If money>=100 then begin
  CD:=Cd+25;
  money:=money-100;
 end
 else
  Application.MessageBox('Не хватает грошей!','Помощь!',MB_ICONSTOP);
 Label6.Caption:=IntToStr(cd)+' - болванок';
 vlasti:=vlasti-4;
end;

procedure TPirate.Button7Click(Sender: TObject);
begin
 If money>=150 then begin
  CD:=Cd+50;
  money:=money-150;
 end
 else
  Application.MessageBox('Не хватает грошей!','Помощь!',MB_ICONSTOP);
 Label6.Caption:=IntToStr(cd)+' - болванок';
 vlasti:=vlasti-10;
end;

procedure TPirate.Timer2Timer(Sender: TObject);
begin
 Button12.Enabled:=false;
 Button10.Enabled:=false;
 If Button13.Enabled=true then
  Button13.Enabled:=false;
 Timer2.Interval:=1025-(inetSpeed div 1000);
 If Testp.Position<200 then begin
  TestP.Position:=TestP.Position+1;
  If testp.Position>40 then
   Procp.Position:=random(100)+1;
 end
 else
  begin
   If random(13)<>6 then begin
    Testp.Position:=0;
    ProcP.Position:=0;
    Button9.Enabled:=true;
    Button10.Enabled:=false;
    Button12.Enabled:=true;
    Timer2.Enabled:=false;
    Application.MessageBox('Фильм сжат! Теперь его можно записывать на болванку!','Помощь!',MB_ICONINFORMATION);
   end
   else
    begin
     Testp.Position:=0;
     ProcP.Position:=0;
     Button9.Enabled:=false;
     Button10.Enabled:=true;
     Button12.Enabled:=true;
     Timer2.Enabled:=false;
     Application.MessageBox('Программа сообщает об ошибке № 973F583GH2140 по адресу адресе 0326692F:70265137G','Помощь!',MB_ICONINFORMATION);
    end;
  end;
end;

procedure TPirate.Button10Click(Sender: TObject);
begin
If dvd=true then begin
 If MainForm.Label57.Caption<>'Нет' then begin
  If hardfree>4800 then
   Timer2.Enabled:=true
  else
   Application.MessageBox('Не хватает свободного места на винте!','Помощь!',MB_ICONSTOP);
 end
 else
  Application.MessageBox('Чем сжимать будете?','Помощь!',MB_ICONSTOP);
end
else
 Application.MessageBox('Нет DVD привода!','Помощь!',MB_ICONSTOP);
end;

procedure TPirate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 MainForm.Timer1.Enabled:=true;
 Timer1.Enabled:=false;
 Timer2.Enabled:=false;
 Timer3.Enabled:=false;
 Testp.Position:=0;
 Procp.Position:=0;
 Writep.Position:=0;
 Button12.Enabled:=true;
 PageControl1.ActivePage:=Tabsheet1;
end;

procedure TPirate.Timer3Timer(Sender: TObject);
begin
 Button12.Enabled:=false;
 Button11.Enabled:=false;
 If Button13.Enabled=true then
  Button13.Enabled:=false;
 Timer3.Interval:=1025-(inetSpeed div 1000);
 If Testp.Position<200 then begin
  TestP.Position:=TestP.Position+1;
  If testp.Position>40 then
   Procp.Position:=random(100)+1;
 end
 else
  begin
   If random(15)<>4 then begin
    Testp.Position:=0;
    ProcP.Position:=0;
    Button9.Enabled:=true;
    Button11.Enabled:=false;
    Button12.Enabled:=true;
    Timer3.Enabled:=false;
    Application.MessageBox('Программа все сделала как надо! Теперь можно смело писать диск!','Помощь!',MB_ICONINFORMATION);
   end
   else
    begin
     Testp.Position:=0;
     ProcP.Position:=0;
     Button9.Enabled:=false;
     Button11.Enabled:=true;
     Button12.Enabled:=true;
     Timer3.Enabled:=false;
     Application.MessageBox('Программа выпустила недопустимую операцию и будет закрыта!','Помощь!',MB_ICONINFORMATION);
    end; 
  end;
end;

procedure TPirate.Button11Click(Sender: TObject);
begin
 If MainForm.Label58.Caption<>'Нет' then begin
  If hardfree>800 then
   Timer3.Enabled:=true
  else
   Application.MessageBox('Не хватает свободного места на винте!','Помощь!',MB_ICONSTOP);
 end
 else
  Application.MessageBox('Чем грабить будете?','Помощь!',MB_ICONSTOP);
end;
procedure TPirate.TabSheet3Show(Sender: TObject);
begin
 Label6.Caption:=IntToStr(cd)+' - болванок';
end;

procedure TPirate.TabSheet4Hide(Sender: TObject);
begin
 Timer1.Enabled:=false;
 Timer2.Enabled:=false;
 Timer3.Enabled:=false;
 Testp.Position:=0;
 Procp.Position:=0;
 Writep.Position:=0;
 Start.execute;
 Button12.Enabled:=true;
end;

procedure TPirate.Button2Click(Sender: TObject);
begin
 If MainForm.Label30.Caption<>'Нет' then begin
  If mainform.Label28.Caption<>'Нет' then begin
   SoftSelect.Caption:='Выбор программ для копирования дисков';
   dataprm:='CopyCD';
   assignfile(data,dir+'\Data\CopyCD.dat');
   SoftSelect.ShowModal;
  end
  else
   Application.MessageBox('Нет CD-ROM!','Помощь!',mb_iconstop);
 end
 else
  Application.MessageBox('Для начала необходимо установить операционную систему на компьютер!','Помощь!',MB_ICONSTOP);
end;

procedure TPirate.Button3Click(Sender: TObject);
begin
 If MainForm.Label30.Caption<>'Нет' then begin
  If mainform.Label28.Caption<>'Нет' then begin
   SoftSelect.Caption:='Выбор аудиоконвертеров';
   dataprm:='AudioEnc';
   assignfile(data,dir+'\Data\AudioEncoder.dat');
   SoftSelect.ShowModal;
  end
  else
   Application.MessageBox('Нет CD-ROM!','Помощь!',mb_iconstop);
 end
 else
  Application.MessageBox('Для начала необходимо установить операционную систему на компьютер!','Помощь!',MB_ICONSTOP);
end;

procedure TPirate.Button4Click(Sender: TObject);
begin
 If MainForm.Label30.Caption<>'Нет' then begin
  If mainform.Label28.Caption<>'Нет' then begin
   SoftSelect.Caption:='Выбор видеоконвертеров';
   dataprm:='VideoEnc';
   assignfile(data,dir+'\Data\VideoEncoder.dat');
   SoftSelect.ShowModal;
  end
  else
   Application.MessageBox('Нет CD-ROM!','Помощь!',mb_iconstop);
 end
 else
  Application.MessageBox('Для начала необходимо установить операционную систему на компьютер!','Помощь!',MB_ICONSTOP);
end;

procedure TPirate.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button1.OnClick(self);
end;

end.
