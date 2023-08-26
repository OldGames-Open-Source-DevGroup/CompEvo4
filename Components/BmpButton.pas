// Компонент TBmpButton: "Рисованная кнопка"
//
// Платформа: Windows 98/2000
// Язык: Borland Delphi 5.0
// Комментарии в коде: нету и не будет (сам уже ничего не помню :-( )
//
// Реализует "рисованную кнопку". На компонент загружается BMPшка (в свойство
// 'Image'), в которой слева направо прорисовано 4 или 6 состояний кнопки:
//   - нормальное,
//   - недоступное,
//   - подсвеченное (при наведении мышки),
//   - нажатое.
// дополнительно можно реализовать еще два:
//   - отмеченное нормальное
//   - отмеченное с подветкой
// последние два состояния нужны если кнопка работает как CheckBox
//
// После этого компонет работает как обычная кнопка, т.е. генерит события
// OnClick, принимает фокус, ну и все прочее.
// Кроме того, кнопка может работать как примитивный Checkbox, для чего
// заведены свойства 'AllowChecked' (позволять ли кнопке переходить в чекнутое
// состояние), и 'Checked' (является ли кнопка отмеченной).
//
// Свойства кнопки:
//
//   - Image: TBitmap        - картинка с состояниями кнопки
//   - AllowChecked: boolean - может ли кнопка быть отмеченной (checked)
//   - ImageNum: integer     - количество "состояний" в файле. Если 4, то это
//                             просто кнопка (норм, недост, подсв, наж); если 6
//                             то это CheckBox (норм-off, недост, подсв-off,
//                             наж, норм-on, подсв-on)
//   - Checked: boolean      - является ли кнопка отмеченной
//   - Transparent: boolean  - обрезАть ли фон кнопки (в качестве 'фона'
//                             принимается цвет левой верхней точки картинки
//   - AutoSize: boolean     - подгонять ли размер кнопки по размеру картинки
//   - MarginLeft: integer   -
//   - MarginRight: integer  -
//   - MarginTop: integer    -
//   - MarginBottom: integer - если в картинке есть пустые поля, их можно
//                             срезать.
//   - MarginFocus: integer  - расстояние от границы кнопки до рамки фокуса
//
// Все остальное - как у обычной кнопки TButton.
//
// Для установки компонента выберите пункт меню 'Component/Install
// component...', дальше - 'Into new package', укажите путь к файлу
// 'BmpButton.Pas' и имя для пэкаджа.
//
// В состав пакета также входят файлы 'Suxx.Bmp' и 'Test.Pas + Test.Dfm', на
// которых можно посмотреть, как это дело работает. Но сначала - установите
// компонент.
//
// (c) Антон 'NetOrphan' Черниговский, 2003.
// mailto:netorphan@hotbox.ru
// http://www.netorphan.hotbox.ru
//
// ЭТОТ КОД ПОСТАВЛЯЕТСЯ "AS IS" БЕЗ КАКОЙ-ЛИБО ГАРАНТИИ!

unit BmpButton;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons;

type
  TBmpButton = class(TButton)
  private
    IsFocused: Boolean;
    bmp: TBitmap;
    hTempBmp, hRedrawBmp: HBITMAP;
    hTempDC, hRedrawDC: HDC;
    hb: HBRUSH;
    bmpWidth, bmpHeight, bRedrawWidth, bRedrawHeight: integer;
    brushCol: TColor;
    mLeft, mTop, mRight, mBottom, mFocus: integer;
    bTrans: boolean;
    imgWidth, imgHeight, srcWidth: integer;
    bHover, bAuto: boolean;
    bAllowCheck, bCheck: boolean;
    transColor: TColor;
    mImageNum: integer;
    procedure WMLButtonUp (var AMessage: TWMLButtonUp); message WM_LBUTTONUP;
    procedure CNMeasureItem (var AMessage: TWMMeasureItem); message CN_MEASUREITEM;
    procedure CNDrawItem (var AMessage: TWMDrawItem); message CN_DRAWITEM;
    procedure CMFontChanged (var AMessage: TMessage); message CM_FONTCHANGED;
    procedure CMEnabledChanged (var AMessage: TMessage); message CM_ENABLEDCHANGED;
    procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
    procedure WMKeyUp (var Message: TMessage); message WM_KEYUP;
    procedure BmpChanged (Sender: TObject);
    procedure SetMLeft (val: integer);
    procedure SetMTop (val: integer);
    procedure SetMRight (val: integer);
    procedure SetMBottom (val: integer);
    procedure SetMFocus (val: integer);
    procedure SetMTrans (val: boolean);
    procedure SetAuto (val: boolean);
    procedure SetAllowCheck (val: boolean);
    procedure SetCheck (val: boolean);
    procedure SetImageNum (val: integer);
    procedure SetBmp (b: TBitmap);
    procedure DrawTransparent (x, y, w, h: integer; xsrc, ysrc: integer; TransColor: TColor);
    procedure EnsureRedrawBmp;
    { Private declarations }
  protected
    procedure CreateParams (var Params: TCreateParams); override;
    procedure SetButtonStyle (ADefault: Boolean); override;
    procedure Loaded; override;
    { Protected declarations }
  public
    constructor Create (AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Click; override;
    { Public declarations }
  published
    property Action;
    property Anchors;
    property Constraints;
    property Enabled;
    property ParentShowHint;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnEnter;
    property OnExit;
    property Color;
    property ParentColor;
    property Image: TBitmap read bmp write SetBmp;
    property ImageNum: integer read mImageNum write SetImageNum;
    property MarginLeft: integer read mLeft write SetmLeft;
    property MarginRight: integer read mRight write SetmRight;
    property MarginTop: integer read mTop write SetmTop;
    property MarginBottom: integer read mBottom write SetmBottom;
    property MarginFocus: integer read mFocus write SetmFocus;
    property Transparent: boolean read bTrans write SetmTrans;
    property AutoSize: boolean read bAuto write SetAuto;
    property Checked: boolean read bCheck write SetCheck;
    property AllowChecked: boolean read bAllowCheck write SetAllowCheck;
    { Published declarations }
  end;

function CreateDIB24 (w, h: integer; RefDC: HDC): HBITMAP;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('GUI', [TBmpButton]);
end;

function CreateDIB24 (w, h: integer; RefDC: HDC): HBITMAP;
var bi: BITMAPINFO;
    p: Pointer;
    p1: PChar;
begin
  ZeroMemory (@bi, sizeof (BITMAPINFO));
  bi.bmiHeader.biSize := sizeof (BITMAPINFOHEADER);
  bi.bmiHeader.biWidth := w;
  bi.bmiHeader.biHeight := h;
  bi.bmiHeader.biPlanes := 1;
  bi.bmiHeader.biBitCount := 24;
  bi.bmiHeader.biCompression := BI_RGB;
  Result := CreateDIBSection (RefDC, bi, DIB_RGB_COLORS, p, 0, 0);
  if (w <> 0) and (h <> 0) and (Result = 0) then begin
     p1 := stralloc (255);
     FormatMessage ({FORMAT_MESSAGE_ALLOCATE_BUFFER or }FORMAT_MESSAGE_FROM_SYSTEM,
                   nil, GetLastError, $0200, p1, 255, nil);
     Application.MessageBox (p1, 'BmpButton', MB_OK or MB_ICONINFORMATION);
     strdispose (p1);
  end;
  GdiFlush;
  SelectObject (RefDC, Result);
end;

constructor TBmpButton.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  bmp := TBitmap.Create;
  bmp.OnChange := BmpChanged;
  mImageNum := 4;
  hRedrawDC := CreateCompatibleDC (0);
  hTempDC := CreateCompatibleDC (0);
end;

destructor TBmpButton.Destroy;
begin
  inherited Destroy;
  DeleteObject (hTempBmp);
  DeleteObject (hRedrawBmp);
  DeleteDC (hTempDC);
  DeleteDC (hRedrawDC);
  DeleteObject (hb);
  if bmp <> nil then
     bmp.free;
  bmp := nil;
end;

procedure TBmpButton.CreateParams (var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do Style := Style or BS_OWNERDRAW or BS_CHECKBOX;
end;

procedure TBmpButton.DrawTransparent (x, y, w, h: integer; xsrc, ysrc: integer; TransColor: TColor);
begin
  SetBkColor (bmp.Canvas.Handle, TransColor);
  BitBlt (hTempDC, 0, 0, w, h, bmp.Canvas.Handle, xsrc, ysrc, SRCCOPY);
  SetBkColor (hRedrawDC, $FFFFFF);
  SetTextColor (hRedrawDC, $0);
  BitBlt (hRedrawDC, x, y, w, h, bmp.Canvas.Handle, xsrc, ysrc, SRCINVERT);
  BitBlt (hRedrawDC, x, y, w, h, hTempDC, 0, 0, SRCAND);
  BitBlt (hRedrawDC, x, y, w, h, bmp.Canvas.Handle, xsrc, ysrc, SRCINVERT);
end;

procedure TBmpButton.SetBmp (b: TBitmap);
begin
  bmp.Assign (b);
end;

procedure TBmpButton.SetMLeft (val: integer);
begin
  mLeft := val;
  BmpChanged (self);
end;

procedure TBmpButton.SetMTop (val: integer);
begin
  mTop := val;
  BmpChanged (self);
end;

procedure TBmpButton.SetMRight (val: integer);
begin
  mRight := val;
  BmpChanged (self);
end;

procedure TBmpButton.SetMBottom (val: integer);
begin
  mBottom := val;
  BmpChanged (self);
end;

procedure TBmpButton.SetImageNum (val: integer);
begin
  mImageNum := val;
  BmpChanged (self);
end;

procedure TBmpButton.SetMFocus (val: integer);
begin
  mFocus := val;
  Invalidate;
end;

procedure TBmpButton.SetMTrans (val: boolean);
begin
  bTrans := val;
  Invalidate;
end;

procedure TBmpButton.SetAuto (val: boolean);
begin
  bAuto := val;
  if bAuto then begin
     if imgWidth > 0 then
        Width := imgWidth;
     if imgHeight > 0 then
        Height := imgHeight;
  end;
  Invalidate;
end;

procedure TBmpButton.SetButtonStyle (ADefault: Boolean);
begin
  if ADefault <> IsFocused then begin
    IsFocused := ADefault;
    Refresh;
  end;
end;

procedure TBmpButton.CNMeasureItem (var AMessage: TWMMeasureItem);
begin
  with AMessage.MeasureItemStruct^ do begin
    itemWidth := Width;
    itemHeight := Height;
  end;
end;

procedure TBmpButton.Loaded;
begin
  BmpChanged (self);
end;

procedure TBmpButton.SetAllowCheck (val: boolean);
begin
  bAllowCheck := val;
end;

procedure TBmpButton.SetCheck (val: boolean);
begin
  if bCheck <> val then begin
     bCheck := val;
     Invalidate;
  end;
end;

procedure TBmpButton.EnsureRedrawBmp;
begin
  if (bRedrawWidth <> Width) or (bRedrawHeight <> Height) then begin
     bRedrawWidth := Width;
     bRedrawHeight := Height;
     DeleteObject (hRedrawBmp);
     hRedrawBmp := CreateDIB24 (Width, Height, hRedrawDC);
  end;
end;

procedure TBmpButton.BmpChanged (Sender: TObject);
begin
  bmpWidth := bmp.Width;
  bmpHeight := bmp.Height;

  srcWidth := bmpWidth div mImageNum;
  imgWidth := srcWidth - mLeft - mRight;
  imgHeight := bmpHeight - mTop - mBottom;
  if bAuto then begin
     if imgWidth > 0 then
        Width := imgWidth;
     if imgHeight > 0 then
        Height := imgHeight;
  end;
  DeleteObject (hTempBmp);
  if bTrans then begin
     hTempBmp := CreateBitmap (imgWidth, imgHeight, 1, 1, nil);
     SelectObject (hTempDC, hTempBmp);
  end;
  transColor := bmp.Canvas.Pixels[0, 0];

  EnsureRedrawBmp;

  Invalidate;
end;

procedure TBmpButton.CNDrawItem (var AMessage: TWMDrawItem);
var IsDown, IsDefault: Boolean;
    r: TRect;
    k: integer;
begin
  r := ClientRect;
  with AMessage.DrawItemStruct^ do begin
    IsDown := itemState and ODS_SELECTED <> 0;
    if mImageNum < 6 then
       IsDown := IsDown or bCheck;
    IsDefault := itemState and ODS_FOCUS <> 0;
  end;
  if BrushCol <> Color then begin
     DeleteObject (hb);
     hb := CreateSolidBrush (ColorToRGB (Color));
     BrushCol := Color;
  end;
  FillRect (hRedrawDC, r, hb);
  if AMessage.DrawItemStruct^.itemState and ODS_DISABLED <> 0 then
     k := 1
  else if IsDown then
     k := 3
  else if bHover then begin
     if bCheck then
        k := 5
     else
        k := 2;
  end else begin
     if bCheck then
        k := 4
     else
        k := 0;
  end;
  if bTrans then
     DrawTransparent (r.left, r.top, imgWidth, imgHeight, k * srcWidth + mLeft, mTop, transColor)
  else
     BitBlt (hRedrawDC, r.left, r.top, imgWidth, imgHeight, bmp.Canvas.Handle, k * srcWidth + mLeft, mTop, SRCCOPY);
  if IsFocused and IsDefault then begin
     r := Rect (0, 0, imgWidth, imgHeight);
     InflateRect (R, -mFocus, -mFocus);
     DrawFocusRect (hRedrawDC, R);
  end;
  BitBlt (AMessage.DrawItemStruct^.hDC, 0, 0, imgWidth, imgHeight, hRedrawDC, 0, 0, SRCCOPY);
end;

procedure TBmpButton.CMFontChanged (var AMessage: TMessage);
begin
  inherited;
  Invalidate;
end;

procedure TBmpButton.CMEnabledChanged (var AMessage: TMessage);
begin
  inherited;
  Invalidate;
end;

procedure TBmpButton.WMLButtonUp (var AMessage: TWMLButtonUp);
begin
  if bHover and bAllowCheck and not bCheck then begin
     if mImageNum < 6 then begin
        SendMessage (Handle, WM_SETREDRAW, 0, 0);
        PostMessage (Handle, WM_SETREDRAW, 1, 1);
     end;
  end;
  inherited;
end;

procedure TBmpButton.Click;
begin
  if bAllowCheck then begin
     bCheck := not bCheck;
     Invalidate;
  end;
  inherited Click;
end;

procedure TBmpButton.CMMouseEnter(var Message: TMessage);
begin
  bHover := true;
  Screen.Cursor := crHandPoint;
  Repaint;
  inherited;
end;

procedure TBmpButton.CMMouseLeave(var Message: TMessage);
begin
  bHover := false;
  Screen.Cursor := crDefault;
  Repaint;
  inherited;
end;

procedure TBmpButton.WMKeyUp (var Message: TMessage);
begin
  if bAllowCheck and not bCheck then begin
     if mImageNum < 6 then begin
        SendMessage (Handle, WM_SETREDRAW, 0, 0);
        PostMessage (Handle, WM_SETREDRAW, 1, 1);
     end;
  end;
  inherited;
end;

end.
