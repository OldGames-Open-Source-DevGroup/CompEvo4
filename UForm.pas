unit UForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, param;

type
  TUpdateForm = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UpdateForm: TUpdateForm;
  Updates:integer;
  MBNeed:integer;

implementation

uses Main;

{$R *.dfm}

procedure TUpdateForm.Button2Click(Sender: TObject);
begin
 Close;
end;

procedure TUpdateForm.FormActivate(Sender: TObject);
begin
 MainForm.Timer1.Enabled:=false;
 If AntivCount>45 then
  Updates:=(AntivCount div 5)
 else
  Updates:=0;
 MBNeed:=Updates div 3;
  Label2.Caption:=MainForm.Label30.Caption;
 Label4.Caption:=IntToStr(inetspeed)+' бит/сек';
 Label6.Caption:=IntToStr(Updates);
 Label8.Caption:=IntToStr(MBNeed)+' Мб';
 ProgressBar1.Position := 0;
 If Updates>0 then
  Button1.Enabled:=true
 else
  Button1.Enabled:=false;
end;

procedure TUpdateForm.Button1Click(Sender: TObject);
begin
 If InetTraffic>=MBNeed then begin
  Timer1.Interval:=1025-(InetSpeed div 1000);
  Button1.Enabled:=false;
  Timer1.Enabled:=true;
 end
 else
  Application.MessageBox('Невозможно закачать все обновления для операционной системы поскольку недостаточно преоплаченного трафика за интернет.','Помощь!',MB_ICONSTOP);
end;

procedure TUpdateForm.Timer1Timer(Sender: TObject);
begin
 If ProgressBar1.Position<ProgressBar1.Max then
  ProgressBar1.Position:=ProgressBar1.Position+InetSpeed
 else
  begin
   ProgressBar1.Position:=0;
   Updates:=Updates-1;
   If Updates>2 then
    InetTraffic:=InetTraffic-(MBneed div (Updates div 2));
   Label6.Caption:=IntToStr(Updates);
   If Updates<=0 then begin
    Timer1.Enabled:=false;
    Button1.Enabled:=false;
    Application.MessageBox('Загрузка обновлений успешно завершена!','Система загрузки обновлений',MB_ICONINFORMATION);
    AntivCount:=0;
   end;
  end;
end;

procedure TUpdateForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 If Timer1.Enabled=true then begin
  Timer1.Enabled:=false;
  CanClose:=Application.MessageBox('Внимание! Загрузка обновлений еще не завершена. Рекомендуется дождаться загрузки всех обновлений на компьютер. В противном случае мы не можем гарантировать полную защиту вашего компьютера! Подтверждаете операцию выхода?','Внимание!',MB_ICONWARNING+MB_YESNO)=IDYES;
  If not CanClose then
   Timer1.Enabled:=true
  else
   MainForm.Timer1.Enabled:=true;
 end
 else
  MainForm.Timer1.Enabled:=true;
end;

procedure TUpdateForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button2.OnClick(self);
end;

end.
