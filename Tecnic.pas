unit Tecnic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Param, jpeg;

type
  TTechnics = class(TForm)
    Button1: TButton;
    Button4: TButton;
    Image1: TImage;
    Label1: TLabel;
    Button2: TButton;
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Technics: TTechnics;

implementation

uses Monits;

{$R *.dfm}

procedure TTechnics.Button4Click(Sender: TObject);
begin
 Close;
end;

procedure TTechnics.Button2Click(Sender: TObject);
begin
 If Vozrast>=21 then begin
  Compl.Caption:='Выбор жилья';
  assignfile(harddata,dir+'\Data\Flat.dat');
  hardprm:='Квартира';
  Compl.Showmodal;
 end
 else
  Application.MessageBox('А вы еще не слишком молодой, чтобы распоряжаться недвижимостью родителей?','Помощь!',MB_ICONSTOP);
end;

procedure TTechnics.Button1Click(Sender: TObject);
begin
 Compl.Caption:='Выбор автомобилей';
 assignfile(harddata,dir+'\Data\Car.dat');
 hardprm:='Машина';
 Compl.Showmodal;
end;

procedure TTechnics.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=VK_ESCAPE) then
  Button4.OnClick(self);
end;

end.
