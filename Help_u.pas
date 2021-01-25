unit Help_u;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvMetroForm, AdvMetroButton, AdvMetroTile, StdCtrls, ExtCtrls;

type
  TfrmHelp = class(TAdvMetroForm)
    Label1: TLabel;
    mtlOK2: TAdvMetroTile;
    mtlRefresh: TAdvMetroTile;
    mtlBck: TAdvMetroButton;
    Label2: TLabel;
    mtlDel: TAdvMetroTile;
    mtlNext: TAdvMetroTile;
    mtlCancel: TAdvMetroTile;
    mtlDelall: TAdvMetroTile;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure mtlBckClick(Sender: TObject);
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  end;

var
  frmHelp: TfrmHelp;

implementation

{$R *.dfm}


procedure TfrmHelp.mtlBckClick(Sender: TObject);
begin
frmHelp.Hide;
end;

end.
