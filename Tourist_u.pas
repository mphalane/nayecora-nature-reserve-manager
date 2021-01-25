unit Tourist_u;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvMetroForm, jpeg, ExtCtrls, ComCtrls, StdCtrls,
  AdvMetroButton, AdvMetroTile, Grids, DBGrids, DB, DBCtrls, ADODB,
  AdvAppStyler,clsCalculations,Program_u, AdvMetroHint;

type
  TfrmTourist = class(TAdvMetroForm)
    Panel2: TPanel;
    mtlDel: TAdvMetroTile;
    mtlDelall: TAdvMetroTile;
    mtlPrevious: TAdvMetroTile;
    mtlNext2: TAdvMetroTile;
    Panel1: TPanel;
    Panel462: TPanel;
    mtlSearch: TAdvMetroButton;
    Edit23: TEdit;
    mtlHome: TAdvMetroButton;
    mtlMedia: TAdvMetroTile;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel165: TPanel;
    Label85: TLabel;
    Panel168: TPanel;
    Panel3: TPanel;
    imgHex: TImage;
    Panel4: TPanel;
    pnlX: TPanel;
    Label1: TLabel;
    Panel6: TPanel;
    Label3: TLabel;
    lblSpot: TLabel;
    Panel371: TPanel;
    Label161: TLabel;
    lblTall: TLabel;
    Label169: TLabel;
    Panel7: TPanel;
    Label5: TLabel;
    lblW: TLabel;
    Label8: TLabel;
    Panel8: TPanel;
    Label9: TLabel;
    lblLife: TLabel;
    Label12: TLabel;
    Panel9: TPanel;
    Label13: TLabel;
    lblKm: TLabel;
    Label16: TLabel;
    Panel10: TPanel;
    Label17: TLabel;
    lblIQ: TLabel;
    pnlY: TPanel;
    Label21: TLabel;
    Panel12: TPanel;
    Label23: TLabel;
    Panel13: TPanel;
    redCard: TRichEdit;
    adoTour: TADOConnection;
    qryTourist: TADOQuery;
    qryFilter: TADOQuery;
    DBText1: TDBText;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    AdvFormStyler1: TAdvFormStyler;
    lblName: TPanel;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    lblDate: TLabel;
    lblTemp: TLabel;
    mtlDel2: TAdvMetroTile;
    mtlQuick0: TAdvMetroTile;
    mtlClip0: TAdvMetroTile;
    mltStats0: TAdvMetroTile;
    mtlFilter0: TAdvMetroTile;
    mtlEdit0: TAdvMetroTile;
    mtlWildC: TAdvMetroTile;
    Image1: TImage;
    Label55: TLabel;
    Label56: TLabel;
    Shape1: TShape;
    Shape16: TShape;
    Label57: TLabel;
    AdvMetroHint1: TAdvMetroHint;
    procedure mtlNext2Click(Sender: TObject);
    procedure mtlPreviousClick(Sender: TObject);
    procedure AdvMetroFormCreate(Sender: TObject);
    procedure AdvMetroFormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvMetroFormActivate(Sender: TObject);
    procedure mtlDelClick(Sender: TObject);
    procedure mtlDel2Click(Sender: TObject);
    procedure mtlHomeClick(Sender: TObject);
    procedure mtlEdit0Click(Sender: TObject);
    procedure mtlWildCClick(Sender: TObject);
    procedure mtlQuick0Click(Sender: TObject);
    procedure mtlClip0Click(Sender: TObject);
    procedure mltStats0Click(Sender: TObject);
    procedure mtlFilter0Click(Sender: TObject);
    procedure mtlMediaClick(Sender: TObject);
    procedure Edit23MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit23Click(Sender: TObject);
    procedure AdvMetroFormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel462MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure mtlSearchClick(Sender: TObject);
  private
    Hidden:Boolean;
    { Private declarations }
  protected
    { Protected declarations }
  public
  Calculate:TCalculations;
    { Public declarations }
  end;

var
  frmTourist: TfrmTourist;

implementation
uses Home_u, Hexagon_u;
{$R *.dfm}


procedure TfrmTourist.mtlNext2Click(Sender: TObject);
var
sFileName,sDate:string;
begin
qryTourist.Next;
sFileNAme:=qryTourist['IMG'];
if FileExists(sFilename) <> true then
begin
Image1.Visible:=true;
imgHex.Visible:=false;
end
else
begin
Image1.Visible:=false;
imgHex.Visible:=true;
imgHex.Picture.LoadFromFile(sFileName);
end;
///////////////////////////////

qryFilter.Active:=false;
qryFilter.SQL.Text:='Select * from EcoraFacts where Animal = '''+DBText1.Caption+'''';
qryFilter.Active:=true;
///////////////////////////////////
lbltall.Caption:=qryFilter['Max Shoulder Height(m)'];
lblLife.Caption:=qryFilter['Top speed(Km/h)'];
lblW.Caption:=qryFilter['Max Weight(Kg)'];
lblkm.Caption:=qryFilter['Lifespan(years)'];
lblIQ.Caption:=qryFilter['Intelligence'];
lblName.Caption:=qryFilter['Scientific Name'];
//////////////////////////////////////////////////////////////////////////////////////////////

qryFilter.Active:=false;
qryFilter.SQL.Text:='Select * from EcoraGeoTagging where Animal = '''+DBText1.Caption+''' Order by [Date spotted] DESC';
qryFilter.Active:=true;

if qryFilter['Animal'] = DBText1.Caption then
begin
lblSpot.Caption:=qryFilter['Park/Sight spoted'];
sDate:=Datetostr(qryFilter['Date spotted']);
lblTemp.Caption:=qryFilter['Type of weather condition'];
Calculate.SetDate(sDate);
Calculate.FormatDate;
Calculate.ToStringDate;
lblDate.Caption:=Calculate.ToStringDate;
pnlX.Caption:=qryFilter['X-coordinates of Animal'];
pnlY.Caption:=qryFilter['Y-coordinates of Animal'];
end
else
begin
lblSpot.Caption:='This animal has not been'+#13+'spoted yet...';
lblDate.Caption:=' ';
lblTemp.Caption:=' ';
pnlX.Caption:='0';
pnlY.Caption:='0';
end;
/////////////////////
qryFilter.Active:=false;
qryFilter.SQL.Text:='Select * from EcoraNum where Animal = '''+DBText1.Caption+'''';
qryFilter.Active:=true;
redCard.Lines.Text:=#7+' ' + qryFilter['Animal'] +' '+#5+' '+ lblName.Caption+#13;
redCard.Lines.Text:=redCard.Lines.Text+#13;
redCard.Lines.Text:=redCard.Lines.Text+qryFilter['Description']+#13;
redCard.Lines.Text:=redCard.Lines.Text+#13;
redCard.Lines.Text:=redCard.Lines.Text+' ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'+#13;
redCard.Lines.Text:=redCard.Lines.Text+#13;
redCard.Lines.Text:=redCard.Lines.Text+'The '+ qryFilter['Animal']+ ' is ' +qryFilter['Order']+' '+Copy(qryFilter['Kingdom'],1,6)+'.';
redCard.Lines.Text:=redCard.Lines.Text+#7+' '+'Total male pop.'+#9+':'+#9+Inttostr(qryFilter['Number_of_male'])+#13;
redCard.Lines.Text:=redCard.Lines.Text+#7+' '+'Total female pop.'+#9+':'+#9+Inttostr(qryFilter['Number_of_female'])+#13;
redCard.Lines.Text:=redCard.Lines.Text+#7+' '+'Overall total pop.'+#9+':'+#9+Inttostr(qryFilter['Total_number_of_animal'])+#13;
//////////////////////////////////////////////////////////////

end;

procedure TfrmTourist.mtlPreviousClick(Sender: TObject);
var
sFileName,sDate:string;
begin
qryTourist.Prior;
sFileNAme:=qryTourist['IMG'];
if FileExists(sFilename) <> true then
begin
Image1.Visible:=true;
imgHex.Visible:=false;
end
else
begin
Image1.Visible:=false;
imgHex.Visible:=true;
imgHex.Picture.LoadFromFile(sFileName);
end;
///////////////////////////////

qryFilter.Active:=false;
qryFilter.SQL.Text:='Select * from EcoraFacts where Animal = '''+DBText1.Caption+'''';
qryFilter.Active:=true;
///////////////////////////////////
lbltall.Caption:=qryFilter['Max Shoulder Height(m)'];
lblLife.Caption:=qryFilter['Top speed(Km/h)'];
lblW.Caption:=qryFilter['Max Weight(Kg)'];
lblkm.Caption:=qryFilter['Lifespan(years)'];
lblIQ.Caption:=qryFilter['Intelligence'];
lblName.Caption:=qryFilter['Scientific Name'];
//////////////////////////////////////////////////////////////////////////////////////////////

qryFilter.Active:=false;
qryFilter.SQL.Text:='Select * from EcoraGeoTagging where Animal = '''+DBText1.Caption+''' Order by [Date spotted] DESC';
qryFilter.Active:=true;

if qryFilter['Animal'] = DBText1.Caption then
begin
lblSpot.Caption:=qryFilter['Park/Sight spoted'];
sDate:=Datetostr(qryFilter['Date spotted']);
lblTemp.Caption:=qryFilter['Type of weather condition'];
Calculate.SetDate(sDate);
Calculate.FormatDate;
Calculate.ToStringDate;
lblDate.Caption:=Calculate.ToStringDate;
pnlX.Caption:=qryFilter['X-coordinates of Animal'];
pnlY.Caption:=qryFilter['Y-coordinates of Animal'];
end
else
begin
lblSpot.Caption:='This animal has not been'+#13+'spoted yet...';
lblDate.Caption:=' ';
lblTemp.Caption:=' ';
pnlX.Caption:='0';
pnlY.Caption:='0';
end;
/////////////////////
qryFilter.Active:=false;
qryFilter.SQL.Text:='Select * from EcoraNum where Animal = '''+DBText1.Caption+'''';
qryFilter.Active:=true;
redCard.Lines.Text:=#7+' ' + qryFilter['Animal'] +' '+#5+' '+ lblName.Caption+#13;
redCard.Lines.Text:=redCard.Lines.Text+#13;
redCard.Lines.Text:=redCard.Lines.Text+qryFilter['Description']+#13;
redCard.Lines.Text:=redCard.Lines.Text+#13;
redCard.Lines.Text:=redCard.Lines.Text+' ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'+#13;
redCard.Lines.Text:=redCard.Lines.Text+#13;
redCard.Lines.Text:=redCard.Lines.Text+'The '+ qryFilter['Animal']+ ' is ' +qryFilter['Order']+' '+Copy(qryFilter['Kingdom'],1,6)+'.';
redCard.Lines.Text:=redCard.Lines.Text+#7+' '+'Total male pop.'+#9+':'+#9+Inttostr(qryFilter['Number_of_male'])+#13;
redCard.Lines.Text:=redCard.Lines.Text+#7+' '+'Total female pop.'+#9+':'+#9+Inttostr(qryFilter['Number_of_female'])+#13;
redCard.Lines.Text:=redCard.Lines.Text+#7+' '+'Overall total pop.'+#9+':'+#9+Inttostr(qryFilter['Total_number_of_animal'])+#13;
//////////////////////////////////////////////////////////////
end;

procedure TfrmTourist.AdvMetroFormCreate(Sender: TObject);
begin
Calculate:=TCalculations.create;
mtlHome.Appearance.PictureColor:=clWhite;
mtlSearch.Appearance.PictureColor:=clWhite;
mtlHome.Appearance.PictureColorHover:=$0001CDF1;
////////////////
mtlNext2.Appearance.Color:=$0001CDF1;
mtlNext2.Appearance.TextColor:=clWhite;
mtlNext2.Appearance.HoverColor:=$0001CDF1;
mtlNext2.Appearance.HoverTextColor:=$0001A4C1;
mtlNext2.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlPrevious.Appearance.Color:=$0001CDF1;
mtlPrevious.Appearance.TextColor:=clWhite;
mtlPrevious.Appearance.HoverColor:=$0001CDF1;
mtlPrevious.Appearance.HoverTextColor:=$0001A4C1;
mtlPrevious.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlDel.Appearance.Color:=$0001CDF1;
mtlDel.Appearance.TextColor:=clWhite;
mtlDel.Appearance.HoverColor:=$0001CDF1;
mtlDel.Appearance.HoverTextColor:=$0001A4C1;
mtlDel.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlDel2.Appearance.Color:=$0001CDF1;
mtlDel2.Appearance.TextColor:=clWhite;
mtlDel2.Appearance.HoverColor:=$0001CDF1;
mtlDel2.Appearance.HoverTextColor:=$0001A4C1;
mtlDel2.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlDelall.Appearance.Color:=$0001CDF1;
mtlDelall.Appearance.TextColor:=clWhite;
mtlDelall.Appearance.HoverColor:=$0001CDF1;
mtlDelall.Appearance.HoverTextColor:=$0001A4C1;
mtlDelall.Appearance.DownTextColor:=$0001A4C1;
/////////////
mtlEdit0.Appearance.Color:=$0001A4C1;
mtledit0.Appearance.TextColor:=clWhite;
mtledit0.Appearance.HoverColor:=$0001CDF1;
mtledit0.Appearance.HoverTextColor:=clWhite;
mtledit0.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlQuick0.Appearance.Color:=$0001A4C1;
mtlQuick0.Appearance.TextColor:=clWhite;
mtlQuick0.Appearance.HoverColor:=$0001CDF1;
mtlQuick0.Appearance.HoverTextColor:=clWhite;
mtlQuick0.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlClip0.Appearance.Color:=$0001A4C1;
mtlClip0.Appearance.TextColor:=clWhite;
mtlClip0.Appearance.HoverColor:=$0001CDF1;
mtlClip0.Appearance.HoverTextColor:=clWhite;
mtlClip0.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlWildC.Appearance.Color:=$0001AECD;
mtlWildC.Appearance.TextColor:=clWhite;
mtlWildC.Appearance.HoverColor:=$0001CDF1;
mtlWildC.Appearance.HoverTextColor:=clWhite;
mtlWildC.Appearance.DownTextColor:=$0001A4C1;
////////////
mltStats0.Appearance.Color:=$0001A4C1;
mltStats0.Appearance.TextColor:=clWhite;
mltStats0.Appearance.HoverColor:=$0001CDF1;
mltStats0.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlFilter0.Appearance.Color:=$0001A4C1;
mtlFilter0.Appearance.TextColor:=clWhite;
mtlFilter0.Appearance.HoverColor:=$0001CDF1;
mtlFilter0.Appearance.HoverTextColor:=clWhite;
mtlFilter0.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlMedia.Appearance.Color:=$0001A4C1;
mtlMedia.Appearance.TextColor:=clWhite;
mtlMedia.Appearance.HoverColor:=$0001CDF1;
mtlMedia.Appearance.HoverTextColor:=clWhite;
mtlMedia.Appearance.DownTextColor:=$0001A4C1;
////////////
end;

procedure TfrmTourist.AdvMetroFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Calculate.Free;
end;

procedure TfrmTourist.AdvMetroFormActivate(Sender: TObject);
var
sFileName,sDate:string;
begin
redCard.Paragraph.TabCount:=2;
redCard.Paragraph.Tab[0]:=100;
redCard.Paragraph.Tab[1]:=200;
frmTourist.Caption:='Hexagon.';
///////////////////////////////

sFileNAme:=qryTourist['IMG'];
if FileExists(sFilename) <> true then
begin
Image1.Visible:=true;
imgHex.Visible:=false;
end
else
begin
Image1.Visible:=false;
imgHex.Visible:=true;
imgHex.Picture.LoadFromFile(sFileName);
end;
/////////////////////
qryFilter.Active:=false;
qryFilter.SQL.Text:='Select * from EcoraFacts where Animal = '''+DBText1.Caption+'''';
qryFilter.Active:=true;
///////////////////////////////////
lbltall.Caption:=qryFilter['Max Shoulder Height(m)'];
lblLife.Caption:=qryFilter['Top speed(Km/h)'];
lblW.Caption:=qryFilter['Max Weight(Kg)'];
lblkm.Caption:=qryFilter['Lifespan(years)'];
lblIQ.Caption:=qryFilter['Intelligence'];
lblName.Caption:=qryFilter['Scientific Name'];
//////////////////////////////////////////////////////////////////////////////////////////////

qryFilter.Active:=false;
qryFilter.SQL.Text:='Select * from EcoraGeoTagging where Animal = '''+DBText1.Caption+''' Order by [Date spotted] DESC';
qryFilter.Active:=true;

if qryFilter['Animal'] = DBText1.Caption then
begin
lblSpot.Caption:=qryFilter['Park/Sight spoted'];
sDate:=Datetostr(qryFilter['Date spotted']);
lblTemp.Caption:=qryFilter['Type of weather condition'];
Calculate.SetDate(sDate);
Calculate.FormatDate;
Calculate.ToStringDate;
lblDate.Caption:=Calculate.ToStringDate;
pnlX.Caption:=qryFilter['X-coordinates of Animal'];
pnlY.Caption:=qryFilter['Y-coordinates of Animal'];
end
else
begin
lblSpot.Caption:='This animal has not been'+#13+'spoted yet...';
lblDate.Caption:=' ';
lblTemp.Caption:=' ';
pnlX.Caption:='0';
pnlY.Caption:='0';
end;

///////////////////////////////
qryFilter.Active:=false;
qryFilter.SQL.Text:='Select * from EcoraNum where Animal = '''+DBText1.Caption+'''';
qryFilter.Active:=true;
redCard.Lines.Text:=#7+' ' + qryFilter['Animal'] +' '+#5+' '+ lblName.Caption+#13;
redCard.Lines.Text:=redCard.Lines.Text+#13;
redCard.Lines.Text:=redCard.Lines.Text+qryFilter['Description']+#13;
redCard.Lines.Text:=redCard.Lines.Text+#13;
redCard.Lines.Text:=redCard.Lines.Text+' ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'+#13;
redCard.Lines.Text:=redCard.Lines.Text+#13;
redCard.Lines.Text:=redCard.Lines.Text+'The '+ qryFilter['Animal']+ ' is ' +qryFilter['Order']+' '+Copy(qryFilter['Kingdom'],1,6)+'.';
redCard.Lines.Text:=redCard.Lines.Text+#7+' '+'Total male pop.'+#9+':'+#9+Inttostr(qryFilter['Number_of_male'])+#13;
redCard.Lines.Text:=redCard.Lines.Text+#7+' '+'Total female pop.'+#9+':'+#9+Inttostr(qryFilter['Number_of_female'])+#13;
redCard.Lines.Text:=redCard.Lines.Text+#7+' '+'Overall total pop.'+#9+':'+#9+Inttostr(qryFilter['Total_number_of_animal'])+#13;
//////////////////////////////////////////////////////////////
end;

procedure TfrmTourist.mtlDelClick(Sender: TObject);
var
Flags: DWORD;
  Handle: HWND;
begin

  Panel1.DoubleBuffered:=true;

   Handle :=  Panel1.Handle;
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
  Panel1.Visible:=true;
   mtlDel.Visible:=false;
  mtlDel2.Visible:=true;
end;

procedure TfrmTourist.mtlDel2Click(Sender: TObject);
var
Flags: DWORD;
  Handle: HWND;
begin

  Panel1.DoubleBuffered:=true;

   Handle :=  Panel1.Handle;
    if Hidden then
    Flags := AW_ACTIVATE

    else
    Flags  :=AW_HIDE;
    Hidden := not Hidden;
    Flags :=Flags or AW_Slide ;
    Flags :=Flags  OR  AW_HOR_Negative;
      if not AnimateWindow(Handle, 100, Flags) then begin
    if GetLastError = ERROR_SUCCESS then //Error handeling
        //showmessage('The thread does not own the window! ERROR');
    exit;
  end;
  Panel1.Visible:=true;
  mtlDel.Visible:=true;
  mtlDel2.Visible:=false;
end;

procedure TfrmTourist.mtlHomeClick(Sender: TObject);
begin
frmHome.Visible:=true;;
frmTourist.Visible:=false;
panel1.Hide;
mtlDel.Show;
mtlDel2.Hide;
end;

procedure TfrmTourist.mtlEdit0Click(Sender: TObject);
begin
frmWorkplace.Visible:=true;
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

procedure TfrmTourist.mtlWildCClick(Sender: TObject);
var
Flags: DWORD;
  Handle: HWND;
begin

  Panel1.DoubleBuffered:=true;

   Handle :=  Panel1.Handle;
    if Hidden then
    Flags := AW_ACTIVATE

    else
    Flags  :=AW_HIDE;
    Hidden := not Hidden;
    Flags :=Flags or AW_Slide ;
    Flags :=Flags  OR  AW_HOR_Negative;
      if not AnimateWindow(Handle, 100, Flags) then begin
    if GetLastError = ERROR_SUCCESS then //Error handeling
        //showmessage('The thread does not own the window! ERROR');
    exit;
  end;
  Panel1.Visible:=true;
  mtlDel.Visible:=true;
  mtlDel2.Visible:=false;
end;

procedure TfrmTourist.mtlQuick0Click(Sender: TObject);
begin
frmTourist.Visible:=false;
/////////////////////////////////////////////
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

procedure TfrmTourist.mtlClip0Click(Sender: TObject);
begin
frmTourist.Visible:=false;
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

procedure TfrmTourist.mltStats0Click(Sender: TObject);
begin
frmTourist.Visible:=false;
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

procedure TfrmTourist.mtlFilter0Click(Sender: TObject);
begin
frmTourist.Visible:=false;
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

procedure TfrmTourist.mtlMediaClick(Sender: TObject);
begin
frmHexagon.visible:=true;
end;

procedure TfrmTourist.Edit23MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
edit23.Font.Color:=$00BFE996;
end;

procedure TfrmTourist.Edit23Click(Sender: TObject);
begin
edit23.Text:='www.';
end;

procedure TfrmTourist.AdvMetroFormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
edit23.Font.Color:=clwhite;
end;

procedure TfrmTourist.Panel1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
edit23.Font.Color:=clwhite;
end;

procedure TfrmTourist.Panel2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
edit23.Font.Color:=clwhite;
end;

procedure TfrmTourist.Panel462MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
edit23.Font.Color:=clwhite;
end;

procedure TfrmTourist.mtlSearchClick(Sender: TObject);
begin
frmHexagon.WebBrowser1.Navigate(''+edit23.Text+'');
frmHexagon.Edit2.Text:= edit23.Text;
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
frmHexagon.Visible:=true;
end;

end.
