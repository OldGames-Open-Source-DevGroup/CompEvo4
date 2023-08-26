unit About;

interface

uses
  Windows, Forms, Buttons, param, shellapi,
  Controls, Classes, StdCtrls, ExtCtrls, jpeg;

type
  TAbt = class(TForm)
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    Label1: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    GroupBox4: TGroupBox;
    Memo2: TMemo;
    SpeedButton3: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label7Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Abt: TAbt;

implementation

uses Main;

{$R *.dfm}

procedure TAbt.Button1Click(Sender: TObject);
begin
 Close;
end;

procedure TAbt.Label1Click(Sender: TObject);
begin
 ShellExecute(Handle,nil,'http://www.RPprogs.narod.ru',nil,nil,handle);
end;

procedure TAbt.Label3Click(Sender: TObject);
begin
 ShellExecute(Handle,nil,'mailto:RPsoft@mail.ru',nil,nil,handle);
end;

procedure TAbt.FormActivate(Sender: TObject);
begin
	Label9.Caption := MainForm.Label45.Caption;
	MainForm.Timer1.Enabled := false;
end;

procedure TAbt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 MainForm.Timer1.Enabled:=true;
end;

procedure TAbt.Label7Click(Sender: TObject);
begin
 ShellExecute(Handle,nil,'mailto:RPsoft@mail.ru',nil,nil,handle);
end;

procedure TAbt.SpeedButton1Click(Sender: TObject);
begin
 Close;
end;

procedure TAbt.SpeedButton2Click(Sender: TObject);
begin
 If SpeedButton2.Caption='� ���������...' then begin
  SpeedButton2.Caption:='���� ������';
  GroupBox3.Visible:=false;
  GroupBox4.Visible:=false;
  GroupBox3.SendToBack;
  GroupBox3.SendToBack;
 end
 else
  If SpeedButton2.Caption='���� ������' then begin
   SpeedButton2.Caption:='�������������';
   GroupBox3.Visible:=true;
   GroupBox3.BringToFront;
   GroupBox4.SendToBack;
   GroupBox4.Visible:=false;
  end
  else
   If SpeedButton2.Caption='�������������' then begin
    SpeedButton2.Caption:='� ���������...';
    GroupBox3.Visible:=false;
    GroupBox3.SendToBack;
    GroupBox4.BringToFront;
    GroupBox4.Visible:=true;
   end
end;

procedure TAbt.SpeedButton2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 If SpeedButton2.Caption='� ���������...' then
  SpeedButton2.Hint:='���������� ���������� �� ������ ���������.';
 If SpeedButton2.Caption='���� ������' then
  SpeedButton2.Hint:='����������� �������� � ���� ������ �� ������������� � ����.';
 If SpeedButton2.Caption='�������������' then
  SpeedButton2.Hint:='��� ��� �������� ��� ����, ��� � ���� ������������ ������ ��������� �����.';
end;

procedure TAbt.SpeedButton3Click(Sender: TObject);
begin
 Application.MessageBox('����� ������������ ��� ��������� ����� ����� ������ WebMoney ������ ����������� ��� ������ �� ���� �� ���������:'+#13+#13+'��� ������������ � �������� - Z209458620841'+#13+'��� ������������ � ������ - R447039166666'+#13+'��� ������������ � ���� - E038304727957'+#13+'��� ������������ � ������� - U212312166639','������!',MB_ICONINFORMATION);
end;

procedure TAbt.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  SpeedButton1.OnClick(self);
end;

end.
