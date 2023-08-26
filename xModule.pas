unit xModule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Param, ExtCtrls;

type
  TxForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    Button1: TButton;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    GroupBox4: TGroupBox;
    Description: TLabel;
    GroupBox5: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    GroupBox6: TGroupBox;
    Button7: TButton;
    CheckBox1: TCheckBox;
    GroupBox7: TGroupBox;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xForm: TxForm;

implementation

{$R *.dfm}

procedure TxForm.Button1Click(Sender: TObject);
begin
 Close;
end;

procedure TxForm.Button2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Description.Caption:='   �������� ����� ����� �� ���� ����������.'+#13
                     +'��������� 3% � ���������� ����������.�����������'+#13
                     +'������ �� 5 ��������.'+#13
                     +'   ���� - 19 �.�.';
end;

procedure TxForm.Button4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Description.Caption:='   ������� ��������� ����� � ���� ���������� ���'+#13
                     +'����� ������� ����������. ���� 1% � ����������'+#13
                     +'����������. �������� ����������� �� 2 �������.'+#13
                     +'   ���� - 53 �.�.';
end;

procedure TxForm.Button3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Description.Caption:='   ������ ���������� ��������� �� ������'+#13
                     +'����������. ����� ���� �������� ���������� ����'+#13
                     +'����� ������. ������������� 1% � �������.'+#13
                     +'����������� ������ �� 2 �������.'+#13
                     +'   ���� - 28 �.�.';
end;

procedure TxForm.Button5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Description.Caption:='   ���������� ������� ����� �� ������ ����������'+#13
                     +'�� ����� �� ������������� ���� � ���� �������'+#13
                     +'�������. ���� 5% � ���������� ����������. �������'+#13
                     +'����������� �������� 8 ��������.'+#13
                     +'   ���� - 117 �.�.';
end;

procedure TxForm.Button6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Description.Caption:='   �������� ����� ����������� ������� ����������'+#13
                     +'���� ����������. ����� ������� �������� �����'+#13
                     +'���������� � ����� �����. ������������� 7% �'+#13
                     +'���������� ���������� ����������. ����� ����'+#13
                     +'����������� ������ �� 10 ��������.'+#13
                     +'   ���� - 236 �.�.';
end;

procedure TxForm.Button2Click(Sender: TObject);
begin
 if Money>=19 then begin
  Money:=money-19;
  Button2.Enabled:=false;
  Button9.Enabled:=true;
 end
 else
  Application.MessageBox('�� ���� ��������� � ��� ��� �����!','������!',MB_ICONSTOP);
end;

procedure TxForm.Button4Click(Sender: TObject);
begin
 if Money>=53 then begin
  Money:=money-53;
  Button4.Enabled:=false;
  Button8.Enabled:=true;
 end
 else
  Application.MessageBox('�� ���� ��������� � ��� ��� �����!','������!',MB_ICONSTOP);
end;

procedure TxForm.Button5Click(Sender: TObject);
begin
 if Money>=117 then begin
  Money:=money-117;
  Button5.Enabled:=false;
  Button7.Enabled:=true;
 end
 else
  Application.MessageBox('�� ���� ��������� � ��� ��� �����!','������!',MB_ICONSTOP);
end;

procedure TxForm.Button3Click(Sender: TObject);
begin
 if Money>=28 then begin
  Money:=money-28;
  Button3.Enabled:=false;
  CheckBox1.Enabled:=true;
 end
 else
  Application.MessageBox('�� ���� ��������� � ��� ��� �����!','������!',MB_ICONSTOP);
end;

procedure TxForm.Button6Click(Sender: TObject);
begin
 if Money>=236 then begin
  Money:=money-236;
  Button6.Enabled:=false;
  Button10.Enabled:=true;
 end
 else
  Application.MessageBox('�� ���� ��������� � ��� ��� �����!','������!',MB_ICONSTOP);
end;

procedure TxForm.Button7Click(Sender: TObject);
begin
 xDone:=true;
 If CheckBox1.Checked then begin
  VideoPercent:=VideoPercent+6;
  VideoTemp:=VideoTemp-10;
 end
 else
  begin
   VideoPercent:=VideoPercent+5;
   VideoTemp:=VideoTemp-8;
  end;
 Button7.Enabled:=false;
end;

procedure TxForm.Button8Click(Sender: TObject);
begin
 xDone:=true;
 VideoPercent:=VideoPercent+1;
 VideoTemp:=VideoTemp-2;
 Button8.Enabled:=false;
end;

procedure TxForm.Button9Click(Sender: TObject);
begin
 xDone:=true;
 VideoPercent:=VideoPercent+3;
 VideoTemp:=VideoTemp-5;
 Button9.Enabled:=false;
end;

procedure TxForm.Button10Click(Sender: TObject);
begin
 xDone:=true;
 VideoPercent:=VideoPercent+7;
 VideoTemp:=VideoTemp-10;
 Button10.Enabled:=false;
 Button9.Enabled:=false;
 Button8.Enabled:=false;
end;

procedure TxForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button1.OnClick(self);
end;

end.
