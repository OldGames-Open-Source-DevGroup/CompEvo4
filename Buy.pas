unit Buy;

interface

uses
  Windows, SysUtils, Forms,
  param, ActnList, jpeg, StdCtrls, Controls, Classes, ExtCtrls;

type
  TComp = class(TForm)
    Image1: TImage;
    Button1: TButton;
    GroupBox1: TGroupBox;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Label1: TLabel;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    Button20: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Comp: TComp;
  b:integer=0;

implementation

uses Main, News, Monits;

{$R *.dfm}

procedure TComp.Button1Click(Sender: TObject);
begin
 Close;
end;

procedure TComp.FormActivate(Sender: TObject);
begin
 radio:=0;
 If b<2 then
  inc(b);
 If b=1 then
  Application.MessageBox('����� �� ������ ������ ��������� ������ ��� ������ ����������. ���� �� ������� ��������� ���� ���������, �� ��� ������ ������� ������������� ��� ������� ��� ������� ��������� �� ������ ��������:'+#13+#13+#9+'1. ����������� �����'+#13+#9+'2. ���������'+#13+#9+'3. ������� ����'+#13+#9+'4. ����������� ������'+#13+#9+'5. �������'+#13+#9+'6. ����������'+#13+#9+'7. ����'+#13+#9+'8. ���� ������� ��� ������','������!',MB_ICONINFORMATION);
end;

procedure TComp.Button2Click(Sender: TObject);
begin
 Compl.Caption:='����� ���������';
 assignfile(harddata,dir+'\Data\Keyboard.dat');
 hardprm:='����������';
 Compl.Showmodal;
end;

procedure TComp.Button3Click(Sender: TObject);
begin
 Compl.Caption:='����� ������������ �����';
 assignfile(harddata,dir+'\Data\Mouse.dat');
 hardprm:='����';
 Compl.Showmodal;
end;

procedure TComp.Button4Click(Sender: TObject);
begin
 Compl.Caption:='����� ��������';
 assignfile(harddata,dir+'\Data\Speakers.dat');
 hardprm:='�������';
 Compl.Showmodal;
end;

procedure TComp.Button5Click(Sender: TObject);
begin
 Compl.Caption:='����� ���������';
 assignfile(harddata,dir+'\Data\Printer.dat');
 hardprm:='�������';
 Compl.Showmodal;
end;

procedure TComp.Button6Click(Sender: TObject);
begin
 Compl.Caption:='����� ��������';
 assignfile(harddata,dir+'\Data\Scanner.dat');
 hardprm:='������';
 Compl.Showmodal;
end;

procedure TComp.Button11Click(Sender: TObject);
begin
 Compl.Caption:='����� ������������ ��������';
 assignfile(harddata,dir+'\Data\Tower.dat');
 hardprm:='������';
 Compl.Showmodal;
end;

procedure TComp.Button7Click(Sender: TObject);
begin
 Compl.Caption:='����� ����������� ����';
 assignfile(harddata,dir+'\Data\Motherboard.dat');
 hardprm:='����';
 Compl.Showmodal;
end;

procedure TComp.Button12Click(Sender: TObject);
begin
 Compl.Caption:='����� �������';
 assignfile(harddata,dir+'\Data\Cooler.dat');
 hardprm:='�����';
 Compl.Showmodal;
end;

procedure TComp.Button8Click(Sender: TObject);
begin
 Compl.Caption:='����� �����������';
 assignfile(harddata,dir+'\Data\Cpu.dat');
 hardprm:='����';
 Compl.Showmodal;
end;

procedure TComp.Button9Click(Sender: TObject);
begin
 Compl.Caption:='����� ���������';
 assignfile(harddata,dir+'\Data\Videocard.dat');
 hardprm:='������';
 Compl.Showmodal;
end;

procedure TComp.Button10Click(Sender: TObject);
begin
 Compl.Caption:='����� ������ �������';
 assignfile(harddata,dir+'\Data\Power.dat');
 hardprm:='�����';
 Compl.Showmodal;
end;

procedure TComp.Button13Click(Sender: TObject);
begin
 Compl.Caption:='����� �����������';
 assignfile(harddata,dir+'\Data\Harddisk.dat');
 hardprm:='����';
 Compl.Showmodal;
end;

procedure TComp.Button14Click(Sender: TObject);
begin
 Compl.Caption:='����� ������� ����������� ������';
 assignfile(harddata,dir+'\Data\Ram.dat');
 hardprm:='����������';
 Compl.Showmodal;
end;

procedure TComp.Button15Click(Sender: TObject);
begin
 Compl.Caption:='����� CD � DVD ��������';
 assignfile(harddata,dir+'\Data\Cdrom.dat');
 hardprm:='������';
 Compl.Showmodal;
end;

procedure TComp.Button16Click(Sender: TObject);
begin
 Compl.Caption:='����� ���������';
 assignfile(harddata,dir+'\Data\Monitor.dat');
 hardprm:='��������';
 Compl.Showmodal;
end;

procedure TComp.Button17Click(Sender: TObject);
begin
 Compl.Caption:='����� �������';
 assignfile(harddata,dir+'\Data\Modem.dat');
 hardprm:='�����';
 Compl.Showmodal;
end;

procedure TComp.Button18Click(Sender: TObject);
begin
 Compl.Caption:='����� �������� ����';
 assignfile(harddata,dir+'\Data\Sound.dat');
 hardprm:='����';
 Compl.Showmodal;
end;

procedure TComp.Button19Click(Sender: TObject);
begin
 Compl.Caption:='����� ���������� �������������� �������';
 assignfile(harddata,dir+'\Data\UPS.dat');
 hardprm:='�������������';
 Compl.Showmodal;
end;

procedure TComp.Button20Click(Sender: TObject);
begin
 Application.MessageBox('���� �� ������� ��������� ���� ���������, �� ��� ������ ������� ������������� ��� ������� ��� ������� ��������� �� ������ ��������:'+#13+#13+#9+'1. ����������� �����'+#13+#9+'2. ���������'+#13+#9+'3. ������� ����'+#13+#9+'4. ����������� ������'+#13+#9+'5. �������'+#13+#9+'6. ����������'+#13+#9+'7. ����'+#13+#9+'8. ���� ������� ��� ������','������!',MB_ICONINFORMATION);
end;

procedure TComp.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button1.OnClick(self);
end;

end.
