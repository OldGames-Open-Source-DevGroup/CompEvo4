unit Chts;

interface

uses
  Windows, Forms, Controls, StdCtrls, Classes;

type
  TCheats = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
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
    Button1: TButton;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    Button2: TButton;
    Label31: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cheats: TCheats;

implementation

{$R *.dfm}

procedure TCheats.Button1Click(Sender: TObject);
begin
 Close;
end;

procedure TCheats.Button2Click(Sender: TObject);
begin
 Application.MessageBox('������-�� cheat-���� ���������� ��������������� ��� ������� ���������.'+' ��� ������������ ��� ������� ������ cheat-���, ��� ��������� ��� ���� ������ ��� ������������ �����-�� ����� �������. ��������� ����� � ������ ����� ������� ���� �������� save-�����, ��'+' ������ ����������� ��������� ����� ������. �������, cheat-���� �� ����������� �� ���� ����� � ����.'+' ���, � �� ������, ��� ��� ����� �������� ���� �� ��� ���-�� ��������, � ������ ���� �������, ��� ��� ������������� ��������� cheat-����� ��������� ������������ ����.','������!',MB_ICONINFORMATION);
end;

procedure TCheats.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button1.OnClick(self);
end;

end.
