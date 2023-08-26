unit Internet;

interface

uses
  Windows, Forms, SysUtils,
  jpeg, param, inetwork, StdCtrls, Controls, Classes, ExtCtrls;

type
  TInet = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Button4: TButton;
    Image1: TImage;
    Label4: TLabel;
    Button5: TButton;
    GroupBox3: TGroupBox;
    Button3: TButton;
    Edit3: TEdit;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    GroupBox4: TGroupBox;
    Button10: TButton;
    Button11: TButton;
    Label2: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Inet: TInet;
  inetwrk:tinetwrk;

implementation

uses Main, xk, Prate, EntWork, Browsing, UForm;

{$R *.dfm}

procedure TInet.Button3Click(Sender: TObject);
begin
 Close;
end;

procedure TInet.Button1Click(Sender: TObject);
var
 i,k,Cost,Result :integer;
 s:shortstring;
 Continue,Can :boolean;
 Sites: TSearchRec;
begin
 If InetTraffic>=1 then begin
  k:=0;
  Can:=true;
  s:=copy(ComboBox1.Items.Strings[ComboBox1.ItemIndex],1,255);
  If Edit1.Text='my' then
   Application.MessageBox('Это мой сайт, а не ваш!','Помощь!',MB_ICONWARNING)
  else
   begin
    Result:=FindFirst(dir+'\Sites\*', faDirectory, Sites);
    while Result=0 do begin
     if (Sites.Name<>'System') and (Sites.Name<>'.') and (Sites.Name<>'..') then
      If Sites.Name=edit1.text+ComboBox1.Items.Strings[ComboBox1.ItemIndex] then begin
       Application.MessageBox('Данное имя сайта уже используется!','Помощь!',MB_ICONSTOP);
       Can:=false;
       Break;
      end;
     Result:=FindNext(Sites);
    end;
    FindClose(Sites);
   If can then begin
     For i:=1 to length(s) do
      If s[i]='.' then inc(k);
       If K=1 then begin
        Cost:=random(200)+100;
        If Application.MessageBox(PChar('Размещение сайта на данном хостинге будет стоить '+IntToStr(Cost)+' д.е. в месяц. Вы согласны?'),'Платный хостинг',MB_ICONQUESTION+MB_YESNO)=IDYES then begin
         Continue:=true;
         Hosting:=Cost;
        end
        else
         Continue:=false;
       end
       else
        Continue:=true;
       If Continue then begin
        Edit1.Enabled:=false;
        ComboBox1.Enabled:=false;
        Button2.Enabled:=true;
        Button1.Enabled:=false;
        Rating:=Rating+1;
        MainForm.Label33.Caption:='http://www.'+edit1.text+ComboBox1.Items.Strings[ComboBox1.ItemIndex];
       end;
    end;
   end;
  end
 else
  Application.MessageBox('Весь преоплаченный трафик за интернет закончился!','Помощь!',MB_ICONSTOP);
end;

procedure TInet.Button2Click(Sender: TObject);
begin
 Edit1.Enabled:=true;
 Button1.Enabled:=true;
 Button2.Enabled:=false;
 ComboBox1.Enabled:=true;
 Rating:=rating-1;
 Hosting:=0;
 MainForm.Label33.Caption:='Нет';
 MainForm.Label33.Hint:='';
 MainForm.Label33.ShowHint:=false;
end;

procedure TInet.Button4Click(Sender: TObject);
begin
 If InetTraffic>0 then begin
  If day<>lastday then
   Inetwrk.ShowModal
  else
   Application.MessageBox('Вам же сказали, что на сегодня все вопросы исчерпаны...','Помощь!',MB_ICONSTOP);
 end
 else
  Application.MessageBox('Весь преоплаченный трафик за интернет закончился!','Помощь!',MB_ICONSTOP);
end;

procedure TInet.FormActivate(Sender: TObject);
var
 i:integer;
 s:shortstring;
begin
 ComboBox1.Items.LoadFromFile(dir+'\Inf\Domain.inf');
 ComboBox1.ItemIndex:=0;
 ComboBox2.Items.LoadFromFile(dir+'\Inf\E-mail.inf');
 ComboBox2.ItemIndex:=0;
 If MainForm.Label33.Caption<>'Нет' then begin
  Edit1.Enabled:=false;
  s:=copy(MainForm.Label33.Caption,pos('.',MainForm.Label33.Caption)+1,255);
  Edit1.Text:=copy(s,1,pos('.',s)-1);
  for i:=1 to ComboBox1.Items.Count-1 do
   If copy(s,pos('.',s),255)=ComboBox1.Items.Strings[i] then begin
    ComboBox1.ItemIndex:=i;
    Break;
   end;
  Button2.Enabled:=true;
  Button1.Enabled:=false;
  ComboBox1.Enabled:=false;
 end
 else
  begin
   Edit1.Enabled:=true;
   Edit1.Text:='my';
   Button1.Enabled:=true;
   Button2.Enabled:=false;
 end;
 If MainForm.Label41.Caption<>'Нет' then begin
  Edit3.Enabled:=false;
  for i:=1 to ComboBox2.Items.Count-1 do
   If copy(MainForm.Label41.Caption,pos('@',MainForm.Label41.Caption)+1,255)=ComboBox2.Items.Strings[i] then begin
    ComboBox2.ItemIndex:=i;
    Break;
   end;
  edit3.Text:=copy(MainForm.Label41.Caption,1,pos('@',MainForm.Label41.Caption)-1);
  Button7.Enabled:=true;
  Button6.Enabled:=false;
  ComboBox2.Enabled:=false;
 end
 else
  begin
   Edit3.Enabled:=true;
   Edit3.Text:='my';
   Button7.Enabled:=false;
   Button6.Enabled:=true;
  end;
end;
procedure TInet.Button6Click(Sender: TObject);
begin
 If InetTraffic>=1 then begin
  If Edit3.Text='my' then
   Application.MessageBox('Это мой почтовый ящик, а не ваш!','Помощь!',MB_ICONWARNING)
  else
   begin
    Edit3.Enabled:=false;
    Button7.Enabled:=true;
    Button6.Enabled:=false;
    ComboBox2.Enabled:=false;
    Rating:=Rating+1;
    MainForm.Label41.Caption:=Edit3.Text+'@'+ComboBox2.Items.Strings[ComboBox2.ItemIndex];
   end;
 end
 else
  Application.MessageBox('Весь преоплаченный трафик за интернет закончился!','Помощь!',MB_ICONSTOP);
end;

procedure TInet.Button7Click(Sender: TObject);
begin
 Edit3.Enabled:=true;
 Button6.Enabled:=true;
 Button7.Enabled:=false;
 ComboBox2.Enabled:=true;
 Rating:=rating-1;
 MainForm.Label41.Caption:='Нет';
end;

procedure TInet.Button5Click(Sender: TObject);
begin
 If InetTraffic>0 then begin
  If (MainForm.Label34.Caption='Продвинутый') or (MainForm.Label34.Caption='Хакерок') then
   xak.showmodal
  else
   Application.MessageBox('У вас должен быть статус не ниже Продвинутого, чтобы попасть в эту зону!','Помощь!',MB_ICONSTOP);
 end
 else
  Application.MessageBox('Весь преоплаченный трафик за интернет закончился!','Помощь!',MB_ICONSTOP);
end;

procedure TInet.Button8Click(Sender: TObject);
begin
 If InetTraffic>0 then begin
  If (MainForm.Label34.Caption='Юзер') or (MainForm.Label34.Caption='Продвинутый') or (MainForm.Label34.Caption='Хакерок') then begin
   If cdrspeed=0 then
    Application.MessageBox('Нет CD-RW привода!','Помощь!',MB_ICONSTOP)
   else
    pirate.showmodal;
  end
  else
   Application.MessageBox('У вас должен быть статус не ниже Юзера, чтобы попасть в эту зону!','Помощь!',MB_ICONSTOP);
 end
 else
  Application.MessageBox('Весь преоплаченный трафик за интернет закончился!','Помощь!',MB_ICONSTOP);
end;
procedure TInet.Button9Click(Sender: TObject);
begin
 If InetTraffic>0 then
  Ext.Showmodal
 else
  Application.MessageBox('Весь преоплаченный трафик за интернет закончился!','Помощь!',MB_ICONSTOP);
end;

procedure TInet.Button10Click(Sender: TObject);
begin
 If InetTraffic>0 then begin
  If mainform.Label131.Caption<>'Нет' then
   Browse.ShowModal
  else
   Application.MessageBox('Чтобы путешествовать в интернете необходимо установить браузер!','Помощь!',mb_iconstop);
 end
 else
  Application.MessageBox('Весь преоплаченный трафик за интернет закончился!','Помощь!',MB_ICONSTOP);
end;

procedure TInet.Button11Click(Sender: TObject);
begin
 If InetTraffic>0 then begin
  If (ANSILOWERCASE(os)='win') or (ANSILOWERCASE(os)='lin') or (ANSILOWERCASE(os)='bsd') then
   UpdateForm.ShowModal
  else
   Application.MessageBox('Поддерживаются только операционные системы семейства Windows, Linux и BSD!','Ошибка!',MB_ICONSTOP);
 end
 else
  Application.MessageBox('Весь преоплаченный трафик за интернет закончился!','Помощь!',MB_ICONSTOP);
end;

procedure TInet.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button3.OnClick(self);
end;

procedure TInet.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if (key in ['0'..'9','A'..'Z','a'..'z','-','_','.']) or (key = #8) then

 else
  key:=#0;
end;

procedure TInet.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
 if (key in ['0'..'9','A'..'Z','a'..'z','-','_','.']) or (key = #8) then

 else
  key:=#0;
end;

end.

