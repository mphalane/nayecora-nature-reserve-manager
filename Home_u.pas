unit Home_u;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvMetroForm, StdCtrls, ExtCtrls, AdvAppStyler,
  AdvMetroProgressBar, jpeg, AdvMetroTile, Mask, AdvMetroButton, DB, ADODB,
  ExtDlgs, DBCtrls, Menus,Program_u, Grids, DBGrids, AdvMetroHint,
  TeEngine, Series, TeeTools, TeeProcs, Chart, DBChart;

type
  TfrmHOME = class(TAdvMetroForm)
    pnlStart: TPanel;
    Label1: TLabel;
    ProgressBar2: TAdvMetroProgressBar;
    Timer1: TTimer;
    pnlMenu: TPanel;
    Image2: TImage;
    pnlTourist: TPanel;
    pnlHex: TPanel;
    Panel5: TPanel;
    pnlEmploy: TPanel;
    Panel6: TPanel;
    lblTime: TLabel;
    lblDay: TLabel;
    lblMonth: TLabel;
    Timer2: TTimer;
    mtlTourist: TAdvMetroTile;
    mtlEmploy: TAdvMetroTile;
    mtlHex: TAdvMetroTile;
    pnlNew: TPanel;
    Image9: TImage;
    Panel106: TPanel;
    Panel99: TPanel;
    Panel102: TPanel;
    Panel132: TPanel;
    Panel87: TPanel;
    Label14: TLabel;
    mtlSubmit: TAdvMetroTile;
    Panel65: TPanel;
    Panel66: TPanel;
    mtlAddnew: TAdvMetroTile;
    Panel76: TPanel;
    Panel78: TPanel;
    Panel85: TPanel;
    Panel86: TPanel;
    Panel89: TPanel;
    Panel90: TPanel;
    Panel91: TPanel;
    Panel92: TPanel;
    Panel95: TPanel;
    Panel96: TPanel;
    Panel97: TPanel;
    Panel98: TPanel;
    Panel100: TPanel;
    Panel104: TPanel;
    Panel105: TPanel;
    Panel107: TPanel;
    Panel109: TPanel;
    Panel110: TPanel;
    Panel112: TPanel;
    Panel124: TPanel;
    Panel126: TPanel;
    Panel152: TPanel;
    Panel101: TPanel;
    Panel77: TPanel;
    Panel93: TPanel;
    Panel103: TPanel;
    Panel153: TPanel;
    Panel154: TPanel;
    Panel155: TPanel;
    Panel156: TPanel;
    Panel157: TPanel;
    Panel158: TPanel;
    Panel159: TPanel;
    Panel160: TPanel;
    Panel161: TPanel;
    Panel162: TPanel;
    Panel163: TPanel;
    Panel164: TPanel;
    Panel165: TPanel;
    Panel166: TPanel;
    Panel168: TPanel;
    Panel167: TPanel;
    Panel169: TPanel;
    Panel170: TPanel;
    Panel171: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    pnlNewU: TPanel;
    Panel68: TPanel;
    Label13: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel174: TPanel;
    Panel70: TPanel;
    Label33: TLabel;
    Panel175: TPanel;
    Panel71: TPanel;
    Label35: TLabel;
    Label45: TLabel;
    Label55: TLabel;
    Edit7: TEdit;
    Panel176: TPanel;
    Panel72: TPanel;
    Label37: TLabel;
    Label49: TLabel;
    RadioGroup1: TRadioGroup;
    Panel177: TPanel;
    Panel73: TPanel;
    Label39: TLabel;
    Label46: TLabel;
    Label50: TLabel;
    Edit6: TEdit;
    Panel178: TPanel;
    Panel69: TPanel;
    Label40: TLabel;
    mtlBack: TAdvMetroButton;
    Label38: TLabel;
    Label36: TLabel;
    Label4: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    mtlHome: TAdvMetroButton;
    Image1: TImage;
    Label2: TLabel;
    mtlSet: TAdvMetroTile;
    pnlPass: TPanel;
    lblMsg: TLabel;
    mtlBck: TAdvMetroButton;
    mtlNxt: TAdvMetroTile;
    mtlRefresh: TAdvMetroTile;
    mtlOK2: TAdvMetroTile;
    lblFinal: TLabel;
    lblFinal2: TLabel;
    lblConfrimTile: TLabel;
    adoLogin: TADOConnection;
    qryLogin: TADOQuery;
    qryLoginapp: TADOQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Panel1: TPanel;
    Label3: TLabel;
    Panel2: TPanel;
    Label6: TLabel;
    Image3: TImage;
    AdvMetroButton1: TAdvMetroButton;
    OpenPictureDialog1: TOpenPictureDialog;
    dbLookName: TDBLookupComboBox;
    mskPassword: TMaskEdit;
    mtlRefresh2: TAdvMetroTile;
    lblUser: TLabel;
    ScrollBox1: TScrollBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Image5: TImage;
    Label12: TLabel;
    Panel3: TPanel;
    mtlAdd0: TAdvMetroTile;
    Panel7: TPanel;
    AdvMetroToolButton11: TAdvMetroToolButton;
    AdvMetroToolButton12: TAdvMetroToolButton;
    Label26: TLabel;
    Panel4: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    mtlOrganise: TAdvMetroTile;
    Panel19: TPanel;
    mtlBaby: TAdvMetroTile;
    Panel20: TPanel;
    mtlQuick0: TAdvMetroTile;
    Panel21: TPanel;
    mtlEdit0: TAdvMetroTile;
    Panel22: TPanel;
    Label58: TLabel;
    AdvMetroToolButton10: TAdvMetroToolButton;
    Panel23: TPanel;
    AdvMetroToolButton15: TAdvMetroToolButton;
    Label57: TLabel;
    Panel24: TPanel;
    Label59: TLabel;
    Panel25: TPanel;
    Panel26: TPanel;
    Label22: TLabel;
    Image10: TImage;
    Panel27: TPanel;
    AdvMetroToolButton4: TAdvMetroToolButton;
    Label23: TLabel;
    Panel28: TPanel;
    mtlClip0: TAdvMetroTile;
    Panel29: TPanel;
    lblDaynum: TLabel;
    Panel30: TPanel;
    mtlFilter0: TAdvMetroTile;
    mltStats0: TAdvMetroTile;
    mtlView0: TAdvMetroTile;
    pnlMenu1: TPanel;
    Panel31: TPanel;
    lblLongday: TLabel;
    lblLongM: TLabel;
    AdvFormStyler1: TAdvFormStyler;
    Panel36: TPanel;
    Panel38: TPanel;
    ScrollBox2: TScrollBox;
    Panel51: TPanel;
    lblDn: TLabel;
    lblD: TLabel;
    lblM: TLabel;
    mtlQuick: TAdvMetroTile;
    mtlGeo: TPanel;
    mtlGeo2: TAdvMetroTile;
    mtlClip: TPanel;
    mtlClip1: TAdvMetroTile;
    mtlFilter: TPanel;
    mtlFilter1: TAdvMetroTile;
    mtlStat: TPanel;
    mltStats: TAdvMetroTile;
    Panel37: TPanel;
    Panel32: TPanel;
    Label7: TLabel;
    Panel33: TPanel;
    Image6: TImage;
    Label8: TLabel;
    Label15: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    Panel34: TPanel;
    Image7: TImage;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label47: TLabel;
    Panel35: TPanel;
    Image8: TImage;
    Label48: TLabel;
    Label64: TLabel;
    Label53: TLabel;
    mtlWildcards: TAdvMetroButton;
    pnlBlack: TPanel;
    Panel39: TPanel;
    imgUser: TImage;
    lblName: TLabel;
    mtlBck2: TAdvMetroButton;
    lblEmail: TLabel;
    lblJob: TLabel;
    imgUserD: TImage;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    Label16: TLabel;
    AdvMetroHint1: TAdvMetroHint;
    mtlWeb: TAdvMetroToolButton;
    DBChart1: TDBChart;
    ChartTool1: TSeriesAnimationTool;
    ChartTool4: TSeriesAnimationTool;
    ChartTool3: TSeriesAnimationTool;
    ADOQuery1: TADOQuery;
    DataSource3: TDataSource;
    Series1: TBarSeries;
    Series2: TBarSeries;
    Series3: TBarSeries;
    Label17: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure AdvMetroFormCreate(Sender: TObject);
    procedure mtlEmployClick(Sender: TObject);
    procedure mtlTouristClick(Sender: TObject);
    procedure Panel105Click(Sender: TObject);
    procedure Panel104Click(Sender: TObject);
    procedure Panel86Click(Sender: TObject);
    procedure Panel95Click(Sender: TObject);
    procedure Panel97Click(Sender: TObject);
    procedure Panel78Click(Sender: TObject);
    procedure Panel77Click(Sender: TObject);
    procedure Panel112Click(Sender: TObject);
    procedure Panel152Click(Sender: TObject);
    procedure Panel96Click(Sender: TObject);
    procedure Panel102Click(Sender: TObject);
    procedure Panel85Click(Sender: TObject);
    procedure Panel98Click(Sender: TObject);
    procedure Panel100Click(Sender: TObject);
    procedure Panel124Click(Sender: TObject);
    procedure Panel110Click(Sender: TObject);
    procedure Panel91Click(Sender: TObject);
    procedure Panel16Click(Sender: TObject);
    procedure Panel107Click(Sender: TObject);
    procedure Panel101Click(Sender: TObject);
    procedure Panel99Click(Sender: TObject);
    procedure Panel168Click(Sender: TObject);
    procedure Panel109Click(Sender: TObject);
    procedure Panel106Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure Panel12Click(Sender: TObject);
    procedure Panel13Click(Sender: TObject);
    procedure Panel10Click(Sender: TObject);
    procedure Panel14Click(Sender: TObject);
    procedure Panel15Click(Sender: TObject);
    procedure Panel89Click(Sender: TObject);
    procedure Panel92Click(Sender: TObject);
    procedure Panel132Click(Sender: TObject);
    procedure Panel126Click(Sender: TObject);
    procedure Panel76Click(Sender: TObject);
    procedure Panel160Click(Sender: TObject);
    procedure Panel162Click(Sender: TObject);
    procedure Panel161Click(Sender: TObject);
    procedure Panel153Click(Sender: TObject);
    procedure Panel163Click(Sender: TObject);
    procedure Panel93Click(Sender: TObject);
    procedure Panel90Click(Sender: TObject);
    procedure Panel166Click(Sender: TObject);
    procedure Panel154Click(Sender: TObject);
    procedure Panel156Click(Sender: TObject);
    procedure Panel103Click(Sender: TObject);
    procedure Panel155Click(Sender: TObject);
    procedure Panel157Click(Sender: TObject);
    procedure Panel159Click(Sender: TObject);
    procedure Panel164Click(Sender: TObject);
    procedure Panel158Click(Sender: TObject);
    procedure Panel171Click(Sender: TObject);
    procedure Panel170Click(Sender: TObject);
    procedure Panel165Click(Sender: TObject);
    procedure Panel11Click(Sender: TObject);
    procedure mtlSetClick(Sender: TObject);
    procedure mtlAddnewClick(Sender: TObject);
    procedure mtlNxtClick(Sender: TObject);
    procedure mtlRefreshClick(Sender: TObject);
    procedure mtlBckClick(Sender: TObject);
    procedure mtlOK2Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure mtlRefresh2Click(Sender: TObject);
    procedure mtlSubmitClick(Sender: TObject);
    procedure dbLookNameClick(Sender: TObject);
    procedure mtlAdd0Click(Sender: TObject);
    procedure mtlBackClick(Sender: TObject);
    procedure mtlHomeClick(Sender: TObject);
    procedure mtlBck2Click(Sender: TObject);
    procedure mtlEdit0Click(Sender: TObject);
    procedure mtlBabyClick(Sender: TObject);
    procedure mtlOrganiseClick(Sender: TObject);
    procedure mltStats0Click(Sender: TObject);
    procedure mtlQuick0Click(Sender: TObject);
    procedure mtlClip0Click(Sender: TObject);
    procedure mtlView0Click(Sender: TObject);
    procedure mtlFilter0Click(Sender: TObject);
    procedure mtlWildcardsClick(Sender: TObject);
    procedure AdvMetroFormActivate(Sender: TObject);
    procedure mtlQuickClick(Sender: TObject);
    procedure mtlGeo2Click(Sender: TObject);
    procedure mtlFilter1Click(Sender: TObject);
    procedure mltStatsClick(Sender: TObject);
    procedure mtlClip1Click(Sender: TObject);
    procedure mtlHexClick(Sender: TObject);
    procedure AdvMetroToolButton15Click(Sender: TObject);
    procedure AdvMetroToolButton4Click(Sender: TObject);
    procedure mtlWebClick(Sender: TObject);
    procedure AdvMetroToolButton10Click(Sender: TObject);
    procedure AdvMetroToolButton12Click(Sender: TObject);
    procedure AdvMetroToolButton11Click(Sender: TObject);
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
  sLoad:string;
  bValidated: Boolean;
  sPassword,sUsername:string;
  Function Validatelogin:boolean;
    { Public declarations }
  end;

var
  frmHOME: TfrmHOME;

implementation

uses Tourist_u, Hexagon_u;

{$R *.dfm}


procedure TfrmHOME.Timer1Timer(Sender: TObject);
var
iCount:integer;
begin
if (ProgressBar2.Position < Progressbar2.Max) then
begin
 iCount := ProgressBar2.Position + 10;
 Progressbar2.Position:= icount ;
end;
if  (ProgressBar2.Position = 100) then
begin
timer1.Enabled:=false;
pnlMenu.Visible:=true;
pnlStart.Visible:=false;
end;
end;

procedure TfrmHOME.Timer2Timer(Sender: TObject);
var
DateTime:TDateTime;
DateTime2:TDateTime;
Daystr,Monthstr,Daynum,Daynum2,Yearstr,Timestr,Timestr2:String;
Datestr:string;
begin
DateTime:=Time;
DateTime2:=Date;
Datestr:=DateToStr(DateTime2);
Timestr2:=TimeToStr(DateTime);
Timestr:=formatDateTime('hh:mm',StrToDateTime(Timestr2));
Daystr:=formatDateTime('dddd',StrToDateTime(Datestr));
DayNum:=formatDateTime('dd',StrToDateTime(Datestr));
Daynum2:=formatDateTime('d',StrToDateTime(Datestr));
Monthstr:=formatDateTime('mmmm',StrToDateTime(Datestr));
YearStr:=formatDateTime('yyyy',StrToDateTime(Datestr));
LblTime.Caption:=Timestr;
LblDay.Caption:=Daystr;
lblMonth.Caption:=Monthstr+' ,'+DayNum;
lblLongday.Caption:=Daystr;
lblLongM.Caption:= Monthstr;
lblDayNum.Caption:=DayNum2;
lblD.Caption:=Daystr;
lblM.Caption:= Monthstr;
lblDn.Caption:=DayNum2;

end;

procedure TfrmHOME.AdvMetroFormCreate(Sender: TObject);
begin
ScrollBox1.DoubleBuffered:=true;
ScrollBox2.DoubleBuffered:=true;
////////////
mtlTourist.Appearance.Color:=$0001CDF1;
mtlTourist.Appearance.TextColor:=clWhite;
mtlTourist.Appearance.DownColor:=$0001CDF1;
mtlTourist.Appearance.HoverColor:=$0001A4C1;
mtlTourist.Appearance.HoverTextColor:=clWhite;
mtlTourist.Appearance.DownTextColor:=clWhite;
////////////
mtlEmploy.Appearance.Color:=$0001CDF1;
mtlEmploy.Appearance.TextColor:=clWhite;
mtlEmploy.Appearance.DownColor:=$0001CDF1;
mtlEmploy.Appearance.HoverColor:=$0001A4C1;
mtlEmploy.Appearance.HoverTextColor:=clWhite;
mtlEmploy.Appearance.DownTextColor:=clWhite;
////////////
mtlSet.Appearance.Color:=$0001CDF1;
mtlSet.Appearance.TextColor:=clWhite;
mtlSet.Appearance.DownColor:=$0001CDF1;
mtlSet.Appearance.HoverColor:=$0001A4C1;
mtlSet.Appearance.HoverTextColor:=clWhite;
mtlSet.Appearance.DownTextColor:=clWhite;
////////////
mtlHex.Appearance.Color:=$0001CDF1;
mtlHex.Appearance.TextColor:=clWhite;
mtlHex.Appearance.DownColor:=$0001CDF1;
mtlHex.Appearance.HoverColor:=$0001A4C1;
mtlHex.Appearance.HoverTextColor:=clWhite;
mtlHex.Appearance.DownTextColor:=clWhite;
////////////
mtlAddnew.Appearance.Color:=$000080FF;
mtlAddnew.Appearance.TextColor:=clWhite;
mtlAddnew.Appearance.DownColor:=$000080FF;
mtlAddnew.Appearance.HoverColor:=$002DB6FF;
mtlAddnew.Appearance.HoverTextColor:=clWhite;
mtlAddnew.Appearance.DownTextColor:=clWhite;
///////////
mtlSubmit.Appearance.Color:=$002DB6FF;
mtlSubmit.Appearance.TextColor:=clWhite;
mtlSubmit.Appearance.DownColor:=$002DB6FF;
mtlSubmit.Appearance.HoverColor:=$0001CDF1;
mtlSubmit.Appearance.HoverTextColor:=clWhite;
mtlSubmit.Appearance.DownTextColor:=clWhite;
////////////
mtlNxt.Appearance.Color:=clBlack;
mtlNxt.Appearance.BorderColor:=clBlack;
mtlNxt.Appearance.TextColor:=$0001CDF1;
mtlNxt.Appearance.DownColor:=clBlack;
mtlNxt.Appearance.HoverColor:=clBlack;
mtlNxt.Appearance.HoverTextColor:=$0001A4C1;
mtlNxt.Appearance.DownTextColor:=$0001CDF1;
////////////
mtlOk2.Appearance.Color:=clBlack;
mtlOk2.Appearance.BorderColor:=clBlack;
mtlOk2.Appearance.TextColor:=$0001CDF1;
mtlOk2.Appearance.DownColor:=clBlack;
mtlOk2.Appearance.HoverColor:=clBlack;
mtlOk2.Appearance.HoverTextColor:=$0001A4C1;
mtlOk2.Appearance.DownTextColor:=$0001CDF1;
//////////////////
mtlRefresh.Appearance.Color:=clBlack;
mtlRefresh.Appearance.BorderColor:=clBlack;
mtlRefresh.Appearance.TextColor:=$0001CDF1;
mtlRefresh.Appearance.DownColor:=clBlack;
mtlRefresh.Appearance.HoverColor:=clBlack;
mtlRefresh.Appearance.HoverTextColor:=$0001A4C1;
mtlRefresh.Appearance.DownTextColor:=$0001CDF1;
///////////////////
mtlRefresh2.Appearance.Color:=$000080FF;
mtlRefresh2.Appearance.BorderColor:=$000080FF;
mtlRefresh2.Appearance.TextColor:=clWhite;
mtlRefresh2.Appearance.DownColor:=$000080FF;
mtlRefresh2.Appearance.HoverColor:=$000080FF;
mtlRefresh2.Appearance.HoverTextColor:=$002DB6FF;
mtlRefresh2.Appearance.DownTextColor:=clWhite;
//////////////////////////
mtlWildCards.Appearance.PictureColor:=clWhite;
mtlBck.Appearance.PictureColor:=$0001CDF1;
mtlBck2.Appearance.PictureColor:=$0001CDF1;
mtlBack.Appearance.PictureColor:=$0001CDF1;
mtlHome.Appearance.PictureColor:=clwhite;
mtlHome.Appearance.PictureColorHover:=$0001CDF1;
////////
////////////
mtlOrganise.Appearance.Color:=$0001A4C1;
mtlOrganise.Appearance.TextColor:=clWhite;
mtlOrganise.Appearance.HoverColor:=$0001CDF1;
mtlOrganise.Appearance.HoverTextColor:=clWhite;
mtlOrganise.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlAdd0.Appearance.Color:=$0001CDF1;
mtlAdd0.Appearance.TextColor:=clWhite;
mtlAdd0.Appearance.HoverColor:=$0001A4C1;
mtladd0.Appearance.HoverTextColor:=clWhite;
mtladd0.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlGeo2.Appearance.Color:=$0001CDF1;
mtlGeo2.Appearance.TextColor:=clWhite;
mtlGeo2.Appearance.HoverColor:=$0001A4C1;
mtlGeo2.Appearance.HoverTextColor:=clWhite;
mtlGeo2.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlBaby.Appearance.Color:=$0001CDF1;
mtlBAby.Appearance.TextColor:=clWhite;
mtlBaby.Appearance.HoverColor:=$0001A4C1;
mtlBaby.Appearance.HoverTextColor:=clWhite;
mtlBaby.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlEdit0.Appearance.Color:=$0001CDF1;
mtledit0.Appearance.TextColor:=clWhite;
mtledit0.Appearance.HoverColor:=$0001A4C1;
mtledit0.Appearance.HoverTextColor:=clWhite;
mtledit0.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlQuick0.Appearance.Color:=$0001CDF1;
mtlQuick0.Appearance.TextColor:=clWhite;
mtlQuick0.Appearance.HoverColor:=$0001A4C1;
mtlQuick0.Appearance.HoverTextColor:=clWhite;
mtlQuick0.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlQuick.Appearance.Color:=$0001CDF1;
mtlQuick.Appearance.TextColor:=clWhite;
mtlQuick.Appearance.HoverColor:=$0001A4C1;
mtlQuick.Appearance.HoverTextColor:=clWhite;
mtlQuick.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlClip0.Appearance.Color:=$0001A4C1;
mtlClip0.Appearance.TextColor:=clWhite;
mtlClip0.Appearance.HoverColor:=$0001CDF1;
mtlClip0.Appearance.HoverTextColor:=clWhite;
mtlClip0.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlClip1.Appearance.Color:=$0001A4C1;
mtlClip1.Appearance.TextColor:=clWhite;
mtlClip1.Appearance.HoverColor:=$0001CDF1;
mtlClip1.Appearance.HoverTextColor:=clWhite;
mtlClip1.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlView0.Appearance.Color:=$0001CDF1;
mtlView0.Appearance.TextColor:=clWhite;
mtlView0.Appearance.HoverColor:=$0001A4C1;
mtlView0.Appearance.HoverTextColor:=clWhite;
mtlView0.Appearance.DownTextColor:=$0001A4C1;
////////////
mltStats.Appearance.Color:=$0001CDF1;
mltStats.Appearance.TextColor:=clWhite;
mltStats.Appearance.HoverColor:=$0001A4C1;
mltStats.Appearance.DownTextColor:=$0001A4C1;
///////////////////////
mltStats0.Appearance.Color:=$0001CDF1;
mltStats0.Appearance.TextColor:=clWhite;
mltStats0.Appearance.HoverColor:=$0001A4C1;
mltStats0.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlFilter0.Appearance.Color:=$0001CDF1;
mtlFilter0.Appearance.TextColor:=clWhite;
mtlFilter0.Appearance.HoverColor:=$0001A4C1;
mtlFilter0.Appearance.HoverTextColor:=clWhite;
mtlFilter0.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlFilter1.Appearance.Color:=$0001A4C1;
mtlFilter1.Appearance.TextColor:=clWhite;
mtlFilter1.Appearance.HoverColor:=$0001CDF1;
mtlFilter1.Appearance.HoverTextColor:=clWhite;
mtlFilter1.Appearance.DownTextColor:=$0001A4C1;
////////////
end;

procedure TfrmHOME.mtlEmployClick(Sender: TObject);
begin
pnlEmploy.Visible:=true;
pnlTourist.Visible:=false;
pnlHex.Visible:=false;
mtlEmploy.Visible:=false;
end;

procedure TfrmHOME.mtlTouristClick(Sender: TObject);
begin
pnlMenu1.Show;
pnlStart.Hide;
pnlMenu.Visible:=false;
pnlBlack.show;
Scrollbox2.Show;
Scrollbox2.DoubleBuffered:=true;
imgUserD.Visible:=false;
imgUser.Visible:=false;
lblName.Visible:=false;
lblEmail.Visible:=false;
lblJob.Visible:=false;
end;

procedure TfrmHOME.Panel105Click(Sender: TObject);
begin
mskPassword.Text:= mskPassword.Text +'1';
panel105.Color:=$0006D9BE;
end;

procedure TfrmHOME.Panel104Click(Sender: TObject);
begin
mskPassword.Text:= mskPassword.Text +'2';
panel104.Color:=$0006D9BE;
end;

procedure TfrmHOME.Panel86Click(Sender: TObject);
begin
panel86.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'3';
end;

procedure TfrmHOME.Panel95Click(Sender: TObject);
begin
panel95.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'4';
end;

procedure TfrmHOME.Panel97Click(Sender: TObject);
begin
mskPassword.Text:= mskPassword.Text +'4';
panel97.Color:=$0006D9BE;
end;

procedure TfrmHOME.Panel78Click(Sender: TObject);
begin
panel78.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'5';
end;

procedure TfrmHOME.Panel77Click(Sender: TObject);
begin
panel77.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'6';
end;

procedure TfrmHOME.Panel112Click(Sender: TObject);
begin
mskPassword.Text:= mskPassword.Text +'7';
panel112.Color:=$0006D9BE;
end;

procedure TfrmHOME.Panel152Click(Sender: TObject);
begin
panel152.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'8';
end;

procedure TfrmHOME.Panel96Click(Sender: TObject);
begin
panel96.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'9';
end;

procedure TfrmHOME.Panel102Click(Sender: TObject);
begin
panel102.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'10';
end;

procedure TfrmHOME.Panel85Click(Sender: TObject);
begin
panel85.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'11';
end;

procedure TfrmHOME.Panel98Click(Sender: TObject);
begin
panel98.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'11';
end;

procedure TfrmHOME.Panel100Click(Sender: TObject);
begin
panel100.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'12';
end;

procedure TfrmHOME.Panel124Click(Sender: TObject);
begin
panel124.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'13';
end;

procedure TfrmHOME.Panel110Click(Sender: TObject);
begin
panel110.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'14';
end;

procedure TfrmHOME.Panel91Click(Sender: TObject);
begin
panel91.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'15';
end;

procedure TfrmHOME.Panel16Click(Sender: TObject);
begin
panel16.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'16';
end;

procedure TfrmHOME.Panel107Click(Sender: TObject);
begin
panel107.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'17';
end;

procedure TfrmHOME.Panel101Click(Sender: TObject);
begin
panel101.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'18';
end;

procedure TfrmHOME.Panel99Click(Sender: TObject);
begin
panel99.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'19';
end;

procedure TfrmHOME.Panel168Click(Sender: TObject);
begin
panel168.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'20';
end;

procedure TfrmHOME.Panel109Click(Sender: TObject);
begin
panel109.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'21';
end;

procedure TfrmHOME.Panel106Click(Sender: TObject);
begin
panel106.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'22';
end;

procedure TfrmHOME.Panel8Click(Sender: TObject);
begin
panel8.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'23';
end;

procedure TfrmHOME.Panel9Click(Sender: TObject);
begin
panel9.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'24';
end;

procedure TfrmHOME.Panel12Click(Sender: TObject);
begin
panel12.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'25';
end;

procedure TfrmHOME.Panel13Click(Sender: TObject);
begin
panel13.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'26';
end;

procedure TfrmHOME.Panel10Click(Sender: TObject);
begin
panel10.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'27';
end;

procedure TfrmHOME.Panel14Click(Sender: TObject);
begin
panel14.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'28';
end;

procedure TfrmHOME.Panel15Click(Sender: TObject);
begin
panel15.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'28';
end;

procedure TfrmHOME.Panel89Click(Sender: TObject);
begin
panel89.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'29';
end;

procedure TfrmHOME.Panel92Click(Sender: TObject);
begin
panel92.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'30';
end;

procedure TfrmHOME.Panel132Click(Sender: TObject);
begin
panel132.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'30';
end;

procedure TfrmHOME.Panel126Click(Sender: TObject);
begin
panel126.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'31';
end;

procedure TfrmHOME.Panel76Click(Sender: TObject);
begin
panel76.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'32';
end;

procedure TfrmHOME.Panel160Click(Sender: TObject);
begin
panel160.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'33';
end;

procedure TfrmHOME.Panel162Click(Sender: TObject);
begin
panel162.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'34';
end;

procedure TfrmHOME.Panel161Click(Sender: TObject);
begin
panel161.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'35';
end;

procedure TfrmHOME.Panel153Click(Sender: TObject);
begin
panel153.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'36';
end;

procedure TfrmHOME.Panel163Click(Sender: TObject);
begin
panel163.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'37';
end;

procedure TfrmHOME.Panel93Click(Sender: TObject);
begin
panel93.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'38';
end;

procedure TfrmHOME.Panel90Click(Sender: TObject);
begin
panel90.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'39';
end;

procedure TfrmHOME.Panel166Click(Sender: TObject);
begin
panel166.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'40';
end;

procedure TfrmHOME.Panel154Click(Sender: TObject);
begin
panel154.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'41';
end;

procedure TfrmHOME.Panel156Click(Sender: TObject);
begin
panel156.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'42';
end;

procedure TfrmHOME.Panel103Click(Sender: TObject);
begin
panel103.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'43';
end;

procedure TfrmHOME.Panel155Click(Sender: TObject);
begin
panel155.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'44';
end;

procedure TfrmHOME.Panel157Click(Sender: TObject);
begin
panel157.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'45';
end;

procedure TfrmHOME.Panel159Click(Sender: TObject);
begin
panel159.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'45';
end;

procedure TfrmHOME.Panel164Click(Sender: TObject);
begin
panel164.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'46';
end;

procedure TfrmHOME.Panel158Click(Sender: TObject);
begin
panel158.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'47';
end;

procedure TfrmHOME.Panel171Click(Sender: TObject);
begin
panel171.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'48';
end;

procedure TfrmHOME.Panel170Click(Sender: TObject);
begin
panel170.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'50';
end;

procedure TfrmHOME.Panel165Click(Sender: TObject);
begin
panel165.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'51';
end;

procedure TfrmHOME.Panel11Click(Sender: TObject);
begin
panel11.Color:=$0006D9BE;
mskPassword.Text:= mskPassword.Text +'49';
end;

procedure TfrmHOME.mtlSetClick(Sender: TObject);
begin
if  (edit1.Text = '') or (edit2.Text = '') or (edit7.Text = '') or (edit6.Text = '') then
begin
messageDLG('Please make sure that all the mandetory(*) fields are not empty',mtError,[mbOK],0);
end
else
begin
pnlNew.Visible:=true;
pnlPass.Visible:=true;
pnlNewU.Visible:=false;
mtlNxt.Visible:=true;
mtlOk2.Visible:=false;
end;
end;

procedure TfrmHOME.mtlAddnewClick(Sender: TObject);
begin
pnlNewU.Visible:=true;
pnlNew.Visible:=false;
image3.Hide;

end;

procedure TfrmHOME.mtlNxtClick(Sender: TObject);
begin
panel105.Color:=$000080FF;
panel104.Color:=$000080FF;
panel97.Color:=$002DB6FF;//
panel86.Color:=$002DB6FF;//
panel95.Color:=$002DB6FF;//
panel78.Color:=$002DB6FF;//
panel77.Color:=$002DB6FF;//
panel112.Color:=$000080FF;
panel152.Color:=$000080FF;
panel96.Color:=$002DB6FF;//
panel102.Color:=$002DB6FF;//
panel85.Color:=$002DB6FF;//
panel98.Color:=$002DB6FF;//
panel100.Color:=$002DB6FF;//
panel124.Color:=$000080FF;
panel110.Color:=$000080FF;
panel91.Color:=$002DB6FF;//
panel16.Color:=$002DB6FF;//
panel107.Color:=$000080FF;
panel101.Color:=$002DB6FF;//
panel99.Color:=$002DB6FF;//
panel168.Color:=$000080FF;
panel109.Color:=$000080FF;
panel106.Color:=$000080FF;
panel8.Color:=$002DB6FF;//
panel9.Color:=$000080FF;
panel12.Color:=$002DB6FF;//
panel13.Color:=$000080FF;
panel10.Color:=$000080FF;
panel14.Color:=$002DB6FF;//
panel15.Color:=$000080FF;
panel89.Color:=$002DB6FF;//
panel92.Color:=$002DB6FF;//
panel132.Color:=$000080FF;
panel126.Color:=$000080FF;
panel76.Color:=$000080FF;
panel160.Color:=$002DB6FF;//
panel162.Color:=$002DB6FF;//
panel161.Color:=$002DB6FF;//
panel153.Color:=$000080FF;
panel163.Color:=$000080FF;
panel93.Color:=$000080FF;
panel90.Color:=$002DB6FF;//
panel166.Color:=$000080FF;
panel154.Color:=$000080FF;
panel156.Color:=$000080FF;
panel103.Color:=$000080FF;
panel155.Color:=$000080FF;
panel157.Color:=$000080FF;
panel159.Color:=$002DB6FF;//
panel164.Color:=$002DB6FF;//
panel158.Color:=$000080FF;
panel171.Color:=$000080FF;
panel170.Color:=$002DB6FF;//
panel165.Color:=$000080FF;
panel11.Color:=$002DB6FF;//
lblConfrimTile.Caption:=mskPassword.Text;
lblMsg.Hide;
lblfinal.Show;
lblFinal2.Show;
mtlNxt.Hide;
mskPassword.Clear;
mtlOk2.Show;
end;

procedure TfrmHOME.mtlRefreshClick(Sender: TObject);
begin
panel105.Color:=$000080FF;
panel104.Color:=$000080FF;
panel97.Color:=$002DB6FF;//
panel86.Color:=$002DB6FF;//
panel95.Color:=$002DB6FF;//
panel78.Color:=$002DB6FF;//
panel77.Color:=$002DB6FF;//
panel112.Color:=$000080FF;
panel152.Color:=$000080FF;
panel96.Color:=$002DB6FF;//
panel102.Color:=$002DB6FF;//
panel85.Color:=$002DB6FF;//
panel98.Color:=$002DB6FF;//
panel100.Color:=$002DB6FF;//
panel124.Color:=$000080FF;
panel110.Color:=$000080FF;
panel91.Color:=$002DB6FF;//
panel16.Color:=$002DB6FF;//
panel107.Color:=$000080FF;
panel101.Color:=$002DB6FF;//
panel99.Color:=$002DB6FF;//
panel168.Color:=$000080FF;
panel109.Color:=$000080FF;
panel106.Color:=$000080FF;
panel8.Color:=$002DB6FF;//
panel9.Color:=$000080FF;
panel12.Color:=$002DB6FF;//
panel13.Color:=$000080FF;
panel10.Color:=$000080FF;
panel14.Color:=$002DB6FF;//
panel15.Color:=$000080FF;
panel89.Color:=$002DB6FF;//
panel92.Color:=$002DB6FF;//
panel132.Color:=$000080FF;
panel126.Color:=$000080FF;
panel76.Color:=$000080FF;
panel160.Color:=$002DB6FF;//
panel162.Color:=$002DB6FF;//
panel161.Color:=$002DB6FF;//
panel153.Color:=$000080FF;
panel163.Color:=$000080FF;
panel93.Color:=$000080FF;
panel90.Color:=$002DB6FF;//
panel166.Color:=$000080FF;
panel154.Color:=$000080FF;
panel156.Color:=$000080FF;
panel103.Color:=$000080FF;
panel155.Color:=$000080FF;
panel157.Color:=$000080FF;
panel159.Color:=$002DB6FF;//
panel164.Color:=$002DB6FF;//
panel158.Color:=$000080FF;
panel171.Color:=$000080FF;
panel170.Color:=$002DB6FF;//
panel165.Color:=$000080FF;
panel11.Color:=$002DB6FF;//
lblConfrimTile.Caption:='';
mskPassword.Clear;
mtlOk2.Hide;
mtlNxt.Show;
lblFinal.Hide;
lblFinal2.Hide;
lblMsg.Show;
end;

procedure TfrmHOME.mtlBckClick(Sender: TObject);
begin
mskPassword.Clear;
panel105.Color:=$000080FF;
panel104.Color:=$000080FF;
panel97.Color:=$002DB6FF;//
panel86.Color:=$002DB6FF;//
panel95.Color:=$002DB6FF;//
panel78.Color:=$002DB6FF;//
panel77.Color:=$002DB6FF;//
panel112.Color:=$000080FF;
panel152.Color:=$000080FF;
panel96.Color:=$002DB6FF;//
panel102.Color:=$002DB6FF;//
panel85.Color:=$002DB6FF;//
panel98.Color:=$002DB6FF;//
panel100.Color:=$002DB6FF;//
panel124.Color:=$000080FF;
panel110.Color:=$000080FF;
panel91.Color:=$002DB6FF;//
panel16.Color:=$002DB6FF;//
panel107.Color:=$000080FF;
panel101.Color:=$002DB6FF;//
panel99.Color:=$002DB6FF;//
panel168.Color:=$000080FF;
panel109.Color:=$000080FF;
panel106.Color:=$000080FF;
panel8.Color:=$002DB6FF;//
panel9.Color:=$000080FF;
panel12.Color:=$002DB6FF;//
panel13.Color:=$000080FF;
panel10.Color:=$000080FF;
panel14.Color:=$002DB6FF;//
panel15.Color:=$000080FF;
panel89.Color:=$002DB6FF;//
panel92.Color:=$002DB6FF;//
panel132.Color:=$000080FF;
panel126.Color:=$000080FF;
panel76.Color:=$000080FF;
panel160.Color:=$002DB6FF;//
panel162.Color:=$002DB6FF;//
panel161.Color:=$002DB6FF;//
panel153.Color:=$000080FF;
panel163.Color:=$000080FF;
panel93.Color:=$000080FF;
panel90.Color:=$002DB6FF;//
panel166.Color:=$000080FF;
panel154.Color:=$000080FF;
panel156.Color:=$000080FF;
panel103.Color:=$000080FF;
panel155.Color:=$000080FF;
panel157.Color:=$000080FF;
panel159.Color:=$002DB6FF;//
panel164.Color:=$002DB6FF;//
panel158.Color:=$000080FF;
panel171.Color:=$000080FF;
panel170.Color:=$002DB6FF;//
panel165.Color:=$000080FF;
panel11.Color:=$002DB6FF;//
lblConfrimTile.Caption:='';
pnlNewU.Show;
pnlNew.Hide;
pnlPass.Hide;
lblfinal2.Hide;
lblfinal.Hide;
lblMsg.Show;
end;

procedure TfrmHOME.mtlOK2Click(Sender: TObject);
VAR
iGen:integer;//for the item index
sGender:string;//for the string gender
begin
if mskPassword.Text <> lblConfrimTile.Caption then
begin
MessageDLG('Pass-tile does not match previous pass-tile.'+#13+'Re-click correct pass-tile or Click on retry to restart pass-tile process.',mtError,[mbOK],0);
panel105.Color:=$000080FF;
panel104.Color:=$000080FF;
panel97.Color:=$002DB6FF;//
panel86.Color:=$002DB6FF;//
panel95.Color:=$002DB6FF;//
panel78.Color:=$002DB6FF;//
panel77.Color:=$002DB6FF;//
panel112.Color:=$000080FF;
panel152.Color:=$000080FF;
panel96.Color:=$002DB6FF;//
panel102.Color:=$002DB6FF;//
panel85.Color:=$002DB6FF;//
panel98.Color:=$002DB6FF;//
panel100.Color:=$002DB6FF;//
panel124.Color:=$000080FF;
panel110.Color:=$000080FF;
panel91.Color:=$002DB6FF;//
panel16.Color:=$002DB6FF;//
panel107.Color:=$000080FF;
panel101.Color:=$002DB6FF;//
panel99.Color:=$002DB6FF;//
panel168.Color:=$000080FF;
panel109.Color:=$000080FF;
panel106.Color:=$000080FF;
panel8.Color:=$002DB6FF;//
panel9.Color:=$000080FF;
panel12.Color:=$002DB6FF;//
panel13.Color:=$000080FF;
panel10.Color:=$000080FF;
panel14.Color:=$002DB6FF;//
panel15.Color:=$000080FF;
panel89.Color:=$002DB6FF;//
panel92.Color:=$002DB6FF;//
panel132.Color:=$000080FF;
panel126.Color:=$000080FF;
panel76.Color:=$000080FF;
panel160.Color:=$002DB6FF;//
panel162.Color:=$002DB6FF;//
panel161.Color:=$002DB6FF;//
panel153.Color:=$000080FF;
panel163.Color:=$000080FF;
panel93.Color:=$000080FF;
panel90.Color:=$002DB6FF;//
panel166.Color:=$000080FF;
panel154.Color:=$000080FF;
panel156.Color:=$000080FF;
panel103.Color:=$000080FF;
panel155.Color:=$000080FF;
panel157.Color:=$000080FF;
panel159.Color:=$002DB6FF;//
panel164.Color:=$002DB6FF;//
panel158.Color:=$000080FF;
panel171.Color:=$000080FF;
panel170.Color:=$002DB6FF;//
panel165.Color:=$000080FF;
panel11.Color:=$002DB6FF;//
mskPassword.Clear;
end
//////////////////////////////////////////////////////////////////////////////////
else
begin
iGen:=radiogroup1.ItemIndex;
/////////////////////////////////////////////////////////////////////////////////////
case iGen of
0:sGender:='Male';
1:sGender:='Female';
end;
////////////////////////////////////////////////////////////////////////////////////
qryLogin.Active:=false;
qryLogin.SQL.Text:='Insert into login values('''+edit1.Text+''','''+lblConfrimTile.Caption+''','''+sGender+''',''Y'','''+edit6.Text+''','''+edit7.Text+''','''+sLoad+''')';
qryLogin.ExecSQL;
qryLogin.SQL.Text:='Select * from Login';
qryLogin.Active:=true;
////////////////////////////////////////////////////////////////
mskPassword.Clear;
messagedlg('Thank you for your time.'+#9+'Registration sucessful',mtInformation,[mbOK],0);
///////////////////////////////////////////////////////////////
pnlPass.hide;
panel105.Color:=$000080FF;
panel104.Color:=$000080FF;
panel97.Color:=$002DB6FF;//
panel86.Color:=$002DB6FF;//
panel95.Color:=$002DB6FF;//
panel78.Color:=$002DB6FF;//
panel77.Color:=$002DB6FF;//
panel112.Color:=$000080FF;
panel152.Color:=$000080FF;
panel96.Color:=$002DB6FF;//
panel102.Color:=$002DB6FF;//
panel85.Color:=$002DB6FF;//
panel98.Color:=$002DB6FF;//
panel100.Color:=$002DB6FF;//
panel124.Color:=$000080FF;
panel110.Color:=$000080FF;
panel91.Color:=$002DB6FF;//
panel16.Color:=$002DB6FF;//
panel107.Color:=$000080FF;
panel101.Color:=$002DB6FF;//
panel99.Color:=$002DB6FF;//
panel168.Color:=$000080FF;
panel109.Color:=$000080FF;
panel106.Color:=$000080FF;
panel8.Color:=$002DB6FF;//
panel9.Color:=$000080FF;
panel12.Color:=$002DB6FF;//
panel13.Color:=$000080FF;
panel10.Color:=$000080FF;
panel14.Color:=$002DB6FF;//
panel15.Color:=$000080FF;
panel89.Color:=$002DB6FF;//
panel92.Color:=$002DB6FF;//
panel132.Color:=$000080FF;
panel126.Color:=$000080FF;
panel76.Color:=$000080FF;
panel160.Color:=$002DB6FF;//
panel162.Color:=$002DB6FF;//
panel161.Color:=$002DB6FF;//
panel153.Color:=$000080FF;
panel163.Color:=$000080FF;
panel93.Color:=$000080FF;
panel90.Color:=$002DB6FF;//
panel166.Color:=$000080FF;
panel154.Color:=$000080FF;
panel156.Color:=$000080FF;
panel103.Color:=$000080FF;
panel155.Color:=$000080FF;
panel157.Color:=$000080FF;
panel159.Color:=$002DB6FF;//
panel164.Color:=$002DB6FF;//
panel158.Color:=$000080FF;
panel171.Color:=$000080FF;
panel170.Color:=$002DB6FF;//
panel165.Color:=$000080FF;
panel11.Color:=$002DB6FF;//
lblfinal.Hide;
lblFinal2.Hide;
end;

end;

procedure TfrmHOME.AdvMetroButton1Click(Sender: TObject);
begin
If (OpenPictureDialog1.Execute) then
begin
sLoad:=OpenPictureDialog1.FileName;
Image3.Picture.LoadFromFile(sLoad);
image3.Show;
end;
end;

function TfrmHOME.Validatelogin: boolean; //funtion to validate if username or pass-tile is correct
begin
sUsername:=UpperCase(Trim(lblUser.Caption));
sPassword:=Trim(mskPassword.Text);
/////////////////////////////////////////////////////////////
try
bValidated:=false;
try
qrylogin.SQL.Clear;
qryLogin.SQL.Add('Select user_login');
qryLogin.SQL.Add(' , User_Password');
qryLogin.SQL.Add(' from login');
qryLogin.SQL.Add(' where user_login = (:UserLogin)');
qryLogin.SQL.Add(' and User_Password =(:UserPassword)');
qryLogin.SQL.Add(' and User_IsActive = ''Y''');
qrylogin.Parameters[0].Value:=sUsername;
qrylogin.Parameters[1].Value:=sPassword;
qrylogin.Open;
//////////
if qrylogin.RecordCount >0 then
begin
bValidated:=true;
ScrollBox1.Show;
pnlMenu.Hide;
pnlStart.Hide;
pnlMenu1.Show;
end
//////////
else
begin
messageDLG('Please choose corect user name.'+#9+'or Correct Pass-tile combonation.'+#13+'Click on retry to redo pass-tile',mtError,[mbOK],0);
qryLogin.Active:=false;
qryLogin.SQL.Text:='Select * from Login';
qryLogin.Active:=true;
end;
///////////////////////////////////////////////////////
except
on E : Exception do begin
ShowMessage('Exception in TLogin.ValidateLogin: ' + E.message);
end;
end;
///////////////////////////////////////////////////////
finally
result:=bValidated;
end;
//////////////////////////////////////////////////////
end;

procedure TfrmHOME.mtlRefresh2Click(Sender: TObject);
begin
panel105.Color:=$000080FF;
panel104.Color:=$000080FF;
panel97.Color:=$002DB6FF;//
panel86.Color:=$002DB6FF;//
panel95.Color:=$002DB6FF;//
panel78.Color:=$002DB6FF;//
panel77.Color:=$002DB6FF;//
panel112.Color:=$000080FF;
panel152.Color:=$000080FF;
panel96.Color:=$002DB6FF;//
panel102.Color:=$002DB6FF;//
panel85.Color:=$002DB6FF;//
panel98.Color:=$002DB6FF;//
panel100.Color:=$002DB6FF;//
panel124.Color:=$000080FF;
panel110.Color:=$000080FF;
panel91.Color:=$002DB6FF;//
panel16.Color:=$002DB6FF;//
panel107.Color:=$000080FF;
panel101.Color:=$002DB6FF;//
panel99.Color:=$002DB6FF;//
panel168.Color:=$000080FF;
panel109.Color:=$000080FF;
panel106.Color:=$000080FF;
panel8.Color:=$002DB6FF;//
panel9.Color:=$000080FF;
panel12.Color:=$002DB6FF;//
panel13.Color:=$000080FF;
panel10.Color:=$000080FF;
panel14.Color:=$002DB6FF;//
panel15.Color:=$000080FF;
panel89.Color:=$002DB6FF;//
panel92.Color:=$002DB6FF;//
panel132.Color:=$000080FF;
panel126.Color:=$000080FF;
panel76.Color:=$000080FF;
panel160.Color:=$002DB6FF;//
panel162.Color:=$002DB6FF;//
panel161.Color:=$002DB6FF;//
panel153.Color:=$000080FF;
panel163.Color:=$000080FF;
panel93.Color:=$000080FF;
panel90.Color:=$002DB6FF;//
panel166.Color:=$000080FF;
panel154.Color:=$000080FF;
panel156.Color:=$000080FF;
panel103.Color:=$000080FF;
panel155.Color:=$000080FF;
panel157.Color:=$000080FF;
panel159.Color:=$002DB6FF;//
panel164.Color:=$002DB6FF;//
panel158.Color:=$000080FF;
panel171.Color:=$000080FF;
panel170.Color:=$002DB6FF;//
panel165.Color:=$000080FF;
panel11.Color:=$002DB6FF;//
lblConfrimTile.Caption:='';
mskPassword.Clear;
end;

procedure TfrmHOME.mtlSubmitClick(Sender: TObject);
var
sFileName:string;
begin
qryLogin.Active:=false;
qryLogin.SQL.Text:='Select * from Login where user_login = '''+lblUser.Caption+'''';
qryLogin.Active:=true;
sFileNAme:=qryLogin['IMGUSER'];
if FileExists(sFilename) <> true then
begin
imgUserD.Visible:=true;
imgUser.Visible:=false;
lblName.Show;
lblEmail.Show;
lblJob.Show;
lblName.Caption:=qryLogin['user_login'];
lblEmail.Caption:=qryLogin['E_mail_ adress'];
lblJob.Caption:=qryLogin['JOB'];
frmHome.Validatelogin;
end
else
begin
imgUserD.Visible:=false;
imgUser.Visible:=true;
imgUser.Picture.LoadFromFile(sFileName);
lblName.Show;
lblEmail.Show;
lblJob.Show;
lblName.Caption:=qryLogin['user_login'];
lblEmail.Caption:=qryLogin['E_mail_ adress'];
lblJob.Caption:=qryLogin['JOB'];
frmHome.Validatelogin;
end;

end;

procedure TfrmHOME.dbLookNameClick(Sender: TObject);
begin
lblUser.Caption:=dbLookName.Text;
end;

procedure TfrmHOME.mtlAdd0Click(Sender: TObject);
begin
frmWorkplace.mtlEdit0.Visible:=true;
frmWorkplace.mtlBabyHub.Visible:=true;
frmWorkplace.mtlOrganise.Visible:=true;
frmWorkplace.mtlView0.Visible:=true;
frmWorkplace.mtlAdd0.Caption:='Add new...';
frmWorkplace.Visible:=true;
frmHome.Hide;
frmWorkplace.pagecontrol1.Visible:=false;
frmWorkplace.pagecontrol2.Visible:=false;
frmWorkplace.pagecontrol4.Visible:=false;
frmWorkplace.pagecontrol6.Visible:=false;
frmWorkplace.pagecontrol5.Visible:=false;
frmWorkplace.pagecontrol7.Visible:=false;
frmWorkplace.pageControl8.Visible:=false;
frmWorkplace.pageControl9.Visible:=false;
frmWorkplace.mtlAdd0.ZoomOnHover:=0;
frmWorkplace.mtlEdit0.ZoomOnHover:=2;
frmWorkplace.mtlBabyHub.ZoomOnHover:=2;
frmWorkplace.mtlOrganise.ZoomOnHover:=2;
frmWorkplace.mtlQuick0.ZoomOnHover:=2;
frmWorkplace.mtlClip0.ZoomOnHover:=2;
frmWorkplace.mtlView0.ZoomOnHover:=2;
frmWorkplace.mtlFilter0.ZoomOnHover:=2;
frmWorkplace.mltStats0.ZoomOnHover:=2;
//////////////
frmWorkplace.mtlAdd0.Appearance.Color:=$0001AECD;
frmWorkplace.mtlbabyhub.Appearance.Color:=$0001A4C1;
frmWorkplace.mtlClip0.Appearance.Color:=$0001A4C1;
frmWorkplace.mtlOrganise.Appearance.Color:=$0001A4C1;
frmWorkplace.mtlView0.Appearance.Color:=$0001A4C1;
frmWorkplace.mtlQuick0.Appearance.Color:=$0001A4C1;
frmWorkplace.mtlFilter0.Appearance.Color:=$0001A4C1;
frmWorkplace.mltStats0.Appearance.Color:=$0001A4C1;
frmWorkplace.mtlEdit0.Appearance.Color:=$0001A4C1;
frmWorkPlace.pagecontrol3.Visible:=true;
frmWorkPlace.TABSHEET43.TabVisible:=false;
frmWorkPlace.tabsheet39.TabVisible:=true;
frmWorkPlace.TABSHEET41.TabVisible:=false;
frmWorkPlace.TABSHEET40.TabVisible:=false;
frmWorkPlace.pnlOF.Visible:=false;
frmWorkPlace.pnlNum.Visible:=false;
frmWorkPlace.pnlNameF.Visible:=False;
frmWorkPlace.pnlYesNo.Visible:=false;
frmWorkPlace.pnlAniF.Visible:=true;
frmWorkPlace.pnlOrderF.Visible:=true;
frmWorkPlace.pnlVacF.Visible:=true;
frmWorkPlace.pnlTopF.Visible:=true;
frmWorkPlace.pnlHeading.Visible:=false;
frmWorkPlace.pnlFilter.Visible:=false;
frmWorkPlace.pnlFilterh.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.pnlHD.Visible:=false;
frmWorkPlace.tabsheet44.TabVisible:=true;
frmWorkPlace.tabsheet45.TabVisible:=false;
frmWorkPlace.mtlNext2.Visible:=false;
frmWorkPlace.pagecontrol6.Visible:=false;
frmWorkPlace.mtlcancel3.Visible:=false;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet22.TabVisible:=true;
frmWorkPlace.tabsheet23.TabVisible:=false;
frmWorkPlace.tabsheet24.TabVisible:=false;
frmWorkPlace.tabsheet25.TabVisible:=false;
frmWorkPlace.tabsheet46.TabVisible:=false;
frmWorkPlace.tabsheet27.TabVisible:=false;
frmWorkPlace.redAni.Visible:=false;
frmWorkPlace.redAni2.Visible:=false;
frmWorkPlace.redAni3.Visible:=false;
frmWorkPlace.redAni44.Visible:=false;
frmWorkPlace.redAni5.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlDel.Visible:=true;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet7.TabVisible:=true;
frmWorkPlace.tabsheet8.TabVisible:=false;
frmWorkPlace.tabsheet9.TabVisible:=false;
frmWorkPlace.tabsheet10.TabVisible:=false;
frmWorkPlace.tabsheet11.TabVisible:=true;
frmWorkPlace.tabsheet12.TabVisible:=false;
frmWorkPlace.tabsheet13.TabVisible:=false;
frmWorkPlace.tabsheet14.TabVisible:=false;
frmWorkPlace.tabsheet15.TabVisible:=false;
frmWorkPlace.tabsheet21.TabVisible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlCancel2.Visible:=false;
frmWorkPlace.mtlCancel.Visible:=false;
frmWorkPlace.mtlNext.Visible:=false;
frmWorkPlace.mtlRefresh.Visible:=false;
frmWorkPlace.mtlPrevious.Visible:=false;
frmWorkPlace.mtlDel.Visible:=false;
frmWorkPlace.pnlAddc.Visible:=false;
frmWorkPlace.pnlDelV.Visible:=false;
frmWorkPlace.pnlAddG.Visible:=false;
frmWorkPlace.pnlDelGeo.Visible:=false;
frmWorkPlace.pnlDelete.Visible:=false;
frmWorkPlace.pnlBEdit.Visible:=false;
frmWorkPlace.mtlDelA.Visible:=true;
frmWorkPlace.mtlAddcA.Visible:=true;
frmWorkPlace.mtlDelG.Visible:=true;
frmWorkPlace.mtlAddG.Visible:=true;
frmWorkPlace.mtlDelV.Visible:=true;
frmWorkPlace.pnlBadd.Visible:=false;
frmWorkPlace.pnlDelB.Visible:=false;
frmWorkPlace.pnlBaddc.Visible:=false;
frmWorkPlace.pnlAddNewA.Visible:=false;
frmWorkPlace.pnlfacts.Visible:=false;
frmWorkPlace.pnlAddNewG.Visible:=false;
frmWorkPlace.pnlAddNewV.Visible:=false;
frmWorkPlace.pnlEditG.Visible:=false;
frmWorkPlace.pnlEditA.Visible:=false;
frmWorkPlace.pnlEditV.Visible:=false;
frmWorkPlace.pnlEditF.Visible:=false;
frmWorkPlace.tabsheet16.TabVisible:=true;
frmWorkPlace.tabsheet17.TabVisible:=false;
frmWorkPlace.tabsheet18.TabVisible:=false;
frmWorkPlace.tabsheet19.TabVisible:=false;
frmWorkPlace.tabsheet20.TabVisible:=false;
end;

procedure TfrmHOME.mtlBackClick(Sender: TObject);
begin
pnlNewU.Hide;
pnlNew.Show;
edit1.Clear;
edit2.Clear;
edit7.Clear;
edit6.Clear;
image3.Hide;

end;

procedure TfrmHOME.mtlHomeClick(Sender: TObject);
begin
pnlEmploy.Visible:=false;
pnlTourist.Visible:=true;
pnlHex.Visible:=true;
mtlEmploy.Visible:=true;
end;

procedure TfrmHOME.mtlBck2Click(Sender: TObject);
begin
mskPassword.Clear;
panel105.Color:=$000080FF;
panel104.Color:=$000080FF;
panel97.Color:=$002DB6FF;//
panel86.Color:=$002DB6FF;//
panel95.Color:=$002DB6FF;//
panel78.Color:=$002DB6FF;//
panel77.Color:=$002DB6FF;//
panel112.Color:=$000080FF;
panel152.Color:=$000080FF;
panel96.Color:=$002DB6FF;//
panel102.Color:=$002DB6FF;//
panel85.Color:=$002DB6FF;//
panel98.Color:=$002DB6FF;//
panel100.Color:=$002DB6FF;//
panel124.Color:=$000080FF;
panel110.Color:=$000080FF;
panel91.Color:=$002DB6FF;//
panel16.Color:=$002DB6FF;//
panel107.Color:=$000080FF;
panel101.Color:=$002DB6FF;//
panel99.Color:=$002DB6FF;//
panel168.Color:=$000080FF;
panel109.Color:=$000080FF;
panel106.Color:=$000080FF;
panel8.Color:=$002DB6FF;//
panel9.Color:=$000080FF;
panel12.Color:=$002DB6FF;//
panel13.Color:=$000080FF;
panel10.Color:=$000080FF;
panel14.Color:=$002DB6FF;//
panel15.Color:=$000080FF;
panel89.Color:=$002DB6FF;//
panel92.Color:=$002DB6FF;//
panel132.Color:=$000080FF;
panel126.Color:=$000080FF;
panel76.Color:=$000080FF;
panel160.Color:=$002DB6FF;//
panel162.Color:=$002DB6FF;//
panel161.Color:=$002DB6FF;//
panel153.Color:=$000080FF;
panel163.Color:=$000080FF;
panel93.Color:=$000080FF;
panel90.Color:=$002DB6FF;//
panel166.Color:=$000080FF;
panel154.Color:=$000080FF;
panel156.Color:=$000080FF;
panel103.Color:=$000080FF;
panel155.Color:=$000080FF;
panel157.Color:=$000080FF;
panel159.Color:=$002DB6FF;//
panel164.Color:=$002DB6FF;//
panel158.Color:=$000080FF;
panel171.Color:=$000080FF;
panel170.Color:=$002DB6FF;//
panel165.Color:=$000080FF;
panel11.Color:=$002DB6FF;//
lblConfrimTile.Caption:='';
pnlNew.Show;
pnlMenu.Show;
pnlPass.Hide;
pnlMenu1.Hide;
ScrollBox1.Hide;
ScrollBox2.Hide;
qryLogin.Active:=false;
qryLogin.SQL.Text:='Select * from Login';
qryLogin.Active:=true;
pnlBlack.Visible:=false;
end;

procedure TfrmHOME.mtlEdit0Click(Sender: TObject);
begin
frmWorkplace.mtlEdit0.Visible:=true;
frmWorkplace.mtlBabyHub.Visible:=true;
frmWorkplace.mtlOrganise.Visible:=true;
frmWorkplace.mtlView0.Visible:=true;
frmWorkplace.mtlAdd0.Caption:='Add new...';
frmWorkPlace.Visible:=true;
frmHome.Hide;
frmWorkPlace.pagecontrol4.Visible:=true;
frmWorkPlace.Label74.Visible:=false;
frmWorkPlace.Label74.Visible:=true;
frmWorkplace.pagecontrol1.Visible:=false;
frmWorkplace.pagecontrol2.Visible:=false;
frmWorkplace.pagecontrol6.Visible:=false;
frmWorkplace.pagecontrol5.Visible:=false;
frmWorkplace.pagecontrol7.Visible:=false;
frmWorkplace.pageControl8.Visible:=false;
frmWorkplace.pageControl9.Visible:=false;
/////////////
frmWorkPlace.mtlEdit0.ZoomOnHover:=0;
frmWorkPlace.mtlAdd0.ZoomOnHover:=2;
frmWorkPlace.mtlBabyHub.ZoomOnHover:=2;
frmWorkPlace.mtlOrganise.ZoomOnHover:=2;
frmWorkPlace.mtlQuick0.ZoomOnHover:=2;
frmWorkPlace.mtlClip0.ZoomOnHover:=2;
frmWorkPlace.mtlView0.ZoomOnHover:=2;
frmWorkPlace.mtlFilter0.ZoomOnHover:=2;
frmWorkPlace.mltStats0.ZoomOnHover:=2;
//////////////
frmWorkPlace.mtlEdit0.Appearance.Color:=$0001AECD;
frmWorkPlace.mtlbabyhub.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlClip0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlOrganise.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlView0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlQuick0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlFilter0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mltStats0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlAdd0.Appearance.Color:=$0001A4C1;
//////////////////
frmWorkPlace.pagecontrol3.Visible:=false;
frmWorkPlace.TABSHEET43.TabVisible:=false;
frmWorkPlace.tabsheet39.TabVisible:=true;
frmWorkPlace.TABSHEET41.TabVisible:=false;
frmWorkPlace.TABSHEET40.TabVisible:=false;
frmWorkPlace.pnlOF.Visible:=false;
frmWorkPlace.pnlNum.Visible:=false;
frmWorkPlace.pnlNameF.Visible:=False;
frmWorkPlace.pnlYesNo.Visible:=false;
frmWorkPlace.pnlAniF.Visible:=true;
frmWorkPlace.pnlOrderF.Visible:=true;
frmWorkPlace.pnlVacF.Visible:=true;
frmWorkPlace.pnlTopF.Visible:=true;
frmWorkPlace.pnlHeading.Visible:=false;
frmWorkPlace.pnlFilter.Visible:=false;
frmWorkPlace.pnlFilterh.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.pnlHD.Visible:=false;
frmWorkPlace.tabsheet44.TabVisible:=true;
frmWorkPlace.tabsheet45.TabVisible:=false;
frmWorkPlace.mtlNext2.Visible:=false;
frmWorkPlace.pagecontrol6.Visible:=false;
frmWorkPlace.mtlcancel3.Visible:=false;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet22.TabVisible:=true;
frmWorkPlace.tabsheet23.TabVisible:=false;
frmWorkPlace.tabsheet24.TabVisible:=false;
frmWorkPlace.tabsheet25.TabVisible:=false;
frmWorkPlace.tabsheet46.TabVisible:=false;
frmWorkPlace.tabsheet27.TabVisible:=false;
frmWorkPlace.redAni.Visible:=false;
frmWorkPlace.redAni2.Visible:=false;
frmWorkPlace.redAni3.Visible:=false;
frmWorkPlace.redAni44.Visible:=false;
frmWorkPlace.redAni5.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlDel.Visible:=true;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet7.TabVisible:=true;
frmWorkPlace.tabsheet8.TabVisible:=false;
frmWorkPlace.tabsheet9.TabVisible:=false;
frmWorkPlace.tabsheet10.TabVisible:=false;
frmWorkPlace.tabsheet11.TabVisible:=true;
frmWorkPlace.tabsheet12.TabVisible:=false;
frmWorkPlace.tabsheet13.TabVisible:=false;
frmWorkPlace.tabsheet14.TabVisible:=false;
frmWorkPlace.tabsheet15.TabVisible:=false;
frmWorkPlace.tabsheet21.TabVisible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlCancel2.Visible:=false;
frmWorkPlace.mtlCancel.Visible:=false;
frmWorkPlace.mtlNext.Visible:=false;
frmWorkPlace.mtlRefresh.Visible:=false;
frmWorkPlace.mtlPrevious.Visible:=false;
frmWorkPlace.mtlDel.Visible:=false;
frmWorkPlace.pnlAddc.Visible:=false;
frmWorkPlace.pnlDelV.Visible:=false;
frmWorkPlace.pnlAddG.Visible:=false;
frmWorkPlace.pnlDelGeo.Visible:=false;
frmWorkPlace.pnlDelete.Visible:=false;
frmWorkPlace.pnlBEdit.Visible:=false;
frmWorkPlace.mtlDelA.Visible:=true;
frmWorkPlace.mtlAddcA.Visible:=true;
frmWorkPlace.mtlDelG.Visible:=true;
frmWorkPlace.mtlAddG.Visible:=true;
frmWorkPlace.mtlDelV.Visible:=true;
frmWorkPlace.pnlBadd.Visible:=false;
frmWorkPlace.pnlDelB.Visible:=false;
frmWorkPlace.pnlBaddc.Visible:=false;
frmWorkPlace.pnlAddNewA.Visible:=false;
frmWorkPlace.pnlfacts.Visible:=false;
frmWorkPlace.pnlAddNewG.Visible:=false;
frmWorkPlace.pnlAddNewV.Visible:=false;
frmWorkPlace.pnlEditG.Visible:=false;
frmWorkPlace.pnlEditA.Visible:=false;
frmWorkPlace.pnlEditV.Visible:=false;
frmWorkPlace.pnlEditF.Visible:=false;
frmWorkPlace.tabsheet16.TabVisible:=true;
frmWorkPlace.tabsheet17.TabVisible:=false;
frmWorkPlace.tabsheet18.TabVisible:=false;
frmWorkPlace.tabsheet19.TabVisible:=false;
frmWorkPlace.tabsheet20.TabVisible:=false;



end;

procedure TfrmHOME.mtlBabyClick(Sender: TObject);
begin
frmWorkplace.mtlEdit0.Visible:=true;
frmWorkplace.mtlBabyHub.Visible:=true;
frmWorkplace.mtlOrganise.Visible:=true;
frmWorkplace.mtlView0.Visible:=true;
frmWorkplace.mtlAdd0.Caption:='Add new...';
frmWorkPlace.Visible:=true;
frmHome.Hide;
frmWorkPlace.pagecontrol2.Visible:=true;
frmWorkPlace.Label37.Visible:=false;
frmWorkPlace.Label37.Visible:=true;
frmWorkplace.pagecontrol1.Visible:=false;
frmWorkplace.pagecontrol4.Visible:=false;
frmWorkplace.pagecontrol6.Visible:=false;
frmWorkplace.pagecontrol5.Visible:=false;
frmWorkplace.pagecontrol7.Visible:=false;
frmWorkplace.pageControl8.Visible:=false;
frmWorkplace.pageControl9.Visible:=false;
/////////////
frmWorkPlace.mtlBabyHub.ZoomOnHover:=0;
frmWorkPlace.mtlAdd0.ZoomOnHover:=2;
frmWorkPlace.mtlEdit0.ZoomOnHover:=2;
frmWorkPlace.mtlOrganise.ZoomOnHover:=2;
frmWorkPlace.mtlQuick0.ZoomOnHover:=2;
frmWorkPlace.mtlClip0.ZoomOnHover:=2;
frmWorkPlace.mtlView0.ZoomOnHover:=2;
frmWorkPlace.mtlFilter0.ZoomOnHover:=2;
frmWorkPlace.mltStats0.ZoomOnHover:=2;
///////////////
frmWorkPlace.mtlBabyhub.Appearance.Color:=$0001AECD;
frmWorkPlace.mtlAdd0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlClip0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlOrganise.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlView0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlQuick0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlFilter0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mltStats0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlEdit0.Appearance.Color:=$0001A4C1;
/////////////////
frmWorkPlace.pagecontrol3.Visible:=false;
end;

procedure TfrmHOME.mtlOrganiseClick(Sender: TObject);
begin
frmWorkplace.mtlEdit0.Visible:=true;
frmWorkplace.mtlBabyHub.Visible:=true;
frmWorkplace.mtlOrganise.Visible:=true;
frmWorkplace.mtlView0.Visible:=true;
frmWorkplace.mtlAdd0.Caption:='Add new...';
frmWorkPlace.Visible:=true;
frmHome.Hide;
frmWorkPlace.pagecontrol1.Visible:=true;
frmWorkPlace.Label1.Visible:=false;
frmWorkPlace.Label1.Visible:=true;
frmWorkplace.pagecontrol2.Visible:=false;
frmWorkplace.pagecontrol4.Visible:=false;
frmWorkplace.pagecontrol6.Visible:=false;
frmWorkplace.pagecontrol5.Visible:=false;
frmWorkplace.pagecontrol7.Visible:=false;
frmWorkplace.pageControl8.Visible:=false;
frmWorkplace.pageControl9.Visible:=false;
/////////////
frmWorkPlace.mtlOrganise.ZoomOnHover:=0;
frmWorkPlace.mtlAdd0.ZoomOnHover:=2;
frmWorkPlace.mtlBabyHub.ZoomOnHover:=2;
frmWorkPlace.mtlEdit0.ZoomOnHover:=2;
frmWorkPlace.mtlQuick0.ZoomOnHover:=2;
frmWorkPlace.mtlClip0.ZoomOnHover:=2;
frmWorkPlace.mtlView0.ZoomOnHover:=2;
frmWorkPlace.mtlFilter0.ZoomOnHover:=2;
frmWorkPlace.mltStats0.ZoomOnHover:=2;
////////////////
frmWorkPlace.mtlOrganise.Appearance.Color:=$0001AECD;
frmWorkPlace.mtlbabyhub.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlClip0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlAdd0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlView0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlQuick0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlFilter0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mltStats0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlEdit0.Appearance.Color:=$0001A4C1;
//////////////
frmWorkPlace.pagecontrol3.Visible:=false;
frmWorkPlace.TABSHEET43.TabVisible:=false;
frmWorkPlace.tabsheet39.TabVisible:=true;
frmWorkPlace.TABSHEET41.TabVisible:=false;
frmWorkPlace.TABSHEET40.TabVisible:=false;
frmWorkPlace.pnlOF.Visible:=false;
frmWorkPlace.pnlNum.Visible:=false;
frmWorkPlace.pnlNameF.Visible:=False;
frmWorkPlace.pnlYesNo.Visible:=false;
frmWorkPlace.pnlAniF.Visible:=true;
frmWorkPlace.pnlOrderF.Visible:=true;
frmWorkPlace.pnlVacF.Visible:=true;
frmWorkPlace.pnlTopF.Visible:=true;
frmWorkPlace.pnlHeading.Visible:=false;
frmWorkPlace.pnlFilter.Visible:=false;
frmWorkPlace.pnlFilterh.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.pnlHD.Visible:=false;
frmWorkPlace.tabsheet44.TabVisible:=true;
frmWorkPlace.tabsheet45.TabVisible:=false;
frmWorkPlace.mtlNext2.Visible:=false;
frmWorkPlace.pagecontrol6.Visible:=false;
frmWorkPlace.mtlcancel3.Visible:=false;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet22.TabVisible:=true;
frmWorkPlace.tabsheet23.TabVisible:=false;
frmWorkPlace.tabsheet24.TabVisible:=false;
frmWorkPlace.tabsheet25.TabVisible:=false;
frmWorkPlace.tabsheet46.TabVisible:=false;
frmWorkPlace.tabsheet27.TabVisible:=false;
frmWorkPlace.redAni.Visible:=false;
frmWorkPlace.redAni2.Visible:=false;
frmWorkPlace.redAni3.Visible:=false;
frmWorkPlace.redAni44.Visible:=false;
frmWorkPlace.redAni5.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlDel.Visible:=true;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet7.TabVisible:=true;
frmWorkPlace.tabsheet8.TabVisible:=false;
frmWorkPlace.tabsheet9.TabVisible:=false;
frmWorkPlace.tabsheet10.TabVisible:=false;
frmWorkPlace.tabsheet11.TabVisible:=true;
frmWorkPlace.tabsheet12.TabVisible:=false;
frmWorkPlace.tabsheet13.TabVisible:=false;
frmWorkPlace.tabsheet14.TabVisible:=false;
frmWorkPlace.tabsheet15.TabVisible:=false;
frmWorkPlace.tabsheet21.TabVisible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlCancel2.Visible:=false;
frmWorkPlace.mtlCancel.Visible:=false;
frmWorkPlace.mtlNext.Visible:=false;
frmWorkPlace.mtlRefresh.Visible:=false;
frmWorkPlace.mtlPrevious.Visible:=false;
frmWorkPlace.mtlDel.Visible:=false;
frmWorkPlace.pnlAddc.Visible:=false;
frmWorkPlace.pnlDelV.Visible:=false;
frmWorkPlace.pnlAddG.Visible:=false;
frmWorkPlace.pnlDelGeo.Visible:=false;
frmWorkPlace.pnlDelete.Visible:=false;
frmWorkPlace.pnlBEdit.Visible:=false;
frmWorkPlace.mtlDelA.Visible:=true;
frmWorkPlace.mtlAddcA.Visible:=true;
frmWorkPlace.mtlDelG.Visible:=true;
frmWorkPlace.mtlAddG.Visible:=true;
frmWorkPlace.mtlDelV.Visible:=true;
frmWorkPlace.pnlBadd.Visible:=false;
frmWorkPlace.pnlDelB.Visible:=false;
frmWorkPlace.pnlBaddc.Visible:=false;
frmWorkPlace.pnlAddNewA.Visible:=false;
frmWorkPlace.pnlfacts.Visible:=false;
frmWorkPlace.pnlAddNewG.Visible:=false;
frmWorkPlace.pnlAddNewV.Visible:=false;
frmWorkPlace.pnlEditG.Visible:=false;
frmWorkPlace.pnlEditA.Visible:=false;
frmWorkPlace.pnlEditV.Visible:=false;
frmWorkPlace.pnlEditF.Visible:=false;
frmWorkPlace.tabsheet16.TabVisible:=true;
frmWorkPlace.tabsheet17.TabVisible:=false;
frmWorkPlace.tabsheet18.TabVisible:=false;
frmWorkPlace.tabsheet19.TabVisible:=false;
frmWorkPlace.tabsheet20.TabVisible:=false;
////////////////////
frmWorkPlace.TABSHEET43.TabVisible:=false;
frmWorkPlace.tabsheet39.TabVisible:=true;
frmWorkPlace.TABSHEET41.TabVisible:=false;
frmWorkPlace.TABSHEET40.TabVisible:=false;
frmWorkPlace.pnlOF.Visible:=false;
frmWorkPlace.pnlNum.Visible:=false;
frmWorkPlace.pnlNameF.Visible:=False;
frmWorkPlace.pnlYesNo.Visible:=false;
frmWorkPlace.pnlAniF.Visible:=true;
frmWorkPlace.pnlOrderF.Visible:=true;
frmWorkPlace.pnlVacF.Visible:=true;
frmWorkPlace.pnlTopF.Visible:=true;
frmWorkPlace.pnlHeading.Visible:=false;
frmWorkPlace.pnlFilter.Visible:=false;
frmWorkPlace.pnlFilterh.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.pnlHD.Visible:=false;
frmWorkPlace.tabsheet44.TabVisible:=true;
frmWorkPlace.tabsheet45.TabVisible:=false;
frmWorkPlace.mtlNext2.Visible:=false;
frmWorkPlace.pagecontrol6.Visible:=false;
frmWorkPlace.mtlcancel3.Visible:=false;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet22.TabVisible:=true;
frmWorkPlace.tabsheet23.TabVisible:=false;
frmWorkPlace.tabsheet24.TabVisible:=false;
frmWorkPlace.tabsheet25.TabVisible:=false;
frmWorkPlace.tabsheet46.TabVisible:=false;
frmWorkPlace.tabsheet27.TabVisible:=false;
frmWorkPlace.redAni.Visible:=false;
frmWorkPlace.redAni2.Visible:=false;
frmWorkPlace.redAni3.Visible:=false;
frmWorkPlace.redAni44.Visible:=false;
frmWorkPlace.redAni5.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlDel.Visible:=true;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet7.TabVisible:=true;
frmWorkPlace.tabsheet8.TabVisible:=false;
frmWorkPlace.tabsheet9.TabVisible:=false;
frmWorkPlace.tabsheet10.TabVisible:=false;
frmWorkPlace.tabsheet11.TabVisible:=true;
frmWorkPlace.tabsheet12.TabVisible:=false;
frmWorkPlace.tabsheet13.TabVisible:=false;
frmWorkPlace.tabsheet14.TabVisible:=false;
frmWorkPlace.tabsheet15.TabVisible:=false;
frmWorkPlace.tabsheet21.TabVisible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlCancel2.Visible:=false;
frmWorkPlace.mtlCancel.Visible:=false;
frmWorkPlace.mtlNext.Visible:=false;
frmWorkPlace.mtlRefresh.Visible:=false;
frmWorkPlace.mtlPrevious.Visible:=false;
frmWorkPlace.mtlDel.Visible:=false;
frmWorkPlace.pnlAddc.Visible:=false;
frmWorkPlace.pnlDelV.Visible:=false;
frmWorkPlace.pnlAddG.Visible:=false;
frmWorkPlace.pnlDelGeo.Visible:=false;
frmWorkPlace.pnlDelete.Visible:=false;
frmWorkPlace.pnlBEdit.Visible:=false;
frmWorkPlace.mtlDelA.Visible:=true;
frmWorkPlace.mtlAddcA.Visible:=true;
frmWorkPlace.mtlDelG.Visible:=true;
frmWorkPlace.mtlAddG.Visible:=true;
frmWorkPlace.mtlDelV.Visible:=true;
frmWorkPlace.pnlBadd.Visible:=false;
frmWorkPlace.pnlDelB.Visible:=false;
frmWorkPlace.pnlBaddc.Visible:=false;
frmWorkPlace.pnlAddNewA.Visible:=false;
frmWorkPlace.pnlfacts.Visible:=false;
frmWorkPlace.pnlAddNewG.Visible:=false;
frmWorkPlace.pnlAddNewV.Visible:=false;
frmWorkPlace.pnlEditG.Visible:=false;
frmWorkPlace.pnlEditA.Visible:=false;
frmWorkPlace.pnlEditV.Visible:=false;
frmWorkPlace.pnlEditF.Visible:=false;
frmWorkPlace.tabsheet16.TabVisible:=true;
frmWorkPlace.tabsheet17.TabVisible:=false;
frmWorkPlace.tabsheet18.TabVisible:=false;
frmWorkPlace.tabsheet19.TabVisible:=false;
frmWorkPlace.tabsheet20.TabVisible:=false;
end;

procedure TfrmHOME.mltStats0Click(Sender: TObject);
begin
frmWorkplace.mtlEdit0.Visible:=true;
frmWorkplace.mtlBabyHub.Visible:=true;
frmWorkplace.mtlOrganise.Visible:=true;
frmWorkplace.mtlView0.Visible:=true;
frmWorkplace.mtlAdd0.Caption:='Add new...';
frmWorkPlace.Visible:=true;
frmHome.Hide;
frmWorkPlace.pageControl8.Visible:=true;
frmWorkPlace.Label76.Visible:=false;
frmWorkPlace.Label76.Visible:=true;
frmWorkplace.pagecontrol1.Visible:=false;
frmWorkplace.pagecontrol2.Visible:=false;
frmWorkplace.pagecontrol4.Visible:=false;
frmWorkplace.pagecontrol6.Visible:=false;
frmWorkplace.pagecontrol5.Visible:=false;
frmWorkplace.pagecontrol7.Visible:=false;
frmWorkplace.pageControl9.Visible:=false;
/////////////
/////////////
frmWorkPlace.mltStats0.ZoomOnHover:=0;
frmWorkPlace.mtlAdd0.ZoomOnHover:=2;
frmWorkPlace.mtlBabyHub.ZoomOnHover:=2;
frmWorkPlace.mtlOrganise.ZoomOnHover:=2;
frmWorkPlace.mtlQuick0.ZoomOnHover:=2;
frmWorkPlace.mtlClip0.ZoomOnHover:=2;
frmWorkPlace.mtlView0.ZoomOnHover:=2;
frmWorkPlace.mtlFilter0.ZoomOnHover:=2;
frmWorkPlace.mtlEdit0.ZoomOnHover:=2;
//////////
frmWorkPlace.mltStats0.Appearance.Color:=$0001AECD;
frmWorkPlace.mtlbabyhub.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlClip0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlOrganise.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlView0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlQuick0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlFilter0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlAdd0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlEdit0.Appearance.Color:=$0001A4C1;
///////////
frmWorkPlace.pagecontrol3.Visible:=false;
/////////
frmWorkPlace.TABSHEET43.TabVisible:=false;
frmWorkPlace.tabsheet39.TabVisible:=true;
frmWorkPlace.TABSHEET41.TabVisible:=false;
frmWorkPlace.TABSHEET40.TabVisible:=false;
frmWorkPlace.pnlOF.Visible:=false;
frmWorkPlace.pnlNum.Visible:=false;
frmWorkPlace.pnlNameF.Visible:=False;
frmWorkPlace.pnlYesNo.Visible:=false;
frmWorkPlace.pnlAniF.Visible:=true;
frmWorkPlace.pnlOrderF.Visible:=true;
frmWorkPlace.pnlVacF.Visible:=true;
frmWorkPlace.pnlTopF.Visible:=true;
frmWorkPlace.pnlHeading.Visible:=false;
frmWorkPlace.pnlFilter.Visible:=false;
frmWorkPlace.pnlFilterh.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.pnlHD.Visible:=false;
frmWorkPlace.tabsheet44.TabVisible:=true;
frmWorkPlace.tabsheet45.TabVisible:=false;
frmWorkPlace.mtlNext2.Visible:=false;
frmWorkPlace.pagecontrol6.Visible:=false;
frmWorkPlace.mtlcancel3.Visible:=false;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet22.TabVisible:=true;
frmWorkPlace.tabsheet23.TabVisible:=false;
frmWorkPlace.tabsheet24.TabVisible:=false;
frmWorkPlace.tabsheet25.TabVisible:=false;
frmWorkPlace.tabsheet46.TabVisible:=false;
frmWorkPlace.tabsheet27.TabVisible:=false;
frmWorkPlace.redAni.Visible:=false;
frmWorkPlace.redAni2.Visible:=false;
frmWorkPlace.redAni3.Visible:=false;
frmWorkPlace.redAni44.Visible:=false;
frmWorkPlace.redAni5.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlDel.Visible:=true;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet7.TabVisible:=true;
frmWorkPlace.tabsheet8.TabVisible:=false;
frmWorkPlace.tabsheet9.TabVisible:=false;
frmWorkPlace.tabsheet10.TabVisible:=false;
frmWorkPlace.tabsheet11.TabVisible:=true;
frmWorkPlace.tabsheet12.TabVisible:=false;
frmWorkPlace.tabsheet13.TabVisible:=false;
frmWorkPlace.tabsheet14.TabVisible:=false;
frmWorkPlace.tabsheet15.TabVisible:=false;
frmWorkPlace.tabsheet21.TabVisible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlCancel2.Visible:=false;
frmWorkPlace.mtlCancel.Visible:=false;
frmWorkPlace.mtlNext.Visible:=false;
frmWorkPlace.mtlRefresh.Visible:=false;
frmWorkPlace.mtlPrevious.Visible:=false;
frmWorkPlace.mtlDel.Visible:=false;
frmWorkPlace.pnlAddc.Visible:=false;
frmWorkPlace.pnlDelV.Visible:=false;
frmWorkPlace.pnlAddG.Visible:=false;
frmWorkPlace.pnlDelGeo.Visible:=false;
frmWorkPlace.pnlDelete.Visible:=false;
frmWorkPlace.pnlBEdit.Visible:=false;
frmWorkPlace.mtlDelA.Visible:=true;
frmWorkPlace.mtlAddcA.Visible:=true;
frmWorkPlace.mtlDelG.Visible:=true;
frmWorkPlace.mtlAddG.Visible:=true;
frmWorkPlace.mtlDelV.Visible:=true;
frmWorkPlace.pnlBadd.Visible:=false;
frmWorkPlace.pnlDelB.Visible:=false;
frmWorkPlace.pnlBaddc.Visible:=false;
frmWorkPlace.pnlAddNewA.Visible:=false;
frmWorkPlace.pnlfacts.Visible:=false;
frmWorkPlace.pnlAddNewG.Visible:=false;
frmWorkPlace.pnlAddNewV.Visible:=false;
frmWorkPlace.pnlEditG.Visible:=false;
frmWorkPlace.pnlEditA.Visible:=false;
frmWorkPlace.pnlEditV.Visible:=false;
frmWorkPlace.pnlEditF.Visible:=false;
frmWorkPlace.tabsheet16.TabVisible:=true;
frmWorkPlace.tabsheet17.TabVisible:=false;
frmWorkPlace.tabsheet18.TabVisible:=false;
frmWorkPlace.tabsheet19.TabVisible:=false;
frmWorkPlace.tabsheet20.TabVisible:=false;
end;

procedure TfrmHOME.mtlQuick0Click(Sender: TObject);
begin
frmWorkplace.mtlEdit0.Visible:=true;
frmWorkplace.mtlBabyHub.Visible:=true;
frmWorkplace.mtlOrganise.Visible:=true;
frmWorkplace.mtlView0.Visible:=true;
frmWorkplace.mtlAdd0.Caption:='Add new...';
//////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Count(*) from EcoraNum';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblAni.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
///////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Count(*) from EcoraNum where [Order] = "Herbivore"';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblHerbi.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Count(*) from EcoraNum where [Order] = "Carnivore"';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblCarni.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Count(*) from EcoraNum where [Order] = "Omnivore"';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblOmni.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Sum(Total_number_of_animal) from EcoraNum ';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblTotal1.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Count(*) from EcoraAnimals where [Vacinaited] = True';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblVacT.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Count(*) from EcoraAnimals where [Vacinaited] = False';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblVacF.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Sum([Number of girl babys]) from EcoraBaby ';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblBabyG.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Sum([Number of boy babys]) from EcoraBAby ';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblBabyB.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Sum([Total Number of babys]) from EcoraBAby ';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblBabyT.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Max([Intelligence]) from EcoraFacts ';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblIQ.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
frmWorkPlace.qryFdelete.Active:=false;
frmWorkPlace.qryFDelete.SQL.Text:= 'Select Animal from EcoraFacts where [Intelligence] = '+frmWorkPlace.lblIQ.Caption+' ';
frmWorkPlace.qryFDelete.Active:=true;
frmWorkPlace.lblIF.Caption:=frmWorkPlace.qryFDelete['Animal'];
///////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Max([Max Shoulder Height(m)]) from EcoraFacts ';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblTall.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
frmWorkPlace.qryFdelete.Active:=false;
frmWorkPlace.qryFDelete.SQL.Text:= 'Select Animal from EcoraFacts where [Max Shoulder Height(m)] = "'+frmWorkPlace.lblTall.Caption+'" ';
frmWorkPlace.qryFDelete.Active:=true;
frmWorkPlace.lblTF.Caption:=frmWorkPlace.qryFDelete['Animal'];
///////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Max([Max Weight(Kg)]) from EcoraFacts ';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblKG.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
frmWorkPlace.qryFdelete.Active:=false;
frmWorkPlace.qryFDelete.SQL.Text:= 'Select Animal from EcoraFacts where [Max Weight(Kg)] = '+frmWorkPlace.lblKG.Caption+' ';
frmWorkPlace.qryFDelete.Active:=true;
frmWorkPlace.lblHF.Caption:=frmWorkPlace.qryFDelete['Animal'];
///////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Max([Top speed(Km/h)]) from EcoraFacts ';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblKM.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
frmWorkPlace.qryFdelete.Active:=false;
frmWorkPlace.qryFDelete.SQL.Text:= 'Select Animal from EcoraFacts where [Top speed(Km/h)] = "'+frmWorkPlace.lblKM.Caption+'" ';
frmWorkPlace.qryFDelete.Active:=true;
frmWorkPlace.lblNF.Caption:=frmWorkPlace.qryFDelete['Animal'];
///////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Max([Lifespan(years)]) from EcoraFacts ';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblYears.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
frmWorkPlace.qryFdelete.Active:=false;
frmWorkPlace.qryFDelete.SQL.Text:= 'Select Animal from EcoraFacts where [Lifespan(years)] = '+frmWorkPlace.lblYears.Caption+' ';
frmWorkPlace.qryFDelete.Active:=true;
frmWorkPlace.lblLF.Caption:=frmWorkPlace.qryFDelete['Animal'];
/////////////
frmWorkPlace.Pagecontrol6.Visible:=true;
/////////////
frmWorkPlace.mtlPrevious.Visible:=true;
frmWorkPlace.mtlNext2.Visible:=true;
frmWorkPlace.mtlQuick0.ZoomOnHover:=0;
frmWorkPlace.mtlAdd0.ZoomOnHover:=2;
frmWorkPlace.mtlBabyHub.ZoomOnHover:=2;
frmWorkPlace.mtlOrganise.ZoomOnHover:=2;
frmWorkPlace.mtlEdit0.ZoomOnHover:=2;
frmWorkPlace.mtlClip0.ZoomOnHover:=2;
frmWorkPlace.mtlView0.ZoomOnHover:=2;
frmWorkPlace.mtlFilter0.ZoomOnHover:=2;
frmWorkPlace.mltStats0.ZoomOnHover:=2;
///////////
frmWorkPlace.mtlbabyhub.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlClip0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlOrganise.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlView0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlAdd0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlFilter0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mltStats0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlEdit0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlQuick0.Appearance.Color:=$0001AECD;
//////////////////
frmWorkplace.pagecontrol1.Visible:=false;
frmWorkplace.pagecontrol2.Visible:=false;
frmWorkplace.pagecontrol4.Visible:=false;
frmWorkplace.pagecontrol5.Visible:=false;
frmWorkplace.pagecontrol7.Visible:=false;
frmWorkplace.pageControl8.Visible:=false;
frmWorkplace.pageControl9.Visible:=false;
frmWorkPlace.Visible:=true;
frmHome.Hide;
frmWorkPlace.pagecontrol3.Visible:=false;
///////////
frmWorkPlace.TABSHEET43.TabVisible:=false;
frmWorkPlace.tabsheet39.TabVisible:=true;
frmWorkPlace.TABSHEET41.TabVisible:=false;
frmWorkPlace.TABSHEET40.TabVisible:=false;
frmWorkPlace.pnlOF.Visible:=false;
frmWorkPlace.pnlNum.Visible:=false;
frmWorkPlace.pnlNameF.Visible:=False;
frmWorkPlace.pnlYesNo.Visible:=false;
frmWorkPlace.pnlAniF.Visible:=true;
frmWorkPlace.pnlOrderF.Visible:=true;
frmWorkPlace.pnlVacF.Visible:=true;
frmWorkPlace.pnlTopF.Visible:=true;
frmWorkPlace.pnlHeading.Visible:=false;
frmWorkPlace.pnlFilter.Visible:=false;
frmWorkPlace.pnlFilterh.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.pnlHD.Visible:=false;
frmWorkPlace.tabsheet44.TabVisible:=true;
frmWorkPlace.tabsheet45.TabVisible:=false;
frmWorkPlace.mtlcancel3.Visible:=false;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet22.TabVisible:=true;
frmWorkPlace.tabsheet23.TabVisible:=false;
frmWorkPlace.tabsheet24.TabVisible:=false;
frmWorkPlace.tabsheet25.TabVisible:=false;
frmWorkPlace.tabsheet46.TabVisible:=false;
frmWorkPlace.tabsheet27.TabVisible:=false;
frmWorkPlace.redAni.Visible:=false;
frmWorkPlace.redAni2.Visible:=false;
frmWorkPlace.redAni3.Visible:=false;
frmWorkPlace.redAni44.Visible:=false;
frmWorkPlace.redAni5.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlDel.Visible:=true;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet7.TabVisible:=true;
frmWorkPlace.tabsheet8.TabVisible:=false;
frmWorkPlace.tabsheet9.TabVisible:=false;
frmWorkPlace.tabsheet10.TabVisible:=false;
frmWorkPlace.tabsheet11.TabVisible:=true;
frmWorkPlace.tabsheet12.TabVisible:=false;
frmWorkPlace.tabsheet13.TabVisible:=false;
frmWorkPlace.tabsheet14.TabVisible:=false;
frmWorkPlace.tabsheet15.TabVisible:=false;
frmWorkPlace.tabsheet21.TabVisible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlCancel2.Visible:=false;
frmWorkPlace.mtlCancel.Visible:=false;
frmWorkPlace.mtlNext.Visible:=false;
frmWorkPlace.mtlRefresh.Visible:=false;
frmWorkPlace.mtlDel.Visible:=false;
frmWorkPlace.pnlAddc.Visible:=false;
frmWorkPlace.pnlDelV.Visible:=false;
frmWorkPlace.pnlAddG.Visible:=false;
frmWorkPlace.pnlDelGeo.Visible:=false;
frmWorkPlace.pnlDelete.Visible:=false;
frmWorkPlace.pnlBEdit.Visible:=false;
frmWorkPlace.mtlDelA.Visible:=true;
frmWorkPlace.mtlAddcA.Visible:=true;
frmWorkPlace.mtlDelG.Visible:=true;
frmWorkPlace.mtlAddG.Visible:=true;
frmWorkPlace.mtlDelV.Visible:=true;
frmWorkPlace.pnlBadd.Visible:=false;
frmWorkPlace.pnlDelB.Visible:=false;
frmWorkPlace.pnlBaddc.Visible:=false;
frmWorkPlace.pnlAddNewA.Visible:=false;
frmWorkPlace.pnlfacts.Visible:=false;
frmWorkPlace.pnlAddNewG.Visible:=false;
frmWorkPlace.pnlAddNewV.Visible:=false;
frmWorkPlace.pnlEditG.Visible:=false;
frmWorkPlace.pnlEditA.Visible:=false;
frmWorkPlace.pnlEditV.Visible:=false;
frmWorkPlace.pnlEditF.Visible:=false;
frmWorkPlace.tabsheet16.TabVisible:=true;
frmWorkPlace.tabsheet17.TabVisible:=false;
frmWorkPlace.tabsheet18.TabVisible:=false;
frmWorkPlace.tabsheet19.TabVisible:=false;
frmWorkPlace.tabsheet20.TabVisible:=false;
end;

procedure TfrmHOME.mtlClip0Click(Sender: TObject);
begin
frmWorkplace.mtlEdit0.Visible:=true;
frmWorkplace.mtlBabyHub.Visible:=true;
frmWorkplace.mtlOrganise.Visible:=true;
frmWorkplace.mtlView0.Visible:=true;
frmWorkplace.mtlAdd0.Caption:='Add new...';
frmWorkPlace.Pagecontrol5.Visible:=true;
frmWorkplace.pagecontrol1.Visible:=false;
frmWorkplace.pagecontrol2.Visible:=false;
frmWorkplace.pagecontrol4.Visible:=false;
frmWorkplace.pagecontrol6.Visible:=false;
frmWorkplace.pagecontrol7.Visible:=false;
frmWorkplace.pageControl8.Visible:=false;
frmWorkplace.pageControl9.Visible:=false;
frmWorkPlace.mtlClip0.ZoomOnHover:=0;
frmWorkPlace.mtlAdd0.ZoomOnHover:=2;
frmWorkPlace.mtlBabyHub.ZoomOnHover:=2;
frmWorkPlace.mtlOrganise.ZoomOnHover:=2;
frmWorkPlace.mtlQuick0.ZoomOnHover:=2;
frmWorkPlace.mtlEdit0.ZoomOnHover:=2;
frmWorkPlace.mtlView0.ZoomOnHover:=2;
frmWorkPlace.mtlFilter0.ZoomOnHover:=2;
frmWorkPlace.mltStats0.ZoomOnHover:=2;
///////////
frmWorkPlace.mtlClip0.Appearance.Color:=$0001AECD;
frmWorkPlace.mtlbabyhub.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlAdd0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlOrganise.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlView0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlQuick0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlFilter0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mltStats0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlEdit0.Appearance.Color:=$0001A4C1;
///////////////
frmWorkPlace.Visible:=true;
frmHome.Hide;
frmWorkPlace.pagecontrol3.Visible:=false;
/////////
frmWorkPlace.TABSHEET43.TabVisible:=false;
frmWorkPlace.tabsheet39.TabVisible:=true;
frmWorkPlace.TABSHEET41.TabVisible:=false;
frmWorkPlace.TABSHEET40.TabVisible:=false;
frmWorkPlace.pnlOF.Visible:=false;
frmWorkPlace.pnlNum.Visible:=false;
frmWorkPlace.pnlNameF.Visible:=False;
frmWorkPlace.pnlYesNo.Visible:=false;
frmWorkPlace.pnlAniF.Visible:=true;
frmWorkPlace.pnlOrderF.Visible:=true;
frmWorkPlace.pnlVacF.Visible:=true;
frmWorkPlace.pnlTopF.Visible:=true;
frmWorkPlace.pnlHeading.Visible:=false;
frmWorkPlace.pnlFilter.Visible:=false;
frmWorkPlace.pnlFilterh.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.pnlHD.Visible:=false;
frmWorkPlace.tabsheet44.TabVisible:=true;
frmWorkPlace.tabsheet45.TabVisible:=false;
frmWorkPlace.mtlNext2.Visible:=false;
frmWorkPlace.pagecontrol6.Visible:=false;
frmWorkPlace.mtlcancel3.Visible:=false;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet22.TabVisible:=true;
frmWorkPlace.tabsheet23.TabVisible:=false;
frmWorkPlace.tabsheet24.TabVisible:=false;
frmWorkPlace.tabsheet25.TabVisible:=false;
frmWorkPlace.tabsheet46.TabVisible:=false;
frmWorkPlace.tabsheet27.TabVisible:=false;
frmWorkPlace.redAni.Visible:=false;
frmWorkPlace.redAni2.Visible:=false;
frmWorkPlace.redAni3.Visible:=false;
frmWorkPlace.redAni44.Visible:=false;
frmWorkPlace.redAni5.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlDel.Visible:=true;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet7.TabVisible:=true;
frmWorkPlace.tabsheet8.TabVisible:=false;
frmWorkPlace.tabsheet9.TabVisible:=false;
frmWorkPlace.tabsheet10.TabVisible:=false;
frmWorkPlace.tabsheet11.TabVisible:=true;
frmWorkPlace.tabsheet12.TabVisible:=false;
frmWorkPlace.tabsheet13.TabVisible:=false;
frmWorkPlace.tabsheet14.TabVisible:=false;
frmWorkPlace.tabsheet15.TabVisible:=false;
frmWorkPlace.tabsheet21.TabVisible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlCancel2.Visible:=false;
frmWorkPlace.mtlCancel.Visible:=false;
frmWorkPlace.mtlNext.Visible:=false;
frmWorkPlace.mtlRefresh.Visible:=false;
frmWorkPlace.mtlPrevious.Visible:=false;
frmWorkPlace.mtlDel.Visible:=false;
frmWorkPlace.pnlAddc.Visible:=false;
frmWorkPlace.pnlDelV.Visible:=false;
frmWorkPlace.pnlAddG.Visible:=false;
frmWorkPlace.pnlDelGeo.Visible:=false;
frmWorkPlace.pnlDelete.Visible:=false;
frmWorkPlace.pnlBEdit.Visible:=false;
frmWorkPlace.mtlDelA.Visible:=true;
frmWorkPlace.mtlAddcA.Visible:=true;
frmWorkPlace.mtlDelG.Visible:=true;
frmWorkPlace.mtlAddG.Visible:=true;
frmWorkPlace.mtlDelV.Visible:=true;
frmWorkPlace.pnlBadd.Visible:=false;
frmWorkPlace.pnlDelB.Visible:=false;
frmWorkPlace.pnlBaddc.Visible:=false;
frmWorkPlace.pnlAddNewA.Visible:=false;
frmWorkPlace.pnlfacts.Visible:=false;
frmWorkPlace.pnlAddNewG.Visible:=false;
frmWorkPlace.pnlAddNewV.Visible:=false;
frmWorkPlace.pnlEditG.Visible:=false;
frmWorkPlace.pnlEditA.Visible:=false;
frmWorkPlace.pnlEditV.Visible:=false;
frmWorkPlace.pnlEditF.Visible:=false;
frmWorkPlace.tabsheet16.TabVisible:=true;
frmWorkPlace.tabsheet17.TabVisible:=false;
frmWorkPlace.tabsheet18.TabVisible:=false;
frmWorkPlace.tabsheet19.TabVisible:=false;
frmWorkPlace.tabsheet20.TabVisible:=false;
end;

procedure TfrmHOME.mtlView0Click(Sender: TObject);
begin
frmWorkplace.mtlEdit0.Visible:=true;
frmWorkplace.mtlBabyHub.Visible:=true;
frmWorkplace.mtlOrganise.Visible:=true;
frmWorkplace.mtlView0.Visible:=true;
frmWorkplace.mtlAdd0.Caption:='Add new...';
frmWorkPlace.pagecontrol7.Visible:=true;
frmWorkPlace.Label75.Visible:=false;
frmWorkPlace.Label75.Visible:=true;
frmWorkplace.pagecontrol1.Visible:=false;
frmWorkplace.pagecontrol2.Visible:=false;
frmWorkplace.pagecontrol4.Visible:=false;
frmWorkplace.pagecontrol6.Visible:=false;
frmWorkplace.pagecontrol5.Visible:=false;
frmWorkplace.pageControl8.Visible:=false;
frmWorkplace.pageControl9.Visible:=false;
/////////////
/////////////
frmWorkPlace.mtlView0.ZoomOnHover:=0;
frmWorkPlace.mtlAdd0.ZoomOnHover:=2;
frmWorkPlace.mtlBabyHub.ZoomOnHover:=2;
frmWorkPlace.mtlOrganise.ZoomOnHover:=2;
frmWorkPlace.mtlQuick0.ZoomOnHover:=2;
frmWorkPlace.mtlClip0.ZoomOnHover:=2;
frmWorkPlace.mtlEdit0.ZoomOnHover:=2;
frmWorkPlace.mtlFilter0.ZoomOnHover:=2;
frmWorkPlace.mltStats0.ZoomOnHover:=2;
/////////
frmWorkPlace.mtlView0.Appearance.Color:=$0001AECD;
frmWorkPlace.mtlbabyhub.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlClip0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlOrganise.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlAdd0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlQuick0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlFilter0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mltStats0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlEdit0.Appearance.Color:=$0001A4C1;
/////////////
frmWorkPlace.TabSheet33.TabVisible:=true;
frmWorkPlace.Visible:=true;
frmHome.Hide;
frmWorkPlace.pagecontrol3.Visible:=false;
/////////
frmWorkPlace.TABSHEET43.TabVisible:=false;
frmWorkPlace.tabsheet39.TabVisible:=true;
frmWorkPlace.TABSHEET41.TabVisible:=false;
frmWorkPlace.TABSHEET40.TabVisible:=false;
frmWorkPlace.pnlOF.Visible:=false;
frmWorkPlace.pnlNum.Visible:=false;
frmWorkPlace.pnlNameF.Visible:=False;
frmWorkPlace.pnlYesNo.Visible:=false;
frmWorkPlace.pnlAniF.Visible:=true;
frmWorkPlace.pnlOrderF.Visible:=true;
frmWorkPlace.pnlVacF.Visible:=true;
frmWorkPlace.pnlTopF.Visible:=true;
frmWorkPlace.pnlHeading.Visible:=false;
frmWorkPlace.pnlFilter.Visible:=false;
frmWorkPlace.pnlFilterh.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.pnlHD.Visible:=false;
frmWorkPlace.tabsheet44.TabVisible:=true;
frmWorkPlace.tabsheet45.TabVisible:=false;
frmWorkPlace.mtlNext2.Visible:=false;
frmWorkPlace.pagecontrol6.Visible:=false;
frmWorkPlace.mtlcancel3.Visible:=false;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet22.TabVisible:=true;
frmWorkPlace.tabsheet23.TabVisible:=false;
frmWorkPlace.tabsheet24.TabVisible:=false;
frmWorkPlace.tabsheet25.TabVisible:=false;
frmWorkPlace.tabsheet46.TabVisible:=false;
frmWorkPlace.tabsheet27.TabVisible:=false;
frmWorkPlace.redAni.Visible:=false;
frmWorkPlace.redAni2.Visible:=false;
frmWorkPlace.redAni3.Visible:=false;
frmWorkPlace.redAni44.Visible:=false;
frmWorkPlace.redAni5.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlDel.Visible:=true;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet7.TabVisible:=true;
frmWorkPlace.tabsheet8.TabVisible:=false;
frmWorkPlace.tabsheet9.TabVisible:=false;
frmWorkPlace.tabsheet10.TabVisible:=false;
frmWorkPlace.tabsheet11.TabVisible:=true;
frmWorkPlace.tabsheet12.TabVisible:=false;
frmWorkPlace.tabsheet13.TabVisible:=false;
frmWorkPlace.tabsheet14.TabVisible:=false;
frmWorkPlace.tabsheet15.TabVisible:=false;
frmWorkPlace.tabsheet21.TabVisible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlCancel2.Visible:=false;
frmWorkPlace.mtlCancel.Visible:=false;
frmWorkPlace.mtlNext.Visible:=false;
frmWorkPlace.mtlRefresh.Visible:=false;
frmWorkPlace.mtlPrevious.Visible:=false;
frmWorkPlace.mtlDel.Visible:=false;
frmWorkPlace.pnlAddc.Visible:=false;
frmWorkPlace.pnlDelV.Visible:=false;
frmWorkPlace.pnlAddG.Visible:=false;
frmWorkPlace.pnlDelGeo.Visible:=false;
frmWorkPlace.pnlDelete.Visible:=false;
frmWorkPlace.pnlBEdit.Visible:=false;
frmWorkPlace.mtlDelA.Visible:=true;
frmWorkPlace.mtlAddcA.Visible:=true;
frmWorkPlace.mtlDelG.Visible:=true;
frmWorkPlace.mtlAddG.Visible:=true;
frmWorkPlace.mtlDelV.Visible:=true;
frmWorkPlace.pnlBadd.Visible:=false;
frmWorkPlace.pnlDelB.Visible:=false;
frmWorkPlace.pnlBaddc.Visible:=false;
frmWorkPlace.pnlAddNewA.Visible:=false;
frmWorkPlace.pnlfacts.Visible:=false;
frmWorkPlace.pnlAddNewG.Visible:=false;
frmWorkPlace.pnlAddNewV.Visible:=false;
frmWorkPlace.pnlEditG.Visible:=false;
frmWorkPlace.pnlEditA.Visible:=false;
frmWorkPlace.pnlEditV.Visible:=false;
frmWorkPlace.pnlEditF.Visible:=false;
frmWorkPlace.tabsheet16.TabVisible:=true;
frmWorkPlace.tabsheet17.TabVisible:=false;
frmWorkPlace.tabsheet18.TabVisible:=false;
frmWorkPlace.tabsheet19.TabVisible:=false;
frmWorkPlace.tabsheet20.TabVisible:=false;
end;

procedure TfrmHOME.mtlFilter0Click(Sender: TObject);
begin
frmWorkplace.mtlEdit0.Visible:=true;
frmWorkplace.mtlBabyHub.Visible:=true;
frmWorkplace.mtlOrganise.Visible:=true;
frmWorkplace.mtlView0.Visible:=true;
frmWorkplace.mtlAdd0.Caption:='Add new...';
frmWorkPlace.pageControl9.Visible:=true;
frmWorkPlace.Label84.Visible:=false;
frmWorkPlace.Label84.Visible:=true;
/////////////
frmWorkPlace.mtlFilter0.ZoomOnHover:=0;
frmWorkPlace.mtlAdd0.ZoomOnHover:=2;
frmWorkPlace.mtlBabyHub.ZoomOnHover:=2;
frmWorkPlace.mtlOrganise.ZoomOnHover:=2;
frmWorkPlace.mtlQuick0.ZoomOnHover:=2;
frmWorkPlace.mtlClip0.ZoomOnHover:=2;
frmWorkPlace.mtlView0.ZoomOnHover:=2;
frmWorkPlace.mtlEdit0.ZoomOnHover:=2;
frmWorkPlace.mltStats0.ZoomOnHover:=2;
////////////////////////
frmWorkPlace.mtlFilter0.Appearance.Color:=$0001AECD;
frmWorkPlace.mtlbabyhub.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlClip0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlOrganise.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlView0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlQuick0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlAdd0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mltStats0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlEdit0.Appearance.Color:=$0001A4C1;
frmWorkplace.Visible:=true;
///////////
frmHome.Hide;
frmWorkplace.pagecontrol1.Visible:=false;
frmWorkplace.pagecontrol2.Visible:=false;
frmWorkplace.pagecontrol4.Visible:=false;
frmWorkplace.pagecontrol6.Visible:=false;
frmWorkplace.pagecontrol5.Visible:=false;
frmWorkplace.pagecontrol7.Visible:=false;
frmWorkplace.pageControl8.Visible:=false;
///////////
frmWorkPlace.pagecontrol3.Visible:=false;
///////
frmWorkPlace.TABSHEET43.TabVisible:=false;
frmWorkPlace.tabsheet39.TabVisible:=true;
frmWorkPlace.TABSHEET41.TabVisible:=false;
frmWorkPlace.TABSHEET40.TabVisible:=false;
frmWorkPlace.pnlOF.Visible:=false;
frmWorkPlace.pnlNum.Visible:=false;
frmWorkPlace.pnlNameF.Visible:=False;
frmWorkPlace.pnlYesNo.Visible:=false;
frmWorkPlace.pnlAniF.Visible:=true;
frmWorkPlace.pnlOrderF.Visible:=true;
frmWorkPlace.pnlVacF.Visible:=true;
frmWorkPlace.pnlTopF.Visible:=true;
frmWorkPlace.pnlHeading.Visible:=false;
frmWorkPlace.pnlFilter.Visible:=false;
frmWorkPlace.pnlFilterh.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.pnlHD.Visible:=false;
frmWorkPlace.tabsheet44.TabVisible:=true;
frmWorkPlace.tabsheet45.TabVisible:=false;
frmWorkPlace.mtlNext2.Visible:=false;
frmWorkPlace.pagecontrol6.Visible:=false;
frmWorkPlace.mtlcancel3.Visible:=false;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet22.TabVisible:=true;
frmWorkPlace.tabsheet23.TabVisible:=false;
frmWorkPlace.tabsheet24.TabVisible:=false;
frmWorkPlace.tabsheet25.TabVisible:=false;
frmWorkPlace.tabsheet46.TabVisible:=false;
frmWorkPlace.tabsheet27.TabVisible:=false;
frmWorkPlace.redAni.Visible:=false;
frmWorkPlace.redAni2.Visible:=false;
frmWorkPlace.redAni3.Visible:=false;
frmWorkPlace.redAni44.Visible:=false;
frmWorkPlace.redAni5.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlDel.Visible:=true;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet7.TabVisible:=true;
frmWorkPlace.tabsheet8.TabVisible:=false;
frmWorkPlace.tabsheet9.TabVisible:=false;
frmWorkPlace.tabsheet10.TabVisible:=false;
frmWorkPlace.tabsheet11.TabVisible:=true;
frmWorkPlace.tabsheet12.TabVisible:=false;
frmWorkPlace.tabsheet13.TabVisible:=false;
frmWorkPlace.tabsheet14.TabVisible:=false;
frmWorkPlace.tabsheet15.TabVisible:=false;
frmWorkPlace.tabsheet21.TabVisible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlCancel2.Visible:=false;
frmWorkPlace.mtlCancel.Visible:=false;
frmWorkPlace.mtlNext.Visible:=false;
frmWorkPlace.mtlRefresh.Visible:=false;
frmWorkPlace.mtlPrevious.Visible:=false;
frmWorkPlace.mtlDel.Visible:=false;
frmWorkPlace.pnlAddc.Visible:=false;
frmWorkPlace.pnlDelV.Visible:=false;
frmWorkPlace.pnlAddG.Visible:=false;
frmWorkPlace.pnlDelGeo.Visible:=false;
frmWorkPlace.pnlDelete.Visible:=false;
frmWorkPlace.pnlBEdit.Visible:=false;
frmWorkPlace.mtlDelA.Visible:=true;
frmWorkPlace.mtlAddcA.Visible:=true;
frmWorkPlace.mtlDelG.Visible:=true;
frmWorkPlace.mtlAddG.Visible:=true;
frmWorkPlace.mtlDelV.Visible:=true;
frmWorkPlace.pnlBadd.Visible:=false;
frmWorkPlace.pnlDelB.Visible:=false;
frmWorkPlace.pnlBaddc.Visible:=false;
frmWorkPlace.pnlAddNewA.Visible:=false;
frmWorkPlace.pnlfacts.Visible:=false;
frmWorkPlace.pnlAddNewG.Visible:=false;
frmWorkPlace.pnlAddNewV.Visible:=false;
frmWorkPlace.pnlEditG.Visible:=false;
frmWorkPlace.pnlEditA.Visible:=false;
frmWorkPlace.pnlEditV.Visible:=false;
frmWorkPlace.pnlEditF.Visible:=false;
frmWorkPlace.tabsheet16.TabVisible:=true;
frmWorkPlace.tabsheet17.TabVisible:=false;
frmWorkPlace.tabsheet18.TabVisible:=false;
frmWorkPlace.tabsheet19.TabVisible:=false;
frmWorkPlace.tabsheet20.TabVisible:=false;
end;

procedure TfrmHOME.mtlWildcardsClick(Sender: TObject);
begin
frmhome.Visible:=false;
frmTourist.Visible:=true;
frmTourist.Show;
frmTourist.qryTourist.Active:=false;
frmTourist.qryTourist.SQL.Text:='Select * from EcoraNum Order by Animal ASC';
frmTourist.qryTourist.Active:=true;
end;
procedure TfrmHOME.AdvMetroFormActivate(Sender: TObject);
begin
lblUser.Caption:=dbLookName.Text;
frmhome.Caption:='Hexagon - Home page.'
end;

procedure TfrmHOME.mtlQuickClick(Sender: TObject);
begin
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Count(*) from EcoraNum';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblAni.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
///////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Count(*) from EcoraNum where [Order] = "Herbivore"';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblHerbi.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Count(*) from EcoraNum where [Order] = "Carnivore"';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblCarni.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Count(*) from EcoraNum where [Order] = "Omnivore"';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblOmni.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Sum(Total_number_of_animal) from EcoraNum ';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblTotal1.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Count(*) from EcoraAnimals where [Vacinaited] = True';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblVacT.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Count(*) from EcoraAnimals where [Vacinaited] = False';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblVacF.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Sum([Number of girl babys]) from EcoraBaby ';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblBabyG.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Sum([Number of boy babys]) from EcoraBAby ';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblBabyB.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Sum([Total Number of babys]) from EcoraBAby ';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblBabyT.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Max([Intelligence]) from EcoraFacts ';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblIQ.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
frmWorkPlace.qryFdelete.Active:=false;
frmWorkPlace.qryFDelete.SQL.Text:= 'Select Animal from EcoraFacts where [Intelligence] = '+frmWorkPlace.lblIQ.Caption+' ';
frmWorkPlace.qryFDelete.Active:=true;
frmWorkPlace.lblIF.Caption:=frmWorkPlace.qryFDelete['Animal'];
///////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Max([Max Shoulder Height(m)]) from EcoraFacts ';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblTall.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
frmWorkPlace.qryFdelete.Active:=false;
frmWorkPlace.qryFDelete.SQL.Text:= 'Select Animal from EcoraFacts where [Max Shoulder Height(m)] = "'+frmWorkPlace.lblTall.Caption+'" ';
frmWorkPlace.qryFDelete.Active:=true;
frmWorkPlace.lblTF.Caption:=frmWorkPlace.qryFDelete['Animal'];
///////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Max([Max Weight(Kg)]) from EcoraFacts ';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblKG.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
frmWorkPlace.qryFdelete.Active:=false;
frmWorkPlace.qryFDelete.SQL.Text:= 'Select Animal from EcoraFacts where [Max Weight(Kg)] = '+frmWorkPlace.lblKG.Caption+' ';
frmWorkPlace.qryFDelete.Active:=true;
frmWorkPlace.lblHF.Caption:=frmWorkPlace.qryFDelete['Animal'];
///////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Max([Top speed(Km/h)]) from EcoraFacts ';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblKM.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
frmWorkPlace.qryFdelete.Active:=false;
frmWorkPlace.qryFDelete.SQL.Text:= 'Select Animal from EcoraFacts where [Top speed(Km/h)] = "'+frmWorkPlace.lblKM.Caption+'" ';
frmWorkPlace.qryFDelete.Active:=true;
frmWorkPlace.lblNF.Caption:=frmWorkPlace.qryFDelete['Animal'];
///////////////////////////////////////////////////
frmWorkPlace.qryClipBoard.Active:=false;
frmWorkPlace.qryClipBoard.SQL.Text:= 'Select Max([Lifespan(years)]) from EcoraFacts ';
frmWorkPlace.qryClipBoard.Active:=true;
frmWorkPlace.lblYears.Caption:=frmWorkPlace.dbgrid11.SelectedField.Text;
frmWorkPlace.qryFdelete.Active:=false;
frmWorkPlace.qryFDelete.SQL.Text:= 'Select Animal from EcoraFacts where [Lifespan(years)] = '+frmWorkPlace.lblYears.Caption+' ';
frmWorkPlace.qryFDelete.Active:=true;
frmWorkPlace.lblLF.Caption:=frmWorkPlace.qryFDelete['Animal'];
/////////////
frmWorkPlace.Pagecontrol6.Visible:=true;
/////////////
frmWorkPlace.mtlPrevious.Visible:=true;
frmWorkPlace.mtlNext2.Visible:=true;
frmWorkPlace.mtlQuick0.ZoomOnHover:=0;
frmWorkPlace.mtlAdd0.ZoomOnHover:=2;
frmWorkPlace.mtlBabyHub.ZoomOnHover:=2;
frmWorkPlace.mtlOrganise.ZoomOnHover:=2;
frmWorkPlace.mtlEdit0.ZoomOnHover:=2;
frmWorkPlace.mtlClip0.ZoomOnHover:=2;
frmWorkPlace.mtlView0.ZoomOnHover:=2;
frmWorkPlace.mtlFilter0.ZoomOnHover:=2;
frmWorkPlace.mltStats0.ZoomOnHover:=2;
//////////////
frmWorkplace.mtlAdd0.Caption:= 'Geo - Tag an animal';
frmWorkplace.mtlEdit0.Visible:=false;
frmWorkplace.mtlBabyHub.Visible:=false;
frmWorkplace.mtlOrganise.Visible:=false;
frmWorkplace.mtlView0.Visible:=false;
////////
frmWorkplace.mtlWildC.ZoomOnHover:=2;
frmWorkplace.mtlWildC.Visible:=true;
//////////////
///////////
frmWorkPlace.mtlbabyhub.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlClip0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlOrganise.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlView0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlAdd0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlFilter0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mltStats0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlEdit0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlQuick0.Appearance.Color:=$0001AECD;
//////////////////
frmWorkplace.pagecontrol1.Visible:=false;
frmWorkplace.pagecontrol2.Visible:=false;
frmWorkplace.pagecontrol4.Visible:=false;
frmWorkplace.pagecontrol5.Visible:=false;
frmWorkplace.pagecontrol7.Visible:=false;
frmWorkplace.pageControl8.Visible:=false;
frmWorkplace.pageControl9.Visible:=false;
frmWorkPlace.Visible:=true;
frmHome.Visible:=false;
frmWorkPlace.pagecontrol3.Visible:=false;
///////////
frmWorkPlace.TABSHEET43.TabVisible:=false;
frmWorkPlace.tabsheet39.TabVisible:=true;
frmWorkPlace.TABSHEET41.TabVisible:=false;
frmWorkPlace.TABSHEET40.TabVisible:=false;
frmWorkPlace.pnlOF.Visible:=false;
frmWorkPlace.pnlNum.Visible:=false;
frmWorkPlace.pnlNameF.Visible:=False;
frmWorkPlace.pnlYesNo.Visible:=false;
frmWorkPlace.pnlAniF.Visible:=true;
frmWorkPlace.pnlOrderF.Visible:=true;
frmWorkPlace.pnlVacF.Visible:=true;
frmWorkPlace.pnlTopF.Visible:=true;
frmWorkPlace.pnlHeading.Visible:=false;
frmWorkPlace.pnlFilter.Visible:=false;
frmWorkPlace.pnlFilterh.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.pnlHD.Visible:=false;
frmWorkPlace.tabsheet44.TabVisible:=true;
frmWorkPlace.tabsheet45.TabVisible:=false;
frmWorkPlace.mtlcancel3.Visible:=false;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet22.TabVisible:=true;
frmWorkPlace.tabsheet23.TabVisible:=false;
frmWorkPlace.tabsheet24.TabVisible:=false;
frmWorkPlace.tabsheet25.TabVisible:=false;
frmWorkPlace.tabsheet46.TabVisible:=false;
frmWorkPlace.tabsheet27.TabVisible:=false;
frmWorkPlace.redAni.Visible:=false;
frmWorkPlace.redAni2.Visible:=false;
frmWorkPlace.redAni3.Visible:=false;
frmWorkPlace.redAni44.Visible:=false;
frmWorkPlace.redAni5.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlDel.Visible:=true;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet7.TabVisible:=true;
frmWorkPlace.tabsheet8.TabVisible:=false;
frmWorkPlace.tabsheet9.TabVisible:=false;
frmWorkPlace.tabsheet10.TabVisible:=false;
frmWorkPlace.tabsheet11.TabVisible:=true;
frmWorkPlace.tabsheet12.TabVisible:=false;
frmWorkPlace.tabsheet13.TabVisible:=false;
frmWorkPlace.tabsheet14.TabVisible:=false;
frmWorkPlace.tabsheet15.TabVisible:=false;
frmWorkPlace.tabsheet21.TabVisible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlCancel2.Visible:=false;
frmWorkPlace.mtlCancel.Visible:=false;
frmWorkPlace.mtlNext.Visible:=false;
frmWorkPlace.mtlRefresh.Visible:=false;
frmWorkPlace.mtlDel.Visible:=false;
frmWorkPlace.pnlAddc.Visible:=false;
frmWorkPlace.pnlDelV.Visible:=false;
frmWorkPlace.pnlAddG.Visible:=false;
frmWorkPlace.pnlDelGeo.Visible:=false;
frmWorkPlace.pnlDelete.Visible:=false;
frmWorkPlace.pnlBEdit.Visible:=false;
frmWorkPlace.mtlDelA.Visible:=true;
frmWorkPlace.mtlAddcA.Visible:=true;
frmWorkPlace.mtlDelG.Visible:=true;
frmWorkPlace.mtlAddG.Visible:=true;
frmWorkPlace.mtlDelV.Visible:=true;
frmWorkPlace.pnlBadd.Visible:=false;
frmWorkPlace.pnlDelB.Visible:=false;
frmWorkPlace.pnlBaddc.Visible:=false;
frmWorkPlace.pnlAddNewA.Visible:=false;
frmWorkPlace.pnlfacts.Visible:=false;
frmWorkPlace.pnlAddNewG.Visible:=false;
frmWorkPlace.pnlAddNewV.Visible:=false;
frmWorkPlace.pnlEditG.Visible:=false;
frmWorkPlace.pnlEditA.Visible:=false;
frmWorkPlace.pnlEditV.Visible:=false;
frmWorkPlace.pnlEditF.Visible:=false;
frmWorkPlace.tabsheet16.TabVisible:=true;
frmWorkPlace.tabsheet17.TabVisible:=false;
frmWorkPlace.tabsheet18.TabVisible:=false;
frmWorkPlace.tabsheet19.TabVisible:=false;
frmWorkPlace.tabsheet20.TabVisible:=false;
end;

procedure TfrmHOME.mtlGeo2Click(Sender: TObject);
begin
frmWorkplace.Visible:=true;
frmHome.Visible:=false;
frmTourist.Visible:=false;
frmWorkplace.pagecontrol1.Visible:=false;
frmWorkplace.pagecontrol2.Visible:=false;
frmWorkplace.pagecontrol4.Visible:=false;
frmWorkplace.pagecontrol6.Visible:=false;
frmWorkplace.pagecontrol5.Visible:=false;
frmWorkplace.pagecontrol7.Visible:=false;
frmWorkplace.pageControl8.Visible:=false;
frmWorkplace.pageControl9.Visible:=false;
frmWorkplace.mtlAdd0.ZoomOnHover:=0;
frmWorkplace.mtlEdit0.ZoomOnHover:=2;
frmWorkplace.mtlBabyHub.ZoomOnHover:=2;
frmWorkplace.mtlOrganise.ZoomOnHover:=2;
frmWorkplace.mtlQuick0.ZoomOnHover:=2;
frmWorkplace.mtlClip0.ZoomOnHover:=2;
frmWorkplace.mtlView0.ZoomOnHover:=2;
frmWorkplace.mtlFilter0.ZoomOnHover:=2;
frmWorkplace.mltStats0.ZoomOnHover:=2;
//////////////
frmWorkplace.mtlAdd0.Caption:= 'Geo - Tag an animal';
frmWorkplace.mtlEdit0.Visible:=false;
frmWorkplace.mtlBabyHub.Visible:=false;
frmWorkplace.mtlOrganise.Visible:=false;
frmWorkplace.mtlView0.Visible:=false;
////////
frmWorkplace.mtlWildC.ZoomOnHover:=2;
frmWorkplace.mtlWildC.Visible:=true;
//////////////
frmWorkplace.mtlAdd0.Appearance.Color:=$0001AECD;
frmWorkplace.mtlbabyhub.Appearance.Color:=$0001A4C1;
frmWorkplace.mtlClip0.Appearance.Color:=$0001A4C1;
frmWorkplace.mtlOrganise.Appearance.Color:=$0001A4C1;
frmWorkplace.mtlView0.Appearance.Color:=$0001A4C1;
frmWorkplace.mtlQuick0.Appearance.Color:=$0001A4C1;
frmWorkplace.mtlFilter0.Appearance.Color:=$0001A4C1;
frmWorkplace.mltStats0.Appearance.Color:=$0001A4C1;
frmWorkplace.mtlEdit0.Appearance.Color:=$0001A4C1;
frmWorkPlace.pagecontrol3.Visible:=true;
frmWorkPlace.TABSHEET43.TabVisible:=false;
frmWorkPlace.tabsheet39.TabVisible:=true;
frmWorkPlace.TABSHEET41.TabVisible:=false;
frmWorkPlace.TABSHEET40.TabVisible:=false;
frmWorkPlace.pnlOF.Visible:=false;
frmWorkPlace.pnlNum.Visible:=false;
frmWorkPlace.pnlNameF.Visible:=False;
frmWorkPlace.pnlYesNo.Visible:=false;
frmWorkPlace.pnlAniF.Visible:=true;
frmWorkPlace.pnlOrderF.Visible:=true;
frmWorkPlace.pnlVacF.Visible:=true;
frmWorkPlace.pnlTopF.Visible:=true;
frmWorkPlace.pnlHeading.Visible:=false;
frmWorkPlace.pnlFilter.Visible:=false;
frmWorkPlace.pnlFilterh.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.pnlHD.Visible:=false;
frmWorkPlace.tabsheet44.TabVisible:=true;
frmWorkPlace.tabsheet45.TabVisible:=false;
frmWorkPlace.mtlNext2.Visible:=false;
frmWorkPlace.pagecontrol6.Visible:=false;
frmWorkPlace.mtlcancel3.Visible:=false;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet22.TabVisible:=true;
frmWorkPlace.tabsheet23.TabVisible:=false;
frmWorkPlace.tabsheet24.TabVisible:=false;
frmWorkPlace.tabsheet25.TabVisible:=false;
frmWorkPlace.tabsheet46.TabVisible:=false;
frmWorkPlace.tabsheet27.TabVisible:=false;
frmWorkPlace.redAni.Visible:=false;
frmWorkPlace.redAni2.Visible:=false;
frmWorkPlace.redAni3.Visible:=false;
frmWorkPlace.redAni44.Visible:=false;
frmWorkPlace.redAni5.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlDel.Visible:=true;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet7.TabVisible:=true;
frmWorkPlace.tabsheet8.TabVisible:=false;
frmWorkPlace.tabsheet9.TabVisible:=false;
frmWorkPlace.tabsheet10.TabVisible:=false;
frmWorkPlace.tabsheet11.TabVisible:=false;
frmWorkPlace.tabsheet12.TabVisible:=false;
frmWorkPlace.tabsheet13.TabVisible:=false;
frmWorkPlace.tabsheet14.TabVisible:=true;
frmWorkPlace.tabsheet15.TabVisible:=false;
frmWorkPlace.tabsheet21.TabVisible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlCancel2.Visible:=false;
frmWorkPlace.mtlCancel.Visible:=false;
frmWorkPlace.mtlNext.Visible:=false;
frmWorkPlace.mtlRefresh.Visible:=false;
frmWorkPlace.mtlPrevious.Visible:=false;
frmWorkPlace.mtlDel.Visible:=false;
frmWorkPlace.pnlAddc.Visible:=false;
frmWorkPlace.pnlDelV.Visible:=false;
frmWorkPlace.pnlAddG.Visible:=false;
frmWorkPlace.pnlDelGeo.Visible:=false;
frmWorkPlace.pnlDelete.Visible:=false;
frmWorkPlace.pnlBEdit.Visible:=false;
frmWorkPlace.mtlDelA.Visible:=true;
frmWorkPlace.mtlAddcA.Visible:=true;
frmWorkPlace.mtlDelG.Visible:=true;
frmWorkPlace.mtlAddG.Visible:=true;
frmWorkPlace.mtlDelV.Visible:=true;
frmWorkPlace.pnlBadd.Visible:=false;
frmWorkPlace.pnlDelB.Visible:=false;
frmWorkPlace.pnlBaddc.Visible:=false;
frmWorkPlace.pnlAddNewA.Visible:=false;
frmWorkPlace.pnlfacts.Visible:=false;
frmWorkPlace.pnlAddNewG.Visible:=false;
frmWorkPlace.pnlAddNewV.Visible:=false;
frmWorkPlace.pnlEditG.Visible:=false;
frmWorkPlace.pnlEditA.Visible:=false;
frmWorkPlace.pnlEditV.Visible:=false;
frmWorkPlace.pnlEditF.Visible:=false;
frmWorkPlace.tabsheet16.TabVisible:=true;
frmWorkPlace.tabsheet17.TabVisible:=false;
frmWorkPlace.tabsheet18.TabVisible:=false;
frmWorkPlace.tabsheet19.TabVisible:=false;
frmWorkPlace.tabsheet20.TabVisible:=false;
frmWorkPlace.mtlOk2.Visible:=true;
frmWorkPlace.mtlRefresh.Visible:=true;
frmWorkPlace.pnlAddnewG.Visible:=true;
frmWorkPlace.edit14.SetFocus;
end;

procedure TfrmHOME.mtlFilter1Click(Sender: TObject);
begin
//////////////
frmWorkplace.mtlAdd0.Caption:= 'Geo - Tag an animal';
frmWorkplace.mtlEdit0.Visible:=false;
frmWorkplace.mtlBabyHub.Visible:=false;
frmWorkplace.mtlOrganise.Visible:=false;
frmWorkplace.mtlView0.Visible:=false;
////////
frmWorkplace.mtlWildC.ZoomOnHover:=2;
frmWorkplace.mtlWildC.Visible:=true;
//////////////
frmWorkPlace.pageControl9.Visible:=true;
frmWorkPlace.Label84.Visible:=false;
frmWorkPlace.Label84.Visible:=true;
/////////////
frmWorkPlace.mtlFilter0.ZoomOnHover:=0;
frmWorkPlace.mtlAdd0.ZoomOnHover:=2;
frmWorkPlace.mtlBabyHub.ZoomOnHover:=2;
frmWorkPlace.mtlOrganise.ZoomOnHover:=2;
frmWorkPlace.mtlQuick0.ZoomOnHover:=2;
frmWorkPlace.mtlClip0.ZoomOnHover:=2;
frmWorkPlace.mtlView0.ZoomOnHover:=2;
frmWorkPlace.mtlEdit0.ZoomOnHover:=2;
frmWorkPlace.mltStats0.ZoomOnHover:=2;
////////////////////////
frmWorkPlace.mtlFilter0.Appearance.Color:=$0001AECD;
frmWorkPlace.mtlbabyhub.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlClip0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlOrganise.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlView0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlQuick0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlAdd0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mltStats0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlEdit0.Appearance.Color:=$0001A4C1;
frmWorkplace.Visible:=true;
///////////
frmHome.Visible:=false;
frmWorkplace.pagecontrol1.Visible:=false;
frmWorkplace.pagecontrol2.Visible:=false;
frmWorkplace.pagecontrol4.Visible:=false;
frmWorkplace.pagecontrol6.Visible:=false;
frmWorkplace.pagecontrol5.Visible:=false;
frmWorkplace.pagecontrol7.Visible:=false;
frmWorkplace.pageControl8.Visible:=false;
///////////
frmWorkPlace.pagecontrol3.Visible:=false;
///////
frmWorkPlace.TABSHEET43.TabVisible:=false;
frmWorkPlace.tabsheet39.TabVisible:=true;
frmWorkPlace.TABSHEET41.TabVisible:=false;
frmWorkPlace.TABSHEET40.TabVisible:=false;
frmWorkPlace.pnlOF.Visible:=false;
frmWorkPlace.pnlNum.Visible:=false;
frmWorkPlace.pnlNameF.Visible:=False;
frmWorkPlace.pnlYesNo.Visible:=false;
frmWorkPlace.pnlAniF.Visible:=true;
frmWorkPlace.pnlOrderF.Visible:=true;
frmWorkPlace.pnlVacF.Visible:=true;
frmWorkPlace.pnlTopF.Visible:=true;
frmWorkPlace.pnlHeading.Visible:=false;
frmWorkPlace.pnlFilter.Visible:=false;
frmWorkPlace.pnlFilterh.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.pnlHD.Visible:=false;
frmWorkPlace.tabsheet44.TabVisible:=true;
frmWorkPlace.tabsheet45.TabVisible:=false;
frmWorkPlace.mtlNext2.Visible:=false;
frmWorkPlace.pagecontrol6.Visible:=false;
frmWorkPlace.mtlcancel3.Visible:=false;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet22.TabVisible:=true;
frmWorkPlace.tabsheet23.TabVisible:=false;
frmWorkPlace.tabsheet24.TabVisible:=false;
frmWorkPlace.tabsheet25.TabVisible:=false;
frmWorkPlace.tabsheet46.TabVisible:=false;
frmWorkPlace.tabsheet27.TabVisible:=false;
frmWorkPlace.redAni.Visible:=false;
frmWorkPlace.redAni2.Visible:=false;
frmWorkPlace.redAni3.Visible:=false;
frmWorkPlace.redAni44.Visible:=false;
frmWorkPlace.redAni5.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlDel.Visible:=true;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet7.TabVisible:=true;
frmWorkPlace.tabsheet8.TabVisible:=false;
frmWorkPlace.tabsheet9.TabVisible:=false;
frmWorkPlace.tabsheet10.TabVisible:=false;
frmWorkPlace.tabsheet11.TabVisible:=true;
frmWorkPlace.tabsheet12.TabVisible:=false;
frmWorkPlace.tabsheet13.TabVisible:=false;
frmWorkPlace.tabsheet14.TabVisible:=false;
frmWorkPlace.tabsheet15.TabVisible:=false;
frmWorkPlace.tabsheet21.TabVisible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlCancel2.Visible:=false;
frmWorkPlace.mtlCancel.Visible:=false;
frmWorkPlace.mtlNext.Visible:=false;
frmWorkPlace.mtlRefresh.Visible:=false;
frmWorkPlace.mtlPrevious.Visible:=false;
frmWorkPlace.mtlDel.Visible:=false;
frmWorkPlace.pnlAddc.Visible:=false;
frmWorkPlace.pnlDelV.Visible:=false;
frmWorkPlace.pnlAddG.Visible:=false;
frmWorkPlace.pnlDelGeo.Visible:=false;
frmWorkPlace.pnlDelete.Visible:=false;
frmWorkPlace.pnlBEdit.Visible:=false;
frmWorkPlace.mtlDelA.Visible:=true;
frmWorkPlace.mtlAddcA.Visible:=true;
frmWorkPlace.mtlDelG.Visible:=true;
frmWorkPlace.mtlAddG.Visible:=true;
frmWorkPlace.mtlDelV.Visible:=true;
frmWorkPlace.pnlBadd.Visible:=false;
frmWorkPlace.pnlDelB.Visible:=false;
frmWorkPlace.pnlBaddc.Visible:=false;
frmWorkPlace.pnlAddNewA.Visible:=false;
frmWorkPlace.pnlfacts.Visible:=false;
frmWorkPlace.pnlAddNewG.Visible:=false;
frmWorkPlace.pnlAddNewV.Visible:=false;
frmWorkPlace.pnlEditG.Visible:=false;
frmWorkPlace.pnlEditA.Visible:=false;
frmWorkPlace.pnlEditV.Visible:=false;
frmWorkPlace.pnlEditF.Visible:=false;
frmWorkPlace.tabsheet16.TabVisible:=true;
frmWorkPlace.tabsheet17.TabVisible:=false;
frmWorkPlace.tabsheet18.TabVisible:=false;
frmWorkPlace.tabsheet19.TabVisible:=false;
frmWorkPlace.tabsheet20.TabVisible:=false;
end;

procedure TfrmHOME.mltStatsClick(Sender: TObject);
begin
//////////////
frmWorkplace.mtlAdd0.Caption:= 'Geo - Tag an animal';
frmWorkplace.mtlEdit0.Visible:=false;
frmWorkplace.mtlBabyHub.Visible:=false;
frmWorkplace.mtlOrganise.Visible:=false;
frmWorkplace.mtlView0.Visible:=false;
////////
frmWorkplace.mtlWildC.ZoomOnHover:=2;
frmWorkplace.mtlWildC.Visible:=true;
//////////////
frmWorkPlace.Visible:=true;
frmHome.Visible:=false;
frmWorkPlace.pageControl8.Visible:=true;
frmWorkPlace.Label76.Visible:=false;
frmWorkPlace.Label76.Visible:=true;
frmWorkplace.pagecontrol1.Visible:=false;
frmWorkplace.pagecontrol2.Visible:=false;
frmWorkplace.pagecontrol4.Visible:=false;
frmWorkplace.pagecontrol6.Visible:=false;
frmWorkplace.pagecontrol5.Visible:=false;
frmWorkplace.pagecontrol7.Visible:=false;
frmWorkplace.pageControl9.Visible:=false;
/////////////
/////////////
frmWorkPlace.mltStats0.ZoomOnHover:=0;
frmWorkPlace.mtlAdd0.ZoomOnHover:=2;
frmWorkPlace.mtlBabyHub.ZoomOnHover:=2;
frmWorkPlace.mtlOrganise.ZoomOnHover:=2;
frmWorkPlace.mtlQuick0.ZoomOnHover:=2;
frmWorkPlace.mtlClip0.ZoomOnHover:=2;
frmWorkPlace.mtlView0.ZoomOnHover:=2;
frmWorkPlace.mtlFilter0.ZoomOnHover:=2;
frmWorkPlace.mtlEdit0.ZoomOnHover:=2;
//////////
frmWorkPlace.mltStats0.Appearance.Color:=$0001AECD;
frmWorkPlace.mtlbabyhub.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlClip0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlOrganise.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlView0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlQuick0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlFilter0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlAdd0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlEdit0.Appearance.Color:=$0001A4C1;
///////////
frmWorkPlace.pagecontrol3.Visible:=false;
/////////
frmWorkPlace.TABSHEET43.TabVisible:=false;
frmWorkPlace.tabsheet39.TabVisible:=true;
frmWorkPlace.TABSHEET41.TabVisible:=false;
frmWorkPlace.TABSHEET40.TabVisible:=false;
frmWorkPlace.pnlOF.Visible:=false;
frmWorkPlace.pnlNum.Visible:=false;
frmWorkPlace.pnlNameF.Visible:=False;
frmWorkPlace.pnlYesNo.Visible:=false;
frmWorkPlace.pnlAniF.Visible:=true;
frmWorkPlace.pnlOrderF.Visible:=true;
frmWorkPlace.pnlVacF.Visible:=true;
frmWorkPlace.pnlTopF.Visible:=true;
frmWorkPlace.pnlHeading.Visible:=false;
frmWorkPlace.pnlFilter.Visible:=false;
frmWorkPlace.pnlFilterh.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.pnlHD.Visible:=false;
frmWorkPlace.tabsheet44.TabVisible:=true;
frmWorkPlace.tabsheet45.TabVisible:=false;
frmWorkPlace.mtlNext2.Visible:=false;
frmWorkPlace.pagecontrol6.Visible:=false;
frmWorkPlace.mtlcancel3.Visible:=false;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet22.TabVisible:=true;
frmWorkPlace.tabsheet23.TabVisible:=false;
frmWorkPlace.tabsheet24.TabVisible:=false;
frmWorkPlace.tabsheet25.TabVisible:=false;
frmWorkPlace.tabsheet46.TabVisible:=false;
frmWorkPlace.tabsheet27.TabVisible:=false;
frmWorkPlace.redAni.Visible:=false;
frmWorkPlace.redAni2.Visible:=false;
frmWorkPlace.redAni3.Visible:=false;
frmWorkPlace.redAni44.Visible:=false;
frmWorkPlace.redAni5.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlDel.Visible:=true;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet7.TabVisible:=true;
frmWorkPlace.tabsheet8.TabVisible:=false;
frmWorkPlace.tabsheet9.TabVisible:=false;
frmWorkPlace.tabsheet10.TabVisible:=false;
frmWorkPlace.tabsheet11.TabVisible:=true;
frmWorkPlace.tabsheet12.TabVisible:=false;
frmWorkPlace.tabsheet13.TabVisible:=false;
frmWorkPlace.tabsheet14.TabVisible:=false;
frmWorkPlace.tabsheet15.TabVisible:=false;
frmWorkPlace.tabsheet21.TabVisible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlCancel2.Visible:=false;
frmWorkPlace.mtlCancel.Visible:=false;
frmWorkPlace.mtlNext.Visible:=false;
frmWorkPlace.mtlRefresh.Visible:=false;
frmWorkPlace.mtlPrevious.Visible:=false;
frmWorkPlace.mtlDel.Visible:=false;
frmWorkPlace.pnlAddc.Visible:=false;
frmWorkPlace.pnlDelV.Visible:=false;
frmWorkPlace.pnlAddG.Visible:=false;
frmWorkPlace.pnlDelGeo.Visible:=false;
frmWorkPlace.pnlDelete.Visible:=false;
frmWorkPlace.pnlBEdit.Visible:=false;
frmWorkPlace.mtlDelA.Visible:=true;
frmWorkPlace.mtlAddcA.Visible:=true;
frmWorkPlace.mtlDelG.Visible:=true;
frmWorkPlace.mtlAddG.Visible:=true;
frmWorkPlace.mtlDelV.Visible:=true;
frmWorkPlace.pnlBadd.Visible:=false;
frmWorkPlace.pnlDelB.Visible:=false;
frmWorkPlace.pnlBaddc.Visible:=false;
frmWorkPlace.pnlAddNewA.Visible:=false;
frmWorkPlace.pnlfacts.Visible:=false;
frmWorkPlace.pnlAddNewG.Visible:=false;
frmWorkPlace.pnlAddNewV.Visible:=false;
frmWorkPlace.pnlEditG.Visible:=false;
frmWorkPlace.pnlEditA.Visible:=false;
frmWorkPlace.pnlEditV.Visible:=false;
frmWorkPlace.pnlEditF.Visible:=false;
frmWorkPlace.tabsheet16.TabVisible:=true;
frmWorkPlace.tabsheet17.TabVisible:=false;
frmWorkPlace.tabsheet18.TabVisible:=false;
frmWorkPlace.tabsheet19.TabVisible:=false;
frmWorkPlace.tabsheet20.TabVisible:=false;
end;

procedure TfrmHOME.mtlClip1Click(Sender: TObject);
begin
//////////////
frmWorkplace.mtlAdd0.Caption:= 'Geo - Tag an animal';
frmWorkplace.mtlEdit0.Visible:=false;
frmWorkplace.mtlBabyHub.Visible:=false;
frmWorkplace.mtlOrganise.Visible:=false;
frmWorkplace.mtlView0.Visible:=false;
////////
frmWorkplace.mtlWildC.ZoomOnHover:=2;
frmWorkplace.mtlWildC.Visible:=true;
//////////////
frmWorkPlace.Pagecontrol5.Visible:=true;
frmWorkplace.pagecontrol1.Visible:=false;
frmWorkplace.pagecontrol2.Visible:=false;
frmWorkplace.pagecontrol4.Visible:=false;
frmWorkplace.pagecontrol6.Visible:=false;
frmWorkplace.pagecontrol7.Visible:=false;
frmWorkplace.pageControl8.Visible:=false;
frmWorkplace.pageControl9.Visible:=false;
frmWorkPlace.mtlClip0.ZoomOnHover:=0;
frmWorkPlace.mtlAdd0.ZoomOnHover:=2;
frmWorkPlace.mtlBabyHub.ZoomOnHover:=2;
frmWorkPlace.mtlOrganise.ZoomOnHover:=2;
frmWorkPlace.mtlQuick0.ZoomOnHover:=2;
frmWorkPlace.mtlEdit0.ZoomOnHover:=2;
frmWorkPlace.mtlView0.ZoomOnHover:=2;
frmWorkPlace.mtlFilter0.ZoomOnHover:=2;
frmWorkPlace.mltStats0.ZoomOnHover:=2;
///////////
frmWorkPlace.mtlClip0.Appearance.Color:=$0001AECD;
frmWorkPlace.mtlbabyhub.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlAdd0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlOrganise.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlView0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlQuick0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlFilter0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mltStats0.Appearance.Color:=$0001A4C1;
frmWorkPlace.mtlEdit0.Appearance.Color:=$0001A4C1;
///////////////
frmWorkPlace.Visible:=true;
frmHome.Visible:=false;
frmWorkPlace.pagecontrol3.Visible:=false;
/////////
frmWorkPlace.TABSHEET43.TabVisible:=false;
frmWorkPlace.tabsheet39.TabVisible:=true;
frmWorkPlace.TABSHEET41.TabVisible:=false;
frmWorkPlace.TABSHEET40.TabVisible:=false;
frmWorkPlace.pnlOF.Visible:=false;
frmWorkPlace.pnlNum.Visible:=false;
frmWorkPlace.pnlNameF.Visible:=False;
frmWorkPlace.pnlYesNo.Visible:=false;
frmWorkPlace.pnlAniF.Visible:=true;
frmWorkPlace.pnlOrderF.Visible:=true;
frmWorkPlace.pnlVacF.Visible:=true;
frmWorkPlace.pnlTopF.Visible:=true;
frmWorkPlace.pnlHeading.Visible:=false;
frmWorkPlace.pnlFilter.Visible:=false;
frmWorkPlace.pnlFilterh.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.pnlHD.Visible:=false;
frmWorkPlace.tabsheet44.TabVisible:=true;
frmWorkPlace.tabsheet45.TabVisible:=false;
frmWorkPlace.mtlNext2.Visible:=false;
frmWorkPlace.pagecontrol6.Visible:=false;
frmWorkPlace.mtlcancel3.Visible:=false;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet22.TabVisible:=true;
frmWorkPlace.tabsheet23.TabVisible:=false;
frmWorkPlace.tabsheet24.TabVisible:=false;
frmWorkPlace.tabsheet25.TabVisible:=false;
frmWorkPlace.tabsheet46.TabVisible:=false;
frmWorkPlace.tabsheet27.TabVisible:=false;
frmWorkPlace.redAni.Visible:=false;
frmWorkPlace.redAni2.Visible:=false;
frmWorkPlace.redAni3.Visible:=false;
frmWorkPlace.redAni44.Visible:=false;
frmWorkPlace.redAni5.Visible:=false;
frmWorkPlace.mtlCancel3.Visible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlDel.Visible:=true;
frmWorkPlace.tabsheet1.TabVisible:=true;
frmWorkPlace.tabsheet2.TabVisible:=false;
frmWorkPlace.tabsheet3.TabVisible:=false;
frmWorkPlace.tabsheet4.TabVisible:=false;
frmWorkPlace.tabsheet7.TabVisible:=true;
frmWorkPlace.tabsheet8.TabVisible:=false;
frmWorkPlace.tabsheet9.TabVisible:=false;
frmWorkPlace.tabsheet10.TabVisible:=false;
frmWorkPlace.tabsheet11.TabVisible:=true;
frmWorkPlace.tabsheet12.TabVisible:=false;
frmWorkPlace.tabsheet13.TabVisible:=false;
frmWorkPlace.tabsheet14.TabVisible:=false;
frmWorkPlace.tabsheet15.TabVisible:=false;
frmWorkPlace.tabsheet21.TabVisible:=false;
frmWorkPlace.mtlOK2.Visible:=false;
frmWorkPlace.mtlCancel2.Visible:=false;
frmWorkPlace.mtlCancel.Visible:=false;
frmWorkPlace.mtlNext.Visible:=false;
frmWorkPlace.mtlRefresh.Visible:=false;
frmWorkPlace.mtlPrevious.Visible:=false;
frmWorkPlace.mtlDel.Visible:=false;
frmWorkPlace.pnlAddc.Visible:=false;
frmWorkPlace.pnlDelV.Visible:=false;
frmWorkPlace.pnlAddG.Visible:=false;
frmWorkPlace.pnlDelGeo.Visible:=false;
frmWorkPlace.pnlDelete.Visible:=false;
frmWorkPlace.pnlBEdit.Visible:=false;
frmWorkPlace.mtlDelA.Visible:=true;
frmWorkPlace.mtlAddcA.Visible:=true;
frmWorkPlace.mtlDelG.Visible:=true;
frmWorkPlace.mtlAddG.Visible:=true;
frmWorkPlace.mtlDelV.Visible:=true;
frmWorkPlace.pnlBadd.Visible:=false;
frmWorkPlace.pnlDelB.Visible:=false;
frmWorkPlace.pnlBaddc.Visible:=false;
frmWorkPlace.pnlAddNewA.Visible:=false;
frmWorkPlace.pnlfacts.Visible:=false;
frmWorkPlace.pnlAddNewG.Visible:=false;
frmWorkPlace.pnlAddNewV.Visible:=false;
frmWorkPlace.pnlEditG.Visible:=false;
frmWorkPlace.pnlEditA.Visible:=false;
frmWorkPlace.pnlEditV.Visible:=false;
frmWorkPlace.pnlEditF.Visible:=false;
frmWorkPlace.tabsheet16.TabVisible:=true;
frmWorkPlace.tabsheet17.TabVisible:=false;
frmWorkPlace.tabsheet18.TabVisible:=false;
frmWorkPlace.tabsheet19.TabVisible:=false;
frmWorkPlace.tabsheet20.TabVisible:=false;
end;

procedure TfrmHOME.mtlHexClick(Sender: TObject);
begin
frmHexagon.visible:=true;
end;

procedure TfrmHOME.AdvMetroToolButton15Click(Sender: TObject);
begin
frmHexagon.mediaplayer1.Display:=panel3;
frmHexagon.WebBrowser1.Navigate('www.bing.com/maps/');
frmHexagon.pnlWeb.Show;
frmHexagon.pnlPlay.Hide;
frmHexagon.panel2.Hide;
frmHexagon.panel1.Hide;
frmHexagon.pnlLoad.Hide;
frmHexagon.pnlTop.Hide;
frmHexagon.timer1.Enabled:=false;
frmHexagon.timer2.Enabled:=false;
frmHexagon.mtlPause.Hide;
frmHexagon.mtlPlay.Show;
frmHexagon.visible:=true;
end;

procedure TfrmHOME.AdvMetroToolButton4Click(Sender: TObject);
begin
if frmHexagon.pnlPlay.Visible <> true then
begin
frmHexagon.pnlPlay.Show;
frmHexagon.pnlWeb.Hide;
frmHexagon.panel1.Hide;
frmHexagon.panel2.Hide;
frmHexagon.pnlLoad.Show;
frmHexagon.timer1.Enabled:=false;
frmHexagon.timer2.Enabled:=false;
frmHexagon.mtlPause.Hide;
frmHexagon.mtlPlay.Show;
frmHexagon.mediaplayer1.Display:=frmHexagon.webbrowser1;
end
else
begin
frmHexagon.mediaplayer1.Display:=frmHexagon.webbrowser1;
frmHexagon.pnlPlay.Show;
frmHexagon.pnlWeb.Hide;
end;
frmHexagon.visible:=true;
end;

procedure TfrmHOME.mtlWebClick(Sender: TObject);
begin
frmHexagon.mediaplayer1.Display:=frmHexagon.panel3;
frmHexagon.pnlTop.Hide;
frmHexagon.mtlPause.Hide;
frmHexagon.mtlPlay.Show;
frmHexagon.pnlWeb.Show;
frmHexagon.pnlPlay.Hide;
frmHexagon.panel2.Hide;
frmHexagon.panel1.Hide;
frmHexagon.timer1.Enabled:=false;
frmHexagon.timer2.Enabled:=false;
frmHexagon.pnlLoad.Hide;
frmHexagon.WebBrowser1.Navigate('www.bing.com');
frmHexagon.visible:=true;
end;

procedure TfrmHOME.AdvMetroToolButton10Click(Sender: TObject);
begin
frmHexagon.mediaplayer1.Display:=frmHexagon.panel3;
frmHexagon.pnlTop.Hide;
frmHexagon.pnlWeb.Show;
frmHexagon.pnlPlay.Hide;
frmHexagon.mtlPause.Hide;
frmHexagon.mtlPlay.Show;
frmHexagon.panel2.Hide;
frmHexagon.timer1.Enabled:=false;
frmHexagon.timer2.Enabled:=false;
frmHexagon.panel1.Hide;
frmHexagon.pnlLoad.Hide;
frmHexagon.WebBrowser1.Navigate('www.flashgame6.com/9-1-1/animal-games');
frmHexagon.visible:=true;
end;

procedure TfrmHOME.AdvMetroToolButton12Click(Sender: TObject);
begin
frmHexagon.mediaplayer1.Display:=frmHexagon.panel3;
frmHexagon.WebBrowser1.Navigate('www.twitter.com');
frmHexagon.pnlLoad.Hide;
frmHexagon.pnlWeb.Show;
frmHexagon.pnlPlay.Hide;
frmHexagon.panel2.Hide;
frmHexagon.panel1.Hide;
frmHexagon.pnlTop.Hide;
frmHexagon.mtlPause.Hide;
frmHexagon.timer1.Enabled:=false;
frmHexagon.timer2.Enabled:=false;
frmHexagon.mtlPlay.Show;
frmHexagon.visible:=true;
end;

procedure TfrmHOME.AdvMetroToolButton11Click(Sender: TObject);
begin
frmHexagon.mediaplayer1.Display:=frmHexagon.panel3;
frmHexagon.WebBrowser1.Navigate('www.facebook.com');
frmHexagon.pnlWeb.Show;
frmHexagon.pnlPlay.Hide;
frmHexagon.pnlLoad.Hide;
frmHexagon.panel2.Hide;
frmHexagon.panel1.Hide;
frmHexagon.pnlTop.Hide;
frmHexagon.timer1.Enabled:=false;
frmHexagon.timer2.Enabled:=false;
frmHexagon.mtlPause.Hide;
frmHexagon.mtlPlay.Show;
frmHexagon.visible:=true;
end;

end.
