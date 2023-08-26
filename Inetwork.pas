unit Inetwork;

interface

uses
  Windows, Forms, SysUtils,
  ActnList, param, main, jpeg, Classes, StdCtrls, Controls, ComCtrls,
  Graphics, ExtCtrls;

type
  TInetwrk = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet4: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    Edit1: TEdit;
    Button1: TButton;
    Button3: TButton;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Edit2: TEdit;
    ActionList1: TActionList;
    Action1: TAction;
    Button2: TButton;
    Memo2: TMemo;
    Image1: TImage;
    Answer: TAction;
    procedure Button3Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AnswerExecute(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
 s:shortstring;
 i1,k1:integer;
 a: array [1..36] of smallint;
 qe:boolean=true;
 LastDay:shortint;

implementation

{$R *.dfm}

procedure TInetwrk.Button3Click(Sender: TObject);
begin
 Close;
end;

procedure TInetwrk.Action1Execute(Sender: TObject);
var
 Q1,Q2:textfile;
 i:smallint;
begin
 If InetTraffic>=1 then begin
  k1:=0;
  Assignfile(Q1,dir+'\Inf\Iwork1.inf');
  Assignfile(Q2,dir+'\Inf\Iwork2.inf');
  reset(q1);
  reset(q2);
  Randomize;
  i:=0;
  while i<>36 do begin
   inc(i);
   If a[i]=0 then begin
    qe:=true;
    break;
   end
   else
    qe:=false;
  end;
  I1:=Random(36)+1;
  If qe=true then begin
   while a[i1]=1 do I1:=Random(36)+1;
   a[i1]:=1;
   InetTraffic:=InetTraffic-1;
  end
  else
   begin
    Application.MessageBox('К сожалению на сегодня все вопросы исчерпаны.','Помощь!',MB_ICONINFORMATION);
    lastday:=day;
    Close;
   end;
  while k1<>i1-1 do begin
   inc(k1);
   ReadLn(q1,s);
   ReadLn(q2,s);
  end;
  ReadLn(q1,s);
  Memo1.Lines.Clear;
  Memo1.Lines.Add(s);
  ReadLn(q2,s);
  Memo2.Lines.Clear;
  Memo2.Lines.Add(s);
  Closefile(q1);
  CLosefile(q2);
 end
 else
  begin
   InetTraffic:=0;
   Application.MessageBox('Закончился преоплаченный трафик за интернет. Купите больше трафика для продолжения работы!','Помощь!',MB_ICONSTOP);
   Close;
  end;
end;

procedure TInetwrk.FormActivate(Sender: TObject);
var
 i: smallint;
begin
 for i:=1 to 36 do
  a[i]:=0;
 Action1.Execute;
 MainForm.Timer1.Enabled:=false;
end;

procedure TInetwrk.Button2Click(Sender: TObject);
begin
Answer.Execute;
end;

procedure TInetwrk.Edit1Change(Sender: TObject);
begin
 If Edit1.Text<>'' then
  Button2.Enabled:=true
 else
  Button2.Enabled:=false;
end;

procedure TInetwrk.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
 Action1.Execute;

end;
procedure TInetwrk.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 MainForm.Timer1.Enabled:=true;
end;

procedure TInetwrk.AnswerExecute(Sender: TObject);
begin
{Перевод}
 If I1=1 then
  If (ANSILOWERCASE(Edit1.Text)='быть или не быть') or (ANSILOWERCASE(Edit1.Text)='быть или не быть?') then begin
   if random(6)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+10;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=2 then
  If ANSILOWERCASE(Edit1.Text)='законодательство' then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+50;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=3 then
  If (ANSILOWERCASE(Edit1.Text)='системная ошибка') or (ANSILOWERCASE(Edit1.Text)='ошибка в системе') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+10;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=4 then
  If ANSILOWERCASE(Edit1.Text)='общение' then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+15;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=5 then
  If ANSILOWERCASE(Edit1.Text)='качество' then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+17;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=6 then
  If ANSILOWERCASE(Edit1.Text)='поддержка' then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+23;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=7 then
  If (ANSILOWERCASE(Edit1.Text)='это тень висящая надо мною') or (ANSILOWERCASE(Edit1.Text)='вот тень висящая надо мной') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+41;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=8 then
  If ANSILOWERCASE(Edit1.Text)='окись' then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+15;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=9 then
  If (ANSILOWERCASE(Edit1.Text)='дисковая операционная система') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+10;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=10 then
  If (ANSILOWERCASE(Edit1.Text)='поверхность') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+20;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=11 then
  If (ANSILOWERCASE(Edit1.Text)='безопасность') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+30;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=12 then
  If (ANSILOWERCASE(Edit1.Text)='microsoft disk operation system') or (ANSILOWERCASE(Edit1.Text)='ошибка в системе') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+25;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=13 then
  If (ANSILOWERCASE(Edit1.Text)='окна') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+14;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=14 then
  If (ANSILOWERCASE(Edit1.Text)='linus unix') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+75;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=15 then
  If (ANSILOWERCASE(Edit1.Text)='луг') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+19;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=16 then
  If (ANSILOWERCASE(Edit1.Text)='имение') or (ANSILOWERCASE(Edit1.Text)='имущество') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+24;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=17 then
  If (ANSILOWERCASE(Edit1.Text)='wrote') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+26;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=18 then
  If (ANSILOWERCASE(Edit1.Text)='world wide web') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+50;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=19 then
  If (ANSILOWERCASE(Edit1.Text)='фонарь') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+60;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=20 then
  If (ANSILOWERCASE(Edit1.Text)='чеснок') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+73;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=21 then
  If (ANSILOWERCASE(Edit1.Text)='insomnia') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+50;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=22 then
  If (ANSILOWERCASE(Edit1.Text)='транспортный магнат') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+90;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=23 then
  If (ANSILOWERCASE(Edit1.Text)='акула') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+63;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=24 then
  If (ANSILOWERCASE(Edit1.Text)='railroad') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+68;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=25 then
  If (ANSILOWERCASE(Edit1.Text)='обновление') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+58;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=26 then
  If (ANSILOWERCASE(Edit1.Text)='лебедь') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+63;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=27 then
  If (ANSILOWERCASE(Edit1.Text)='в этой игре есть несколько чит кодов') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+100;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=28 then
  If (ANSILOWERCASE(Edit1.Text)='unicorn') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+71;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=29 then
  If (ANSILOWERCASE(Edit1.Text)='rest in peace') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+92;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=30 then
  If (ANSILOWERCASE(Edit1.Text)='тополь') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+80;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=31 then
  If (ANSILOWERCASE(Edit1.Text)='фарфор') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+80;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=32 then
  If (ANSILOWERCASE(Edit1.Text)='выстрел в голову') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+96;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=33 then
  If (ANSILOWERCASE(Edit1.Text)='market') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+67;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=34 then
  If (ANSILOWERCASE(Edit1.Text)='бутерброд') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+84;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=35 then
  If (ANSILOWERCASE(Edit1.Text)='international business machine') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+50;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=36 then
  If (ANSILOWERCASE(Edit1.Text)='положение') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+60;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
{Помощь}
 If I1=1 then
  If (ANSILOWERCASE(Edit2.Text)='startkde') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+25;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=2 then
  If (ANSILOWERCASE(edit2.text)='linus torvalds') or (ansilowercase(edit2.text)='линус торвальдс') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+50;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=3 then
  If ANSILOWERCASE(edit2.text)='x window' then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+60;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=4 then
  If (edit2.text='16') or (ansilowercase(edit2.text)='16 разрядная') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+32;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=5 then
  If (edit2.text='4') or (ansilowercase(edit2.text)='4 разрядные') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+70;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=6 then
  If (ANSILOWERCASE(edit2.text)='qdos') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+80;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=7 then
  If (ANSILOWERCASE(edit2.text)='netscape') or (ansilowercase(edit2.text)='netscape navigator') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+50;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=8 then
  If (ANSILOWERCASE(edit2.text)='apple') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+35;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=9 then
  If (ANSILOWERCASE(edit2.text)='os/2') or (ansilowercase(edit2.text)='os\2') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+40;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=10 then
  If (edit2.text='1') or (ansilowercase(edit2.text)='одна') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+25;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=11 then
  If (ANSILOWERCASE(edit2.text)='windows for workgroups') or (ansilowercase(edit2.text)='windows 3.11 for workgroups') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+30;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=12 then
  If (ANSILOWERCASE(edit2.text)='5 mhz') or (ansilowercase(edit2.text)='5 мгц') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+40;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=13 then
  If (ANSILOWERCASE(edit2.text)='да') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+25;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=14 then
  If (ANSILOWERCASE(edit2.text)='cmd') or (ansilowercase(edit2.text)='ntvdm') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+40;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=15 then
  If (edit2.text='8') or (ansilowercase(edit2.text)='8 бит') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+20;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=16 then
  If (ANSILOWERCASE(edit2.text)='beos') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+30;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=17 then
  If (ANSILOWERCASE(edit2.text)='wine') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+31;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=18 then
  If (ANSILOWERCASE(edit2.text)='unix') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+40;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=19 then
  If (edit2.text='32') and (edit2.text='29') and (edit2.text='30') and (edit2.text='31') and (edit2.text='33') and (edit2.text='34') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+50;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=20 then
  If (ANSILOWERCASE(edit2.text)='tracker') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+70;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=21 then
  If (ANSILOWERCASE(edit2.text)='bill gates') or (ANSILOWERCASE(edit2.Text)='билл гейтс') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+30;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=22 then
  If (edit2.text='1024') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+40;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=23 then
  If (ANSILOWERCASE(edit2.text)='dr dos') or (ANSILOWERCASE(edit2.Text)='drdos') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+60;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=24 then
  If (ANSILOWERCASE(edit2.text)='visual basic') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+90;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=25 then
  If (ANSILOWERCASE(edit2.text)='second edition') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+75;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=26 then
  If (ANSILOWERCASE(edit2.text)='2 gb') or (ANSILOWERCASE(edit2.Text)='2 гб') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+80;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=27 then
  If (ANSILOWERCASE(edit2.text)='4 тб') or (ANSILOWERCASE(edit2.Text)='4 tb') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+85;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=28 then
  If (edit2.text='8.3') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+69;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=29 then
  If (ANSILOWERCASE(edit2.text)='диспетчер программ') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+50;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=30 then
  If (ANSILOWERCASE(edit2.text)='word') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+74;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=31 then
  If (ANSILOWERCASE(edit2.text)='да') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+89;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=32 then
  If (ANSILOWERCASE(edit2.text)='memphis') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+100;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=33 then
  If (ANSILOWERCASE(edit2.text)='восстановление системы') or (ANSILOWERCASE(edit2.Text)='system restore') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+62;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=34 then
  If (ANSILOWERCASE(edit2.text)='windows nt') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+49;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=35 then
  If (ANSILOWERCASE(edit2.text)='format') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+40;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
 If I1=36 then
  If (ANSILOWERCASE(edit2.text)='k display manager') then begin
   if random(15)<>2 then begin
    Application.MessageBox('Вы ответили правильно!','Помощь!',MB_ICONINFORMATION);
    Money:=money+40;
   end
   else
    Application.MessageBox('К сожалению при пересылке денег связь оборвалась и денег вы не получите!','Помощь!',MB_ICONWARNING);
   end;
Action1.Execute;
Edit1.Clear;
Edit2.Clear;
end;

procedure TInetwrk.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key = VK_RETURN) then
  Answer.Execute;
end;

procedure TInetwrk.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key = VK_RETURN) then
  Answer.Execute;
end;

procedure TInetwrk.Edit2Change(Sender: TObject);
begin
 If Edit2.Text<>'' then
  Button2.Enabled:=true
 else
  Button2.Enabled:=false;
end;

procedure TInetwrk.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button3.OnClick(self);
end;

end.


