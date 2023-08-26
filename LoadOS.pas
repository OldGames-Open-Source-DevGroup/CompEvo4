unit LoadOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, jpeg, PartitionMagic, param, GifImage,
  StdCtrls, Main;

type
  TLoading = class(TForm)
    Image1: TImage;
    ProgressBar1: TProgressBar;
    Image2: TImage;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CloseForm(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Loading: TLoading;

implementation

uses Soft;

{$R *.dfm}

procedure TLoading.Timer1Timer(Sender: TObject);
begin
 If ProgressBar1.Position<100 then
  ProgressBar1.Position:=ProgressBar1.Position+random(5)
 else
  begin
   Timer1.Enabled:=false;
   If ANSILOWERCASE(Parts[a,0].Soft.OSType)='win' then
    Image2.Picture.LoadFromFile(dir+'\Logo\Windows.gif')
   else
    If ANSILOWERCASE(Parts[a,0].Soft.OSType)='lin' then
     Image2.Picture.LoadFromFile(dir+'\Logo\Linux.gif')
    else
     If ANSILOWERCASE(Parts[a,0].Soft.OSType)='be' then
      Image2.Picture.LoadFromFile(dir+'\Logo\BeOS.gif')
     else
      If ANSILOWERCASE(Parts[a,0].Soft.OSType)='bsd' then
       Image2.Picture.LoadFromFile(dir+'\Logo\FreeBSD.gif')
      else
       If ANSILOWERCASE(Parts[a,0].Soft.OSType)='os/2' then
        Image2.Picture.LoadFromFile(dir+'\Logo\OS2.gif')
       else
        If FileExists(dir+'\Logo\'+Parts[a,0].Soft.OSType+'.gif') then
         Image2.Picture.LoadFromFile(dir+'\Logo\'+Parts[a,0].Soft.OSType+'.gif');
   If Image2.Picture.Graphic is TGifImage then
    (Image2.Picture.Graphic as TGifImage).OnEndPaint:=CloseForm
   else
    Close;
  end;
 ChangeOS(a);
 Softw.Activate.Execute;
end;

procedure TLoading.FormActivate(Sender: TObject);
begin
 Image2.Picture:=nil;
 ProgressBar1.Position:=0;
 If 70-(hardspeed+defragspeed+cpuspeed+htt+cpuclock+ramspeed) div 1000 < 0 then
  Timer1.Interval:=1
 else
  Timer1.Interval:=70-(hardspeed+defragspeed+cpuspeed+htt+cpuclock+ramspeed) div 1000;
 Timer1.Enabled:=true;
end;

procedure TLoading.CloseForm(Sender: TObject);
begin
 sleep(1000);
 Close;
end;

end.
