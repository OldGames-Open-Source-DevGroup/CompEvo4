unit PartitionMagic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Inifiles, ComCtrls, param, Main, SoftSel;

type
  TPartition = class(TForm)
    List1: TListView;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Image1: TImage;
    Button5: TButton;
    Button2: TButton;
    ProgressBar1: TProgressBar;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure DisplayParts;
    procedure List1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure List1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button7Click(Sender: TObject);
    procedure List1DblClick(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
 Partition: TPartition;
 Operation: shortstring='';

implementation

uses PartitionCreate, LoadOS;

{$R *.dfm}

procedure TPartition.Button1Click(Sender: TObject);
begin
 Close;
end;

procedure TPartition.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (key = vk_escape) and (Button1.Enabled) then
  button1.OnClick(self);
end;

procedure TPartition.FormActivate(Sender: TObject);
begin
 a:=-1; b:=-1;
 Button3.Visible:=false;
 Button4.Visible:=false;
 Button5.Visible:=false;
 Button2.Visible:=false;
 Button6.Visible:=false;
 Button7.Visible:=false;
 Button8.Visible:=false;
 If Operation='' then
  Button2.Visible:=true;
 If Operation='PMagic' then begin
  If (MainForm.Label54.Caption<>'fdisk') and (MainForm.Label54.Caption<>'Нет') then begin
   Button7.Visible:=true;
   WriteDiskStructure(dir+'\Temp\PartitionList.tmp');
  end
  else
   Application.MessageBox('Здесь вы можете изменять структуру разделов вашего жесткого диска. Будьте осторожны! Все изменения, которые вы делаете отменить будет невозможно!','Помощь!',MB_ICONINFORMATION);
  Button3.Visible:=true;
  Button4.Visible:=true;
  Button5.Visible:=true;
  Button8.Visible:=true;
 end;
 If Operation='Active' then
  Button6.Visible:=true;
 If Parts<>nil then
  DisplayParts;
 List1.OnClick(self);
end;

procedure TPartition.DisplayParts;
var
 i, j: integer;
 ExtSize: integer;
begin
 List1.Items.Clear;
 for i:=0 to Length(Parts)-1 do begin
  List1.Items.Add;
  j:=0;
  List1.Items[List1.Items.Count-1].Indent:=(i+10)*10+j;
  List1.Items[List1.Items.Count-1].Caption:=Parts[i,0].Labe1;
  if Parts[i,0].FileSystem='' then
   List1.Items[List1.Items.Count-1].SubItems.Add('*')
  else
   List1.Items[List1.Items.Count-1].SubItems.Add(Parts[i,0].FileSystem);
  List1.Items[List1.Items.Count-1].SubItems.Add(IntToStr(Parts[i,0].Size)+' Мб');
  List1.Items[List1.Items.Count-1].SubItems.Add(IntToStr(Parts[i,0].Free)+' Мб');
  If Parts[i,0].Active then
   List1.Items[List1.Items.Count-1].SubItems.Add('Активен')
  else
   List1.Items[List1.Items.Count-1].SubItems.Add('Нет');
  if Parts[i,0].FileSystem='' then
   List1.Items[List1.Items.Count-1].SubItems.Add('*')
  else
   List1.Items[List1.Items.Count-1].SubItems.Add('Основной');
  If Length(Parts[i])>1 then begin
   List1.Items.Add;
   List1.Items[List1.Items.Count-1].Caption:='';
   List1.Items[List1.Items.Count-1].SubItems.Add('*');
   ExtSize:=0;
   for j:=1 to Length(Parts[i])-1 do
    ExtSize:=ExtSize+Parts[i,j].Size;
   List1.Items[List1.Items.Count-1].SubItems.Add(IntToStr(ExtSize)+' Мб');
   List1.Items[List1.Items.Count-1].SubItems.Add(IntToStr(ExtSize)+' Мб');
   List1.Items[List1.Items.Count-1].SubItems.Add('*');
   List1.Items[List1.Items.Count-1].SubItems.Add('Дополнительный');
  end;
   for j:=1 to Length(Parts[i])-1 do begin
    List1.Items.Add;
    List1.Items[List1.Items.Count-1].Indent:=(i+10)*10+j;
    List1.Items[List1.Items.Count-1].Caption:=Parts[i,j].Labe1;
    If Parts[i][j].FileSystem<>'' then
     List1.Items[List1.Items.Count-1].SubItems.Add(Parts[i,j].FileSystem)
    else
     List1.Items[List1.Items.Count-1].SubItems.Add('*');
    List1.Items[List1.Items.Count-1].SubItems.Add(IntToStr(Parts[i][j].Size)+' Мб');
    List1.Items[List1.Items.Count-1].SubItems.Add(IntToStr(Parts[i][j].Free)+' Мб');
    List1.Items[List1.Items.Count-1].SubItems.Add('Нет');
    If Parts[i][j].FileSystem<>'' then
     List1.Items[List1.Items.Count-1].SubItems.Add('Логический')
    else
     List1.Items[List1.Items.Count-1].SubItems.Add('*');
   end;
   If i<Length(Parts)-1 then begin
    List1.Items.Add;
    List1.Items[List1.Items.Count-1].Caption:='----------';
    List1.Items[List1.Items.Count-1].SubItems.Add('----------');
    List1.Items[List1.Items.Count-1].SubItems.Add('----------');
    List1.Items[List1.Items.Count-1].SubItems.Add('----------');
    List1.Items[List1.Items.Count-1].SubItems.Add('----------');
    List1.Items[List1.Items.Count-1].SubItems.Add('----------');
   end;
 end;
end;

procedure TPartition.List1Click(Sender: TObject);
begin
 Button4.Enabled:=false;
 Button3.Enabled:=false;
 Button5.Enabled:=false;
 Button2.Enabled:=false;
 Button6.Enabled:=false;
 Button8.Enabled:=false;
 If List1.Selected<>nil then begin
  a:=-1; b:=-1;
  If (List1.Selected.Indent<>0) and (List1.Selected.SubItems[4]<>'Дополнительный') then begin
   a:=List1.Selected.Indent div 10 - 10;
   b:=List1.Selected.Indent mod 10;
  end;
  If List1.Selected.SubItems[4]='*' then
   Button4.Enabled:=true
  else
   If (List1.Selected.Caption<>'----------') and (List1.Selected.SubItems[4]<>'Дополнительный') then begin
    Button3.Enabled:=true;
    Button5.Enabled:=true;
    Button2.Enabled:=true;
    Button8.Enabled:=true;
    if List1.Selected.SubItems[4]<>'Логический' then
     Button6.Enabled:=true;
   end;
 end;
end;

procedure TPartition.Button3Click(Sender: TObject);
begin
	WhatToDo:='Delete';
	if CreatePart = nil then Application.CreateForm(TCreatePart, CreatePart);
	CreatePart.ShowModal;
end;

procedure TPartition.Button4Click(Sender: TObject);
begin
	WhatToDo:='Create';
	if CreatePart = nil then Application.CreateForm(TCreatePart, CreatePart);
	CreatePart.ShowModal;
end;

procedure TPartition.Button5Click(Sender: TObject);
begin
	WhatToDo:='Format';
	if CreatePart = nil then Application.CreateForm(TCreatePart, CreatePart);
	CreatePart.ShowModal;
end;

procedure TPartition.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Operation:='';
end;

procedure TPartition.Button2Click(Sender: TObject);
var
 CanInstall: boolean;
begin
 If b=0 then begin
  If not Parts[a,b].Active then
   Application.MessageBox('Данный раздел является скрытым. Доступ к нему невозможен!','Помощь!',MB_ICONSTOP)
  else
   begin
    If dataprm='OS' then begin
     CanInstall:=false;
     while pos('|',osfs)<>0 do begin
      If copy(osfs,1,pos('|',osfs)-1)=Parts[a,b].FileSystem then begin
       CanInstall:=true;
       Break;
      end;
      osfs:=copy(osfs,pos('|',osfs)+1,255);
     end;
     If osfs=Parts[a,b].FileSystem then
      CanInstall:=true;
     If not CanInstall then
      Application.MessageBox(PChar(SoftSelect.ComboBox1.Items.Strings[SoftSelect.ComboBox1.ItemIndex]+' не может работать с файловой системой '+Parts[a,b].FileSystem+'!'),'Помощь!',MB_ICONSTOP)
     else
      Close;
    end
    else
     Close;
   end;
 end
 else
  If dataprm='OS' then
   Application.MessageBox('Чтобы иметь возможность загружать операционную систему ее необходимо установить на основной раздел жесткого диска!','Помощь!',MB_ICONSTOP)
  else
   Close;
end;

procedure TPartition.List1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=VK_Return) and (Button2.Visible) and (Button2.Enabled) then
  Button2.OnClick(self);
end;

procedure TPartition.Button6Click(Sender: TObject);
var
 i: integer;
begin
 If not Parts[a,b].Active then begin
  for i:=0 to Length(Parts)-1 do
   Parts[i,0].Active:=False;
  Parts[a,b].Active:=true;
  MainForm.Label30.Caption:=Parts[a,b].Soft.OS;
  os:=Parts[a,b].Soft.OSType;
  ActivePartition:=a;
  DisplayParts;
  Loading.ShowModal;
 end
 else
  Application.MessageBox('Данный раздел уже является активным!','Помощь!',MB_ICONINFORMATION);
end;

procedure TPartition.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 CanClose:=Button1.Enabled;
end;

procedure TPartition.Button7Click(Sender: TObject);
begin
 If FileExists(dir+'\Temp\PartitionList.tmp') then begin
  LoadDiskStructure(dir+'\Temp\PartitionList.tmp');
  DisplayParts;
  Partition.OnActivate(self);
 end
 else
  Application.MessageBox('Произошла ошибка при восстановлении исходной структуры разделов жесткого диска. Невозможно отменить изменения!','Помощь!',MB_ICONSTOP);
end;

procedure TPartition.List1DblClick(Sender: TObject);
begin
	If (Operation = '') and (Button2.Enabled) then Button2.OnClick(self);
	If (Operation = 'Active') and (Button6.Enabled) then Button6.OnClick(self);
end;

procedure TPartition.Button8Click(Sender: TObject);
var
 s: shortstring;
begin
 s:=InputBox('Метка','Введите метку для этого раздела',Parts[a,b].Labe1);
 If length(s)<=11 then
  Parts[a,b].Labe1:=s
 else
  Application.MessageBox('Имя метки раздела не должно превышать 11 символов.','Помощь!',MB_ICONSTOP);
 DisplayParts;
end;

end.
