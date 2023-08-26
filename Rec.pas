unit Rec;

interface

uses
  Windows, Forms, SysUtils,
  param, StdCtrls, Classes, Controls;

type
  TRecords = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Records: TRecords;

implementation

uses Main;

{$R *.dfm}

procedure TRecords.Button1Click(Sender: TObject);
begin
 Close;
end;

procedure TRecords.FormActivate(Sender: TObject);
begin
 Memo1.Lines.LoadFromFile(dir+'\Inf\Records.inf');
 MainForm.Timer1.Enabled:=false;

 If Memo1.Lines.Count>0 then begin
  while Memo1.Lines.Strings[0]=''do
   Memo1.Lines.Delete(0);
  Button2.Enabled:=true;
 end
 else
  Button2.Enabled:=false;

 Caption:='Игроки дожившие до '+IntToStr(EndYear)+' года!';
end;

procedure TRecords.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 MainForm.Timer1.Enabled:=true;
end;

procedure TRecords.Button2Click(Sender: TObject);
begin
 If Application.MessageBox('Вы действительно хотите удалить все рекорды?','Помощь!',MB_ICONQUESTION+MB_YESNO)=IDYES then begin
  Memo1.Lines.Clear;
  Button2.Enabled:=false;
 end;
end;

procedure TRecords.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button1.OnClick(self);
end;

end.
