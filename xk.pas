unit xk;

interface

uses
  Forms, param, downl, Menus, ExtCtrls, StdCtrls, Grids, ComCtrls,
  Controls, Classes, Windows, SysUtils, MPlayer, Messages, ImgList;

type
  TXak = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    Button1: TButton;
    Label2: TLabel;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    Image1: TImage;
    Button2: TButton;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    N9: TMenuItem;
    N10: TMenuItem;
    TabSheet2: TTabSheet;
    ProgressBar2: TProgressBar;
    CommandWindow: TMemo;
    ImageList1: TImageList;
    TreeView1: TTreeView;
    N13: TMenuItem;
    N12: TMenuItem;
    N14: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Outline1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N10Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OnEndPlay(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure CommandWindowChange(Sender: TObject);
    procedure CommandWindowKeyPress(Sender: TObject; var Key: Char);
    procedure CommandWindowKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabSheet1Show(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure N13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
 Xak: TXak;
 Unix: boolean;
 q1:integer;
 PlaySound: TMediaPlayer;
 MyTimer1: TTimer;
 atz: boolean=false;
 BeginLogin: boolean=false;
 Item: TTreeNode;
 OnAir: TStringList;
 PortList: TStringList;
 AvOn: boolean=true;
 FireOn: boolean=true;
 CmdHist: TStringList;
 CmdHistI: integer = 0;

implementation

uses Main, SoftSel, Auction;

{$R *.dfm}

procedure TXak.Button1Click(Sender: TObject);
begin
 Close;
end;

procedure TXak.Timer1Timer(Sender: TObject);
begin
 If ProgressBar1.Position>0 then
  ProgressBar1.Position:=ProgressBar1.Position-1
 else
  begin
   Timer1.Enabled:=false;
   If fldown then begin
    Down.Timer1.Enabled:=false;
    Down.Gauge1.Progress:=100;
    down.Close;
   end;
   Application.MessageBox('Вас засекли! С вас штраф - 500 д.е.','Помощь!',mb_iconstop);
   inc(arest);
   vlasti:=vlasti-6;
   money:=money-500;
   xak.OnActivate(self);
  end;
 ProgressBar2.Position:=ProgressBar1.Position;
end;

procedure TXak.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Timer1.Enabled:=false;
 MainForm.Timer1.Enabled:=true;
end;

procedure TXak.PopupMenu1Popup(Sender: TObject);
var
 i: integer;
begin
 for i:=1 to ComponentCount-1 do
  if Components[i] is TMenuItem then
   (Components[i] as TMenuItem).Enabled:=false;
 If TreeView1.Selected.Level<>0 then
  N10.Enabled:=true;
 If ((TreeView1.Selected.Text='root') and (Unix=true)) or ((TreeView1.Selected.Text='Administrator') and (Unix=false)) then begin
  N7.Visible:=true;
  N8.Visible:=true;
 end
 else
  begin
   N7.Visible:=false;
   N8.Visible:=false;
  end;

 // Установка меню хакерских программ
 N1.Enabled:=HackPrograms.IndexOf('scanpas')>-1;
 N2.Enabled:=HackPrograms.IndexOf('fmtall')>-1;
 N3.Enabled:=HackPrograms.IndexOf('nv')>-1;
 N6.Enabled:=HackPrograms.IndexOf('afire')>-1;
 N5.Enabled:=HackPrograms.IndexOf('stealth')>-1;
 N12.Enabled:=(HackPrograms.IndexOf('avunload')>-1) and (AvOn);
 N13.Enabled:=(HackPrograms.IndexOf('sfscan')>-1) and (FireOn);
end;

procedure TXak.N5Click(Sender: TObject);
begin
 Timer1.Enabled:=false;
 Application.MessageBox('Была запущена программа маскировки!','Помощь!',mb_iconinformation);
end;

procedure TXak.N6Click(Sender: TObject);
begin
 Application.MessageBox('Был запущен Anti-firewall!','Помощь!',MB_iconinformation);
 Timer1.Interval:=500;
end;

procedure TXak.N2Click(Sender: TObject);
begin
 If InetTraffic>=4 then
  InetTraffic:=InetTraffic-4
 else
  begin
   InetTraffic:=0;
   Application.MessageBox('Закончился преоплаченный трафик за интернет. Купите больше трафика для продолжения работы!','Помощь!',MB_ICONSTOP);
   Close;
  end;
 If Unix then
  If TreeView1.Selected.Text='root' then
   begin
    If random(2)=1 then begin
     Application.MessageBox('Взлом удался! Вы нашли какие-то счета, по которым сняли около 400 д.е.!','Помощь!',MB_ICONINFORMATION);
     money:=money+300+random(100);
     inc(unixxak);
     PageControl1.ActivePage:=TabSheet1;
     PageControl1.OnChange(self);
     xak.Close;
    end
    else
     begin
      Application.MessageBox('Опля... Приехали... Доигрались... Вас засекли! 300 д.е. уходят!','Помощь!',MB_ICONINFORMATION);
      inc(arest);
      vlasti:=vlasti-6;
      money:=money-300;
      PageControl1.ActivePage:=TabSheet1;
      PageControl1.OnChange(self);
      xak.Close;
     end;
   end;
 If not Unix then begin
  If TreeView1.Selected.Text='Administrator' then
   begin
    If random(2)=1 then begin
     Application.MessageBox('Взлом удался! Вы находите кредитные карточки на сумму около 500 д.е.!','Помощь!',MB_ICONINFORMATION);
     money:=money+400+random(100);
     PageControl1.ActivePage:=TabSheet1;
     PageControl1.OnChange(self);
     xak.Close;
    end
    else
     begin
      Application.MessageBox('Опля... Приехали... Доигрались... Вас засекли! 300 д.е. уходят!','Помощь!',MB_ICONINFORMATION);
      vlasti:=vlasti-6;
      money:=money-300;
      inc(arest);
      PageControl1.ActivePage:=TabSheet1;
      PageControl1.OnChange(self);
      xak.Close;
     end;
   end;
  If TreeView1.Selected.Text='Internet Explorer' then
   begin
    If random(2)=17 then begin
     Application.MessageBox('Используя брешь в Internet Explorer вы забрали около 480 д.е.!','Помощь!',MB_ICONINFORMATION);
     money:=money+400+random(100);
     PageControl1.ActivePage:=TabSheet1;
     PageControl1.OnChange(self);
     xak.Close;
    end
    else
     begin
      Application.MessageBox('Фиг вам! Microsoft уже успела выпустить патч, закрывающий эту брешь! 400 д.е. долой!','Помощь!',MB_ICONINFORMATION);
      inc(arest);
      vlasti:=vlasti-6;
      money:=money-400;
      PageControl1.ActivePage:=TabSheet1;
      PageControl1.OnChange(self);
      xak.Close;
     end;
   end;
  If TreeView1.Selected.Text='Windows Media Player' then
   begin
    If random(2)=1 then begin
     Application.MessageBox('Windows Media Player выполнил недопустимую операцию и отдал вам около 500 д.е.!','Помощь!',MB_ICONINFORMATION);
     money:=money+500+random(100);
     PageControl1.ActivePage:=TabSheet1;
     PageControl1.OnChange(self);
     xak.Close;
    end
    else
     begin
      Application.MessageBox('Фиг вам! Microsoft уже успела выпустить патч, закрывающий эту брешь! 400 д.е. долой!','Помощь!',MB_ICONINFORMATION);
      vlasti:=vlasti-6;
      inc(arest);
      money:=money-400;
      PageControl1.ActivePage:=TabSheet1;
      PageControl1.OnChange(self);
      xak.Close;
     end;
   end;
 end;
end;

procedure TXak.N1Click(Sender: TObject);
begin
 If InetTraffic>=5 then
  InetTraffic:=InetTraffic-5
 else
  begin
   InetTraffic:=0;
   Application.MessageBox('Закончился преоплаченный трафик за интернет. Купите больше трафика для продолжения работы!','Помощь!',MB_ICONSTOP);
   Close;
  end;
 If Unix then begin
  If TreeView1.Selected.Text='root' then
   begin
    If random(7)<>2 then begin
     Application.MessageBox('Взлом удался! Вы нашли несколько кредитных карточек! 250 д.е. у вас в кармане!','Помощь!',MB_ICONINFORMATION);
     money:=money+250;
     PageControl1.ActivePage:=TabSheet1;
     PageControl1.OnChange(self);
     xak.Close;
    end
    else
     begin
      Application.MessageBox('Опля... Приехали... Доигрались... Вас засекли! 300 д.е. уходят!','Помощь!',MB_ICONINFORMATION);
      inc(arest);
      vlasti:=vlasti-6;
      money:=money-300;
      PageControl1.ActivePage:=TabSheet1;
      PageControl1.OnChange(self);
      xak.Close;
     end;
   end;
  If TreeView1.Selected.Text='licq' then
   If random(6)<>5 then begin
    Timer1.Enabled:=false;
    If Application.MessageBox('Вы подобрали пароль для ICQ данного пользователя. Хотите продать этот номер на аукционе?','Помощь!',MB_ICONQUESTION+MB_YESNO)=IDYES then begin
     SellParam:='ICQ';
     ICQSell.ShowModal;
    end
    else begin
     PageControl1.ActivePage:=TabSheet1;
     PageControl1.OnChange(self);
     xak.Close;
    end;
   end
   else
    begin
     Application.MessageBox('Вас засекли, когда пароль был у вас уже почти в руках! В следующий раз возможно вам повезет больше...','Помощь!',MB_ICONINFORMATION);
     money:=money-350;
     vlasti:=vlasti-7;
     inc(arest);
     PageControl1.ActivePage:=TabSheet1;
     PageControl1.OnChange(self);
     xak.Close;
    end;
 end;
 If not Unix then begin
  If TreeView1.Selected.Text='Administrator' then begin
    If random(10)<>1 then begin
     Application.MessageBox('Взлом удался! Какие-то договора, письма... О! 200 д.е.!','Помощь!',MB_ICONINFORMATION);
     money:=money+200;
     PageControl1.ActivePage:=TabSheet1;
     PageControl1.OnChange(self);
     xak.Close;
    end
    else
     begin
      Application.MessageBox('Опля... Приехали... Доигрались... Вас засекли! 300 д.е. уходят!','Помощь!',MB_ICONINFORMATION);
      money:=money-300;
      vlasti:=vlasti-6;
      inc(arest);
      PageControl1.ActivePage:=TabSheet1;
      PageControl1.OnChange(self);
      xak.Close;
     end;
   end;
  If TreeView1.Selected.Text='ICQ' then begin
    If random(6)<>5 then begin
     Timer1.Enabled:=false;
     If Application.MessageBox('Вы подобрали пароль для ICQ данного пользователя. Хотите продать этот номер на аукционе?','Помощь!',MB_ICONQUESTION+MB_YESNO)=IDYES then begin
      SellParam:='ICQ';
      ICQSell.ShowModal;
     end
     else begin
      PageControl1.ActivePage:=TabSheet1;
      PageControl1.OnChange(self);
      Xak.Close;
     end;
    end
    else
     begin
      Application.MessageBox('Вас засекли, когда пароль был у вас уже почти в руках! В следующий раз возможно вам повезет больше...','Помощь!',MB_ICONINFORMATION);
      money:=money-350;
      vlasti:=vlasti-7;
      inc(arest);
      PageControl1.ActivePage:=TabSheet1;
      PageControl1.OnChange(self);
      xak.Close;
     end;
   end;
 end;
end;


procedure TXak.N3Click(Sender: TObject);
begin
 If InetTraffic>=2 then
  InetTraffic:=InetTraffic-2
 else
  begin
   InetTraffic:=0;
   Application.MessageBox('Закончился преоплаченный трафик за интернет. Купите больше трафика для продолжения работы!','Помощь!',MB_ICONSTOP);
   Close;
  end;
 If Unix then
  If TreeView1.Selected.Text='root' then
   begin
    If (random(7)<>1) and (not AvOn) then begin
     Application.MessageBox('Запущенный вирус снёс нафиг защиту на этот каталог! Доступ к 500 д.е. открыт!','Помощь!',MB_ICONINFORMATION);
     money:=money+500;
     PageControl1.ActivePage:=TabSheet1;
     PageControl1.OnChange(self);
     xak.Close;
    end
    else
     begin
      Application.MessageBox('Опля... Приехали... Доигрались... Вас засекли! 300 д.е. уходят!','Помощь!',MB_ICONINFORMATION);
      inc(arest);
      vlasti:=vlasti-6;
      money:=money-300;
      PageControl1.ActivePage:=TabSheet1;
      PageControl1.OnChange(self);
      xak.Close;
     end;
   end;
 If not Unix then
  If TreeView1.Selected.Text='Administrator' then
   begin
    If (random(7)<>1) and (not AvOn) then begin
     Application.MessageBox('Запущенный вирус сносит защиту к каталогу и достаёт для вас 500 д.е.!','Помощь!',MB_ICONINFORMATION);
     money:=money+500;
     PageControl1.ActivePage:=TabSheet1;
     PageControl1.OnChange(self);
     xak.Close;
    end
    else
     begin
      Application.MessageBox('Опля... Приехали... Доигрались... Вас засекли! 300 д.е. уходят!','Помощь!',MB_ICONINFORMATION);
      vlasti:=vlasti-6;
      inc(arest);
      money:=money-300;
      PageControl1.ActivePage:=TabSheet1;
      PageControl1.OnChange(self);
      xak.Close;
     end;
   end;
end;

procedure TXak.FormActivate(Sender: TObject);
begin
 ProgressBar1.Position:=100;
 MainForm.Timer1.Enabled:=false;
 Pagecontrol1.ActivePage:=Tabsheet1;
 Tabsheet3.tabVisible:=false;
 Button1.Enabled:=true;
 Button2.Enabled:=true;
 ProgressBar1.Position := ProgressBar1.Max;
 ProgressBar2.Position := ProgressBar2.Max;
 q1:=0;
end;

procedure TXak.N8Click(Sender: TObject);
begin
	If InetTraffic>=10 then
	begin
		if Down = nil then Application.CreateForm(TDown, Down);
		Down.ShowModal;
	end
	else	Application.MessageBox('Секретная программа "весит" 10 Мб. У вас недостаточно преоплаченного трафика для ее загрузки!','Помощь!',MB_ICONSTOP);
end;

procedure TXak.Button2Click(Sender: TObject);
begin
 If MainForm.Label30.Caption<>'Нет' then begin
  If mainform.Label28.Caption<>'Нет' then begin
   SoftSelect.Caption:='Выбор программ для хакерства';
   dataprm:='Hacking';
   assignfile(data,dir+'\Data\Hacking.dat');
   SoftSelect.ShowModal;
  end
  else
   Application.MessageBox('Нет CD-ROM!','Помощь!',mb_iconstop);
 end
 else
  Application.MessageBox('Для начала необходимо установить операционную систему на компьютер!','Помощь!',MB_ICONSTOP);
end;

procedure TXak.Outline1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (KEY=VK_DELETE) and (TreeView1.Selected.Text<>'C:') and (TreeView1.Selected.Text<>'/') then begin
  if random(3)<>2 then begin
   TreeView1.Selected.Delete;
   Nastr:=Nastr+3;
   Application.MessageBox('Испортим жизнь пользователю этого компьютера! Ваше настроение заметно улучшилось!','Помощь!',MB_ICONINFORMATION);
  end
  else
   Application.MessageBox('У вас нет прав администратора!','Помощь!',MB_ICONSTOP);
 end;
end;

procedure TXak.N10Click(Sender: TObject);
begin
 if (TreeView1.Selected.Text<>'C:') and (TreeView1.Selected.Text<>'/') then begin
  if random(3)<>2 then begin
   TreeView1.Selected.Delete;
   Nastr:=Nastr+3;
   Application.MessageBox('Испортим жизнь пользователю этого компьютера! Ваше настроение заметно улучшилось!','Помощь!',MB_ICONINFORMATION);
  end
  else
   Application.MessageBox('У вас нет прав администратора!','Помощь!',MB_ICONSTOP);
 end;
end;

procedure TXak.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 CanClose:=Button2.Enabled;
end;

procedure TXak.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button1.OnClick(self);
end;

procedure TXak.OnEndPLay(Sender: TObject);
begin
 If (PlaySound<>nil) and (PLaySound.Position=PlaySound.Length) then begin
  If year>=2002 then
   CommandWIndow.Lines.Add('carrier '+IntToStr(inetspeed)+'/v92')
  else
   If (year<2002) and (year>1997) then
    CommandWIndow.Lines.Add('carrier '+IntToStr(inetspeed)+'/v90')
   else
    CommandWIndow.Lines.Add('carrier '+IntToStr(inetspeed)+'/v34');
  CommandWindow.Lines.Add('>');
  (Sender as TTimer).Enabled:=false;
 end;
end;

procedure TXak.TabSheet2Show(Sender: TObject);
begin
 If CmdHist = nil then CmdHist := TStringList.Create;
 CommandWindow.Clear;
 CommandWindow.Lines.Add(Parts[ActivePartition,0].Soft.OS);
 CommandWindow.Text:=CommandWindow.Text+'>';
 CommandWindow.SetFocus;
end;

procedure TXak.CommandWindowChange(Sender: TObject);
begin
 CommandWindow.SelStart:=Length(CommandWindow.Text);
end;

procedure TXak.CommandWindowKeyPress(Sender: TObject; var Key: Char);
begin
 if key in ['A'..'z','0'..'9','.',' ','/','\',':'] then
  CommandWindow.Lines.Strings[CommandWindow.Lines.Count-1]:=CommandWindow.Lines.Strings[CommandWindow.Lines.Count-1]+key;
end;

procedure TXak.CommandWindowKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 s, p1, p2, p3: string;
 i, p: integer;
begin
 if key=VK_BACK then
  if CommandWindow.Text[Length(CommandWindow.Text)]<>'>' then
   CommandWindow.Lines.Strings[CommandWindow.Lines.Count-1]:=copy(CommandWindow.Lines.Strings[CommandWindow.Lines.Count-1],1,Length(CommandWindow.Lines.Strings[CommandWindow.Lines.Count-1])-1);

	if (key = VK_LEFT) and (CommandWindow.Text[CommandWindow.SelStart] = '>') then key := ord(#0);

	if key = VK_UP then dec(CmdHistI);
	if key = VK_DOWN then inc(CmdHistI);

        if (key = VK_UP) or (key = VK_DOWN) then
	with CommandWindow.Lines do begin
		if CmdHistI < 0 then CmdHistI := CmdHist.Count - 1;
		if CmdHistI > CmdHist.Count - 1 then CmdHistI := 0;

		if CmdHist.Count <> 0 then
			Strings[Count - 1] := '>' + CmdHist.Strings[CmdHistI];
		key := ord(#0);
	end;

 if key=VK_RETURN then begin
  s:=ANSILOWERCASE(trim(copy(CommandWindow.Lines.Strings[CommandWindow.Lines.Count-1],2,255)))+' ';
  CmdHist.Append(s);
  p1:=copy(s,pos(' ',s)+1,255);
  p2:=copy(p1,pos(' ',p1)+1,255);
  p3:=copy(p2,pos(' ',p2)+1,255);
  p3:=copy(p3,1,pos(' ',p3)-1);
  p2:=copy(p2,1,pos(' ',p2)-1);
  p1:=copy(p1,1,pos(' ',p1)-1);
  s:=copy(s,1,pos(' ',s)-1);

  if s='atz' then begin
   CommandWindow.Lines.Add('OK!');
   atz:=true;
  end
  else
  if (s='atdp') or (s='atdt') then begin
   if atz then begin
    if p1=Telefon then begin
     If (InetSpeed<=56000) and (MainForm.N18.Checked) then begin
      If PlaySound=nil then begin
       PlaySound:=TMediaPLayer.Create(self);
       PLaySound.Parent:=Xak;
       PlaySound.Visible:=false;
      end;
      if (InetSpeed<56000) then PLaySound.FileName:=dir+'\Sounds\Modem_bad.wav'
      else PLaySound.FileName:=dir+'\Sounds\Modem_medium.wav';
      PLaySound.Open;
      PlaySound.Notify:=true;
      PLaySound.Play;
      If MyTimer1=nil then begin
       MyTimer1:=TTimer.Create(self);
       MyTimer1.OnTimer:=OnEndPLay;
       MyTimer1.Enabled:=true;
      end;
     end
     else
      begin
       CommandWindow.Lines.Add(s);
       sleep((1024000-InetSpeed) div 500);
       If year>=2002 then
        CommandWIndow.Lines.Add('carrier '+IntToStr(inetspeed)+'/v92')
       else
        If (year<2002) and (year>1997) then
         CommandWIndow.Lines.Add('carrier '+IntToStr(inetspeed)+'/v90')
        else
         CommandWIndow.Lines.Add('carrier '+IntToStr(inetspeed)+'/v34');
        CommandWindow.Lines.Add('Login: ');
        BeginLogin:=true;
      end;
     end
     else
      CommandWindow.Lines.Add('Алло! Мама? Да мама! Да я не один! Я с девушкой мама...');
   end
   else
    CommandWindow.Lines.Add('Выполните сброс настроек модема.');
  end
  else
  if CommandWindow.Lines.Strings[CommandWindow.Lines.Count-2]='Login: ' then
   CommandWindow.Lines.Add('Password: ')
  else
  if CommandWindow.Lines.Strings[CommandWindow.Lines.Count-2]='Password: ' then begin
   if (Trim(cmdHist.Strings[CmdHist.Count - 2]) = Login) and (s=Password) and (InetTraffic>2) then begin
    sleep((1024000-InetSpeed) div 500);
    CommandWindow.Lines.Add('Соединение установлено.');
    OnAir:=TStringList.Create;
    OnAir.Add(ServerIP);
   end
   else begin
    CommandWindow.Lines.Add('Доступ запрещен, поскольку такие имя и пароль недопустимы в этом домене.');
    BeginLogin:=false;
   end;
  end
  else

  // Стандартные программы
  if (s='help') or (s='man') then begin
   if p1='' then begin
    HackPrograms.Sorted:=true;
    CommandWindow.Lines.Add('Список доступных команд:');
    for i:=0 to HackPrograms.Count-1 do
     CommandWindow.Lines.Add(#9+HackPrograms.Strings[i]);
    CommandWindow.Lines.Add(#9+Parts[ActivePartition,0].Soft.FileManagerRun);
   end
   else
    if (HackPrograms.IndexOf(p1)>-1) then begin
     with CommandWindow.Lines do begin
      if p1='atz' then Add('Сброс настроек модема.') else
      if (p1='atdt') or (p1='atdt') then Add('Выполнить набор номера. Параметр 1 - телефонный номер.') else
      if p1='ping' then Add('Отправка эхо-запроса удаленному компьютеру. Параметр 1 - IP-адрес удаленного компьютера.') else
      if p1='mkdir' then Add('Создание директории. Параметр 1 - имя директории.') else
      if (p1='dir') or (p1='ls') then Add('Вывод содержимого текущей директории.') else
      if p1='cd' then Add('Вывод имени или смена текущей директории. Параметр 1 - имя директории.') else
      if p1='exit' then Add('Выход из консоли.') else
      if (p1='ifconfig') or (p1='ipconfig') then Add('Отображение текущих параметров сети.') else
      if (p1='rm') or (p1='erase') or (p1='del') then Add('Удаление файла или директории. Параметр 1 - имя файла или директории.') else
      if (p1='man') or (p1='help') then Add('Вывод справочных сведений о команде. Параметр 1 - имя команды.') else
      if (p1='ren') or (p1='rename') then Add('Переименования директории или файла. Параметр 1 - имя файла или диретории.') else
      if (p1='cls') or (p1='clear') then Add('Очистка содержимого экрана.') else
      if p1='scanpas' then Add('Подбор пароля к файлу или дерктории. Параметр 1 - имя файла или директории.') else
      if p1='ports' then Add('Сканирование портов удаленного компьютера. Параметр 1 - IP-адрес удаленного компьютера.') else
      if p1='afire' then Add('Запуск программы anti-firewall.') else
      if p1='rcontrol' then Add('Подключение к удаленному компьютеру через порт. Параметр 1 - IP-адрес удаленного компьютера. Параметр 2 - порт для подключения. Примечание: параметры 1 и 2 разделяются символом :.') else
      if p1='stealth' then Add('Запуск программы stealth-маскировки.') else
      if p1='fping' then Add('DoS-атака удаленного компьютера. Параметр 1 - IP-адрес удаленного компьютера.') else
      if p1='osinfo' then Add('Вывод сведений об операционной системе удаленного компьютера. Параметр 1 - IP-адрес удаленного компьютера.') else
      if p1='nv' then Add('Запуск сетевого вируса в выбранной директории. Параметр 1 - имя директории.') else
      if p1='sfscan' then Add('Поиск и попытка выгрузки брандмауера на удаленном компьютере. Параметр 1 - TP-адрес удаленного компьютера.') else
      if p1='avunload' then Add('Поиск и попытка выгрузки антивируса на удаленном компьютере. Параметр 1 - IP-адрес удаленного компьютера.') else
      if p1='fmtall' then Add('Проверка и попытка снятия защиты с директории. Параметр 1 - имя директории.');
     end;
    end
    else
     if p1=Parts[ActivePartition,0].Soft.FileManagerRun then CommandWindow.Lines.Add('Запуск файлового менеджера.')
     else CommandWindow.Lines.Add('Отсутствует справка по команде '+p1);
  end
  else
  if ((s='cls') or (s='clear')) and (HackPrograms.IndexOf(s)>-1) then
   CommandWindow.Clear
  else
  if ((s='ipconfig') or (s='ifconfig')) and (HackPrograms.IndexOf(s)>-1) and (BeginLogin) then begin
   CommandWindow.Lines.Add(MainForm.Label29.Caption+' - адаптер');
   CommandWindow.Lines.Add('IP-адрес клиента - '+YourIP);
   CommandWindow.Lines.Add('IP-адрес сервера - '+ServerIP);
   CommandWindow.Lines.Add('Маска подсети - 255.255.255.255');
  end
  else
  if (s='ping') and (HackPrograms.IndexOf(s)>-1) and (BeginLogin) then begin
   if CheckIP(p1) then begin
    Unix:=Random(2)=1;
    for i:=1 to 4 do begin
     if (OnAir.IndexOf(p1)>-1) or (random(2)<>1) then begin
      CommandWindow.Lines.Append('64 байта получено от '+p1+'. Время '+IntToStr((1024000-InetSpeed) div 500)+' мс.');
      if (OnAir.IndexOf(p1)=-1) and (p1<>YourIP) then
       OnAir.Add(p1);
     end
     else
      CommandWindow.Lines.Append('Заданный узел недоступен.');
     sleep((1024000-InetSpeed) div 500);
    end
   end
   else
    CommandWindow.Lines.Add('Неправильный IP-адрес.');
  end
  else
  if ((s='dir') or (s='ls')) and (HackPrograms.IndexOf(s)>-1) and (BeginLogin) then begin
   CommandWindow.Lines.Add('Список директорий:');
   for i:=0 to TreeView1.Items.Count-1 do
    if TreeView1.Items[i].Parent=Item then
     CommandWindow.Lines.Append(TreeView1.Items[i].Text);
  end
  else
  if (s='mkdir') and (HackPrograms.IndexOf(s)>-1) and (BeginLogin) then begin
   if p1<>'' then begin
    TreeView1.Items.AddChild(Item,p1);
    Nastr:=Nastr+0.2;
   end;
  end
  else
  if (s='cd') and (HackPrograms.IndexOf(s)>-1) and (BeginLogin) then begin
   if p1='\' then
    Item:=TreeView1.Items[0]
   else
    if (p1='..') and (Item.Level>0) then
     Item:=Item.Parent
    else
    if p1='' then
     CommandWindow.Lines.Add('Текущая директория - '+Item.Text)
    else
     for i:=0 to TreeView1.Items.Count-1 do
      if (ANSILOWERCASE(TreeView1.Items[i].Text)=p1) and (TreeView1.Items[i].Parent=Item) then begin
       Item:=TreeView1.Items[i];
       break;
      end;
  end
  else
  if (s=Parts[ActivePartition,0].Soft.FileManagerRun) and (TreeView1.Items.Count<>0) and (BeginLogin) then begin
   TabSheet3.tabVisible:=true;
   PageControl1.ActivePage:=TabSheet3;
  end
  else
  if s='exit' then begin
   PageControl1.ActivePage:=TabSheet1;
   Xak.Close;
  end
  else
  if (s='rm') or (s='erase') or (s='del') and (HackPrograms.IndexOf(s)>-1) and (BeginLogin) then begin
   if p1<>'' then
    for i:=0 to TreeView1.Items.Count-1 do
     if (ANSILOWERCASE(TreeView1.Items[i].Text)=p1) and (TreeView1.Items[i].Parent=Item) then begin
      TreeView1.Items[i].Delete;
      Nastr:=Nastr+0.2;
      break;
     end;
  end
  else
  if (s='ren') or (s='rename') and (HackPrograms.IndexOf(s)>-1) and (BeginLogin) then begin
   if (p1<>'') and (p2<>'') then
    for i:=0 to TreeView1.Items.Count-1 do
     if (ANSILOWERCASE(TreeView1.Items[i].Text)=p1) and (TreeView1.Items[i].Parent=Item) then begin
      TreeView1.Items[i].Text:=p2;
      Nastr:=Nastr+0.2;
      break;
     end;
  end
  else

  // Хакерские программы
  if (s='ports') and (HackPrograms.IndexOf(s)>-1) and (BeginLogin) then begin
   if OnAir.IndexOf(p1)>-1 then begin
    if PortList=nil then
     PortList:=TStringList.Create;
    PortList.Clear;
    p:=random(7);
    AvOn:=random(2)=1;
    FireOn:=random(2)=1;
    if p<>0 then begin
     CommandWIndow.Lines.Append('Список открытых портов удаленной машины:');
     for i:=1 to p do begin
      PortList.Add(IntToStr(i*10+random(9)));
      CommandWIndow.Lines.Append(#9+PortList.Strings[i-1]);
      sleep((1024000-InetSpeed) div 500);
     end;
    end
    else
     CommandWindow.Lines.Append('На удаленной машине нет открытых портов, либо она не отвечает.');
   end
  end
  else
  if (s='afire') and (HackPrograms.IndexOf(s)>-1) and (BeginLogin) then
   Timer1.Interval:=500
  else
  if (s='stealth') and (HackPrograms.IndexOf(s)>-1) and (BeginLogin) then
   Timer1.Enabled:=false
  else
  if (s='scanpas') and (HackPrograms.IndexOf(s)>-1) and (BeginLogin) then begin
   if p1<>'' then
    for i:=0 to TreeView1.Items.Count-1 do
     if (ANSILOWERCASE(TreeView1.Items[i].Text)=p1) and (TreeView1.Items[i].Parent=Item) then begin
      TreeView1.Items[i].Selected:=true;
      N1.OnClick(self);
      break;
     end;
  end
  else
  if (s='nv') and (HackPrograms.IndexOf(s)>-1) and (BeginLogin) then begin
   if p1<>'' then
    for i:=0 to TreeView1.Items.Count-1 do
     if (ANSILOWERCASE(TreeView1.Items[i].Text)=p1) and (TreeView1.Items[i].Parent=Item) then begin
      TreeView1.Items[i].Selected:=true;
      N3.OnClick(self);
      break;
     end;
  end
  else
  if (s='fmtall') and (HackPrograms.IndexOf(s)>-1) and (BeginLogin) then begin
   if p1<>'' then
    for i:=0 to TreeView1.Items.Count-1 do
     if (ANSILOWERCASE(TreeView1.Items[i].Text)=p1) and (TreeView1.Items[i].Parent=Item) then begin
      TreeView1.Items[i].Selected:=true;
      N2.OnClick(self);
      break;
     end;
  end
  else
  if (s='fping') and (HackPrograms.IndexOf(s)>-1) and (BeginLogin) then begin
   if OnAir.IndexOf(p1)>-1 then
    if (not FireOn) or (Random(10)=7) then
     if p1=ServerIP then begin
      BeginLogin:=false;
      atz:=false;
      TreeView1.Items.Clear;
      TabSheet3.TabVisible:=false;
      CommandWindow.Lines.Add('Произошел разрыв соединения с удаленной машиной.');
     end
     else
      begin
       OnAir.Delete(OnAir.IndexOf(p1));
       CommandWindow.Lines.Add('Выполнено!');
       Nastr:=Nastr+0.4;
      end;
  end
  else
  if (s='rcontrol') and (HackPrograms.IndexOf(s)>-1) and (BeginLogin) then begin
   if (OnAir.IndexOf(copy(p1,1,pos(':',p1)-1))>-1) and (PortList.IndexOf(copy(p1,pos(':',p1)+1,255))>-1) then begin
    if (not FireOn) or (random(10)=7) then
     Timer1.Interval:=250;
     if FireOn then
      Timer1.Enabled:=true;
     If Unix then begin
      TreeView1.LoadFromFile(dir+'\Inf\Unix.inf');
      inc(unixxak);
      InetTraffic:=InetTraffic-3;
     end
     else
      begin
       TreeView1.LoadFromFile(dir+'\Inf\Windows.inf');
       inc(winxak);
       InetTraffic:=InetTraffic-4;
      end;
     Item:=TreeView1.Items[0];
    end;
  end
  else
  if (s='sfscan') and (HackPrograms.IndexOf(s)>-1) and (BeginLogin) then begin
   if OnAir.IndexOf(p1)>-1 then
    if random(5)<>4 then begin
     CommandWIndow.Lines.Add('Выполнено!');
     FireOn:=false;
    end
    else
     begin
      Application.MessageBox('За взлом провайдера вы были отключены от интернета из заплатили штраф 750 д.е.!','Помощь!',MB_ICONSTOP);
      Money:=Money-750;
      Nastr:=Nastr-3;
      Vlasti:=Vlasti-6;
      inc(arest);
      InetTraffic:=0;
      PageControl1.ActivePage:=TabSheet1;
      xak.Close;
     end;
  end
  else
  if (s='osinfo') and (HackPrograms.IndexOf(s)>-1) and (BeginLogin) then begin
   sleep((1024000-InetSpeed) div 500);
   if OnAir.IndexOf(p1)>-1 then begin
    if Unix then
     CommandWindow.Lines.Add('На удаленной машине установлена *nix подобная операционная система.')
    else
     CommandWindow.Lines.Add('На удаленной машине установлена Windows.');
   end
   else
    CommandWindow.Lines.Add('Не удается определить ОС установленную на удаленной машине.');
  end
  else
  if (s='avunload') and (HackPrograms.IndexOf(s)>-1) and (BeginLogin) then begin
   if OnAir.IndexOf(p1)>-1 then
    if random(5)<>4 then begin
     CommandWIndow.Lines.Add('Выполнено!');
     AvOn:=false;
    end;
  end
  else

  // Команды для отладки (разработчика)
  if (s='iplist') and (BeginLogin) then begin
   CommandWindow.Lines.Add('Список просканированных IP-адресов:');
   for i:=0 to OnAir.Count-1 do
    CommandWindow.Lines.Add(#9+OnAir.Strings[i]);
  end
  else
  if (s='portlist') and (PortList<>nil) and (BeginLogin) then begin
   CommandWindow.Lines.Add('Список открытых портов последней просканироанной машины:');
   for i:=0 to PortList.Count-1 do
    CommandWindow.Lines.Add(#9+PortList.Strings[i]);
  end
  else
  if (s='ipstatus') and (BeginLogin) then begin
   CommandWindow.Lines.Add('Состояние защиты удаленного компьютера:');
   if AvOn then CommandWindow.Lines.Add(#9+'Антивирус активен.')
   else CommandWindow.Lines.Add(#9+'Антивирус отсутствует.');
   if FireOn then CommandWindow.Lines.Add(#9+'Firewall активен.')
   else CommandWindow.Lines.Add(#9+'Firewall отсутствует.');
  end
  else
  
	// Пасхальные яйца
	if s = 'codename' then
	with CommandWindow.Lines do
	begin
		Append('Кодовые названия версий игры:');
		Append(#9+'1.x.x - Единорог');
		Append(#9+'2.x.x - XP');
		Append(#9+'3.x.x - 2000');
		Append(#9+'4.x.x - Феникс');
	end

  // Если ни одна из команд не является правильной....
  else
   CommandWindow.Lines.Add(s+' - неизвестная команда.');

 CommandWindow.Lines.Add('>');
 end;
end;

procedure TXak.TabSheet1Show(Sender: TObject);
begin
 Button1.Enabled:=true;
 Button2.Enabled:=true;
 TreeView1.Items.Clear;
 TabSheet3.TabVisible:=false;
 if OnAir<>nil then
  OnAir.Clear;
 atz:=false;
 BeginLogin:=false;
end;

procedure TXak.PageControl1Change(Sender: TObject);
begin
 If PageControl1.ActivePage<>TabSheet1 then begin
  Button2.Enabled:=false;
  Button1.Enabled:=false;
  TabSheet3.TabVisible:=false;
 end;
end;

procedure TXak.N13Click(Sender: TObject);
begin
 If InetTraffic>=2 then
  InetTraffic:=InetTraffic-2
 else
  begin
   InetTraffic:=0;
   Application.MessageBox('Закончился преоплаченный трафик за интернет. Купите больше трафика для продолжения работы!','Помощь!',MB_ICONSTOP);
   Close;
  end;
 If Unix then
  If TreeView1.Selected.Text='iptables' then
   begin
    If random(7)<>1 then begin
     FireOn:=false;
     Nastr:=Nastr+0.3;
     Timer1.Enabled:=false;
    end
    else
     begin
      Application.MessageBox('Опля... Приехали... Доигрались... Вас засекли! 300 д.е. уходят!','Помощь!',MB_ICONINFORMATION);
      inc(arest);
      vlasti:=vlasti-6;
      money:=money-300;
      PageControl1.ActivePage:=TabSheet1;
      PageControl1.OnChange(self);
      xak.Close;
     end;
   end;
 If not Unix then
  If TreeView1.Selected.Text='Agnitum Outpost Firewall' then
   begin
    If random(7)<>1 then begin
     FireOn:=false;
     Nastr:=Nastr+0.3;
     Timer1.Enabled:=false;
    end
    else
     begin
      Application.MessageBox('Опля... Приехали... Доигрались... Вас засекли! 300 д.е. уходят!','Помощь!',MB_ICONINFORMATION);
      vlasti:=vlasti-6;
      inc(arest);
      money:=money-300;
      PageControl1.ActivePage:=TabSheet1;
      PageControl1.OnChange(self);
      xak.Close;
     end;
   end;
end;

end.
