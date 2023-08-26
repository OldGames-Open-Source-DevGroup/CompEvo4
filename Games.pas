unit Games;

interface

uses
  Windows, Forms, SysUtils,
  jpeg, param, Controls, StdCtrls, ExtCtrls, Classes;

type
  TGame = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Button1: TButton;
    ComboBox1: TComboBox;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
 Game: TGame;

implementation

uses Main, SoftSel;

{$R *.dfm}

procedure TGame.FormActivate(Sender: TObject);
var
 i:shortint;
begin
 ComboBox1.Clear;
 If MainForm.Label76.Caption='Встроенная' then
  Label2.Caption:=MainForm.Label23.Caption
 else
  Label2.Caption:=MainForm.Label76.Caption;
 for i:=0 to GamesList.Count-1 do
  ComboBox1.Items.Add(copy(GamesList.Strings[i],1,pos(#9,GamesList.Strings[i])-1));
 If GamesList.Count=0 then
  Button2.Enabled:=false
 else
  begin
   ComboBox1.ItemIndex:=0;
   Button2.Enabled:=true;
  end;
end;

procedure TGame.Button1Click(Sender: TObject);
begin
 If mainform.Label28.Caption<>'Нет' then begin
  If MainForm.Label30.Caption<>'Нет' then begin
   assignfile(data,dir+'\Data\Games.dat');
   dataprm:='Games';
   SoftSelect.Caption:='Выбор игр';
   SoftSelect.Showmodal;
  end
  else
   Application.MessageBox('Нет операционной системы на компьютере!','Помощь!',MB_ICONSTOP);
 end
 else
  Application.MessageBox('Нет CD-ROM!','Помощь!',mb_iconstop);
end;

procedure TGame.Button3Click(Sender: TObject);
begin
 close;
end;

procedure TGame.Button2Click(Sender: TObject);
var
 i:shortint;
 Req:integer;
begin
 If LastGame=ComboBox1.Items.Strings[ComboBox1.ItemIndex] then
  toshn:=toshn+3
 else
  toshn:=0;
 If (toshn>9) and (toshn<13) then begin
  nastr:=nastr-5;
  Application.MessageBox('Вас уже не тошнит от этой игры?','Помощь!',MB_ICONINFORMATION);
 end
 else
  If toshn>14 then begin
   nastr:=nastr-20;
   Application.MessageBox('Вас стошнило от этой игры...','Помощь!',MB_ICONINFORMATION);
  end
  else
   begin
    for i:=0 to GamesList.Count-1 do
     If copy(GamesList.Strings[i],1,pos(#9,GamesList.Strings[i])-1)=ComboBox1.Items.Strings[ComboBox1.ItemIndex] then
      Req:=StrToInt(copy(GamesList.Strings[i],pos(#9,GamesList.Strings[i])+1,255));
    If Label2.Caption<>MainForm.Label23.Caption then begin
     If (videospeed+videoclock)>=Req then begin
      nastr:=nastr+3;
      Application.MessageBox('Хорошо проведя время за игрой ваше настроение заметно улучшилось.','Помощь!',MB_ICONINFORMATION);
     end
     else
      Application.MessageBox('Ужасные тормоза в игре вывели вас из себя. Может стоит заменить видеокарту?','Помощь!',MB_ICONSTOP);
    end
    else
     If ((cpuspeed+cpuclock+htt+ramspeed*10+hardspeed+defragspeed) div 4)>=Req then begin
      nastr:=nastr+3;
      Application.MessageBox('Хорошо проведя время за игрой ваше настроение заметно улучшилось.','Помощь!',MB_ICONINFORMATION);
     end
     else
      Application.MessageBox('Ужасные тормоза в игре вывели вас из себя. Может стоит заменить видеокарту?','Помощь!',MB_ICONSTOP);
   end;
 LastGame:=ComboBox1.Items.Strings[ComboBox1.ItemIndex];
end;

procedure TGame.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button3.OnClick(self);
end;

procedure TGame.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 MainForm.Timer1.Enabled:=true;
end;

end.
