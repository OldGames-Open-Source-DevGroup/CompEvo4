unit Skn;

interface

uses
  Windows, Forms, inifiles, param, Main, ShellAPI, ActnList,
  ZipMstr, Controls, StdCtrls, Classes, SysUtils;

type
  TChSkin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    Label6: TLabel;
    ActionList1: TActionList;
    SearchExecute: TAction;
    ListBox1: TListBox;
    Button4: TButton;
    Label7: TLabel;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure SearchExecuteExecute(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChSkin: TChSkin;

implementation

{$R *.dfm}

procedure TChSkin.Button3Click(Sender: TObject);
begin
 Close;
end;

procedure TChSkin.Button2Click(Sender: TObject);
begin
 Mainform.ChangeSkin.execute;
end;

procedure TChSkin.Label4Click(Sender: TObject);
begin
 ShellExecute(Handle,nil,Pchar('mailto:'+Label4.Caption+'?subject='+ListBox1.Items.Strings[ListBox1.ItemIndex]),nil,nil,handle);
end;

procedure TChSkin.Button1Click(Sender: TObject);
begin
 ShellExecute(Handle,nil,'http://www.RPprogs.narod.ru/Soft/ScreenShots/CE4skins.htm',nil,nil,handle);
end;

procedure TChSkin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 MainForm.Timer1.Enabled:=true;
end;

procedure TChSkin.FormActivate(Sender: TObject);
begin
 MainForm.Timer1.Enabled:=false;
 SearchExecute.Execute;
 If MainForm.N19.Checked=true then
  Button4.Enabled:=true
 else
  Button4.Enabled:=false;
end;

procedure TChSkin.SearchExecuteExecute(Sender: TObject);
var
 Skins: TSearchRec;
 SearchResult: smallint;
begin
 ListBox1.Items.Clear;
 SearchResult:=FindFirst(dir+'\Skins\*.ces', faAnyFile, Skins);
 while SearchResult=0 do begin
  ListBox1.Items.Add(copy(Skins.Name,1,pos('.',Skins.Name)-1));
  SearchResult:=FindNext(Skins);
 end;
 FindClose(Skins);
 ListBox1.ItemIndex:=0;
 ListBox1.OnClick(self);
end;

procedure TChSkin.ComboBox1Change(Sender: TObject);
begin
 SearchExecute.Execute;
end;

procedure TChSkin.ListBox1Click(Sender: TObject);
begin
 sFile:=dir+'\Skins\'+ListBox1.Items.Strings[ListBox1.ItemIndex]+'.ces';
 Skin:=Tinifile.Create(sFile);
 Label2.Caption:=skin.ReadString('About','Author','');
 Label4.Caption:=skin.ReadString('About','Mail','');
 Memo1.Lines.Clear;
 Memo1.Lines.Add(skin.ReadString('About','Comment',''));
end;

procedure TChSkin.Button4Click(Sender: TObject);
begin
 If FileExists(dir+'\SkinCreator2.exe') then
  ShellExecute(Handle,nil,Pchar(dir+'\SkinCreator2.exe'),nil,Pchar(dir+'\'),SW_RESTORE)
 else
  If Application.MessageBox('Редактор скинов не установлен. Хотите посетить сайт создателя скинов?','Помощь!',MB_ICONQUESTION+MB_YESNO)=IDYES then
   ShellExecute(Handle,nil,'http://www.RPprogs.narod.ru/Soft/CompEvo4.htm',nil,nil,SW_RESTORE)
end;

procedure TChSkin.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (key=VK_RETURN) then
  Mainform.ChangeSkin.execute;
end;

procedure TChSkin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button3.OnClick(self);
end;

end.
