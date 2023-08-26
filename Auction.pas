unit Auction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, param;

type
  TICQSell = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Button3: TButton;
    Timer1: TTimer;
    Label4: TLabel;
    OneTwoThree: TTimer;
    Label5: TLabel;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure OneTwoThreeTimer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ICQSell: TICQSell;
  SellProgress:integer=0;
  SellCount:integer=0;
  SellPrice:integer=0;
  SellParam: shortstring='';

implementation

uses xk, Develop;

{$R *.dfm}

procedure TICQSell.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 If (key='0') and (((Sender as TEdit).Text='') or ((Sender as TEdit).SelLength=Length((Sender as TEdit).Text))) then
  key:=#0;
 If key in ['1'..'9'] then

 else
  If (key<>#8) and (key<>'0') then
   key:=#0;
end;

procedure TICQSell.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 IF key=VK_RETURN then
  Button1.OnClick(self);
end;

procedure TICQSell.Button1Click(Sender: TObject);
begin
 If Edit1.Text<>'' then begin
  If SellParam='ICQ' then
   If (StrToInt(Edit1.Text)<=(UnixXak+WinXak)*10) then begin
    SellPrice:=StrToInt(Edit1.Text);
    Button1.Enabled:=false;
    Edit1.Enabled:=false;
    Timer1.Enabled:=true;
   end
   else
    Application.MessageBox('А не жирно ли будет?','Помощь!',MB_ICONSTOP);
  If SellParam='MyProg' then
   If (StrToInt(Edit1.Text)<=(((20+random(5))*(znania div 2)))*10) then begin
    SellPrice:=StrToInt(Edit1.Text);
    Button1.Enabled:=false;
    Edit1.Enabled:=false;
    Timer1.Enabled:=true;
   end
   else
    Application.MessageBox('А не жирно ли будет?','Помощь!',MB_ICONSTOP);
 end;
end;

procedure TICQSell.FormActivate(Sender: TObject);
begin
 SellProgress:=0;
 Button1.Enabled:=true;
 Edit1.Enabled:=true;
 If SellParam='ICQ' then
  Label3.Caption:='ICQ номер: '+IntToStr(random(899)+100)+IntToStr(random(899)+100);
 If SellParam='MyProg' then
  Label3.Caption:=Prog;
 Label5.Caption:='';
 Label4.Caption:='';
end;

procedure TICQSell.Timer1Timer(Sender: TObject);
begin
 If SellProgress<50 then begin
  If SellParam='ICQ' then
   SellPrice:=SellPrice+random((UnixXak+WinXak)*10)+random(50);
  If SellParam='MyProg' then
   SellPrice:=SellPrice+(20+random(5))*(znania div 2);
  Label4.Caption:='Участник по имени '+Buyers.Strings[random(Buyers.Count)]+' предлагает '+IntToStr(SellPrice)+' д.е.';
  If random(3)<>2 then begin
   SellCount:=0;
   Timer1.Enabled:=false;
   OneTwoThree.Enabled:=true;
  end;
 end
 else
  begin
   SellCount:=0;
   Timer1.Enabled:=false;
   OneTwoThree.Enabled:=true;
  end;
end;

procedure TICQSell.OneTwoThreeTimer(Sender: TObject);
begin
 If (SellProgress>=50) or (random(3)<>2) then begin
  Inc(SellCount);
  If SellCount=1 then
   Label5.Caption:=IntToStr(SellPrice)+' д.е. - раз!';
  If SellCount=2 then
   Label5.Caption:=IntToStr(SellPrice)+' д.е. - два!';
  If SellCount=3 then begin
   Label5.Caption:=IntToStr(SellPrice)+' д.е. - три!';
   OneTwoThree.Enabled:=false;
   If SellParam='ICQ' then begin
    Application.MessageBox(PChar('Поздравляем вас! Украденный номер ICQ был продан за '+IntToStr(SellPrice)+' д.е.'),'Помощь!',MB_ICONINFORMATION);
    xak.PageControl1.ActivePage:=Xak.TabSheet1;
    xak.PageControl1.OnChange(self);
    xak.Close;
   end;
   If SellParam='MyProg' then begin
    Application.MessageBox(PChar('Поздравляем вас! Ваша программа была продана на аукционе за '+IntToStr(SellPrice)+' д.е.'),'Помощь!',MB_ICONINFORMATION);
    xak.PageControl1.ActivePage:=Xak.TabSheet1;
    xak.PageControl1.OnChange(self);
    xak.Close;
   end;
   Money:=Money+SellPrice;
   ICQSell.Close;
  end;
 end
 else
  begin
   Label5.Caption:='';
   OneTwoThree.Enabled:=false;
   Timer1.Enabled:=true;
  end;
end;

procedure TICQSell.Button3Click(Sender: TObject);
begin
 If SellParam='ICQ' then begin
  xak.PageControl1.ActivePage:=xak.TabSheet1;
  xak.PageControl1.OnChange(self);
  xak.Close;
 end;
 Timer1.Enabled:=false;
 OneTwoThree.Enabled:=false;
 ICQSell.Close;
end;

procedure TICQSell.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If key=VK_ESCAPE then
  Button3.OnClick(self);
end;

end.
