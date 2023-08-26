unit Hist;

interface

uses
  Windows, Forms,
  Main, param, StdCtrls, Classes, Controls;

type
  THistory = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  History: THistory;

implementation

{$R *.dfm}

procedure THistory.Button1Click(Sender: TObject);
begin
 Close;
end;

procedure THistory.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 MainForm.Timer1.Enabled:=true;
end;

procedure THistory.FormActivate(Sender: TObject);
begin
 History.Memo1.Lines.LoadFromFile(dir+'\History.txt');
 MainForm.Timer1.Enabled:=false;
end;

procedure THistory.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button1.OnClick(self);
end;

end.
