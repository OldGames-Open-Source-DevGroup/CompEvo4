unit Harry;

interface

uses
  Windows, Forms,
  Dialogs, jpeg, StdCtrls, Controls, Classes, ExtCtrls;

type
  THappy = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Happy: THappy;
  b:integer=0;

implementation
 uses Main, param, Games;

{$R *.dfm}

procedure THappy.Button1Click(Sender: TObject);
begin
 Close;
end;

procedure THappy.Button3Click(Sender: TObject);
begin
If money>=50 then begin
 If (Month<5) or (month>9) then
  Application.MessageBox('Загорать? В такую-то холодину!','Помощь!',MB_ICONINFORMATION)
 else
  begin
   If random(2)=1 then begin
    Application.MessageBox('Загорели, искупались, вернулись довольными домой!','Помощь!',MB_ICONINFORMATION);
    money:=money-50;
    nastr:=nastr+random(7);
   end
   else
    begin
     Application.MessageBox('Солнце, песок, вода... Чё вам ещё нужно?','Помощь!',MB_ICONINFORMATION);
     money:=money-50;
    end;
  end;
 end
 else
  Application.MessageBox('Нехватает деньжат...','Помощь!',MB_ICONSTOP);
end;

procedure THappy.Button2Click(Sender: TObject);
begin
 If Money>=20 then begin
  If (Vozrast>=65) and (Random(7)=5) then begin
    Application.MessageBox('Вы пошли в баню... Попарились... И вдруг вас схватил инфаркт...','Помощь!',MB_ICONSTOP);
    Application.Terminate;
  end;
  If Random(4)<>2 then begin
   Application.MessageBox('Вы пошли в баню. Хорошенько помылись, попарились. И ваше настроение заметно улучшилось!','Помощь!',MB_ICONINFORMATION);
   money:=money-20;
   nastr:=nastr+random(5);
  end
  else
   begin
    Application.MessageBox('Вы пошли в баню. Попарились, помылись. Но ваше настроение почему-то осталось прежним!','Помощь!',MB_ICONINFORMATION);
    money:=money-20;
   end;
  end
  else
   Application.MessageBox('Нехватает деньжат...','Помощь!',MB_ICONSTOP);
 end;
procedure THappy.Button4Click(Sender: TObject);
begin
If money>=100 then begin
 If random(3)<>1 then begin
  Application.MessageBox('Свежее мясо, дымок... Ах, как вкусно!','Помощь!',MB_ICONINFORMATION);
  money:=money-100;
  nastr:=nastr+random(10);
 end
 else
  begin
   Application.MessageBox('То ли мясо было жесткое... То ли дров не было...','Помощь!',MB_ICONINFORMATION);
   money:=money-100;
  end;
 end
 else
  Application.MessageBox('Нехватает деньжат...','Помощь!',MB_ICONSTOP);
end;

procedure THappy.Button5Click(Sender: TObject);
begin
If (money>=1000) then begin
 If (Application.MessageBox('Кругосветное путешествие будет длиться целый месяц! Поедем?','Помощь!',MB_ICONQUESTION+MB_YESNO)=IDYES) then begin
  MainForm.Timer1.Enabled:=false;
  If month<12 then
   inc(month)
  else
   begin
    month:=1;
    inc(year);
    inc(vozrast);
   end;
  If random(2)=0 then begin
   Application.MessageBox('Захватывающе, волнующее душу путешествие не прошло для вас даром!','Помощь!',MB_ICONINFORMATION);
   money:=money-1000;
   vlasti:=vlasti+3;
   nastr:=nastr+random(25);
  end
  else
   begin
    Application.MessageBox('Да до лампочки вам это путешествие!','Помощь!',MB_ICONINFORMATION);
    vlasti:=vlasti+2;
    money:=money-1000;
   end;
  end;
 end
 else
  Application.MessageBox('Нехватает деньжат...','Помощь!',MB_ICONSTOP);
 MainForm.Timer1.Enabled:=true;
end;

procedure THappy.FormActivate(Sender: TObject);
begin
  If MainForm.Label22.Caption='Нет' then
   Button7.Enabled:=false
  else
   If MainForm.Label24.Caption='Нет' then
    Button7.Enabled:=false
   else
    If MainForm.Label23.Caption='Нет' then
     Button7.Enabled:=false
    else
     If MainForm.Label25.Caption='Нет' then
      Button7.Enabled:=false
     else
      If MainForm.Label27.Caption='Нет' then
       Button7.Enabled:=false
      else
       If MainForm.Label69.Caption='Нет' then
        Button7.Enabled:=false
       else
        If MainForm.Label70.Caption='Нет' then
         Button7.Enabled:=false
        else
         If MainForm.Label77.Caption='Нет' then
          Button7.Enabled:=false
         else
          Button7.Enabled:=true;
 If (vozrast>40) or (vozrast<12) then
  Button6.Enabled:=false
 else
  Button6.Enabled:=true;
 If b<2 then
  inc(b);
 If b=1 then
  Application.MessageBox('Отдыхать можно и нужно!','Помощь!',MB_ICONINFORMATION);
end;

procedure THappy.Button6Click(Sender: TObject);
begin
If money>=75 then begin
 begin
  If random(4)<>1 then begin
   Application.MessageBox('Вы покорили сердце своей любимой!','Помощь!',MB_ICONINFORMATION);
   money:=money-75;
   nastr:=nastr+random(20);
  end
  else
   begin
    Application.MessageBox('Гуляя с любимой девушкой, на вас напали неизвестные. Не сумев защититься, они забрали у вас бумажник и избили!','Помощь!',MB_ICONINFORMATION);
    nastr:=nastr-7;
    money:=money-75;
   end;
 end;
end
else
 Application.MessageBox('Нехватает деньжат...','Помощь!',MB_ICONSTOP);
end;

procedure THappy.Button7Click(Sender: TObject);
begin
 Game.Showmodal;
end;

procedure THappy.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button1.OnClick(self);
end;

end.
