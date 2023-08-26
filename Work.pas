unit Work;

interface

uses
  Windows, Forms,
  param, jpeg, StdCtrls, Controls, Classes, ExtCtrls;

type
  TWrks = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    dv: TRadioButton;
    pl: TRadioButton;
    ta: TRadioButton;
    si: TRadioButton;
    pe: TRadioButton;
    me: TRadioButton;
    dr: TRadioButton;
    bi: TRadioButton;
    pr: TRadioButton;
    sh: TRadioButton;
    mo: TRadioButton;
    sl: TRadioButton;
    Button2: TButton;
    gc: TRadioButton;
    procedure WtypeClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure dvMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Wrks: TWrks;

implementation

uses Main;

{$R *.dfm}

procedure TWrks.WtypeClick(Sender: TObject);
begin
 Button1.Enabled:=true;
end;

procedure TWrks.Button1Click(Sender: TObject);
begin
  If dv.checked=true then begin
   rating:=rating+1;
   MainForm.Label36.Caption:='Дворник';
   zarpl:=40;
   close;
  end;
  If sh.checked=true then begin
   rating:=rating+1.5;
   MainForm.Label36.Caption:='Шофер';
   zarpl:=63;
   close;
  end;
  If mo.checked=true then begin
   rating:=rating+2;
   MainForm.Label36.Caption:='Монтер';
   zarpl:=84;
   close;
  end;
  If sl.checked=true then begin
   rating:=rating+2.5;
   MainForm.Label36.Caption:='Слесарь';
   zarpl:=98;
   close;
  end;
  If pl.checked=true then begin
   rating:=rating+3;
   MainForm.Label36.Caption:='Плотник';
   zarpl:=112;
   close;
  end;
  If ta.checked=true then begin
   rating:=rating+3.5;
   MainForm.Label36.Caption:='Таксист';
   zarpl:=132;
   close;
  end;
  If si.checked=true then begin
   rating:=rating+4;
   MainForm.Label36.Caption:='Сисадмин';
   zarpl:=145;
   close;
  end;
  If pe.checked=true then begin
   rating:=rating+4.5;
   MainForm.Label36.Caption:='Переводчик';
   zarpl:=152;
   close;
  end;
  If me.checked=true then begin
   rating:=rating+5;
   MainForm.Label36.Caption:='Медик';
   zarpl:=166;
   close;
  end;
  If dr.checked=true then begin
   rating:=rating+5.5;
   MainForm.Label36.Caption:='Ч. Водитель';
   zarpl:=195;
   close;
  end;
  If bi.checked=true then begin
   rating:=rating+6;
   MainForm.Label36.Caption:='Бизнесмен';
   zarpl:=221;
   close;
  end;
  If pr.checked=true then begin
   rating:=rating+8;
   MainForm.Label36.Caption:='Программист';
   zarpl:=382;
   close;
  end;
  If gc.checked=true then begin
   rating:=rating+10;
   MainForm.Label36.Caption:='Начальник';
   lastwork:=true;
   zarpl:=500;
   close;
  end;
end;

procedure TWrks.Button2Click(Sender: TObject);
begin
 Close;
end;

procedure TWrks.dvMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 Button1.Enabled:=true;
end;

procedure TWrks.FormActivate(Sender: TObject);
begin
 Button1.Enabled:=false;
 If Rating>=0 then
  dv.Enabled:=true;
 If Rating>=41 then
  sh.Enabled:=true;
 If Rating>=61 then
  mo.Enabled:=true;
 If Rating>=83 then
  sl.Enabled:=true;
 If Rating>=104 then
  pl.Enabled:=true;
 If Rating>=126 then
  ta.Enabled:=true;
 If Rating>=169 then
  si.Enabled:=true;
 If Rating>=197 then
  pe.Enabled:=true;
 If Rating>=231 then
  me.Enabled:=true;
 If Rating>=274 then
  dr.Enabled:=true;
 If Rating>=308 then
  bi.Enabled:=true;
 If Rating>=427 then
  pr.Enabled:=true;
 If Rating>=500 then
  gc.Enabled:=true;
 If MainForm.Label36.Caption='Нет' then
  dv.enabled:=true;
 If MainForm.LaBEL36.Caption='Дворник' then
  dv.checked:=true;
 If MainForm.LaBEL36.Caption='Шофер' then
  sh.checked:=true;
 If MainForm.LaBEL36.Caption='Монтер' then
  mo.checked:=true;
 If MainForm.LaBEL36.Caption='Слесарь' then
  sl.checked:=true;
 If MainForm.LaBEL36.Caption='Плотник' then
  pl.checked:=true;
 If MainForm.LaBEL36.Caption='Таксист' then
  ta.checked:=true;
 If MainForm.LaBEL36.Caption='Сисадмин' then
  si.checked:=true;
 If MainForm.LaBEL36.Caption='Переводчик' then
  pe.checked:=true;
 If MainForm.LaBEL36.Caption='Медик' then
  me.checked:=true;
 If MainForm.LaBEL36.Caption='Ч. Водитель' then
  dr.checked:=true;
 If MainForm.LaBEL36.Caption='Бизнесмен' then
  bi.checked:=true;
 If MainForm.LaBEL36.Caption='Программист' then
  pr.checked:=true;
 If MainForm.LaBEL36.Caption='Начальник' then
  gc.checked:=true;
 If MainForm.Label36.Caption='Нет' then
  Application.MessageBox('Дла начала устройтесь на какую нибудь работу. Начальный капитал оно конечно хорошо, но ведь он не резиновый, надо и деньги зарабатывать.','Помощь!',MB_ICONASTERISK);
end;

procedure TWrks.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button2.OnClick(self);
end;

end.
