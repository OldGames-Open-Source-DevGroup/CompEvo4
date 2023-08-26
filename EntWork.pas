unit EntWork;

interface

uses
  Windows, Forms,
  ActnList, param, ExtCtrls, Classes, ComCtrls, Controls, StdCtrls;

type
  TExt = class(TForm)
    Image1: TImage;
    Memo1: TMemo;
    Button1: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Memo2: TMemo;
    Button2: TButton;
    Button3: TButton;
    ProgressBar1: TProgressBar;
    Button4: TButton;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Timer1: TTimer;
    procedure Action1Execute(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
 Ext: TExt;
 rnd:integer;

implementation

uses Main;

{$R *.dfm}

procedure TExt.Action1Execute(Sender: TObject);
var
 vac:textfile;
 i:integer;
 s:string;
begin
 If InetTraffic>=1 then begin
  memo2.Lines.Clear;
  Button4.Enabled:=true;
  assignfile(vac,dir+'\Inf\Text.inf');
  reset(vac);
  rnd:=random(9);
  for i:=0 to rnd do
   readln(vac,s);
  Memo2.Lines.Add(s);
  closefile(vac);
  InetTraffic:=InetTraffic-1;
  Action2.Execute;
 end
 else
  begin
   InetTraffic:=0;
   Application.MessageBox('Закончился преоплаченный трафик за интернет. Купите больше трафика для продолжения работы!','Помощь!',MB_ICONSTOP);
   Close;
  end;
end;

procedure TExt.Button4Click(Sender: TObject);
begin
 Action1.Execute;
end;

procedure TExt.FormActivate(Sender: TObject);
begin
 MainForm.Timer1.Enabled:=false;
 Action1.Execute;
 ProgressBar1.SetFocus;
end;

procedure TExt.Button1Click(Sender: TObject);
begin
 Timer1.Enabled:=false;
 ProgressBar1.Position:=0;
 Close;
end;

procedure TExt.Action2Execute(Sender: TObject);
begin
 Button2.Enabled:=false;
 Button3.Enabled:=false;
 If (rnd=2) or (rnd=3) or (rnd=8) or (rnd=5) or (rnd=9) or (rnd=10) or (rnd=11) then
  Button2.Enabled:=true;
 If (rnd=1) or (rnd=4) or (rnd=0) or (rnd=6) or (rnd=7) or (rnd=4) then
  Button3.Enabled:=true;
end;

procedure TExt.Button2Click(Sender: TObject);
begin
 If MainForm.Label74.Caption<>'Нет' then begin
  If InetTraffic>=2 then begin
   if (1000-3-printing*25) < 0 then
    Timer1.Interval:=1
   else
    Timer1.Interval:=1000-3-printing*25;
   Button2.Enabled:=false;
   Button3.Enabled:=false;
   Button4.Enabled:=false;
   InetTraffic:=InetTraffic-2;
   Timer1.Enabled:=true;
  end
  else
   Application.MessageBox('Заказчик хочет переслать файлы размером 2 Мб. У вас недостаточно преоплаченного трафика для подобной загрузки!','Помощь!',MB_ICONSTOP);
 end
 else
  Application.MessageBox('Так нема у вас принтера!','Помощь!',MB_ICONSTOP);
end;

procedure TExt.Button3Click(Sender: TObject);
begin
 If MainForm.Label75.Caption<>'Нет' then begin
  If InetTraffic>=5 then begin
   If (1000-3-scanning*25) < 0 then
    Timer1.Interval:=1
   else
    Timer1.Interval:=1000-3-scanning*25;
   Button2.Enabled:=false;
   Button3.Enabled:=false;
   Button4.Enabled:=false;
   InetTraffic:=InetTraffic-5;
   timer1.Enabled:=true;
  end
  else
   Application.MessageBox('Заказчик хочет переслать файлы размером 5 Мб. У вас недостаточно преоплаченного трафика для подобной загрузки!','Помощь!',MB_ICONSTOP);
 end
 else
  Application.MessageBox('А чем это вы собираетесь сканировать?','Помощь!',MB_ICONSTOP);
end;

procedure TExt.Timer1Timer(Sender: TObject);
begin
 If ProgressBar1.Position<100 then
  ProgressBar1.Position:=ProgressBar1.Position+2
 else
  begin
   Timer1.Enabled:=false;
   GroupBox2.Enabled:=true;
   ProgressBar1.Position:=0;
   If random(5)<>2 then begin
    Application.MessageBox('Вот что значит взаимное уважение!','Помощь!',MB_ICONINFORMATION);
    money:=money+300;
    Action1.Execute;
   end
   else
    begin
     Application.MessageBox('Да. Обманщиков везде хватает.','Помощь!',MB_ICONINFORMATION);
     Action1.Execute;
    end;
  end;
end;

procedure TExt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 MainForm.Timer1.Enabled:=true;
end;

procedure TExt.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button1.OnClick(self);
end;

end.
