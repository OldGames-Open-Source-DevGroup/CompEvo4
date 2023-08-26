unit News;

interface

uses
  Windows, Forms, param, jpeg, StdCtrls, Controls, Classes, ExtCtrls, Messages;

type
  TNws = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Nws: TNws;

implementation

uses Main;

{$R *.dfm}

procedure TNws.Button1Click(Sender: TObject);
begin
 Close;
end;

procedure TNws.FormActivate(Sender: TObject);
begin
 If Memo1.Lines.Count>0 then begin
  while Memo1.Lines.Strings[0]='' do
   Memo1.lines.delete(0);
  Button2.Enabled:=true;
 end
 else
  Button2.Enabled:=false;
 Inc(nwsk);
 iF nwsk=1 then
  Application.MessageBox('Здесь отображаются все новости, которые появились за время игры.','Помощь!',MB_ICONINFORMATION);
 MainForm.Timer1.Enabled:=false;
 SendMessage(Memo1.Handle,WM_VSCROLL,SB_BOTTOM,0);
end;

procedure TNws.Button2Click(Sender: TObject);
begin
 If Application.MessageBox('Вы уверены, что хотите очистить историю?','Помощь!',MB_ICONQUESTION+MB_YESNO)=IDYES then begin
  Memo1.Lines.Clear;
  Button2.Enabled:=false;
 end;
end;

procedure TNws.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 MainForm.Timer1.Enabled:=true;
end;

procedure TNws.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button1.OnClick(self);
end;

end.
