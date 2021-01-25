unit clsCalculations;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

Type
TCalculations = class

Private
fK:string;
fA:string ;
fH:string;
fNf:integer;
fM:integer;
fT:integer;
fTotal:integer;
fAve:real;
fi:integer;
fE:string;
fDate:string;
fName:string;
fPark:string;
fWeather:string;
fDistance:real;
fX:integer;
fY:integer;
fCount:integer;
fCount2:integer;
fDay:string;
fMonth:string;
iMonth:integer;
fYear:string;
fNamev:string;
fVac:string;
fLabname:string;
fSeasonb:string;
////////////////
fName5:string;
fsName:string;
fKM:string;
fMter:string;
fKG:integer;
fYrs:integer;
fIQ:integer;
fCount5:integer;
Public
Constructor create;
Procedure SetV(sN, sLn, sSb ,bV :string; i:integer);
Procedure SetG(sD,sN,sP,sW:string;iX,iY,i:integer);
Procedure SetA(sK,sO,sA:string;iM,iNf,iT,i:integer);
Procedure SetF(sN,sC,sKM,sM:string;iKG,iYrs,iIQ,i:integer);
Procedure SetDate(sDate:string);
Procedure Total;
Procedure Average(iCount: integer);
Procedure BelAve;
Procedure CalDistance;
Function StrAve:string;
Function StringTotal:string;
Function Tostring:string;
Function TostringB:string;
Function BelAveR:string;
Function FormatDate:string;
Function TostringGeo:string;
Function TostringVac:string;
Function ToFilterb:string;
Function ToFilterF:string;
Function ToFilterG:string;
Function ToFilterA:string;
Function ToFilterV:string;
Function ToStringFacts:string;
Function ToStringDate:string;
end;
implementation

{ TCalculations }

procedure TCalculations.Average(iCount: integer);
begin
fAve:=fTotal/iCount;
end;

procedure TCalculations.BelAve;
begin
if fT <= fAve then
begin
fE:=FE+#13+#7+' '+fA;
end;
end;

function TCalculations.BelAveR: string;
begin
Result:=fE;
end;

procedure TCalculations.CalDistance;
begin
fdistance:=Sqrt(Sqr(fX-10) + Sqr(fY-15));
end;

constructor TCalculations.create;
begin
inherited create;
end;

function TCalculations.FormatDate: string;
var
iPos:integer;
begin
iPos:=Pos('/',fdate);
fday:=Copy(fDate,1,iPos-1);
delete(fdate,1,iPos);
iMonth:=Strtoint(Copy(fdate,1,iPos-1));
case iMonth of
1:fMonth:='Jan';
2:fMonth:='Feb';
3:fMonth:='Mar';
4:fMonth:='Apr';
5:fMonth:='May';
6:fMonth:='Jun';
7:fMonth:='Jul';
8:fMonth:='Aug';
9:fMonth:='Sep';
10:fMonth:='Oct';
11:fMonth:='Nov';
12:fMonth:='Dec';
end;
iPos:=Pos('/',fdate);
Delete(fdate,1,iPos);
fYear:=fdate;
end;

procedure TCalculations.SetA(sK, sO, sA: string; iM, iNf, iT, i: integer);
begin
fA:=sA;
fK:=sk;
fh:=sO;
fNf:=iNf;
fM:=iM;
fT:=iT;
fi:=i;
end;

procedure TCalculations.SetDate(sDate: string);
begin
fdate:=sdate;
end;

procedure TCalculations.SetF(sN,sC,sKM, sM: string; iKG, iYrs, iIQ,
  i: integer);
begin
fName5:=sN;
fKM:=sKM;
fMter:=sM;
fKG:=iKG;
fYrs:=iYrs;
fSName:=sC;
fIQ:=iIQ;
fCount5:=i;
end;

procedure TCalculations.SetG(sD, sN, sP, sW: string; iX, iY,i: integer);
begin
fName:=sN;
fDate:=sD;
fPark:=sP;
fWeather:=sW;
fX:=iX;
fY:=iY;
fCount:=i;
end;
procedure TCalculations.SetV(sN, sLn, sSb ,bV :string;i: integer);
begin
fSeasonb:=sSb;
fNamev:=sN;
fLabname:=sLn;
fVac:=bV;
fCount2:=i;
end;

function TCalculations.StrAve: string;
begin
Result:=FloattostrF(fave,ffFixed,8,2);
end;

function TCalculations.StringTotal: string;
begin
Result:=Inttostr(fTotal);
end;

function TCalculations.ToFilterA: string;
var
Forma:string;
begin
Forma:=Forma+Inttostr(fi)+'. '+'ANIMAL :'+fA+#13;
Forma:=Forma+#13;
Forma:=Forma+#5+' ORDER : '+fh+' '+#9+#5+' KINGDOM : '+fK+#13;
Forma:=Forma+#5+' TOTAL. MALE : '+Inttostr(fM)+' '+#9+#5+' TOTAL. FEMALE : '+Inttostr(fNf)+#13;
Forma:=Forma+#5+' TOTAL : '+Inttostr(fT)+#13;
Forma:=Forma+'--------------------------------------------------------------------------'+#13;
Result:=forma;
end;

function TCalculations.ToFilterb: string;
var
Forma:string;
begin
Forma:=Forma+Inttostr(fi)+'. '+'ANIMAL : '+fA+#13;
Forma:=Forma+#13;
Forma:=Forma+#5+' NAME USED TO DESCRIBE BABY : '+fh+#9+#5+' TOTAL. BOYS : '+Inttostr(fM)+#9+#5+'TOTAL. GIRLS : '+Inttostr(fNf)+#13;
Forma:=Forma+#5+' TOTAL : '+Inttostr(fT)+#13;
Forma:=Forma+'--------------------------------------------------------------------------'+#13;
Result:=forma;
end;

function TCalculations.ToFilterF: string;
var
Forma2:string;
begin
Forma2:=Forma2+Inttostr(fCount5)+'. '+'ANIMAL :'+fName5+#13;
Forma2:=Forma2+#13;
Forma2:=Forma2+#5+' TOP SPEED : '+fKM+' Km'+#9+#5+' MAX HEIGHT : '+fMter+' m'#13;
Forma2:=Forma2+#5+' MAX WEIGHT : '+Inttostr(fkg)+' Kg'+#9+#5+' LIFESPAN : '+Inttostr(fYrs)+ ' Years'+#13;
Forma2:=Forma2+#5+' INTELLIGENCE  : '+Inttostr(fIQ)+#13;
Forma2:=Forma2+#5+' SCEINTIFIC NAME : '+ fSname+#13;
Forma2:=Forma2+'--------------------------------------------------------------------------'+#13;
Result:=Forma2;
end;
function TCalculations.ToFilterG: string;
var
Forma2:string;
begin
Forma2:=Forma2+Inttostr(fCount)+'. '+'ANIMAL :'+fName+#13;
Forma2:=Forma2+#13;
Forma2:=Forma2+#5+' Date spotted : '+fMonth+' '+fDay+', '+fYear+#9+#5+' Park : '+fPark+#13;
Forma2:=Forma2+#5+' X-coordinates : '+Inttostr(fX)+'                   '+#9+#5+' Y - coordinates : '+Inttostr(fY)+#13;
Forma2:=Forma2+#5+' Distance  : '+FloattostrF(fdistance,ffFixed,8,0)+' Km'+#13;
Forma2:=Forma2+#13;
Forma2:=Forma2+#5+' Expected weather that you could experience : '+ fWeather+#13;
Forma2:=Forma2+'--------------------------------------------------------------------------'+#13;
Result:=Forma2;
end;

function TCalculations.ToFilterV: string;
var
Forma:string;
begin
Forma:=Forma+Inttostr(fCount2)+'. '+'ANIMAL :'+fNamev+#13;
Forma:=Forma+#13;
Forma:=Forma+#5+' Lab name : '+flabname+#9+#5+' Season of birth : '+fSeasonb+#9+#5+' Vaccinated : '+fVac+#13;
Forma:=Forma+'--------------------------------------------------------------------------'+#13;
Result:=forma;
end;

function TCalculations.Tostring: string;
var
Forma:string;
begin
Forma:=Forma+'________________________________________________________'+#13;
Forma:=Forma+' '+Inttostr(fi)+'. '+'ANIMAL :'+fA+#13;
Forma:=Forma+'----------------------------------------------------------------------------------------------------------------'+#13;
Forma:=Forma+'ORDER : '+fh+#9+'KINGDOM : '+fK+#9+'TOTAL. MALE : '+Inttostr(fM)+#9+'TOTAL. FEMALE : '+Inttostr(fNf)+#13;
Forma:=Forma+'----------------------------------------------------------------------------------------------------------------'+#13;
Forma:=Forma+'TOTAL : '+Inttostr(fT);
Result:=forma;
end;

function TCalculations.TostringB: string;
var
Forma:string;
begin
Forma:=Forma+'________________________________________________________'+#13;
Forma:=Forma+' '+Inttostr(fi)+'. '+'ANIMAL :'+fA+#13;
Forma:=Forma+'----------------------------------------------------------------------------------------------------------------'+#13;
Forma:=Forma+'NAME USED TO DESCRIBE BABY. : '+fh+#9+'TOTAL. BOYS : '+Inttostr(fM)+#9+'TOTAL. GIRLS : '+Inttostr(fNf)+#13;
Forma:=Forma+'----------------------------------------------------------------------------------------------------------------'+#13;
Forma:=Forma+'TOTAL : '+Inttostr(fT);
Result:=forma;
end;

function TCalculations.ToStringDate: string;
begin
Result:= fMonth +' , '+ fDay + ' ' +fYear;
end;

function TCalculations.ToStringFacts: string;
var
Forma2:string;
begin
Forma2:=Forma2+'________________________________________________________'+#13;
Forma2:=Forma2+' '+Inttostr(fCount5)+'. '+'ANIMAL :'+fName5+#13;
Forma2:=Forma2+'----------------------------------------------------------------------------------------------------------------'+#13;
Forma2:=Forma2+' TOP SPEED : '+fKM+' Km'+#9+' MAX HEIGHT : '+fMter+' m'#13;
Forma2:=Forma2+'----------------------------------------------------------------------------------------------------------------'+#13;
Forma2:=Forma2+' MAX WEIGHT : '+Inttostr(fkg)+' Kg'+#9+' LIFESPAN : '+Inttostr(fYrs)+ ' Years'+#13;
Forma2:=Forma2+'----------------------------------------------------------------------------------------------------------------'+#13;
Forma2:=Forma2+' INTELLIGENCE  : '+Inttostr(fIQ)+#13;
Forma2:=Forma2+'----------------------------------------------------------------------------------------------------------------'+#13;
Forma2:=Forma2+' SCEINTIFIC NAME : '+ fSname;
TostringfACTS:=Forma2;
end;

function TCalculations.TostringGeo: string;
var
Forma2:string;
begin
Forma2:=Forma2+'________________________________________________________'+#13;
Forma2:=Forma2+' '+Inttostr(fCount)+'. '+'ANIMAL :'+fName+#13;
Forma2:=Forma2+'----------------------------------------------------------------------------------------------------------------'+#13;
Forma2:=Forma2+' Date spotted : '+fMonth+' '+fDay+', '+fYear+#9+' Park : '+fPark+#13;
Forma2:=Forma2+'----------------------------------------------------------------------------------------------------------------'+#13;
Forma2:=Forma2+' X-coordinates : '+Inttostr(fX)+#9+' Y - coordinates : '+Inttostr(fY)+#13;
Forma2:=Forma2+'----------------------------------------------------------------------------------------------------------------'+#13;
Forma2:=Forma2+'Distance  : '+FloattostrF(fdistance,ffFixed,8,0)+' Km'+#13;
Forma2:=Forma2+'----------------------------------------------------------------------------------------------------------------'+#13;
Forma2:=Forma2+'Expected weather that you could experience : '+ fWeather;
TostringGeo:=Forma2;
end;

function TCalculations.TostringVac: string;
var
Forma:string;
begin
Forma:=Forma+'________________________________________________________'+#13;
Forma:=Forma+' '+Inttostr(fCount2)+'. '+'ANIMAL :'+fNamev+#13;
Forma:=Forma+'----------------------------------------------------------------------------------------------------------------'+#13;
Forma:=Forma+'Lab name : '+flabname+#9+'Season of birth : '+fSeasonb+#9+'Vaccinated : '+fVac+#13;
Forma:=Forma+'----------------------------------------------------------------------------------------------------------------'+#13;
Result:=forma;
end;

procedure TCalculations.Total;
begin
fTotal:=fTotal+fT;
end;
end.
