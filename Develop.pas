unit Develop;

interface

uses
  Windows, SysUtils, Forms, Dialogs, Main,
  param, ExtCtrls, Controls, StdCtrls, ComCtrls, Classes, ActnList;

type
  TDevelopment = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Button1: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
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
    Label4: TLabel;
    Timer1: TTimer;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    Memo1: TMemo;
    RadioGroup1: TRadioGroup;
    Button18: TButton;
    ListBox1: TListBox;
    RadioGroup2: TRadioGroup;
    Compile: TTimer;
    GroupBox5: TGroupBox;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    RadioGroup3: TRadioGroup;
    GroupBox8: TGroupBox;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    ActionList1: TActionList;
    CompileProg: TAction;
    Memo2: TMemo;
    ActionList2: TActionList;
    Action1: TAction;
    Image1: TImage;
    ProgressBar1: TProgressBar;
    Timer2: TTimer;
    ProgressBar2: TProgressBar;
    Label1: TLabel;
    Timer3: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure TabSheet3Hide(Sender: TObject);
    procedure CompileTimer(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure CompileProgExecute(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer3Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Development: TDevelopment;
  compl:integer=0;
  Errors:integer=0;
  DetectErrors:boolean=false;
  Prog:shortstring;

implementation

uses Auction;

{$R *.dfm}

procedure TDevelopment.Button1Click(Sender: TObject);
begin
 Close;
end;

procedure TDevelopment.FormActivate(Sender: TObject);
var
 i: integer;
begin
 MainForm.Timer1.Enabled:=false;
 Timer1.Enabled:=true;
 PageControl1.ActivePage:=Tabsheet1;
 ProgressBar2.Position:=StudyProgress;
 If IsStudy then
  for i:=1 to ComponentCount-1 do
   If (Components[i].Tag>55) and (Components[i].Tag<60) then
    (Components[i] as TButton).Enabled:=false;
end;

procedure TDevelopment.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Timer1.Enabled:=false;
end;

procedure TDevelopment.Timer1Timer(Sender: TObject);
begin
If not isStudy then begin
 {Assembler}
  case ass of
   0: begin
       Button2.Enabled:=true;
       Button3.Enabled:=false;
       Button4.Enabled:=false;
       Button5.Enabled:=false;
      end;
   1: begin
       Button2.Enabled:=false;
       Button3.Enabled:=true;
      end;
   2: begin
       Button2.Enabled:=false;
       Button3.Enabled:=false;
       Button4.Enabled:=true;
      end;
   3: begin
       Button2.Enabled:=false;
       Button3.Enabled:=false;
       Button4.Enabled:=false;
       Button5.Enabled:=true;
      end;
   4: begin
       Button2.Enabled:=false;
       Button3.Enabled:=false;
       Button4.Enabled:=false;
       Button5.Enabled:=false;
      end;
  end;
 {Pascal}
  case pas of
   0: begin
       Button10.Enabled:=true;
       Button11.Enabled:=false;
       Button12.Enabled:=false;
       Button13.Enabled:=false;
      end;
   1: begin
       Button10.Enabled:=false;
       Button11.Enabled:=true;
      end;
   2: begin
       Button10.Enabled:=false;
       Button11.Enabled:=false;
       Button12.Enabled:=true;
      end;
   3: begin
       Button10.Enabled:=false;
       Button11.Enabled:=false;
       Button12.Enabled:=false;
       Button13.Enabled:=true;
      end;
   4: begin
       Button10.Enabled:=false;
       Button11.Enabled:=false;
       Button12.Enabled:=false;
       Button13.Enabled:=false;
      end;
  end;
 {C++}
  case cpp of
   0: begin
       Button6.Enabled:=true;
       Button7.Enabled:=false;
       Button8.Enabled:=false;
       Button9.Enabled:=false;
      end;
   1: begin
       Button6.Enabled:=false;
       Button7.Enabled:=true;
      end;
   2: begin
       Button6.Enabled:=false;
       Button7.Enabled:=false;
       Button8.Enabled:=true;
      end;
   3: begin
       Button6.Enabled:=false;
       Button7.Enabled:=false;
       Button8.Enabled:=false;
       Button9.Enabled:=true;
      end;
   4: begin
       Button6.Enabled:=false;
       Button7.Enabled:=false;
       Button8.Enabled:=false;
       Button9.Enabled:=false;
      end;
  end;
 {Basic}
  case bas of
   0: begin
       Button14.Enabled:=true;
       Button15.Enabled:=false;
       Button16.Enabled:=false;
       Button17.Enabled:=false;
      end;
   1: begin
       Button14.Enabled:=false;
       Button15.Enabled:=true;
      end;
   2: begin
       Button14.Enabled:=false;
       Button15.Enabled:=false;
       Button16.Enabled:=true;
      end;
   3: begin
       Button14.Enabled:=false;
       Button15.Enabled:=false;
       Button16.Enabled:=false;
       Button17.Enabled:=true;
      end;
   4: begin
       Button14.Enabled:=false;
       Button15.Enabled:=false;
       Button16.Enabled:=false;
       Button17.Enabled:=false;
      end;
  end;
 end
 else
  ProgressBar2.Position:=30-StudyProgress;
{����������� ������� �������� ��������}
 If znania>0 then
  tabsheet3.TabVisible:=true
 else
  Tabsheet3.TabVisible:=false;
{������� ������}
 If znania<=1 then
  Label4.Caption:='����������� ������: ������ ����';
 If (znania>1) and (znania<=20) then
  Label4.Caption:='����������� ������: ����� ����';
 If (znania>20) and (znania<=40) then
  Label4.Caption:='����������� ������: �������';
 If (znania>40) and (znania<=59) then
  Label4.Caption:='����������� ������: ������';
 If (znania>59) and (znania<=65) then
  Label4.Caption:='����������� ������: �����';
 If (znania>65) and (znania<=71) then
  Label4.Caption:='����������� ������: ����� �����';
 If (znania>71) then
  Label4.Caption:='����������� ������: �������� ������ ����������';
end;

procedure TDevelopment.Button18Click(Sender: TObject);
var
 IsOK:boolean;
 Temp: shortstring;
 BasE, PasE, cE: boolean;
begin
 BasE:=false; PasE:=false; cE:=false;
 Temp:=devType+'|';
 repeat
  if copy(Temp,1,pos('|',Temp)-1)='bas' then
   BasE:=true;
  if copy(Temp,1,pos('|',Temp)-1)='c' then
   cE:=true;
  if copy(Temp,1,pos('|',Temp)-1)='pas' then
   PasE:=true;
  Temp:=copy(Temp,pos('|',Temp)+1,255);
 until
  Pos('|',Temp)=0;

 IsOK:=true;
 case RadioGroup1.ItemIndex of
  0: begin
      If bas<=0 then begin
       Application.MessageBox('���� �� ������ ������� �� ����? ��?','������!',MB_ICONSTOP);
       IsOK:=false;
      end;
      If not BasE then begin
       Application.MessageBox('��� ���������������� �� ���� ����� �� ����������� ��������������� ����� ����������!','������!',MB_ICONSTOP);
       IsOK:=false;
      end;
     end;
  1: begin
      If pas<=0 then begin
       Application.MessageBox('���� �� ������ ������� �� ����? ��?','������!',MB_ICONSTOP);
       IsOK:=false;
      end;
      If not PasE then begin
       Application.MessageBox('��� ���������������� �� ���� ����� �� ����������� ��������������� ����� ����������!','������!',MB_ICONSTOP);
       IsOK:=false;
      end;
     end;
  2: begin
      If cpp<=0 then begin
       Application.MessageBox('���� �� ������ ������� �� ����? ��?','������!',MB_ICONSTOP);
       IsOK:=false;
      end;
      If not cE then begin
       Application.MessageBox('��� ���������������� �� ���� ����� �� ����������� ��������������� ����� ����������!','������!',MB_ICONSTOP);
       IsOK:=false;
      end;
     end;
  3:  If ass<=0 then begin
       Application.MessageBox('���� �� ������ ������� �� ����? ��?','������!',MB_ICONSTOP);
       IsOK:=false;
      end;
 end;
 If IsOK then begin
  znania:=znania+1;
  RadioGroup1.Enabled:=false;
  RadioGroup3.Enabled:=true;
  Button18.Enabled:=false;
 end;
end;

procedure TDevelopment.TabSheet3Hide(Sender: TObject);
begin
 Memo1.Lines.Clear;
 ListBox1.Items.Clear;
 Button23.Enabled:=false;
 Button24.Enabled:=false;
 Button25.Enabled:=false;
 Button26.Enabled:=false;
 ListBox1.Items.Clear;
 RadioGroup2.Items.Clear;
 RadioGroup1.Enabled:=true;
 RadioGroup3.ItemIndex:=-1;
 RadioGroup3.Enabled:=false;
 GroupBox8.Enabled:=true;
 ProgressBar1.Position:=0;
 Button18.Enabled:=true;
 RadioGroup2.Visible:=false;
 Compile.Enabled:=false;
 DetectErrors:=false;
 Timer2.Enabled:=false;
 Compl:=0;
end;

procedure TDevelopment.CompileTimer(Sender: TObject);
begin
 inc(compl);
 If compl=1 then begin
 If (random(12)<>7) then
  ListBox1.Items.Add('������������� �������� ����������')
 else
  begin                
   Listbox1.Items.Add('���������� ���������������� ����������!');
   Compile.Enabled:=false;
   RadioGroup2.Visible:=true;
   RadioGroup2.Enabled:=true;
   RadioGroup2.Items.Clear;
   RadioGroup2.Items.Add('����������� ��������������� ��������� ������');
   RadioGroup2.Items.Add('������������� ������� � ����������� ��������������� ��������� ������');
   RadioGroup2.Items.Add('������� �� �������� ���������');
  end;
 end;
 If (compl=4) then begin
 If (random(15)<>3) then
  ListBox1.Items.Add('�������� ���������� ����')
 else
  begin
   Listbox1.Items.Add('� �������� ���� ��������� ���� ������!');
   Compile.Enabled:=false;
   RadioGroup2.Enabled:=true;
   RadioGroup2.Visible:=true;
   RadioGroup2.Items.Clear;
   RadioGroup2.Items.Add('���������� �������� ��� ���������');
   RadioGroup2.Items.Add('������� �� �������� ���������');
  end;
 end;
 If compl=7 then begin
 If (random(14)<>7) then
  ListBox1.Items.Add('�������� ����������� DLL')
 else
  begin                
   Listbox1.Items.Add('�� ������� ����������� DLL ����������!');
   Compile.Enabled:=false;
   RadioGroup2.Enabled:=true;
   RadioGroup2.Visible:=true;
   RadioGroup2.Items.Clear;
   RadioGroup2.Items.Add('����� ����������� DLL � ���������');
   RadioGroup2.Items.Add('�������������� ����� ����������');
   RadioGroup2.Items.Add('����������� ������ �������� ����������� DLL');
   RadioGroup2.Items.Add('������� �� �������� ���������');
  end;
 end;
 If compl=10 then begin
 If (random(13)<>5) then
  ListBox1.Items.Add('������� ����������')
 else
  begin                
   Listbox1.Items.Add('������ ������� ����������!');
   Compile.Enabled:=false;
   RadioGroup2.Enabled:=true;
   RadioGroup2.Visible:=true;
   RadioGroup2.Items.Clear;
   RadioGroup2.Items.Add('������������� ����������');
   RadioGroup2.Items.Add('������������� �������, � ����� ��������� ����������');
   RadioGroup2.Items.Add('������� �� �������� ���������');
  end;
 end;
 If compl=17 then begin
 If random(15)<>6 then
  ListBox1.Items.Add('�������� ����������� ������')
 else
  begin
   Listbox1.Items.Add('��������� �� ��������� � ������!');
   Compile.Enabled:=false;
   RadioGroup2.Enabled:=true;
   RadioGroup2.Visible:=true;
   RadioGroup2.Items.Clear;
   RadioGroup2.Items.Add('�������������� ����� ����������');
   RadioGroup2.Items.Add('������������� �������, � ����� ��������� ����������');
   RadioGroup2.Items.Add('�������� � ��������� ����� ������ ����������� ��� ����� ����������');
   RadioGroup2.Items.Add('������� �� �������� ���������');
  end;
 end;
 If compl=19 then begin
 If random(15)<>7 then
  ListBox1.Items.Add('������ ���������� �� ����')
 else
  begin
   Listbox1.Items.Add('������ ������ �� ����!');
   Compile.Enabled:=false;
   RadioGroup2.Enabled:=true;
   RadioGroup2.Visible:=true;
   RadioGroup2.Items.Clear;
   RadioGroup2.Items.Add('��������� ���� �� ������� ������');
   RadioGroup2.Items.Add('�������� �������������� �����');
   RadioGroup2.Items.Add('������������� ������� � ����������� ��������������� ��������� ������');
   RadioGroup2.Items.Add('������� �� �������� ���������');
  end;
 end;
 If compl=20 then begin
  ListBox1.Items.Add('��� �������� ���������.');
  If RadioGroup3.ItemIndex<>2 then begin
   If not DetectErrors then begin
    Errors:=(100-Round(znania)) div 2;
    case RadioGroup1.ItemIndex of
     0: If bas>=2 then Button25.Enabled:=true;
     1: If pas>=2 then Button25.Enabled:=true;
     2: If cpp>=3 then Button25.Enabled:=true;
     3: If ass>=3 then Button25.Enabled:=true;
    end;
    Button26.Enabled:=true;
    Button24.Enabled:=true;
   end
   else
    begin
     DetectErrors:=false;
     Timer2.Enabled:=true;
    end;
  end
  else
   If (znania>62) and (random(2)<>1) then begin
    HackPrograms.Add('������� �����');
    Application.MessageBox('������ ������� ����� ��� ����� ������������ ��� ������ ��������� �����.','������!',MB_ICONINFORMATION);
   end
   else
    If MainForm.Label31.Caption<>'���' then begin
     If MainForm.Label51.Caption='���' then begin
      Vlasti:=Vlasti-1;
      Money:=Money-400;
      Application.MessageBox('���������� ��������� ��������� �������������� ���� �� ����� ����������. ����������� ���� ��� ���������� ��������� � ������������ �����������. ��������� ������� ������ ��������� ��, �� ����� ������ ��� ���� ��� ������� �� �����������'+' ��������� ������������ �������� 400 �.�.','������!',MB_ICONSTOP);
     end
     else
      Application.MessageBox('���������� ��������� ��������� �������������� ���� �� ����� ����������. �� ����� ��������� ��� � ������������ ����������� �� ������, �� ���������� ������� �� ��� ��� ��������� �������� ������...','������!',MB_ICONSTOP);
    end
    else
     begin
      MainForm.ClearPrograms(1,ActivePartition);
      Application.MessageBox('������� �������� �����-�������������� ����� �� �� �������������� ��������� ��� �� ����� ������... ����� ������������� �������� ��� ����!','������!',MB_ICONSTOP);
      Close;
     end;
  Button23.Enabled:=false;
  RadioGroup2.Items.Clear;
  RadioGroup2.Visible:=false;
  compl:=0;
  Compile.Enabled:=false;
 end;
end;

procedure TDevelopment.RadioGroup2Click(Sender: TObject);
begin
  case compl of
  1: case radiogroup2.ItemIndex of
      0: If random(20)<>8 then begin
          Button18.Enabled:=false;
          Button23.Enabled:=false;
          RadioGroup1.Enabled:=false;
          Compile.Enabled:=true;
          Compl:=0;
          ListBox1.Items.Clear;
          RadioGroup2.Visible:=false;
         end
         else
          begin
           Button18.Enabled:=true;
           Button24.Enabled:=false;
           Button25.Enabled:=false;
           Button26.Enabled:=false;
           Button23.Enabled:=false;
           GroupBox8.Enabled:=false;
           RadioGroup3.Enabled:=false;
           RadioGroup1.Enabled:=true;
           Memo1.Lines.Clear;
           Application.MessageBox('���������� �� ���� �������������� ��, ��� �� ��������!','������!',MB_ICONSTOP);
           nastr:=nastr-1;
           ListBox1.Items.Clear;
           RadioGroup2.Visible:=false;
           RadioGroup3.ItemIndex:=-1;
           Compl:=0;
       end;
    1: If random(20)<>8 then begin
        Button18.Enabled:=false;
        Button23.Enabled:=false;
        Compl:=0;
        RadioGroup1.Enabled:=false;
        Compile.Enabled:=true;
        ListBox1.Items.Clear;
        RadioGroup2.Visible:=false;
       end
       else
        begin
         Button18.Enabled:=true;
         Button24.Enabled:=false;
         Button25.Enabled:=false;
         Button26.Enabled:=false;
         Button23.Enabled:=false;
         GroupBox8.Enabled:=false;
         RadioGroup3.Enabled:=false;
         Compl:=0;
         RadioGroup1.Enabled:=true;
         ListBox1.Items.Clear;
         RadioGroup2.Visible:=false;
         Memo1.Lines.Clear;
         Application.MessageBox('���������� �� ���� �������������� ��, ��� �� ��������!','������!',MB_ICONSTOP);
         RadioGroup3.ItemIndex:=-1;
         nastr:=nastr-1;
        end;
    2: Development.Close;
  end;
  4: case radiogroup2.ItemIndex of
      0: If random(20)<>8 then begin
          Button18.Enabled:=false;
          Button23.Enabled:=false;
          Compl:=0;
          RadioGroup1.Enabled:=false;
          Compile.Enabled:=true;
          ListBox1.Items.Clear;
          RadioGroup2.Visible:=false;
         end
         else
          begin
           Button18.Enabled:=true;
           Button24.Enabled:=false;
           Button25.Enabled:=false;
           Button26.Enabled:=false;
           Button23.Enabled:=false;
           GroupBox8.Enabled:=false;
           RadioGroup3.Enabled:=false;
           Compl:=0;
           RadioGroup1.Enabled:=true;
           ListBox1.Items.Clear;
           RadioGroup2.Visible:=false;
           Memo1.Lines.Clear;
           Application.MessageBox('���������� �� ���� �������������� ��, ��� �� ��������!','������!',MB_ICONSTOP);
           RadioGroup3.ItemIndex:=-1;
           nastr:=nastr-1;
          end;
     1: development.Close;
  end;
  7: case radiogroup2.ItemIndex of
      0: If random(20)<>8 then begin
          If MainForm.Label29.Caption<>'���' then begin
           If InetTraffic>=11 then begin
            Application.MessageBox('������ � ��������� ��� ���� �� �������-�� ������� ������ ��� DLL-��. � ���� ���������� ���� ������������, ������ ����� ������������� ���������.','������!',MB_ICONINFORMATION);
            nastr:=nastr-2;
            Button18.Enabled:=false;
            Button23.Enabled:=false;
            Compl:=0;
            InetTraffic:=InetTraffic-11;
            RadioGroup1.Enabled:=false;
            ListBox1.Items.Clear;
            RadioGroup2.Visible:=false;
            Compile.Enabled:=true;
           end
           else
            Application.MessageBox('������������ ��������-������� ��� ���� ����� ������� ����������� DLL!','������!',MB_ICONSTOP);
          end
          else
           Application.MessageBox('� ��� ����� �����?','������!',MB_ICONSTOP);
         end
         else
          begin
           Button18.Enabled:=true;
           Button24.Enabled:=false;
           Button25.Enabled:=false;
           Button26.Enabled:=false;
           Button23.Enabled:=false;
           GroupBox8.Enabled:=false;
           RadioGroup3.Enabled:=false;
           Compl:=0;
           RadioGroup1.Enabled:=true;
           ListBox1.Items.Clear;
           RadioGroup2.Visible:=false;
           Memo1.Lines.Clear;
           Application.MessageBox('���������� �� ���� �������������� ��, ��� �� ��������!','������!',MB_ICONSTOP);
           RadioGroup3.ItemIndex:=-1;
           nastr:=nastr-1;
          end;
      1: If random(20)<>8 then begin
          Application.MessageBox('������������ � ����������, �� �������-�� ������������ ���� ���������.','������!',MB_ICONINFORMATION);
          nastr:=nastr-2;
          Button18.Enabled:=false;
          Button23.Enabled:=false;
          Compl:=0;
          RadioGroup1.Enabled:=false;
          Compile.Enabled:=true;
          ListBox1.Items.Clear;
          RadioGroup2.Visible:=false;
         end
         else
          begin
           Button18.Enabled:=true;
           Button24.Enabled:=false;
           Button25.Enabled:=false;
           Button26.Enabled:=false;
           Button23.Enabled:=false;
           GroupBox8.Enabled:=false;
           RadioGroup3.Enabled:=false;
           Compl:=0;
           RadioGroup1.Enabled:=true;
           ListBox1.Items.Clear;
           RadioGroup2.Visible:=false;
           Memo1.Lines.Clear;
           Application.MessageBox('���������� �� ���� �������������� ��, ��� �� ��������!','������!',MB_ICONSTOP);
           RadioGroup3.ItemIndex:=-1;
           nastr:=nastr-1;
          end;
      2: If random(20)<>8 then begin
          If znania>50 then begin
           Application.MessageBox('� ������ ��������, �������� DLL - ��� �������. �� ����� �������� ����������� DLL � ����� �������������� ���� ���������!','������!',MB_ICONINFORMATION);
           nastr:=nastr-2;
           Button18.Enabled:=false;
           Button23.Enabled:=false;
           Compl:=0;
           RadioGroup1.Enabled:=false;
           Compile.Enabled:=true;
           ListBox1.Items.Clear;
           RadioGroup2.Visible:=false;
          end
          else
           begin
            If random(5)<>2 then begin
             Application.MessageBox('������� ����� 5 ����� �� �������� DLL, �� �������-�� �� ������.','������!',MB_ICONINFORMATION);
             nastr:=nastr-4;
             Button18.Enabled:=false;
             Compl:=0;
             Button23.Enabled:=false;
             RadioGroup1.Enabled:=false;
             Compile.Enabled:=true;
             ListBox1.Items.Clear;
             RadioGroup2.Visible:=false;
            end
            else
             begin
              Application.MessageBox('����� ��������� ����� DLL � ��������� ����������, ���� ������� ������������ �������!','������!',MB_ICONSTOP);
              nastr:=nastr-5;
              development.Close;
             end;
           end;
         end
         else
          begin
           Button18.Enabled:=true;
           Button24.Enabled:=false;
           Button25.Enabled:=false;
           Button26.Enabled:=false;
           Button23.Enabled:=false;
           GroupBox8.Enabled:=false;
           RadioGroup3.Enabled:=false;
           Compl:=0;
           RadioGroup1.Enabled:=true;
           ListBox1.Items.Clear;
           RadioGroup2.Visible:=false;
           Memo1.Lines.Clear;
           Application.MessageBox('���������� �� ���� �������������� ��, ��� �� ��������!','������!',MB_ICONSTOP);
           RadioGroup3.ItemIndex:=-1;
           nastr:=nastr-1;
          end;
      3: development.Close;
  end;
  10: case radiogroup2.ItemIndex of
      0: If random(20)<>8 then begin
          Button18.Enabled:=false;
          Button23.Enabled:=false;
          Compl:=0;
          RadioGroup1.Enabled:=false;
          Compile.Enabled:=true;
          ListBox1.Items.Clear;
          RadioGroup2.Visible:=false;
         end
         else
          begin
           Button18.Enabled:=true;
           Button24.Enabled:=false;
           Button25.Enabled:=false;
           Button26.Enabled:=false;
           Button23.Enabled:=false;
           GroupBox8.Enabled:=false;
           RadioGroup3.Enabled:=false;
           Compl:=0;
           RadioGroup1.Enabled:=true;
           ListBox1.Items.Clear;
           RadioGroup2.Visible:=false;
           Memo1.Lines.Clear;
           Application.MessageBox('���������� �� ���� �������������� ��, ��� �� ��������!','������!',MB_ICONSTOP);
           RadioGroup3.ItemIndex:=-1;
           nastr:=nastr-1;
          end;
      1: If random(20)<>8 then begin
          Button18.Enabled:=false;
          Button23.Enabled:=false;
          Compl:=0;
          RadioGroup1.Enabled:=false;
          ListBox1.Items.Clear;
          RadioGroup2.Visible:=false;
          Compile.Enabled:=true;
         end
         else
          begin
           Button18.Enabled:=true;
           Button24.Enabled:=false;
           Button25.Enabled:=false;
           Button26.Enabled:=false;
           Button23.Enabled:=false;
           GroupBox8.Enabled:=false;
           RadioGroup3.Enabled:=false;
           Compl:=0;
           RadioGroup1.Enabled:=true;
           ListBox1.Items.Clear;
           RadioGroup2.Visible:=false;
           Memo1.Lines.Clear;
           Application.MessageBox('���������� �� ���� �������������� ��, ��� �� ��������!','������!',MB_ICONSTOP);
           RadioGroup3.ItemIndex:=-1;
           nastr:=nastr-1;
          end;
      2: Development.Close;
  end;
  17: case radiogroup2.ItemIndex of
      0: If random(20)<>8 then begin
          Application.MessageBox('������������ � ����������, �� �������-�� ������������ ���� ���������.','������!',MB_ICONINFORMATION);
          nastr:=nastr-2;
          Button18.Enabled:=false;
          Button23.Enabled:=false;
          Compl:=0;
          RadioGroup1.Enabled:=false;
          ListBox1.Items.Clear;
          RadioGroup2.Visible:=false;
          Compile.Enabled:=true;
         end
         else
          begin
           Button18.Enabled:=true;
           Button24.Enabled:=false;
           Button25.Enabled:=false;
           Button26.Enabled:=false;
           Button23.Enabled:=false;
           GroupBox8.Enabled:=false;
           RadioGroup3.Enabled:=false;
           Compl:=0;
           RadioGroup1.Enabled:=true;
           ListBox1.Items.Clear;
           RadioGroup2.Visible:=false;
           Memo1.Lines.Clear;
           Application.MessageBox('���������� �� ���� �������������� ��, ��� �� ��������!','������!',MB_ICONSTOP);
           RadioGroup3.ItemIndex:=-1;
           nastr:=nastr-1;
          end;
      1: If random(20)<>8 then begin
          Button18.Enabled:=false;
          Button23.Enabled:=false;
          Compl:=0;
          RadioGroup1.Enabled:=false;
          Compile.Enabled:=true;
          ListBox1.Items.Clear;
          RadioGroup2.Visible:=false;
         end
         else
          begin
           Button18.Enabled:=true;
           Button24.Enabled:=false;
           Button25.Enabled:=false;
           Button26.Enabled:=false;
           Button23.Enabled:=false;
           GroupBox8.Enabled:=false;
           RadioGroup3.Enabled:=false;
           Compl:=0;
           ListBox1.Items.Clear;
           RadioGroup2.Visible:=false;
           RadioGroup1.Enabled:=true;
           Memo1.Lines.Clear;
           Application.MessageBox('���������� �� ���� �������������� ��, ��� �� ��������!','������!',MB_ICONSTOP);
           RadioGroup3.ItemIndex:=-1;
           nastr:=nastr-1;
          end;
     2: If random(20)<>8 then begin
          If MainForm.Label29.Caption<>'���' then begin
           If InetTraffic>=17 then begin
            Application.MessageBox('������ � ��������� ��� ���� �� �������-�� ���������� ����� ������ �����������. � ���� ���������� ���� ������������, ������ ����� ������������� ���������.','������!',MB_ICONINFORMATION);
            nastr:=nastr-2;
            Button18.Enabled:=false;
            InetTraffic:=InetTraffic-17;
            Button23.Enabled:=false;
            Compl:=0;
            RadioGroup1.Enabled:=false;
            ListBox1.Items.Clear;
            RadioGroup2.Visible:=false;
            Compile.Enabled:=true;
           end
           else
            Application.MessageBox('��������� ���������� ����� 17 ��. � ��� ���� ������������� ������ �� �������� ����� ����������, � ��� ��� ���� ����������.','������!',MB_ICONSTOP);
          end
          else
           Application.MessageBox('� ��� ����� �����?','������!',MB_ICONSTOP);
         end
         else
          begin
           Button18.Enabled:=true;
           Button24.Enabled:=false;
           Button25.Enabled:=false;
           Button26.Enabled:=false;
           Button23.Enabled:=false;
           GroupBox8.Enabled:=false;
           RadioGroup3.Enabled:=false;
           Compl:=0;
           RadioGroup1.Enabled:=true;
           Memo1.Lines.Clear;
           ListBox1.Items.Clear;
           RadioGroup2.Visible:=false;
           Application.MessageBox('���������� �� ���� �������������� ��, ��� �� ��������!','������!',MB_ICONSTOP);
           RadioGroup3.ItemIndex:=-1;
           nastr:=nastr-1;
          end;
      3: Development.Close;
  end;
  19: case radiogroup2.ItemIndex of
      0: If random(20)<>8 then begin
          Application.MessageBox('�������� ���� �� ������� ������, �� �������� ������������ ���������.','������!',MB_ICONINFORMATION);
          Button18.Enabled:=false;
          Button23.Enabled:=false;
          Compl:=0;
          RadioGroup1.Enabled:=false;
          Compile.Enabled:=true;
          ListBox1.Items.Clear;
          RadioGroup2.Visible:=false;
         end
          else
           begin
            Button18.Enabled:=true;
            Button24.Enabled:=false;
            Button25.Enabled:=false;
            Button26.Enabled:=false;
            Button23.Enabled:=false;
            GroupBox8.Enabled:=false;
            RadioGroup3.Enabled:=false;
            Compl:=0;
            RadioGroup1.Enabled:=true;
            ListBox1.Items.Clear;
            RadioGroup2.Visible:=false;
            Memo1.Lines.Clear;
            Application.MessageBox('���������� �� ���� �������������� ��, ��� �� ��������!','������!',MB_ICONSTOP);
            RadioGroup3.ItemIndex:=-1;
            nastr:=nastr-1;
           end;
      1: Application.MessageBox('����� ��� ��������������? ��� ���� ��������� ����!','������!',MB_ICONSTOP);
      2: If random(20)<>8 then begin
          Button18.Enabled:=false;
          Button23.Enabled:=false;
          RadioGroup1.Enabled:=false;
          Compl:=0;
          Compile.Enabled:=true;
          ListBox1.Items.Clear;
          RadioGroup2.Visible:=false;
         end
         else
          begin
           Button18.Enabled:=true;
           Button24.Enabled:=false;
           Button25.Enabled:=false;
           Button26.Enabled:=false;
           Button23.Enabled:=false;
           GroupBox8.Enabled:=false;
           RadioGroup3.Enabled:=false;
           RadioGroup1.Enabled:=true;
           Memo1.Lines.Clear;
           Compl:=0;
           ListBox1.Items.Clear;
           RadioGroup2.Visible:=false;
           Application.MessageBox('���������� �� ���� �������������� ��, ��� �� ��������!','������!',MB_ICONSTOP);
           RadioGroup3.ItemIndex:=-1;
           nastr:=nastr-1;
          end;
      3: Development.Close;
  end;
 end;
end;

procedure TDevelopment.Button14Click(Sender: TObject);
var
 s,i:integer;
begin
 s:=random(500)+300;
 If Application.MessageBox(Pchar('����������� �� ����� �� ������ ������ ��������� '+IntToStr(s)+' �.�. �������� ������ ���� �����. ������� �������� �� �����?'),'������!',MB_ICONINFORMATION+MB_YESNO)=IDYES then
  If money>=s then begin
   money:=money-s;
   SenderTag:=(Sender as TButton).Tag;
   for i:=1 to ComponentCount-1 do
    If (Components[i].Tag>55) and (Components[i].Tag<60) then
     (Components[i] as TButton).Enabled:=false;
   StudyProgress:=30;
   IsStudy:=true;
  end
  else
   Application.MessageBox('��� ����� �����-��?','������!',MB_ICONSTOP);
end;

procedure TDevelopment.Button15Click(Sender: TObject);
var
 i: integer;
begin
 SenderTag:=(Sender as TButton).Tag;
 for i:=1 to ComponentCount-1 do
  If (Components[i].Tag>55) and (Components[i].Tag<60) then
   (Components[i] as TButton).Enabled:=false;
 StudyProgress:=30;
 IsStudy:=true;
end;

procedure TDevelopment.Button23Click(Sender: TObject);
begin
 case radiogroup1.ItemIndex of
// Basic
  0: begin
      if ((bas=1) and (random(5)=4)) or ((bas=2) and (random(8)=4)) or ((bas=3) and (random(15)=4)) then begin
       Application.MessageBox('���� �����-�� ����� �������������...','������!',MB_ICONSTOP);
       RadioGroup1.Enabled:=true;
       Button18.Enabled:=true;
       Button23.Enabled:=false;
       RadioGroup3.ItemIndex:=-1;
       nastr:=nastr-1;
      end
      else
       begin
        Memo1.Lines.LoadFromFile(dir+'\Inf\Bas.inf');
        Button23.Enabled:=false;
        CompileProg.Execute;
       end;
     end;
// Assembler
  3: begin
      case ass of
       1: begin
           If random(5)<>4 then begin
            Memo1.Lines.LoadFromFile(dir+'\Inf\Asm.inf');
            Button23.Enabled:=false;
            CompileProg.Execute;
           end
           else
            begin
             Application.MessageBox('������ ����� ���������-�� �� ����� ��������!','������!',MB_ICONSTOP);
             RadioGroup1.Enabled:=true;
             Button18.Enabled:=true;
             Button23.Enabled:=false;
             RadioGroup3.ItemIndex:=-1;
             nastr:=nastr-1;
            end;
          end;
       2: begin
           If random(8)<>4 then begin
            Memo1.Lines.LoadFromFile(dir+'\Inf\Asm.inf');
            Button23.Enabled:=false;
            CompileProg.Execute;
           end
           else
            begin
             Application.MessageBox('���-�� ������ �� �������!','������!',MB_ICONSTOP);
             RadioGroup1.Enabled:=true;
             Button18.Enabled:=true;
             Button23.Enabled:=false;
             RadioGroup3.ItemIndex:=-1;
             nastr:=nastr-1;
            end;
          end;
       3: begin
           If random(15)<>4 then begin
            Memo1.Lines.LoadFromFile(dir+'\Inf\Asm.inf');
            Button23.Enabled:=false;
            CompileProg.Execute;
           end
           else
            begin
             Application.MessageBox('������-������... �... ������� ����������!','������!',MB_ICONSTOP);
             RadioGroup1.Enabled:=true;
             Button18.Enabled:=true;
             Button23.Enabled:=false;
             RadioGroup3.ItemIndex:=-1;
             nastr:=nastr-1;
            end;
          end;
       4: begin
           If random(20)<>4 then begin
            Memo1.Lines.LoadFromFile(dir+'\Inf\Asm.inf');
            Button23.Enabled:=false;
            CompileProg.Execute;
           end
           else
            begin
             Application.MessageBox('�� ���������������. � �� ������������� ������ �������!','������!',MB_ICONSTOP);
             RadioGroup1.Enabled:=true;
             Button18.Enabled:=true;
             Button23.Enabled:=false;
             RadioGroup3.ItemIndex:=-1;
             nastr:=nastr-1;
            end;
          end;
      end;
     end;
// Pascal
  1: begin
      case pas of
       1: If random(5)<>4 then begin
           Memo1.Lines.LoadFromFile(dir+'\Inf\Pas.inf');
           Button23.Enabled:=false;
           CompileProg.Execute;
          end
          else
           begin
            Application.MessageBox('����������� �������� �� �����, � ������� �� � �����!','������!',MB_ICONSTOP);
            RadioGroup1.Enabled:=true;
            Button18.Enabled:=true;
            Button23.Enabled:=false;
            RadioGroup3.ItemIndex:=-1;
            nastr:=nastr-1;
           end;
       2: If random(8)<>4 then begin
           Memo1.Lines.LoadFromFile(dir+'\Inf\Pas.inf');
           Button23.Enabled:=false;
           CompileProg.Execute;
          end
          else
           begin
            Application.MessageBox('"�� ���� �� ���������� ���� Delphi!" - ������� �� ��������.','������!',MB_ICONSTOP);
            RadioGroup1.Enabled:=true;
            Button18.Enabled:=true;
            Button23.Enabled:=false;
            RadioGroup3.ItemIndex:=-1;
            nastr:=nastr-1;
           end;
       3: If random(12)<>4 then begin
           Memo1.Lines.LoadFromFile(dir+'\Inf\Pas.inf');
           Button23.Enabled:=false;
           CompileProg.Execute;
          end
          else
           begin
            Application.MessageBox('������ ������ ������ ����� �������� ������! �� �������!','������!',MB_ICONSTOP);
            RadioGroup1.Enabled:=true;
            Button18.Enabled:=true;
            Button23.Enabled:=false;
            RadioGroup3.ItemIndex:=-1;
            nastr:=nastr-1;
           end;
       4: If random(12)<>4 then begin
           Memo1.Lines.LoadFromFile(dir+'\Inf\Pas.inf');
           Button23.Enabled:=false;
           CompileProg.Execute;
          end
          else
           begin
            Application.MessageBox('���-�� �� �������. ����� ����� ���������?','������!',MB_ICONSTOP);
            RadioGroup1.Enabled:=true;
            Button18.Enabled:=true;
            Button23.Enabled:=false;
            RadioGroup3.ItemIndex:=-1;
            nastr:=nastr-1;
           end;
       end;
     end;
// C++
  2: begin
      case cpp of
       1: If random(5)<>4 then begin
           Memo1.Lines.LoadFromFile(dir+'\Inf\Cpp.inf');
           Button23.Enabled:=false;
           CompileProg.Execute;
          end
          else
           begin
            Application.MessageBox('C ������� ������ ����, �� �������...','������!',MB_ICONSTOP);
            RadioGroup1.Enabled:=true;
            Button18.Enabled:=true;
            Button23.Enabled:=false;
            RadioGroup3.ItemIndex:=-1;
            nastr:=nastr-1;
           end;
       2: If random(8)<>4 then begin
           Memo1.Lines.LoadFromFile(dir+'\Inf\Cpp.inf');
           Button23.Enabled:=false;
           CompileProg.Execute;
          end
          else
           begin
            Application.MessageBox('��������� �� ���� ���������� ���� ������!','������!',MB_ICONSTOP);
            RadioGroup1.Enabled:=true;
            Button18.Enabled:=true;
            Button23.Enabled:=false;
            RadioGroup3.ItemIndex:=-1;
            nastr:=nastr-1;
           end;
       3: If random(15)<>4 then begin
           Memo1.Lines.LoadFromFile(dir+'\Inf\Cpp.inf');
           Button23.Enabled:=false;
           CompileProg.Execute;
          end
          else
           begin
            Application.MessageBox('"���-�� �� ��..." - �������� ��. "�������������..." - ������� ���������.','������!',MB_ICONSTOP);
            RadioGroup1.Enabled:=true;
            Button18.Enabled:=true;
            Button23.Enabled:=false;
            RadioGroup3.ItemIndex:=-1;
            nastr:=nastr-1;
           end;
       4: If random(15)<>4 then begin
           Memo1.Lines.LoadFromFile(dir+'\Inf\Cpp.inf');
           Button23.Enabled:=false;
           CompileProg.Execute;
          end
          else
           begin
            Application.MessageBox('������ �� ���� ��������������. ������ ������ � ����.','������!',MB_ICONSTOP);
            RadioGroup1.Enabled:=true;
            Button18.Enabled:=true;
            Button23.Enabled:=false;
            RadioGroup3.ItemIndex:=-1;
            nastr:=nastr-1;
           end;
      end;
     end;
 end;
end;

procedure TDevelopment.Button25Click(Sender: TObject);
begin
 If random(15)<>7 then begin
  If random(4)=3 then
   Application.MessageBox('�����! �� �������� � ���� ��������� ��������� ��������!','������!',MB_ICONINFORMATION)
  else
   if random(4)=2 then
    Application.MessageBox('������ ���� ��������� ������������ �������������� ����������!','������!',MB_ICONINFORMATION)
   else
    if (random(4))=1 then
     Application.MessageBox('���! ������ ������������ �����, ����������� ��������� ���� ������. ��� ���� ���������!','������!',MB_ICONINFORMATION)
    else
     Application.MessageBox('�� �������� � ���� ��������� ������ ����������������� �������� ������ �� �������. ������ �� ����� �� ��������!','������!',MB_ICONINFORMATION);
  Button25.Enabled:=false;
  Button23.Enabled:=false;
  znania:=znania+2;
  nastr:=nastr+4;
 end
 else
  begin
   RadioGroup1.Enabled:=true;
   Button18.Enabled:=true;
   Button24.Enabled:=false;
   Button25.Enabled:=false;
   Button26.Enabled:=false;
   Button23.Enabled:=false;
   GroupBox8.Enabled:=false;
   RadioGroup3.Enabled:=false;
   Application.MessageBox('DLL ����������, ������� �� �������� ������ ���� ����� ��� ������ �� �������!','������!',MB_ICONSTOP);
   nastr:=nastr-1;
  end;
end;

procedure TDevelopment.CompileProgExecute(Sender: TObject);
begin
 ListBox1.Items.Clear;
 If ((hardspeed+defragspeed+cpuspeed+htt+cpuclock+cdspeed+ramspeed*10) div 10000)<=2 then
  compile.Interval:=300
 else
  If (((hardspeed+defragspeed+cpuspeed+htt+cpuclock+cdspeed+ramspeed*10) div 10000)>2) and (((hardspeed+cpuspeed+htt+cpuclock+cdspeed+ramspeed*10) div 10000)<=3) then
   compile.Interval:=200
  else
   If (((hardspeed+cpuspeed+defragspeed+htt+cpuclock+cdspeed+ramspeed*10) div 10000)>3) and (((hardspeed+cpuspeed+htt+cpuclock+cdspeed+ramspeed*10) div 10000)<=4) then
    compile.Interval:=25
   else
    If ((hardspeed+cpuspeed+defragspeed+htt+cpuclock+cdspeed+ramspeed*10) div 10000)>4 then
     compile.Interval:=1;
 If not DetectErrors then begin
  If (random(20)<>8) then begin
   Button18.Enabled:=false;
   Button23.Enabled:=false;
   Button25.Enabled:=false;
   RadioGroup1.Enabled:=false;
   Compile.Enabled:=true;
  end
  else
   begin
    Button18.Enabled:=true;
    Button18.Enabled:=true;
    Button24.Enabled:=false;
    Button25.Enabled:=false;
    Button26.Enabled:=false;
    Button23.Enabled:=false;
    GroupBox8.Enabled:=false;
    RadioGroup3.Enabled:=false;
    RadioGroup1.Enabled:=true;
    Memo1.Lines.Clear;
    Application.MessageBox('���������� �� ���� �������������� ��, ��� �� ��������!','������!',MB_ICONSTOP);
    RadioGroup3.ItemIndex:=-1;
    nastr:=nastr-1;
   end;
 end
 else
  Compile.Enabled:=true;
end;

procedure TDevelopment.RadioGroup3Click(Sender: TObject);
var
 i:shortint;
 VirExists:boolean;
begin
 VirExists:=false;
 If (RadioGroup3.ItemIndex<>2) then begin
  Prog:=inputbox('�������� ���������','������� �������� ��������������� ���������','');
  If Prog<>'' then begin
   RadioGroup3.Enabled:=false;
   GroupBox8.Enabled:=true;
   Button23.Enabled:=true;
  end
  else
   begin
    Application.MessageBox('�� �� ������� �������� ��������������� ���������!','������!',MB_ICONSTOP);
    RadioGroup3.ItemIndex:=-1;
    RadioGroup3.Enabled:=false;
    RadioGroup1.Enabled:=true;
    Button18.Enabled:=true;
   end;
 end
 else
  begin
   for i:=0 to HackPrograms.Count-1 do
    If HackPrograms[i]='������� �����' then begin
     Application.MessageBox('�� ��� �������� ����� ��� ������ ��������� �����. ������ ��� ��� ������ �� �����.','������!',MB_ICONSTOP);
     RadioGroup3.ItemIndex:=-1;
     VirExists:=true;
     Break;
    end;
   If not VirExists then
    If (RadioGroup1.ItemIndex<>0) and (RadioGroup1.ItemIndex<>1) then begin
     RadioGroup3.Enabled:=false;
     GroupBox8.Enabled:=true;
     Button23.Enabled:=true;
    end
    else
     begin
      Application.MessageBox('����� ������ �������� �� Basic ��� Pascal!','������!',MB_ICONSTOP);
      RadioGroup3.ItemIndex:=-1;
     end;
  end;
end;

procedure TDevelopment.Button26Click(Sender: TObject);
begin
 GroupBox8.Enabled:=false;
 Timer2.Enabled:=true;
end;

procedure TDevelopment.Timer2Timer(Sender: TObject);
begin
 If ProgressBar1.Position<100 then begin
  If random(7)=1 then begin
   DetectErrors:=true;
   Timer2.Enabled:=false;
   CompileProg.Execute;
  end;
  ProgressBar1.Position:=ProgressBar1.Position+random(4);
 end
 else
  begin
   Timer2.Enabled:=false;
   If Errors<=3 then
    Application.MessageBox('� ���� ������������ �� ������� ���������� �� ����� ������. �������� �� ������� � ������� �������� ��������� ������������ ���������!','������!',MB_ICONINFORMATION)
   else
    Application.MessageBox(PChar('� ���� ������������ ��������� �� ��������� ����� '+IntToStr(random(Errors)+1)+' ������. �� ��� ���� ������, �� ������ ���� ��������� �������� ���� ����� ����������!'),'������!',MB_ICONINFORMATION);
   GroupBox8.Enabled:=true;
   Nastr:=Nastr-2;
   Button26.Enabled:=false;
   Errors:=0;
  end;
end;

procedure TDevelopment.Button24Click(Sender: TObject);
begin
 If random(20)<>5 then begin
  If Errors<=0 then begin
   SellParam:='MyProg';
   ICQSell.ShowModal;
   inc(Progs);
   case RadioGroup3.ItemIndex of
    1: If Application.MessageBox('�� �������� ������������ �������. � ������ �� �� ������������ ��� ��� ������������ ������?','������!',MB_ICONQUESTION+MB_YESNO)=IDYES then MainForm.Label131.Caption:=Prog;
    6: If Application.MessageBox('�� �������� ������������ �������� ��������. � ������ �� �� ������������ ��� ��� ������������ ������?','������!',MB_ICONQUESTION+MB_YESNO)=IDYES then MainForm.Label48.Caption:=Prog;
   end;
  end
  else
   begin
    Application.MessageBox('�� ����� ����������� ����� ��������� �� ������ ������� �������. ������ �������� �� ���, �� ���. ������, ��� ��� �� ��������� ����������...','������!',MB_ICONSTOP);
    inc(Progs);
    nastr:=nastr-4;
   end;
 end
  else
   begin
    Application.MessageBox(Pchar('���� ��������� ��������� ������ �� ������!'),'������!',MB_ICONINFORMATION);
    inc(Progs);
    nastr:=nastr-2;
   end;
 Close;
end;

procedure TDevelopment.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button1.OnClick(self);
end;

procedure TDevelopment.Timer3Timer(Sender: TObject);
var
 Errors: TStringList;
begin
 If ((ProgressBar2.Position=66) or (ProgressBar2.Position=33)) and (random(15)=6) then begin
  Errors:=TStringList.Create;
  Errors.LoadFromFile(dir+'\Inf\Study.inf');
  StudyProgress:=0;
  IsStudy:=false;
  case SenderTag of
   56:bas:=0;
   57:pas:=0;
   58:ass:=0;
   59:cpp:=0;
  end;
  Application.MessageBox(PChar(Errors.Strings[random(Errors.Count)]),'������!',MB_ICONSTOP);
  nastr:=nastr-2;
 end;
 If (StudyProgress=1) and (IsStudy) then begin
  case SenderTag of
   56: begin inc(bas); znania:=znania+bas*3+1; end;
   57: begin inc(pas); znania:=znania+pas*3+1; end;
   58: begin inc(ass); znania:=znania+ass*3+1; end;
   59: begin inc(cpp); znania:=znania+cpp*3+1; end;
  end;
  StudyProgress:=0;
  IsStudy:=false;
 end;
end;

end.
