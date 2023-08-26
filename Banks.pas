unit Banks;

interface

uses
  Forms, param, StdCtrls, ComCtrls, Controls, Classes, ExtCtrls, Windows, SysUtils;

type
  TBank = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox2: TGroupBox;
    Button9: TButton;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Button3: TButton;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit2: TEdit;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Edit3: TEdit;
    Label17: TLabel;
    Button7: TButton;
    GroupBox4: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Edit4: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    Button8: TButton;
    Timer1: TTimer;
    procedure Button9Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button6Click(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
 Bank: TBank;
 b:integer=0;
 PrevMonth, CPrevMonth, IPrevMonth:smallint;
 MBCost: real;

implementation

uses Main;

{$R *.dfm}

procedure TBank.Button9Click(Sender: TObject);
begin
 Close;
end;

procedure TBank.Button1Click(Sender: TObject);
begin
 If Credit>0 then
  Application.MessageBox('Сначала погасите долг в ьанке!','Помощь!',MB_ICONSTOP)
 else
  If (Edit1.Text<>'') and (money>=StrToInt(Edit1.Text)) then begin
   Money:=money-StrToInt(Edit1.Text);
   Vklad:=Vklad+StrToInt(Edit1.Text);
   vkladp:=StrToInt(copy(label8.Caption,1,pos(' ',label8.Caption)-1));
   Label7.Caption:=IntToStr(vklad)+' д.е.';
   Button3.Enabled:=true;
  end
  else
   Application.MessageBox('Где вы возьмёте столько грошей?','Помощь!',MB_ICONSTOP);
end;

procedure TBank.Button2Click(Sender: TObject);
begin
 If (Edit1.Text<>'') and (StrToInt(Edit1.Text)<=vklad) then begin
  Money:=money+StrToInt(Edit1.Text);
  Vklad:=Vklad-StrToInt(Edit1.Text);
  Label7.Caption:=IntToStr(vklad)+' д.е.';
  If vklad<=0 then
   button3.Enabled:=false;
 end
 else
  Application.MessageBox('Не жирно ли будет!','Помощь!',MB_ICONSTOP);
end;

procedure TBank.FormActivate(Sender: TObject);
begin
 MainForm.Timer1.Enabled:=false;
 If (vklad=0) then begin
  If PrevMonth<>Month then begin
   Label8.Caption:=FloatToStr(random(13)+8)+' %';
   PrevMonth:=Month;
   Button3.Enabled:=false;
  end;
 end
 else
  begin
   Label8.Caption:=FloatToStr(vkladp)+' %';
   Button3.Enabled:=true;
  end;
 if Credit<=0 then begin
  Button6.Enabled:=false;
  If CPrevMonth<>Month then begin
   Label13.Caption:=IntToStr(random(3)+3)+' %';
   CPrevMonth:=Month;
  end;
 end
 else
  begin
   Label13.Caption:=IntToStr(CreditPercent)+' %';
   Button6.Enabled:=true;
  end;
 Label7.Caption:=FloatToStr(vklad)+' д.е.';
 Label6.Caption:=IntToStr(Credit)+' д.е.';
 Label14.Caption:=FloatToStr(Peni)+' д.е.';
 GroupBox4.Height:=0;
 Label21.Caption:=IntToStr(InetTraffic)+' Мб';
 If IPrevMonth<>Month then begin
  MBCost:=(100+random(100))/100;
  IPrevMonth:=Month;
 end;
 Label22.Caption:=FloatToStr(MBCost)+' д.е.';
 If CreditEnd>0 then begin
  If CreditEnd=1 then
   Label10.Caption:='Завтра'
  else
   If CreditEnd=2 then
    Label10.Caption:='Послезавтра'
   else
   If (CreditEnd=3) or (CreditEnd=4) then
    Label10.Caption:='через '+IntToStr(CreditEnd)+' дня'
   else
    If (CreditEnd>4) and (CreditEnd<21) then
     Label10.Caption:='через '+IntToStr(CreditEnd)+' дней'
    else
     begin
      if (CreditEnd mod 10 = 1) then
       Label10.Caption:='через '+IntToStr(CreditEnd)+' день'
      else
       if (CreditEnd mod 10 > 1) and (CreditEnd mod 10 < 5) then
        Label10.Caption:='через '+IntToStr(CreditEnd)+' дня'
       else
        if (CreditEnd mod 10 > 4) or (CreditEnd mod 10 = 0) then
         Label10.Caption:='через '+IntToStr(CreditEnd)+' дней'
     end;
 end
 else
  Label10.Caption:='-';
 Edit1.Text:=FloatToStr(Round(money));
 If b<2 then
  inc(b);
 If b=1 then
  Application.MessageBox('Здесь вы можете хранить свои сбережения или брать кредит. Кроме того через банк оплачивается интернет трафик.','Помощь!',MB_ICONINFORMATION);
end;

procedure TBank.Button3Click(Sender: TObject);
begin
 Money:=money+vklad;
 Vklad:=0;
 Label7.Caption:='0 д.е.';
 Button3.Enabled:=false;
end;

procedure TBank.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key = VK_RETURN) then
  Button1.OnClick(self);
end;

procedure TBank.Button4Click(Sender: TObject);
begin
 If (Edit2.Text<>'') and (Edit3.Text<>'') and (CreditEnd<=0) then begin
  Credit:=StrToInt(Edit2.Text);
  Money:=Money+Credit;
  CreditEnd:=StrToInt(Edit3.Text);
  CreditPercent:=StrToInt(copy(label13.Caption,1,pos(' ',label13.Caption)-1));
  Button6.Enabled:=true;
  Bank.OnActivate(self);
 end
 else
  Application.MessageBox('Вы еще не погасили предыдущий кредит!','Помощь!',MB_ICONSTOP);
end;

procedure TBank.Button5Click(Sender: TObject);
begin
 If (Edit2.Text<>'') and (Money>=StrToInt(Edit2.Text)) then begin
  If StrToInt(Edit2.Text)<=(Credit+Peni) then begin
   If Peni>0 then begin
    Peni:=Peni-StrToInt(Edit2.Text);
    Money:=Money-StrToInt(Edit2.Text);
    If Peni<0 then begin
     Credit:=Credit-Round(Peni*(-1));
     Peni:=0;
    end;
   end
   else
    begin
     Money:=Money-StrToInt(Edit2.Text);
     Credit:=Credit-StrToInt(Edit2.Text);
     If Credit<=0 then begin
      Credit:=0; Peni:=0; CreditEnd:=0;
//      Bank.OnActivate(self);
     end;
    end;
    Bank.OnActivate(self);
  end
  else
   Application.MessageBox('Нам чужих денег не надо!','Помощь!',MB_ICONSTOP);
 end
 else
  Application.MessageBox('А где денег столько возьмем?','Помощь!',MB_ICONSTOP);
end;

procedure TBank.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 MainForm.Timer1.Enabled:=true;
end;

procedure TBank.Button6Click(Sender: TObject);
begin
 If Money>=(Credit+Peni) then begin
  Money:=Money-Credit-Peni;
  Credit:=0;
  Peni:=0;
  CreditEnd:=0;
  Bank.OnActivate(self);
 end
 else
  Application.MessageBox('А где денег столько возьмем?','Помощь!',MB_ICONSTOP);
end;

procedure TBank.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key = VK_RETURN) then
  Button4.OnClick(self);
end;

procedure TBank.Timer1Timer(Sender: TObject);
begin
 If GroupBox4.Height<105 then begin
  GroupBox4.Height:=GroupBox4.Height+1;
  Button8.Repaint;
 end
 else
  begin
   Button8.Repaint;
   Timer1.Enabled:=false;
  end;
end;

procedure TBank.Button7Click(Sender: TObject);
begin
 Timer1.Enabled:=true;
end;

procedure TBank.Button8Click(Sender: TObject);
var
 i: integer;
begin
 If (Edit4.Text<>'') and (Money>=StrToInt(Edit4.Text)*MbCost) then begin
  Money:=Money-StrToInt(Edit4.Text)*MbCost;
  if InetTraffic<=0 then begin
   Login:=''; Password:=''; Telefon:='';
   for i:=0 to 7 do
    Login:=Login+ANSILOWERCASE(format('%x',[Random($F)]));
   for i:=0 to 10 do
    Password:=Password+ANSILOWERCASE(format('%x',[Random($F)]));
   for i:=0 to 6 do
    if i=0 then Telefon:=Telefon+IntToStr(Random(10)+1)
    else Telefon:=Telefon+IntToStr(Random(10));
   YourIP:=IntToStr(Random(200))+'.'+IntToStr(Random(100))+'.'+IntToStr(Random(2))+'.'+IntToStr(Random(200));
   ServerIP:=IntToStr(Random(200))+'.'+IntToStr(Random(100))+'.'+IntToStr(Random(2))+'.'+IntToStr(Random(200));
   Application.MessageBox(PChar('Спасибо, что воспользовались услугами нашего провайдера. Вам были присвоены:'+#13+'Login - '+Login+#13+'Пароль - '+Password+#13+'Телефон для дозвона - '+Telefon+#13+'Запишите эти данные на бумажечку! А вдруг пригодятся...'),'Помощь!',MB_ICONINFORMATION);
  end;
  InetTraffic:=InetTraffic+StrToInt(Edit4.Text);
  Label21.Caption:=IntToStr(InetTraffic)+' Мб';
 end
 else
  Application.MessageBox('Извините, но мы не занимаемся благотворительностью.','Помощь!',MB_ICONSTOP);
end;

procedure TBank.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button9.OnClick(self);
end;

procedure TBank.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 If (key='0') and (((Sender as TEdit).Text='') or ((Sender as TEdit).SelLength=Length((Sender as TEdit).Text))) then
  key:=#0;
 If key in ['1'..'9'] then

 else
  If (key<>#8) and (key<>'0') then
   key:=#0;
end;

end.
