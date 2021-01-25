unit Hexagon_u;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvMetroForm, OleCtrls, SHDocVw, AdvMetroButton, StdCtrls,
  ExtCtrls, AdvAppStyler, MPlayer, ComCtrls,MMsystem, AdvMetroProgressBar,
  ExtDlgs, AdvMetroHint;

type
  TfrmHexagon = class(TAdvMetroForm)
    pnlWeb: TPanel;
    mtlSearch: TAdvMetroButton;
    mtlPrev: TAdvMetroButton;
    mtlNxt: TAdvMetroButton;
    WebBrowser1: TWebBrowser;
    mtlHlp: TAdvMetroButton;
    mtlBar: TAdvMetroButton;
    AdvFormStyler1: TAdvFormStyler;
    pnlPlay: TPanel;
    mtlLoadH: TAdvMetroButton;
    mtlHelp: TAdvMetroButton;
    mtlNext: TAdvMetroButton;
    mtlPrevious: TAdvMetroButton;
    mtlPlay: TAdvMetroButton;
    mtlPause: TAdvMetroButton;
    MediaPlayer1: TMediaPlayer;
    OpenDialog1: TOpenDialog;
    Edit2: TEdit;
    pnlBar: TPanel;
    Panel1: TPanel;
    pnlLoad: TPanel;
    Timer1: TTimer;
    Timer2: TTimer;
    mtlShow: TAdvMetroButton;
    mtlMap: TAdvMetroToolButton;
    mtlMedia: TAdvMetroToolButton;
    mtlTwitter: TAdvMetroToolButton;
    mtlFB: TAdvMetroToolButton;
    mtlFGames: TAdvMetroToolButton;
    mtlHide: TAdvMetroButton;
    mtlWeb: TAdvMetroToolButton;
    mtlHome: TAdvMetroToolButton;
    mtlHide2: TAdvMetroButton;
    mtlrefresh: TAdvMetroButton;
    Panel2: TPanel;
    PNLtOP: TPanel;
    Panel3: TPanel;
    AdvMetroHint1: TAdvMetroHint;
    Label1: TLabel;
    procedure mtlSearchClick(Sender: TObject);
    procedure mtlHlpClick(Sender: TObject);
    procedure mtlPrevClick(Sender: TObject);
    procedure mtlNxtClick(Sender: TObject);
    procedure mtlLoadHClick(Sender: TObject);
    procedure mtlPlayClick(Sender: TObject);
    procedure AdvMetroFormCreate(Sender: TObject);
    procedure mtlPauseClick(Sender: TObject);
    procedure AdvMetroFormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnlWebMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure mtlPreviousClick(Sender: TObject);
    procedure mtlNextClick(Sender: TObject);
    procedure mtlShowClick(Sender: TObject);
    procedure mtlWebClick(Sender: TObject);
    procedure mtlHideClick(Sender: TObject);
    procedure mtlMediaClick(Sender: TObject);
    procedure mtlMapClick(Sender: TObject);
    procedure mtlTwitterClick(Sender: TObject);
    procedure mtlFBClick(Sender: TObject);
    procedure mtlFGamesClick(Sender: TObject);
    procedure mtlHomeClick(Sender: TObject);
    procedure mtlrefreshClick(Sender: TObject);
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
  Hidden:boolean;
  iCounter:integer;
  iCounter2:integer;
    { Public declarations }
  end;

var
  frmHexagon: TfrmHexagon;

implementation

{$R *.dfm}


procedure TfrmHexagon.mtlSearchClick(Sender: TObject);
begin
WebBrowser1.Navigate(''+edit2.Text+'');
end;

procedure TfrmHexagon.mtlHlpClick(Sender: TObject);
begin
WebBrowser1.Navigate('C:\Users\Phantom\Documents\HEX-HELP.htm');
end;

procedure TfrmHexagon.mtlPrevClick(Sender: TObject);
begin
webbrowser1.GoBack;
end;

procedure TfrmHexagon.mtlNxtClick(Sender: TObject);
begin
webbrowser1.GoForward;
end;

procedure TfrmHexagon.mtlLoadHClick(Sender: TObject);
var
Hr,Min,Sec:integer;
TimeStr:string;
begin
if (Opendialog1.Execute) then
begin
mediaplayer1.Display:=webbrowser1;
MediaPlayer1.FileName:= Opendialog1.FileName;
MediaPlayer1.Open;
mediaPlayer1.DisplayRect:=Rect(webbrowser1.Left,webbrowser1.Top,webbrowser1.Width,webbrowser1.Height);
panel1.Caption:=ExtractFileName(Opendialog1.FileName);
pnlLoad.Hide;
pnlTop.Show;
//////////////////////////////////////////////////////////////
mediaPlayer1.TimeFormat:=tfMilliseconds;//internet          //  www.stackoverflow.com/question/5556077/get-length-of-wav-audio-in-minutes-seconds
Sec:=mediaPlayer1.Length div 1000 ;  //internet             //
Hr:=sec div 3600;//internet                                 //
Min:=(sec - (hr *3600)) div 60;//internet                   //
Sec:= sec - hr * 3600 - min * 60;//internet                 //
TimeStr:=Format('%d:%d:%d',[hr,min,Sec]);//internet         //
panel2.Caption:=TimeStr;                                    //
//////////////////////////////////////////////////////////////
webbrowser1.Offline:=true;
mtlPause.Visible:=false;
mtlPlay.Visible:=true;
timer1.Enabled:=true;
timer2.Enabled:=true;
iCounter:=0;
iCounter2:=0;
end;

end;

procedure TfrmHexagon.mtlPlayClick(Sender: TObject);
begin
if FileExists(MediaPlayer1.FileName) <> true then
begin
mtlPause.Visible:=false;
mtlPlay.Visible:=true;
end
else
begin
MediaPlayer1.Play;
mtlPause.Visible:=true;
mtlPlay.Visible:=false;
end;
end;

procedure TfrmHexagon.AdvMetroFormCreate(Sender: TObject);
begin

mtlPlay.Appearance.PictureColor:=clWhite;
mtlLoadH.Appearance.PictureColor:=clWhite;
mtlNext.Appearance.PictureColor:=clWhite;
mtlPrevious.Appearance.PictureColor:=clWhite;
mtlHelp.Appearance.PictureColor:=clWhite;
mtlPause.Appearance.PictureColor:=clWhite;
frmHexagon.Caption:='Hexagon hub.';
mtlPrev.Appearance.PictureColor:=clWhite;
mtlNxt.Appearance.PictureColor:=clWhite;
mtlBar.Appearance.PictureColor:=clWhite;
mtlHlp.Appearance.PictureColor:=clWhite;
mtlSearch.Appearance.PictureColor:=clWhite;
mtlHide2.Appearance.PictureColor:=clWhite;
mtlShow.Appearance.PictureColor:=clWhite;
mtlHide.Appearance.PictureColor:=clWhite;
mtlrefresh.Appearance.PictureColor:=clWhite;
end;

procedure TfrmHexagon.mtlPauseClick(Sender: TObject);
begin
mediaplayer1.Pause;
mtlPause.Visible:=false;
mtlPlay.Visible:=true;
end;

procedure TfrmHexagon.AdvMetroFormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
edit2.Font.Color:=clWhite;
end;

procedure TfrmHexagon.pnlWebMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
edit2.Font.Color:=clWhite;
end;

procedure TfrmHexagon.Edit2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
edit2.Font.Color:=$00BFE996;
end;

procedure TfrmHexagon.Timer1Timer(Sender: TObject);
var
Flags: DWORD;
  Handle: HWND;
begin
Inc(icounter);
if iCounter = 10 then
begin
panel1.Hide;
end;
////////////////////////////////////////////////////
if iCounter = 12 then
begin
panel2.Hide;
end;
////////////////////////////////////////////////////
if iCounter = 50 then
begin
panel1.Hide;
end;
////////////////////////////////////////////////////
if iCounter = 52 then
begin
panel2.Hide;
end;
////////////////////////////////////////////////////
end;

procedure TfrmHexagon.Timer2Timer(Sender: TObject);
var
Flags: DWORD;
  Handle: HWND;
begin
Inc(icounter2);
if iCounter2 = 3 then
begin
panel1.Show;
end;
/////////////////
if iCounter2 = 5 then
begin
panel2.Show;
end;

if iCounter2 = 30 then
begin
panel1.Show;
end;
/////////////////
if iCounter2 = 35 then
begin
panel2.Show;
end;
end;

procedure TfrmHexagon.mtlPreviousClick(Sender: TObject);
begin
if FileExists(MediaPlayer1.FileName) <> true then
begin
end
else
begin
mediaPlayer1.Back;
end;
end;

procedure TfrmHexagon.mtlNextClick(Sender: TObject);
begin
if FileExists(MediaPlayer1.FileName) <> true then
begin
end
else
begin
mediaPlayer1.Next;
end;

end;

procedure TfrmHexagon.mtlShowClick(Sender: TObject);
var
Flags: DWORD;
  Handle: HWND;
begin

  PnlBar.DoubleBuffered:=true;

   Handle :=  PnlBar.Handle;
    if Hidden then
    Flags := AW_ACTIVATE

    else
    Flags  :=AW_HIDE;
    Hidden := not Hidden;
    Flags :=Flags or AW_Slide ;
    Flags :=Flags  OR  AW_HOR_Positive;
      if not AnimateWindow(Handle, 100, Flags) then begin
    if GetLastError = ERROR_SUCCESS then //Error handeling
        //showmessage('The thread does not own the window! ERROR');
    exit;
  end;
  // mtlHome.Visible:=false;
   //mtlHome.Visible:=true;
   mtlBar.Visible:=false;
   mtlHide.Visible:=true;
   mtlHide.Visible:=true;
   mtlShow.Visible:=false;
end;

procedure TfrmHexagon.mtlWebClick(Sender: TObject);
begin
mediaplayer1.Display:=panel3;
pnlTop.Hide;
mtlPause.Hide;
mtlPlay.Show;
pnlWeb.Show;
pnlPlay.Hide;
panel2.Hide;
panel1.Hide;
timer1.Enabled:=false;
timer2.Enabled:=false;
pnlLoad.Hide;
WebBrowser1.Navigate('www.bing.com');
end;

procedure TfrmHexagon.mtlHideClick(Sender: TObject);
var
Flags: DWORD;
  Handle: HWND;
begin

  PnlBar.DoubleBuffered:=true;

   Handle :=  PnlBar.Handle;
    if Hidden then
    Flags := AW_ACTIVATE

    else
    Flags  :=AW_HIDE;
    Hidden := not Hidden;
    Flags :=Flags or AW_Slide ;
    Flags :=Flags  OR   AW_HOR_Negative;
      if not AnimateWindow(Handle, 100, Flags) then begin
    if GetLastError = ERROR_SUCCESS then //Error handeling
        //showmessage('The thread does not own the window! ERROR');
    exit;
  end;
    //mtlHome.Visible:=false;
   //mtlHome.Visible:=true;
     //mtlWeb.Visible:=false;
   //mtlWeb.Visible:=true;
  mtlBar.Visible:=true;
  mtlHide.Visible:=False;
  mtlHide.Visible:=false;
  mtlShow.Visible:=true;
end;

procedure TfrmHexagon.mtlMediaClick(Sender: TObject);
begin
if pnlPlay.Visible <> true then
begin
pnlPlay.Show;
pnlWeb.Hide;
panel1.Hide;
panel2.Hide;
pnlLoad.Show;
timer1.Enabled:=false;
timer2.Enabled:=false;
mtlPause.Hide;
mtlPlay.Show;
mediaplayer1.Display:=webbrowser1;
end
else
begin
mediaplayer1.Display:=webbrowser1;
pnlPlay.Show;
pnlWeb.Hide;
end;
end;

procedure TfrmHexagon.mtlMapClick(Sender: TObject);
begin
mediaplayer1.Display:=panel3;
WebBrowser1.Navigate('www.bing.com/maps/');
pnlWeb.Show;
pnlPlay.Hide;
panel2.Hide;
panel1.Hide;
pnlLoad.Hide;
pnlTop.Hide;
timer1.Enabled:=false;
timer2.Enabled:=false;
mtlPause.Hide;
mtlPlay.Show;
end;

procedure TfrmHexagon.mtlTwitterClick(Sender: TObject);
begin
mediaplayer1.Display:=panel3;
WebBrowser1.Navigate('www.twitter.com');
pnlLoad.Hide;
pnlWeb.Show;
pnlPlay.Hide;
panel2.Hide;
panel1.Hide;
pnlTop.Hide;
mtlPause.Hide;
timer1.Enabled:=false;
timer2.Enabled:=false;
mtlPlay.Show;
end;

procedure TfrmHexagon.mtlFBClick(Sender: TObject);
begin
mediaplayer1.Display:=panel3;
WebBrowser1.Navigate('www.facebook.com');
pnlWeb.Show;
pnlPlay.Hide;
pnlLoad.Hide;
panel2.Hide;
panel1.Hide;
pnlTop.Hide;
timer1.Enabled:=false;
timer2.Enabled:=false;
mtlPause.Hide;
mtlPlay.Show;
end;

procedure TfrmHexagon.mtlFGamesClick(Sender: TObject);
begin
mediaplayer1.Display:=panel3;
pnlTop.Hide;
pnlWeb.Show;
pnlPlay.Hide;
mtlPause.Hide;
mtlPlay.Show;
panel2.Hide;
timer1.Enabled:=false;
timer2.Enabled:=false;
panel1.Hide;
pnlLoad.Hide;
WebBrowser1.Navigate('www.flashgame6.com/9-1-1/animal-games');
end;

procedure TfrmHexagon.mtlHomeClick(Sender: TObject);
begin
frmHexagon.Visible:=false;
end;

procedure TfrmHexagon.mtlrefreshClick(Sender: TObject);
begin
WebBrowser1.Refresh;
end;

end.
