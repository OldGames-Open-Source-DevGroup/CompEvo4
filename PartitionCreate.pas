unit PartitionCreate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Param, Main;

type
  TCreatePart = class(TForm)
    GroupBox1: TGroupBox;
    Label6: TLabel;
    ComboBox3: TComboBox;
    Label7: TLabel;
    Edit3: TEdit;
    Label8: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Timer1: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CreatePart: TCreatePart;
  WhatToDo:shortstring;

implementation

uses PartitionMagic;

{$R *.dfm}

procedure TCreatePart.FormActivate(Sender: TObject);
var
 i: integer;
begin
 ComboBox3.Enabled:=true;
 ComboBox1.Enabled:=false;
 CheckBox1.Enabled:=false;
 Edit4.Enabled:=true;
 Edit4.Text:='';
 ComboBox3.Items.LoadFromFile(dir+'\Inf\FileSystem.ini');
 ComboBox3.ItemIndex:=0;
 If WhatToDo='Format' then begin
  Button1.Caption:='Форматировать';
  CreatePart.Caption:='Форматирование раздела';
  Edit3.Text:=IntToStr(Parts[a,b].Size);
  Edit3.Enabled:=false;
  Edit4.Text:=Parts[a,b].Labe1;
  for i:=0 to ComboBox3.Items.Count-1 do
   If ComboBox3.Items.Strings[i]=Parts[a,b].FileSystem then begin
    ComboBox3.ItemIndex:=i;
    Break;
   end;
 end;
 If WhatToDo='Create' then begin
  Edit3.Enabled:=true;
  Edit3.Text:=IntToStr(Parts[a,b].Size);
  If b=0 then begin
   ComboBox1.ItemIndex:=0;
   CheckBox1.Checked:=false;
  end
  else
   ComboBox1.ItemIndex:=1;
  Button1.Caption:='Создать';
  CreatePart.Caption:='Создание нового раздела';
 end;
 If WhatToDo='Delete' then begin
  Button1.Caption:='Удалить';
  CreatePart.Caption:='Удаление раздела';
  for i:=0 to ComboBox3.Items.Count-1 do
   If ComboBox3.Items.Strings[i]=Parts[a,b].FileSystem then begin
    ComboBox3.ItemIndex:=i;
    Break;
   end;
  ComboBox3.Enabled:=false;
  Edit3.Text:=IntToStr(Parts[a,b].Size);
  Edit4.Text:=Parts[a,b].Labe1;
  Edit3.Enabled:=false;
  Edit4.Enabled:=false;
 end;
end;

procedure TCreatePart.Button2Click(Sender: TObject);
begin
 Close;
end;

procedure TCreatePart.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_escape then
  Close;
 If key=vk_return then
  Button1.OnClick(self);
end;

procedure TCreatePart.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
 If key in ['0'..'9'] then

 else
  If (key<>#8) then
   key:=#0;
end;

procedure TCreatePart.Edit3Change(Sender: TObject);
begin
 If Edit3.Text<>'' then begin
  Button1.Enabled:=true;
  If StrToInt(Edit3.Text)=Parts[a,b].Size then begin
   ComboBox1.ItemIndex:=0;
   ComboBox1.Enabled:=false;
   CheckBox1.Checked:=false;
   CheckBox1.Enabled:=false;
  end
  else
   begin
    ComboBox1.Enabled:=true;
    If Length(Parts)>3 then begin
     CheckBox1.Checked:=true;
     CheckBox1.Enabled:=false;
    end
    else
     CheckBox1.Enabled:=true;
   end;
 end
 else
  Button1.Enabled:=false;
end;

procedure TCreatePart.Timer1Timer(Sender: TObject);
var
 i, j: integer;
begin
 If Partition.ProgressBar1.Position<100 then
  Partition.ProgressBar1.Position:=Partition.ProgressBar1.Position+random(5)
 else
 begin
  Timer1.Enabled:=false;
  Partition.Button7.Enabled:=true;
  If WhatToDo='Create' then begin
   If StrToInt(Edit3.Text)<Parts[a,b].Size then begin
    If b<>0 then begin
     setlength(Parts[a],Length(Parts[a])+1);
     for i:=Length(Parts[a])-1 downto b+1 do
      Parts[a,i]:=Parts[a,i-1];
     Parts[a,b+1].Size:=Parts[a,b].Size-StrToInt(Edit3.Text);
     Parts[a,b+1].Free:=Parts[a,b+1].Size;
     Parts[a,b].Size:=StrToInt(Edit3.Text);
     Parts[a,b].Free:=StrToInt(Edit3.Text);
    end
    else
     begin
      case ComboBox1.ItemIndex of
       0:begin
          If not CheckBox1.Checked then begin
           setlength(Parts,Length(Parts)+1);
           setlength(Parts[length(Parts)-1],Length(Parts[length(Parts)-1])+1);
           for i:=Length(Parts)-1 downto a+1 do
            Parts[i,0]:=Parts[i-1,0];
           Parts[a+1,0].Size:=Parts[a,0].Size-StrToInt(Edit3.Text);
           Parts[a+1,0].Free:=Parts[a+1,0].Size;
           Parts[a,0].Size:=StrToInt(Edit3.Text);
           Parts[a,0].Free:=StrToInt(Edit3.Text);
          end
          else
           begin
            setlength(Parts[a],Length(Parts[a])+1);
            for i:=Length(Parts[a])-1 downto b+1 do
             Parts[a,i]:=Parts[a,i-1];
            Parts[a,b+1].Size:=Parts[a,b].Size-StrToInt(Edit3.Text);
            Parts[a,b+1].Free:=Parts[a,b+1].Size;
            Parts[a,b].Size:=StrToInt(Edit3.Text);
            Parts[a,b].Free:=StrToInt(Edit3.Text);
           end;
         end;
       1:begin
          setlength(Parts[a],Length(Parts[a])+1);
          Parts[a,b].Size:=Parts[a,b].Size-StrToInt(Edit3.Text);
          Parts[a,b].Free:=Parts[a,b].Size;
          Parts[a,b+1].Size:=StrToInt(Edit3.Text);
          Parts[a,b+1].Free:=StrToInt(Edit3.Text);
         end;
      end;
   end;
   If (b=0) and (ComboBox1.ItemIndex=1) then begin
    Parts[a,b+1].Labe1:=Edit4.Text;
    Parts[a,b+1].FileSystem:=ComboBox3.Items.Strings[ComboBox3.ItemIndex];
   end
   else
    begin
     Parts[a,b].Labe1:=Edit4.Text;
     Parts[a,b].FileSystem:=ComboBox3.Items.Strings[ComboBox3.ItemIndex];
    end;
  end
  else
   begin
    Parts[a,b].Labe1:=Edit4.Text;
    Parts[a,b].FileSystem:=ComboBox3.Items.Strings[ComboBox3.ItemIndex];
   end;
  end;
  If WhatToDo='Format' then begin
   Parts[a,b].Labe1:=Edit4.Text;
   Parts[a,b].FileSystem:=ComboBox3.Items.Strings[ComboBox3.ItemIndex];
   Parts[a,b].Free:=Parts[a,b].Size;
  end;
  If WhatToDo='Delete' then begin
   Parts[a,b].Labe1:='';
   Parts[a,b].FileSystem:='';
   Parts[a,b].Free:=Parts[a,b].Size;
   Parts[a,b].Active:=False;
   Parts[a,b].Soft.OS:='';
   Parts[a,b].Soft.OSType:='';
   for i:=0 to Length(Parts[a])-1-1 do
    if (Parts[a,i].FileSystem='') and (Parts[a,i+1].FileSystem='') then begin
     Parts[a,i].Size:=Parts[a,i].Size+Parts[a,i+1].Size;
     Parts[a,i].Free:=Parts[a,i].Size;
     for j:=i+1 to Length(Parts[a])-1-1 do
      Parts[a,j]:=Parts[a,j+1];
     setlength(Parts[a],Length(Parts[a])-1);
    end;
   for i:=0 to Length(Parts)-1-1 do
    If (Parts[i,0].FileSystem='') and (Parts[i+1,0].FileSystem='') then
     If (Length(Parts[i])=1) and (Length(Parts[i+1])=1) then begin
      Parts[i,0].Size:=Parts[i,0].Size+Parts[i+1,0].Size;
      Parts[i,0].Free:=Parts[i,0].Size;
      for j:=i+1 to Length(Parts)-1-1 do
       Parts[j,0]:=Parts[j+1,0];
      setlength(Parts,Length(Parts)-1);
     end;
  end;
  Partition.List1.Enabled:=true;
  Partition.Button1.Enabled:=true;
  Partition.DisplayParts;
  MainForm.ClearPrograms(1,a);
  Close;
 end;
end;

procedure TCreatePart.Button1Click(Sender: TObject);
var
 i: smallint;
begin
 If StrToInt(Edit3.Text)>Parts[a,b].Size then
  Application.MessageBox('Невозможно создать раздел такого размера!','Помощь!',MB_ICONSTOP)
 else
  If StrToInt(Edit3.Text)<256 then
   Application.MessageBox('Минимальный размер создаваемого раздела 256 Мб!','Помощь!',MB_ICONSTOP)
  else
   begin
    If WhatToDo='Create' then
     If 151-HardSpeed div 100>1 then
      Timer1.Interval:=151-HardSpeed div 100
     else
      Timer1.Interval:=1;
    If WhatToDo='Format' then
     Timer1.Interval:=453-HardSpeed div 100;
    If WhatToDo='Delete' then
     Timer1.Interval:=175-HardSpeed div 100;
    Partition.ProgressBar1.Position:=0;
    If ((WhatToDo='Delete') or (WhatToDo='Format')) and (Parts[a,b].Soft.OSType<>'') then begin
     If Application.MessageBox('Похоже, что на выбранном разделе установлена операционная система. Выбранное действие приведет к ее удалению вместе со всеми установленными программами. Вы действительно хотите продолжить?','Помощь!',MB_ICONQUESTION+MB_YESNO)=IDYES then
      Timer1.Enabled:=true;
    end
    else
     Timer1.Enabled:=true;
    for i:=0 to Partition.ComponentCount-1 do
     If Partition.Components[i] is TButton then
      (Partition.Components[i] as TButton).Enabled:=false;
    Partition.Button1.Enabled:=false;
    Partition.List1.Enabled:=false;
    Close;
   end;
end;

end.
