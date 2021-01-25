unit Program_u;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvMetroForm, ExtCtrls, AdvAppStyler, ComCtrls, TabNotBk,
  StdCtrls, AdvMetroTile, Spin, DBCtrls, XPMan, Grids, DBGrids, DB, ADODB,
  AdvMetroButton, Mask, jpeg,clsCalculations, Menus, dbcgrids, ExtDlgs,
  AdvMetroHint, TeEngine, TeeTools, Series, TeeProcs, Chart, DBChart;

type
  TfrmWorkplace = class(TAdvMetroForm)
    Panel1: TPanel;
    Panel2: TPanel;
    AdvFormStyler1: TAdvFormStyler;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Label1: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    AdvMetroTile1: TAdvMetroTile;
    AdvMetroTile2: TAdvMetroTile;
    AdvMetroTile3: TAdvMetroTile;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    mtlDelA: TAdvMetroTile;
    mtlAddcA: TAdvMetroTile;
    pnlAddC: TPanel;
    pnlDelete: TPanel;
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    ComboBox1: TComboBox;
    XPManifest1: TXPManifest;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    qryOrgAni: TADOQuery;
    qryOrgAniapp: TADOQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    mtlCancel: TAdvMetroTile;
    Panel7: TPanel;
    Panel8: TPanel;
    DBGrid2: TDBGrid;
    GroupBox2: TGroupBox;
    Panel9: TPanel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    Label9: TLabel;
    edtDisplay: TEdit;
    Panel10: TPanel;
    Panel12: TPanel;
    Label10: TLabel;
    mtlYebo: TAdvMetroTile;
    mtlNee: TAdvMetroTile;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel17: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Edit1: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    ComboBox4: TComboBox;
    Label14: TLabel;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    mtlOKC: TAdvMetroTile;
    Panel21: TPanel;
    Panel22: TPanel;
    Label5: TLabel;
    Panel23: TPanel;
    Label6: TLabel;
    Panel24: TPanel;
    Label8: TLabel;
    Panel25: TPanel;
    Label7: TLabel;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    Panel11: TPanel;
    AdvMetroButton1: TAdvMetroButton;
    AdvMetroButton2: TAdvMetroButton;
    AdvMetroButton3: TAdvMetroButton;
    AdvMetroButton4: TAdvMetroButton;
    AdvMetroButton5: TAdvMetroButton;
    AdvMetroButton6: TAdvMetroButton;
    AdvMetroButton7: TAdvMetroButton;
    AdvMetroButton9: TAdvMetroButton;
    AdvMetroButton10: TAdvMetroButton;
    AdvMetroButton11: TAdvMetroButton;
    mtlM: TAdvMetroTile;
    mtlT: TAdvMetroTile;
    mtlF: TAdvMetroTile;
    mtlPlus: TAdvMetroTile;
    mtlMinus: TAdvMetroTile;
    mtlTimes: TAdvMetroTile;
    mtlDiv: TAdvMetroTile;
    mtlClear: TAdvMetroTile;
    mtlEqual: TAdvMetroTile;
    pnlSaveas: TPanel;
    edtSaveas: TEdit;
    Label15: TLabel;
    mtlSback: TAdvMetroTile;
    mtlSnext: TAdvMetroTile;
    Label16: TLabel;
    mtlBrac1: TAdvMetroTile;
    mtlDot: TAdvMetroTile;
    mtlBrac2: TAdvMetroTile;
    mtlOK: TAdvMetroTile;
    mtlNext: TAdvMetroTile;
    mtlRefresh: TAdvMetroTile;
    mtlDel: TAdvMetroTile;
    mtlDelall: TAdvMetroTile;
    mtlPrevious: TAdvMetroTile;
    qryFDelete: TADOQuery;
    Panel26: TPanel;
    Label17: TLabel;
    Panel27: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    mtlDelG: TAdvMetroTile;
    mtlAddG: TAdvMetroTile;
    pnlDelGeo: TPanel;
    Panel29: TPanel;
    DBGrid3: TDBGrid;
    GroupBox7: TGroupBox;
    Panel30: TPanel;
    Panel31: TPanel;
    Label21: TLabel;
    Panel32: TPanel;
    Label22: TLabel;
    Panel33: TPanel;
    Label23: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    qryOrgGeo: TADOQuery;
    qryOrgGeoapp: TADOQuery;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    adoOrgGeo: TADOConnection;
    DateTimePicker1: TDateTimePicker;
    Edit2: TEdit;
    pnlAddG: TPanel;
    Panel34: TPanel;
    DBGrid4: TDBGrid;
    GroupBox8: TGroupBox;
    Panel35: TPanel;
    Label20: TLabel;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    GroupBox9: TGroupBox;
    Panel36: TPanel;
    edtDisplay2: TEdit;
    Panel37: TPanel;
    AdvMetroButton8: TAdvMetroButton;
    AdvMetroButton12: TAdvMetroButton;
    AdvMetroButton13: TAdvMetroButton;
    AdvMetroButton14: TAdvMetroButton;
    AdvMetroButton15: TAdvMetroButton;
    AdvMetroButton16: TAdvMetroButton;
    AdvMetroButton17: TAdvMetroButton;
    AdvMetroButton18: TAdvMetroButton;
    AdvMetroButton19: TAdvMetroButton;
    AdvMetroButton20: TAdvMetroButton;
    mtlX: TAdvMetroTile;
    mtlY: TAdvMetroTile;
    mtlPlus2: TAdvMetroTile;
    mtlMinus2: TAdvMetroTile;
    mtlTimes2: TAdvMetroTile;
    mtlDiv2: TAdvMetroTile;
    mtlClear2: TAdvMetroTile;
    mtlEqual2: TAdvMetroTile;
    mtlBrac3: TAdvMetroTile;
    mtlDot2: TAdvMetroTile;
    mtlBrac4: TAdvMetroTile;
    pnlSaveas2: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    edtSaveas2: TEdit;
    mtlSback2: TAdvMetroTile;
    mtlSnext2: TAdvMetroTile;
    GroupBox10: TGroupBox;
    Panel39: TPanel;
    CheckBox11: TCheckBox;
    Panel40: TPanel;
    Label26: TLabel;
    ComboBox5: TComboBox;
    Panel41: TPanel;
    CheckBox12: TCheckBox;
    Panel42: TPanel;
    Label27: TLabel;
    ComboBox6: TComboBox;
    Panel43: TPanel;
    Label28: TLabel;
    Edit5: TEdit;
    Panel44: TPanel;
    Label29: TLabel;
    ComboBox7: TComboBox;
    Panel45: TPanel;
    CheckBox13: TCheckBox;
    Panel46: TPanel;
    CheckBox14: TCheckBox;
    GroupBox11: TGroupBox;
    Panel47: TPanel;
    Label30: TLabel;
    mtlYebo2: TAdvMetroTile;
    mtlNee2: TAdvMetroTile;
    GroupBox12: TGroupBox;
    Panel48: TPanel;
    mtlDone: TAdvMetroTile;
    pnlDelV: TPanel;
    Panel38: TPanel;
    DBGrid5: TDBGrid;
    GroupBox13: TGroupBox;
    Panel49: TPanel;
    Panel50: TPanel;
    Label31: TLabel;
    Edit3: TEdit;
    Panel51: TPanel;
    Label32: TLabel;
    Panel52: TPanel;
    Label33: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    adoVaccinated: TADOConnection;
    qryOrgVac: TADOQuery;
    qryOrgVacapp: TADOQuery;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    ComboBox8: TComboBox;
    Label34: TLabel;
    ComboBox9: TComboBox;
    mtlDelV: TAdvMetroTile;
    Panel28: TPanel;
    Label35: TLabel;
    Panel53: TPanel;
    mtlOrganise: TAdvMetroTile;
    PageControl2: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    Panel54: TPanel;
    Label36: TLabel;
    Label37: TLabel;
    mtlBAdd: TAdvMetroTile;
    mtlBdel: TAdvMetroTile;
    mtlBAddC: TAdvMetroTile;
    Panel56: TPanel;
    Panel57: TPanel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Panel58: TPanel;
    Label41: TLabel;
    Panel59: TPanel;
    Label42: TLabel;
    Label43: TLabel;
    Panel60: TPanel;
    Panel61: TPanel;
    pnlBAdd: TPanel;
    Panel62: TPanel;
    Panel63: TPanel;
    Panel64: TPanel;
    Panel65: TPanel;
    Panel66: TPanel;
    Panel67: TPanel;
    Panel68: TPanel;
    Panel69: TPanel;
    Edit4: TEdit;
    Edit6: TEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    adoBaby: TADOConnection;
    qryBaby: TADOQuery;
    qryBabyapp: TADOQuery;
    DataSource7: TDataSource;
    DataSource8: TDataSource;
    mtlOK2: TAdvMetroTile;
    pnlDelB: TPanel;
    Panel71: TPanel;
    DBGrid6: TDBGrid;
    GroupBox14: TGroupBox;
    Panel72: TPanel;
    Panel73: TPanel;
    Label44: TLabel;
    Panel74: TPanel;
    Label45: TLabel;
    Panel75: TPanel;
    Label46: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    SpinEdit5: TSpinEdit;
    SpinEdit6: TSpinEdit;
    pnlBaddc: TPanel;
    Panel76: TPanel;
    DBGrid7: TDBGrid;
    GroupBox15: TGroupBox;
    Panel77: TPanel;
    Label47: TLabel;
    CheckBox10: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    GroupBox16: TGroupBox;
    Panel78: TPanel;
    edtDisplay3: TEdit;
    Panel79: TPanel;
    AdvMetroButton21: TAdvMetroButton;
    AdvMetroButton22: TAdvMetroButton;
    AdvMetroButton23: TAdvMetroButton;
    AdvMetroButton24: TAdvMetroButton;
    AdvMetroButton25: TAdvMetroButton;
    AdvMetroButton26: TAdvMetroButton;
    AdvMetroButton27: TAdvMetroButton;
    AdvMetroButton28: TAdvMetroButton;
    AdvMetroButton29: TAdvMetroButton;
    AdvMetroButton30: TAdvMetroButton;
    mtlM2: TAdvMetroTile;
    mtlT2: TAdvMetroTile;
    mtlf2: TAdvMetroTile;
    mtlPlus3: TAdvMetroTile;
    mtlMinus3: TAdvMetroTile;
    mtlTimes3: TAdvMetroTile;
    mtlDiv3: TAdvMetroTile;
    mtlClear3: TAdvMetroTile;
    mtlEqual3: TAdvMetroTile;
    mtlBrac5: TAdvMetroTile;
    mtlDot3: TAdvMetroTile;
    mtlBrac6: TAdvMetroTile;
    pnlSaveas3: TPanel;
    Label48: TLabel;
    Label49: TLabel;
    edtSaveas3: TEdit;
    mtlSback3: TAdvMetroTile;
    mtlSNext3: TAdvMetroTile;
    GroupBox17: TGroupBox;
    Panel81: TPanel;
    CheckBox17: TCheckBox;
    Panel82: TPanel;
    Label50: TLabel;
    ComboBox10: TComboBox;
    Panel83: TPanel;
    CheckBox18: TCheckBox;
    Panel84: TPanel;
    Label51: TLabel;
    ComboBox11: TComboBox;
    Panel85: TPanel;
    Label52: TLabel;
    Edit9: TEdit;
    Panel86: TPanel;
    Label53: TLabel;
    ComboBox12: TComboBox;
    Panel87: TPanel;
    CheckBox19: TCheckBox;
    Panel88: TPanel;
    CheckBox20: TCheckBox;
    GroupBox18: TGroupBox;
    Panel89: TPanel;
    Label54: TLabel;
    mtlYebo3: TAdvMetroTile;
    mtlNee3: TAdvMetroTile;
    GroupBox19: TGroupBox;
    Panel90: TPanel;
    mtlDone2: TAdvMetroTile;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    mtlBabyhub: TAdvMetroTile;
    PageControl3: TPageControl;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    TabSheet15: TTabSheet;
    Panel70: TPanel;
    Label58: TLabel;
    Panel80: TPanel;
    mtlEdit0: TAdvMetroTile;
    PageControl4: TPageControl;
    TabSheet16: TTabSheet;
    TabSheet17: TTabSheet;
    TabSheet19: TTabSheet;
    TabSheet20: TTabSheet;
    Panel91: TPanel;
    Label59: TLabel;
    Panel92: TPanel;
    Label60: TLabel;
    mtlAddnew: TAdvMetroTile;
    Label61: TLabel;
    Panel95: TPanel;
    Label62: TLabel;
    Panel96: TPanel;
    mtlAddnewG: TAdvMetroTile;
    mtlAddnewV: TAdvMetroTile;
    Panel97: TPanel;
    Label63: TLabel;
    Panel98: TPanel;
    Label64: TLabel;
    pnlAddnewA: TPanel;
    Panel100: TPanel;
    Panel101: TPanel;
    Edit8: TEdit;
    Panel102: TPanel;
    Panel103: TPanel;
    Panel104: TPanel;
    Panel105: TPanel;
    Panel106: TPanel;
    SpinEdit7: TSpinEdit;
    Panel107: TPanel;
    SpinEdit8: TSpinEdit;
    Label65: TLabel;
    Panel108: TPanel;
    Label66: TLabel;
    Panel109: TPanel;
    pnlFacts: TPanel;
    Panel111: TPanel;
    Panel112: TPanel;
    Edit11: TEdit;
    Panel113: TPanel;
    Panel114: TPanel;
    Panel115: TPanel;
    Panel116: TPanel;
    Edit12: TEdit;
    Panel117: TPanel;
    Panel118: TPanel;
    SpinEdit10: TSpinEdit;
    Panel119: TPanel;
    Panel120: TPanel;
    Panel121: TPanel;
    SpinEdit11: TSpinEdit;
    Panel122: TPanel;
    SpinEdit12: TSpinEdit;
    Edit13: TEdit;
    Label67: TLabel;
    pnlAddnewG: TPanel;
    Label68: TLabel;
    Panel124: TPanel;
    Panel125: TPanel;
    Edit14: TEdit;
    Panel126: TPanel;
    Panel127: TPanel;
    Panel128: TPanel;
    Panel129: TPanel;
    Edit15: TEdit;
    Panel130: TPanel;
    Panel131: TPanel;
    Panel132: TPanel;
    Panel135: TPanel;
    Label69: TLabel;
    Panel136: TPanel;
    Label70: TLabel;
    Panel137: TPanel;
    SpinEdit13: TSpinEdit;
    SpinEdit15: TSpinEdit;
    Panel134: TPanel;
    Panel133: TPanel;
    DateTimePicker2: TDateTimePicker;
    Edit16: TEdit;
    pnlAddNewV: TPanel;
    Label71: TLabel;
    Panel94: TPanel;
    Panel138: TPanel;
    Edit7: TEdit;
    Panel139: TPanel;
    Panel140: TPanel;
    Panel141: TPanel;
    Panel142: TPanel;
    Edit17: TEdit;
    Panel143: TPanel;
    Panel146: TPanel;
    RadioGroup1: TRadioGroup;
    ComboBox13: TComboBox;
    cmbOrder: TComboBox;
    adoFacts: TADOConnection;
    qryFacts: TADOQuery;
    qryFactsapp: TADOQuery;
    DataSource9: TDataSource;
    DataSource10: TDataSource;
    qryWork2: TADOQuery;
    Label72: TLabel;
    mtlCancel2: TAdvMetroTile;
    pnlEditA: TPanel;
    Panel160: TPanel;
    GroupBox23: TGroupBox;
    Panel161: TPanel;
    Panel162: TPanel;
    Panel163: TPanel;
    Label83: TLabel;
    Panel164: TPanel;
    Label84: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    Panel165: TPanel;
    Label85: TLabel;
    Panel166: TPanel;
    Label86: TLabel;
    Panel167: TPanel;
    Panel169: TPanel;
    Panel170: TPanel;
    Panel171: TPanel;
    Panel172: TPanel;
    Panel173: TPanel;
    Panel174: TPanel;
    DBEdit1: TDBEdit;
    Panel176: TPanel;
    Panel177: TPanel;
    DBEdit3: TDBEdit;
    Panel178: TPanel;
    DBEdit4: TDBEdit;
    mtlUpdate: TAdvMetroTile;
    DBComboBox1: TDBComboBox;
    Panel175: TPanel;
    DBText1: TDBText;
    TabSheet18: TTabSheet;
    Label73: TLabel;
    Label74: TLabel;
    mtlEditA: TAdvMetroTile;
    mtlEditF: TAdvMetroTile;
    mtlEditG: TAdvMetroTile;
    mtlEditV: TAdvMetroTile;
    pnlEditG: TPanel;
    Panel99: TPanel;
    DBGrid8: TDBGrid;
    GroupBox20: TGroupBox;
    Panel110: TPanel;
    Panel123: TPanel;
    Label75: TLabel;
    Panel144: TPanel;
    Label76: TLabel;
    Panel145: TPanel;
    Label77: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Panel147: TPanel;
    Panel148: TPanel;
    DBEdit2: TDBEdit;
    Panel149: TPanel;
    Panel150: TPanel;
    Panel151: TPanel;
    Panel153: TPanel;
    Panel154: TPanel;
    DBEdit5: TDBEdit;
    Panel155: TPanel;
    DBEdit6: TDBEdit;
    Panel156: TPanel;
    DBText2: TDBText;
    Panel157: TPanel;
    Label78: TLabel;
    Panel158: TPanel;
    Panel152: TPanel;
    Panel179: TPanel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label80: TLabel;
    DateTimePicker3: TDateTimePicker;
    Edit10: TEdit;
    Panel180: TPanel;
    DBText3: TDBText;
    pnlEditV: TPanel;
    Label81: TLabel;
    Panel182: TPanel;
    DBGrid9: TDBGrid;
    GroupBox21: TGroupBox;
    Panel183: TPanel;
    Panel184: TPanel;
    Label87: TLabel;
    Edit18: TEdit;
    Panel185: TPanel;
    Label88: TLabel;
    Panel186: TPanel;
    Label89: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    Panel187: TPanel;
    Panel188: TPanel;
    DBEdit9: TDBEdit;
    Panel189: TPanel;
    Panel190: TPanel;
    Panel192: TPanel;
    Panel193: TPanel;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    ComboBox14: TComboBox;
    ComboBox15: TComboBox;
    Label90: TLabel;
    SpinEdit9: TSpinEdit;
    SpinEdit14: TSpinEdit;
    Label82: TLabel;
    Label91: TLabel;
    Label79: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Panel191: TPanel;
    Label94: TLabel;
    Panel194: TPanel;
    Panel195: TPanel;
    DBText4: TDBText;
    pnlEditF: TPanel;
    Panel197: TPanel;
    GroupBox22: TGroupBox;
    Panel198: TPanel;
    Panel199: TPanel;
    Label96: TLabel;
    Edit19: TEdit;
    Panel200: TPanel;
    Label97: TLabel;
    Panel201: TPanel;
    Label98: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    Panel202: TPanel;
    Panel203: TPanel;
    DBEdit10: TDBEdit;
    Panel204: TPanel;
    Panel205: TPanel;
    Panel206: TPanel;
    Panel207: TPanel;
    DBEdit11: TDBEdit;
    Panel208: TPanel;
    DBEdit12: TDBEdit;
    Panel209: TPanel;
    DBEdit13: TDBEdit;
    Panel210: TPanel;
    Panel211: TPanel;
    DBEdit14: TDBEdit;
    Panel212: TPanel;
    Panel213: TPanel;
    DBEdit15: TDBEdit;
    DBGrid10: TDBGrid;
    Label95: TLabel;
    Panel214: TPanel;
    Panel215: TPanel;
    Panel217: TPanel;
    Panel218: TPanel;
    Panel219: TPanel;
    Panel220: TPanel;
    Panel232: TPanel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Panel233: TPanel;
    Panel234: TPanel;
    Panel235: TPanel;
    Panel236: TPanel;
    Panel237: TPanel;
    Panel238: TPanel;
    Panel239: TPanel;
    Panel240: TPanel;
    Panel241: TPanel;
    Panel242: TPanel;
    Panel243: TPanel;
    Panel244: TPanel;
    Panel245: TPanel;
    Edit20: TEdit;
    Label115: TLabel;
    SpinEdit16: TSpinEdit;
    TabSheet21: TTabSheet;
    pnlBEdit: TPanel;
    Panel247: TPanel;
    DBGrid12: TDBGrid;
    GroupBox24: TGroupBox;
    Panel248: TPanel;
    Label116: TLabel;
    SpinEdit17: TSpinEdit;
    Panel249: TPanel;
    Label117: TLabel;
    SpinEdit18: TSpinEdit;
    Panel250: TPanel;
    Label118: TLabel;
    Panel251: TPanel;
    Label119: TLabel;
    DBLookupComboBox9: TDBLookupComboBox;
    Panel252: TPanel;
    Panel253: TPanel;
    DBEdit16: TDBEdit;
    Panel254: TPanel;
    Panel256: TPanel;
    Panel257: TPanel;
    mtlUpdate2: TAdvMetroTile;
    Panel259: TPanel;
    DBEdit17: TDBEdit;
    Panel260: TPanel;
    DBEdit18: TDBEdit;
    Panel261: TPanel;
    Panel263: TPanel;
    Panel264: TPanel;
    Panel265: TPanel;
    Label120: TLabel;
    Panel266: TPanel;
    Panel267: TPanel;
    DBText5: TDBText;
    Edit21: TEdit;
    Label125: TLabel;
    ComboBox16: TComboBox;
    Panel93: TPanel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Panel159: TPanel;
    Panel181: TPanel;
    Panel196: TPanel;
    Panel224: TPanel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Panel225: TPanel;
    Panel226: TPanel;
    Panel227: TPanel;
    Panel216: TPanel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Panel221: TPanel;
    Panel222: TPanel;
    Panel223: TPanel;
    Panel228: TPanel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Panel229: TPanel;
    Panel230: TPanel;
    Panel231: TPanel;
    mtlEdit1: TAdvMetroTile;
    DataSource11: TDataSource;
    DBGrid13: TDBGrid;
    DBGrid14: TDBGrid;
    PageControl5: TPageControl;
    TabSheet22: TTabSheet;
    TabSheet23: TTabSheet;
    TabSheet24: TTabSheet;
    TabSheet25: TTabSheet;
    Panel246: TPanel;
    Label126: TLabel;
    Panel255: TPanel;
    Panel258: TPanel;
    Panel262: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    Panel269: TPanel;
    Panel270: TPanel;
    Panel268: TPanel;
    Panel271: TPanel;
    Panel272: TPanel;
    Panel273: TPanel;
    Panel274: TPanel;
    Panel275: TPanel;
    TabSheet27: TTabSheet;
    Panel276: TPanel;
    Panel277: TPanel;
    Panel278: TPanel;
    Panel279: TPanel;
    Panel280: TPanel;
    Panel281: TPanel;
    Panel282: TPanel;
    Panel283: TPanel;
    Panel284: TPanel;
    pnlClipAni: TPanel;
    Label128: TLabel;
    Panel286: TPanel;
    Shape3: TShape;
    Shape4: TShape;
    Panel287: TPanel;
    Label129: TLabel;
    Panel288: TPanel;
    Panel289: TPanel;
    Panel290: TPanel;
    Panel291: TPanel;
    Panel292: TPanel;
    Panel293: TPanel;
    Panel294: TPanel;
    Panel295: TPanel;
    Panel296: TPanel;
    pnlClipG: TPanel;
    Label130: TLabel;
    Panel298: TPanel;
    Panel299: TPanel;
    Panel300: TPanel;
    Panel301: TPanel;
    Panel302: TPanel;
    Panel303: TPanel;
    Panel304: TPanel;
    Panel305: TPanel;
    Panel306: TPanel;
    pnlClipV: TPanel;
    Label131: TLabel;
    Panel308: TPanel;
    Panel309: TPanel;
    Panel310: TPanel;
    Panel311: TPanel;
    Panel312: TPanel;
    Panel313: TPanel;
    Panel314: TPanel;
    Panel315: TPanel;
    Panel316: TPanel;
    pnlClipB: TPanel;
    Label132: TLabel;
    Panel318: TPanel;
    Panel319: TPanel;
    Panel320: TPanel;
    Panel321: TPanel;
    Panel322: TPanel;
    Panel323: TPanel;
    Panel324: TPanel;
    Panel325: TPanel;
    Panel326: TPanel;
    pnlClipF: TPanel;
    Label133: TLabel;
    Panel328: TPanel;
    Shape5: TShape;
    Shape6: TShape;
    Panel329: TPanel;
    Shape7: TShape;
    Shape8: TShape;
    Panel330: TPanel;
    Shape9: TShape;
    Shape10: TShape;
    Panel331: TPanel;
    Shape11: TShape;
    Shape12: TShape;
    Panel332: TPanel;
    Label134: TLabel;
    Panel333: TPanel;
    Label135: TLabel;
    Panel334: TPanel;
    Label136: TLabel;
    Panel335: TPanel;
    Label137: TLabel;
    mtlClipA: TAdvMetroTile;
    mtlClipG: TAdvMetroTile;
    mtlClipV: TAdvMetroTile;
    mtlClipF: TAdvMetroTile;
    Label127: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    qryClipBoard: TADOQuery;
    DBGrid11: TDBGrid;
    DataSource12: TDataSource;
    redAni: TRichEdit;
    redAni2: TRichEdit;
    redAni3: TRichEdit;
    mtlAdd0: TAdvMetroTile;
    mtlClip0: TAdvMetroTile;
    redAni5: TRichEdit;
    mtlCancel3: TAdvMetroTile;
    mtlClipB: TAdvMetroTile;
    mtlQuick0: TAdvMetroTile;
    PageControl6: TPageControl;
    TabSheet28: TTabSheet;
    Panel297: TPanel;
    Label143: TLabel;
    Panel317: TPanel;
    Panel327: TPanel;
    Panel336: TPanel;
    Panel337: TPanel;
    Panel338: TPanel;
    Label152: TLabel;
    Panel339: TPanel;
    Panel340: TPanel;
    lblAni: TLabel;
    lblTotal1: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    Label148: TLabel;
    lblHerbi: TLabel;
    lblCarni: TLabel;
    lblOmni: TLabel;
    Panel341: TPanel;
    DBGrid15: TDBGrid;
    Label144: TLabel;
    TabSheet29: TTabSheet;
    TabSheet30: TTabSheet;
    TabSheet31: TTabSheet;
    TabSheet32: TTabSheet;
    Panel342: TPanel;
    Label149: TLabel;
    DBGrid16: TDBGrid;
    Panel343: TPanel;
    Label150: TLabel;
    DBGrid17: TDBGrid;
    Panel344: TPanel;
    Label151: TLabel;
    DBGrid18: TDBGrid;
    Panel345: TPanel;
    Label153: TLabel;
    DBGrid19: TDBGrid;
    Panel346: TPanel;
    Panel347: TPanel;
    Panel348: TPanel;
    Panel349: TPanel;
    Panel350: TPanel;
    Label154: TLabel;
    Panel351: TPanel;
    Label155: TLabel;
    Panel352: TPanel;
    Label156: TLabel;
    Panel353: TPanel;
    Label157: TLabel;
    Panel355: TPanel;
    Panel356: TPanel;
    Panel357: TPanel;
    Panel358: TPanel;
    Panel360: TPanel;
    Label159: TLabel;
    Panel361: TPanel;
    Label162: TLabel;
    Panel362: TPanel;
    Label163: TLabel;
    Panel363: TPanel;
    DBText6: TDBText;
    DBText7: TDBText;
    Panel364: TPanel;
    Label160: TLabel;
    DBText8: TDBText;
    DBText9: TDBText;
    Panel365: TPanel;
    lblVacF: TLabel;
    Panel367: TPanel;
    Label165: TLabel;
    lblVacT: TLabel;
    Label164: TLabel;
    Panel366: TPanel;
    lblBabyT: TLabel;
    Panel368: TPanel;
    Panel369: TPanel;
    Label145: TLabel;
    lblBabyG: TLabel;
    Panel370: TPanel;
    lblBabyB: TLabel;
    Label167: TLabel;
    Panel371: TPanel;
    Label161: TLabel;
    lblTall: TLabel;
    Panel372: TPanel;
    Label168: TLabel;
    lblKG: TLabel;
    Panel373: TPanel;
    Label170: TLabel;
    lblYears: TLabel;
    Panel374: TPanel;
    lblIQ: TLabel;
    Panel375: TPanel;
    lblFast: TLabel;
    lblKM: TLabel;
    Label173: TLabel;
    lblIF: TLabel;
    lblLF: TLabel;
    lblHF: TLabel;
    lblTF: TLabel;
    lblNF: TLabel;
    Label166: TLabel;
    Label169: TLabel;
    Label171: TLabel;
    Label172: TLabel;
    mtlNext2: TAdvMetroTile;
    mtlView0: TAdvMetroTile;
    mltStats0: TAdvMetroTile;
    mtlFilter0: TAdvMetroTile;
    PageControl7: TPageControl;
    TabSheet33: TTabSheet;
    Panel354: TPanel;
    Label174: TLabel;
    Label175: TLabel;
    mtlAniV: TAdvMetroTile;
    mtlGeoV: TAdvMetroTile;
    mtlVacV: TAdvMetroTile;
    mtlFactsV: TAdvMetroTile;
    TabSheet34: TTabSheet;
    Panel376: TPanel;
    Label179: TLabel;
    mtlBabyV: TAdvMetroTile;
    Panel382: TPanel;
    Label158: TLabel;
    Panel383: TPanel;
    TabSheet35: TTabSheet;
    TabSheet36: TTabSheet;
    TabSheet37: TTabSheet;
    TabSheet38: TTabSheet;
    Panel402: TPanel;
    Panel404: TPanel;
    Panel406: TPanel;
    Panel407: TPanel;
    DBGrid24: TDBGrid;
    Panel408: TPanel;
    Label196: TLabel;
    Panel409: TPanel;
    Label197: TLabel;
    Panel410: TPanel;
    Label198: TLabel;
    Panel411: TPanel;
    Label199: TLabel;
    Panel412: TPanel;
    Panel413: TPanel;
    Panel414: TPanel;
    Panel415: TPanel;
    Label200: TLabel;
    Label201: TLabel;
    Label202: TLabel;
    Label203: TLabel;
    Panel384: TPanel;
    Panel377: TPanel;
    DBGrid20: TDBGrid;
    Panel378: TPanel;
    DBGrid21: TDBGrid;
    Panel379: TPanel;
    DBGrid22: TDBGrid;
    Panel380: TPanel;
    DBGrid23: TDBGrid;
    PageControl8: TPageControl;
    TabSheet40: TTabSheet;
    TabSheet41: TTabSheet;
    TabSheet43: TTabSheet;
    mtlStatsA: TAdvMetroTile;
    mtlStatsB: TAdvMetroTile;
    mtlStatsF: TAdvMetroTile;
    Label176: TLabel;
    Panel381: TPanel;
    Label177: TLabel;
    TabSheet39: TTabSheet;
    Panel386: TPanel;
    Label178: TLabel;
    Panel388: TPanel;
    Label180: TLabel;
    Panel391: TPanel;
    Label182: TLabel;
    Panel387: TPanel;
    Panel389: TPanel;
    Panel393: TPanel;
    Panel394: TPanel;
    Panel395: TPanel;
    Panel396: TPanel;
    Panel400: TPanel;
    Panel397: TPanel;
    Panel401: TPanel;
    PageControl9: TPageControl;
    TabSheet44: TTabSheet;
    TabSheet45: TTabSheet;
    Panel403: TPanel;
    Label183: TLabel;
    pnlFilter: TPanel;
    pnlHeading: TPanel;
    pnlAniF: TPanel;
    mtlF1: TAdvMetroButton;
    Panel419: TPanel;
    pnlHD: TPanel;
    pnlNameF: TPanel;
    Label184: TLabel;
    pnlOrderF: TPanel;
    pnlTopF: TPanel;
    pnlVacF: TPanel;
    mtlFO2: TAdvMetroButton;
    mtlFT3: TAdvMetroButton;
    mtlFV4: TAdvMetroButton;
    pnlFilterH: TPanel;
    dbedtName: TDBText;
    DBLookupComboBox10: TDBLookupComboBox;
    mtlFilter: TAdvMetroTile;
    Panel417: TPanel;
    Panel418: TPanel;
    Label185: TLabel;
    Panel421: TPanel;
    Panel422: TPanel;
    redAf: TRichEdit;
    Panel423: TPanel;
    Panel424: TPanel;
    Panel426: TPanel;
    Panel427: TPanel;
    Panel428: TPanel;
    redFF: TRichEdit;
    Panel429: TPanel;
    redGF: TRichEdit;
    Panel430: TPanel;
    redVf: TRichEdit;
    Panel431: TPanel;
    redBF: TRichEdit;
    Panel432: TPanel;
    Panel433: TPanel;
    Panel434: TPanel;
    Panel435: TPanel;
    Panel436: TPanel;
    lblAniF: TLabel;
    Label187: TLabel;
    Label188: TLabel;
    Label189: TLabel;
    Label190: TLabel;
    Label191: TLabel;
    lblGF: TLabel;
    lblBF: TLabel;
    lblff: TLabel;
    lblVF: TLabel;
    pnlOF: TPanel;
    lblOrderf: TLabel;
    ComboBox17: TComboBox;
    pnlYesNo: TPanel;
    lblYesNo: TLabel;
    ComboBox18: TComboBox;
    pnlNum: TPanel;
    lblNum: TLabel;
    SpinEdit19: TSpinEdit;
    Panel416: TPanel;
    Panel420: TPanel;
    Panel425: TPanel;
    Panel437: TPanel;
    Panel438: TPanel;
    TabSheet46: TTabSheet;
    Panel439: TPanel;
    Shape13: TShape;
    Shape14: TShape;
    Panel440: TPanel;
    Panel441: TPanel;
    Panel442: TPanel;
    Panel443: TPanel;
    Panel444: TPanel;
    Panel445: TPanel;
    Panel446: TPanel;
    Panel447: TPanel;
    Panel448: TPanel;
    Panel450: TPanel;
    Label205: TLabel;
    Panel451: TPanel;
    Panel449: TPanel;
    Label186: TLabel;
    redAni44: TRichEdit;
    Panel452: TPanel;
    Panel453: TPanel;
    Panel454: TPanel;
    Panel455: TPanel;
    Panel456: TPanel;
    mtlLoad: TAdvMetroTile;
    Edit22: TEdit;
    Memo1: TMemo;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel457: TPanel;
    Image1: TImage;
    Image2: TImage;
    Shape15: TShape;
    Shape16: TShape;
    mtlHome: TAdvMetroButton;
    Panel55: TPanel;
    Panel6: TPanel;
    Panel405: TPanel;
    Panel385: TPanel;
    Panel359: TPanel;
    Panel307: TPanel;
    Panel285: TPanel;
    Panel168: TPanel;
    mtlMedia: TAdvMetroTile;
    Panel458: TPanel;
    Panel459: TPanel;
    Panel460: TPanel;
    Panel461: TPanel;
    AdvMetroTile4: TAdvMetroTile;
    AdvMetroTile5: TAdvMetroTile;
    pnlMemo: TPanel;
    DBMemo1: TDBMemo;
    AdvMetroTile6: TAdvMetroTile;
    DBMemo2: TDBMemo;
    adoAni: TADOConnection;
    Label192: TLabel;
    Panel462: TPanel;
    mtlSearch: TAdvMetroButton;
    Edit23: TEdit;
    AdvAppStyler1: TAdvAppStyler;
    mtlWildC: TAdvMetroTile;
    AdvMetroHint1: TAdvMetroHint;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    Series2: TBarSeries;
    Series3: TBarSeries;
    ChartTool1: TSeriesAnimationTool;
    ChartTool4: TSeriesAnimationTool;
    ChartTool3: TSeriesAnimationTool;
    DBChart2: TDBChart;
    BarSeries1: TBarSeries;
    BarSeries2: TBarSeries;
    BarSeries3: TBarSeries;
    SeriesAnimationTool1: TSeriesAnimationTool;
    SeriesAnimationTool2: TSeriesAnimationTool;
    SeriesAnimationTool3: TSeriesAnimationTool;
    DBChart3: TDBChart;
    BarSeries4: TBarSeries;
    BarSeries5: TBarSeries;
    BarSeries6: TBarSeries;
    SeriesAnimationTool4: TSeriesAnimationTool;
    SeriesAnimationTool5: TSeriesAnimationTool;
    SeriesAnimationTool6: TSeriesAnimationTool;
    procedure AdvMetroFormCreate(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure mtlDelAClick(Sender: TObject);
    procedure mtlAddcAClick(Sender: TObject);
    procedure AdvMetroTile1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure mtlYeboClick(Sender: TObject);
    procedure mtlNeeClick(Sender: TObject);
    procedure mtlOKCClick(Sender: TObject);
    procedure mtlMClick(Sender: TObject);
    procedure mtlTClick(Sender: TObject);
    procedure mtlFClick(Sender: TObject);
    procedure AdvMetroButton7Click(Sender: TObject);
    procedure AdvMetroButton9Click(Sender: TObject);
    procedure AdvMetroButton10Click(Sender: TObject);
    procedure AdvMetroButton5Click(Sender: TObject);
    procedure AdvMetroButton4Click(Sender: TObject);
    procedure AdvMetroButton11Click(Sender: TObject);
    procedure AdvMetroButton3Click(Sender: TObject);
    procedure AdvMetroButton6Click(Sender: TObject);
    procedure AdvMetroButton2Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure mtlPlusClick(Sender: TObject);
    procedure mtlMinusClick(Sender: TObject);
    procedure mtlTimesClick(Sender: TObject);
    procedure mtlDivClick(Sender: TObject);
    procedure mtlClearClick(Sender: TObject);
    procedure mtlSnextClick(Sender: TObject);
    procedure mtlSbackClick(Sender: TObject);
    procedure mtlEqualClick(Sender: TObject);
    procedure mtlDotClick(Sender: TObject);
    procedure mtlBrac1Click(Sender: TObject);
    procedure mtlBrac2Click(Sender: TObject);
    procedure mtlCancelClick(Sender: TObject);
    procedure mtlDelClick(Sender: TObject);
    procedure mtlRefreshClick(Sender: TObject);
    procedure mtlOKClick(Sender: TObject);
    procedure mtlNextClick(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure mtlDelGClick(Sender: TObject);
    procedure mtlAddGClick(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure AdvMetroButton17Click(Sender: TObject);
    procedure AdvMetroButton19Click(Sender: TObject);
    procedure AdvMetroButton18Click(Sender: TObject);
    procedure AdvMetroButton15Click(Sender: TObject);
    procedure AdvMetroButton20Click(Sender: TObject);
    procedure AdvMetroButton14Click(Sender: TObject);
    procedure AdvMetroButton16Click(Sender: TObject);
    procedure AdvMetroButton13Click(Sender: TObject);
    procedure AdvMetroButton12Click(Sender: TObject);
    procedure AdvMetroButton8Click(Sender: TObject);
    procedure mtlPlus2Click(Sender: TObject);
    procedure mtlMinus2Click(Sender: TObject);
    procedure mtlTimes2Click(Sender: TObject);
    procedure mtlDiv2Click(Sender: TObject);
    procedure mtlBrac4Click(Sender: TObject);
    procedure mtlBrac3Click(Sender: TObject);
    procedure mtlDot2Click(Sender: TObject);
    procedure mtlXClick(Sender: TObject);
    procedure mtlYClick(Sender: TObject);
    procedure mtlClear2Click(Sender: TObject);
    procedure mtlEqual2Click(Sender: TObject);
    procedure mtlSback2Click(Sender: TObject);
    procedure mtlSnext2Click(Sender: TObject);
    procedure mtlYebo2Click(Sender: TObject);
    procedure mtlNee2Click(Sender: TObject);
    procedure CheckBox13Click(Sender: TObject);
    procedure CheckBox14Click(Sender: TObject);
    procedure mtlDoneClick(Sender: TObject);
    procedure AdvMetroTile2Click(Sender: TObject);
    procedure ComboBox8Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure ComboBox9Change(Sender: TObject);
    procedure mtlDelVClick(Sender: TObject);
    procedure AdvMetroTile3Click(Sender: TObject);
    procedure mtlPreviousClick(Sender: TObject);
    procedure mtlView0Click(Sender: TObject);
    procedure mtlOrganiseClick(Sender: TObject);
    procedure mtlBAddClick(Sender: TObject);
    procedure mtlOK2Click(Sender: TObject);
    procedure SpinEdit5Change(Sender: TObject);
    procedure SpinEdit6Change(Sender: TObject);
    procedure mtlBdelClick(Sender: TObject);
    procedure mtlM2Click(Sender: TObject);
    procedure mtlT2Click(Sender: TObject);
    procedure mtlf2Click(Sender: TObject);
    procedure mtlDot3Click(Sender: TObject);
    procedure mtlBrac5Click(Sender: TObject);
    procedure mtlBrac6Click(Sender: TObject);
    procedure AdvMetroButton27Click(Sender: TObject);
    procedure AdvMetroButton28Click(Sender: TObject);
    procedure AdvMetroButton30Click(Sender: TObject);
    procedure AdvMetroButton26Click(Sender: TObject);
    procedure AdvMetroButton22Click(Sender: TObject);
    procedure AdvMetroButton29Click(Sender: TObject);
    procedure AdvMetroButton25Click(Sender: TObject);
    procedure AdvMetroButton24Click(Sender: TObject);
    procedure AdvMetroButton23Click(Sender: TObject);
    procedure AdvMetroButton21Click(Sender: TObject);
    procedure mtlPlus3Click(Sender: TObject);
    procedure mtlMinus3Click(Sender: TObject);
    procedure mtlTimes3Click(Sender: TObject);
    procedure mtlDiv3Click(Sender: TObject);
    procedure mtlEqual3Click(Sender: TObject);
    procedure CheckBox15Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure CheckBox16Click(Sender: TObject);
    procedure mtlClear3Click(Sender: TObject);
    procedure mtlSNext3Click(Sender: TObject);
    procedure mtlSback3Click(Sender: TObject);
    procedure mtlYebo3Click(Sender: TObject);
    procedure mtlNee3Click(Sender: TObject);
    procedure mtlDone2Click(Sender: TObject);
    procedure mtlBAddCClick(Sender: TObject);
    procedure mtlBabyhubClick(Sender: TObject);
    procedure mtlEdit0Click(Sender: TObject);
    procedure mtladd0Click(Sender: TObject);
    procedure mtlAddnewClick(Sender: TObject);
    procedure mtlAddnewGClick(Sender: TObject);
    procedure mtlAddnewVClick(Sender: TObject);
    procedure mtlCancel2Click(Sender: TObject);
    procedure Edit21Change(Sender: TObject);
    procedure SpinEdit18Change(Sender: TObject);
    procedure SpinEdit17Change(Sender: TObject);
    procedure SpinEdit9Change(Sender: TObject);
    procedure SpinEdit14Change(Sender: TObject);
    procedure ComboBox16Change(Sender: TObject);
    procedure DateTimePicker3Change(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure ComboBox14Change(Sender: TObject);
    procedure Edit18Change(Sender: TObject);
    procedure ComboBox15Change(Sender: TObject);
    procedure Edit20Change(Sender: TObject);
    procedure Edit19Change(Sender: TObject);
    procedure SpinEdit16Change(Sender: TObject);
    procedure mtlEditAClick(Sender: TObject);
    procedure mtlEditGClick(Sender: TObject);
    procedure mtlEditVClick(Sender: TObject);
    procedure mtlEditFClick(Sender: TObject);
    procedure mtlUpdateClick(Sender: TObject);
    procedure mtlUpdate2Click(Sender: TObject);
    procedure mtlEdit1Click(Sender: TObject);
    procedure mtlClipAClick(Sender: TObject);
    procedure mtlClipGClick(Sender: TObject);
    procedure mtlClipVClick(Sender: TObject);
    procedure mtlClipBClick(Sender: TObject);
    procedure mtlClipFClick(Sender: TObject);
    procedure AdvMetroFormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvMetroFormActivate(Sender: TObject);
    procedure mtlClip0Click(Sender: TObject);
    procedure mtlCancel3Click(Sender: TObject);
    procedure mtlNext2Click(Sender: TObject);
    procedure mtlQuick0Click(Sender: TObject);
    procedure mtlAniVClick(Sender: TObject);
    procedure mtlGeoVClick(Sender: TObject);
    procedure mtlVacVClick(Sender: TObject);
    procedure mtlFactsVClick(Sender: TObject);
    procedure mtlBabyVClick(Sender: TObject);
    procedure mtlStatsAClick(Sender: TObject);
    procedure mtlStatsBClick(Sender: TObject);
    procedure mtlStatsVClick(Sender: TObject);
    procedure mtlStatsFClick(Sender: TObject);
    procedure mtlF1Click(Sender: TObject);
    procedure mtlFilterClick(Sender: TObject);
    procedure ComboBox17Change(Sender: TObject);
    procedure mtlFO2Click(Sender: TObject);
    procedure ComboBox18Change(Sender: TObject);
    procedure mtlFV4Click(Sender: TObject);
    procedure SpinEdit19Change(Sender: TObject);
    procedure mtlFT3Click(Sender: TObject);
    procedure mtlFilter0Click(Sender: TObject);
    procedure mltStats0Click(Sender: TObject);
    procedure SpinEdit7Change(Sender: TObject);
    procedure SpinEdit8Change(Sender: TObject);
    procedure SpinEdit10Change(Sender: TObject);
    procedure SpinEdit12Change(Sender: TObject);
    procedure SpinEdit11Change(Sender: TObject);
    procedure SpinEdit13Change(Sender: TObject);
    procedure SpinEdit15Change(Sender: TObject);
    procedure mtlLoadClick(Sender: TObject);
    procedure AdvMetroTile5Click(Sender: TObject);
    procedure AdvMetroTile6Click(Sender: TObject);
    procedure AdvMetroTile4Click(Sender: TObject);
    procedure DBGrid14CellClick(Column: TColumn);
    procedure mtlHomeClick(Sender: TObject);
    procedure mtlWildCClick(Sender: TObject);
    procedure mtlMediaClick(Sender: TObject);
    procedure mtlSearchClick(Sender: TObject);
    procedure Edit23MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure AdvMetroFormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit23Click(Sender: TObject);
    procedure Panel462MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CheckBox19Click(Sender: TObject);
    procedure CheckBox20Click(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure mtlDelallClick(Sender: TObject);
  private
  Hidden:Boolean;
    { Private declarations }
  protected
    { Protected declarations }
  public
  sNameAdd,sNames,sOrders,sKingdoms,sMax,sLowest,sHerbivore,sCarnivore,sOmnivore,sDate,sPark,sWeather:string;
  sVac,sLabName,sBirth,sKm,sMeters:string;
  iFemaleT,iMaleT,iTotal,iCount,iX,iY,iIQ:integer;
    { Public declarations }
  end;

var
  frmWorkplace: TfrmWorkplace;
  Calculate:TCalculations;
implementation
Uses Home_u, Tourist_u, Hexagon_u, Help_u;

{$R *.dfm}


procedure TfrmWorkplace.AdvMetroFormCreate(Sender: TObject);
begin
label192.Caption:=DBText1.Caption;
pnlClipAni.DoubleBuffered:=true;
panel286.DoubleBuffered:=true;
frmWorkplace.DoubleBuffered:=true;
//redAni.DoubleBuffered:=true;
Calculate:=TCalculations.create;
AdvMetroTile1.Appearance.TextColor:=$0001CDF1;
AdvMetroTile2.Appearance.TextColor:=$0001CDF1;
AdvMetroTile3.Appearance.TextColor:=$0001CDF1;
mtlDelA.Appearance.TextColor:=$0001CDF1;
mtlAddcA.Appearance.TextColor:=$0001CDF1;
mtlDelG.Appearance.TextColor:=$0001CDF1;
mtlAddG.Appearance.TextColor:=$0001CDF1;
mtlDelV.Appearance.TextColor:=$0001CDF1;
mtlF.Appearance.TextColor:=$0001CDF1;
mtlT.Appearance.TextColor:=$0001CDF1;
mtlM.Appearance.TextColor:=$0001CDF1;
mtlDone.Appearance.TextColor:=$0001CDF1;
mtlClear.Appearance.TextColor:=$0001CDF1;
mtlYebo.Appearance.TextColor:=$0001CDF1;
mtlNee.Appearance.TextColor:=$0001CDF1;
mtlPlus.Appearance.TextColor:=$0001CDF1;
mtlMinus.Appearance.TextColor:=$0001CDF1;
mtlEqual.Appearance.TextColor:=$0001CDF1;
mtlTimes.Appearance.TextColor:=$0001CDF1;
mtlDiv.Appearance.TextColor:=$0001CDF1;
mtlOKC.Appearance.TextColor:=$0001CDF1;
mtlSBack.Appearance.TextColor:=$0001CDF1;
mtlSnext.Appearance.TextColor:=$0001CDF1;
mtlDot.Appearance.TextColor:=$0001CDF1;
mtlBrac1.Appearance.TextColor:=$0001CDF1;
mtlBrac2.Appearance.TextColor:=$0001CDF1;
mtlBAddc.Appearance.TextColor:=$0001CDF1;
mtlBAdd.Appearance.TextColor:=$0001CDF1;
mtlBDel.Appearance.TextColor:=$0001CDF1;
mtlAddnewG.Appearance.TextColor:=$0001CDF1;
mtlAddnew.Appearance.TextColor:=$0001CDF1;
mtlAddnewV.Appearance.TextColor:=$0001CDF1;
mtlEditG.Appearance.TextColor:=$0001CDF1;
mtlEditA.Appearance.TextColor:=$0001CDF1;
mtlEditF.Appearance.TextColor:=$0001CDF1;
mtlEditV.Appearance.TextColor:=$0001CDF1;
mtlEdit1.Appearance.TextColor:=$0001CDF1;
mtlBabyV.Appearance.TextColor:=$0001CDF1;
mtlFactsV.Appearance.TextColor:=$0001CDF1;
mtlAniV.Appearance.TextColor:=$0001CDF1;
mtlGeoV.Appearance.TextColor:=$0001CDF1;
mtlVacV.Appearance.TextColor:=$0001CDF1;
mtlFilter.Appearance.TextColor:=$0001CDF1;
mtlF1.Appearance.PictureColor:=clWhite;
mtlFO2.Appearance.PictureColor:=clWhite;
mtlFT3.Appearance.PictureColor:=clWhite;
mtlFV4.Appearance.PictureColor:=clWhite;
mtlF1.Appearance.PictureColorHover:=$0001CDF1;
mtlFO2.Appearance.PictureColorHover:=$0001CDF1;
mtlFT3.Appearance.PictureColorHover:=$0001CDF1;
mtlFV4.Appearance.PictureColorHover:=$0001CDF1;
mtlHome.Appearance.PictureColor:=clWhite;
mtlSearch.Appearance.PictureColor:=clWhite;
mtlHome.Appearance.PictureColorHover:=$0001CDF1;
mtlSearch.Appearance.PictureColorHover:=$0001CDF1;
//////
////////////
mtlLoad.Appearance.Color:=clActiveBorder;
mtlLoad.Appearance.TextColor:=$0001CDF1;
////////////
mtlStatsA.Appearance.TextColor:=$0001CDF1;
mtlStatsB.Appearance.TextColor:=$0001CDF1;
mtlStatsF.Appearance.TextColor:=$0001CDF1;
////////////
mtlClipF.Appearance.Color:=$00F4F4F2;
mtlClipF.Appearance.TextColor:=clBLack;
mtlClipF.Appearance.HoverColor:=$00F4F4F2;
mtlClipF.Appearance.DownColor:=$00F4F4F2;
mtlClipF.Appearance.HoverTextColor:=$0001A4C1;
mtlClipF.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlClipA.Appearance.Color:=$00F4F4F2;
mtlClipA.Appearance.TextColor:=clBLack;
mtlClipA.Appearance.HoverColor:=$00F4F4F2;
mtlClipA.Appearance.DownColor:=$00F4F4F2;
mtlClipA.Appearance.HoverTextColor:=$0001A4C1;
mtlClipA.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlClipG.Appearance.Color:=$00F4F4F2;
mtlClipG.Appearance.TextColor:=clBLack;
mtlClipG.Appearance.DownColor:=$00F4F4F2;
mtlClipG.Appearance.HoverColor:=$00F4F4F2;
mtlClipG.Appearance.HoverTextColor:=$0001A4C1;
mtlClipG.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlClipV.Appearance.Color:=$00F4F4F2;
mtlClipV.Appearance.TextColor:=clBLack;
mtlClipV.Appearance.DownColor:=$00F4F4F2;
mtlClipV.Appearance.HoverColor:=$00F4F4F2;
mtlClipV.Appearance.HoverTextColor:=$0001A4C1;
mtlClipV.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlClipB.Appearance.Color:=$00F4F4F2;
mtlClipB.Appearance.TextColor:=clBLack;
mtlClipb.Appearance.DownColor:=$00F4F4F2;
mtlClipB.Appearance.HoverColor:=$00F4F4F2;
mtlClipB.Appearance.HoverTextColor:=$0001A4C1;
mtlClipB.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlX.Appearance.TextColor:=$0001CDF1;
mtlY.Appearance.TextColor:=$0001CDF1;
mtlClear2.Appearance.TextColor:=$0001CDF1;
mtlYebo2.Appearance.TextColor:=$0001CDF1;
mtlNee2.Appearance.TextColor:=$0001CDF1;
mtlPlus2.Appearance.TextColor:=$0001CDF1;
mtlMinus2.Appearance.TextColor:=$0001CDF1;
mtlEqual2.Appearance.TextColor:=$0001CDF1;
mtlTimes2.Appearance.TextColor:=$0001CDF1;
mtlDiv2.Appearance.TextColor:=$0001CDF1;
mtlSBack2.Appearance.TextColor:=$0001CDF1;
mtlSnext2.Appearance.TextColor:=$0001CDF1;
mtlDot2.Appearance.TextColor:=$0001CDF1;
mtlBrac3.Appearance.TextColor:=$0001CDF1;
mtlBrac4.Appearance.TextColor:=$0001CDF1;
////////////
mtlT2.Appearance.TextColor:=$0001CDF1;
mtlM2.Appearance.TextColor:=$0001CDF1;
mtlF2.Appearance.TextColor:=$0001CDF1;
mtlClear3.Appearance.TextColor:=$0001CDF1;
mtlYebo3.Appearance.TextColor:=$0001CDF1;
mtlNee3.Appearance.TextColor:=$0001CDF1;
mtlPlus3.Appearance.TextColor:=$0001CDF1;
mtlMinus3.Appearance.TextColor:=$0001CDF1;
mtlEqual3.Appearance.TextColor:=$0001CDF1;
mtlTimes3.Appearance.TextColor:=$0001CDF1;
mtlDiv3.Appearance.TextColor:=$0001CDF1;
mtlSBack3.Appearance.TextColor:=$0001CDF1;
mtlSnext3.Appearance.TextColor:=$0001CDF1;
mtlDot3.Appearance.TextColor:=$0001CDF1;
mtlBrac6.Appearance.TextColor:=$0001CDF1;
mtlBrac5.Appearance.TextColor:=$0001CDF1;
mtlDone2.Appearance.TextColor:=$0001CDF1;
////////////
mtlCancel.Appearance.Color:=$0001CDF1;
mtlCancel.Appearance.TextColor:=clWhite;
mtlCancel.Appearance.HoverColor:=$0001CDF1;
mtlCancel.Appearance.HoverTextColor:=$0001A4C1;
mtlCancel.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlCancel3.Appearance.Color:=$0001CDF1;
mtlCancel3.Appearance.TextColor:=clWhite;
mtlCancel3.Appearance.HoverColor:=$0001CDF1;
mtlCancel3.Appearance.HoverTextColor:=$0001A4C1;
mtlCancel3.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlCancel2.Appearance.Color:=$0001CDF1;
mtlCancel2.Appearance.TextColor:=clWhite;
mtlCancel2.Appearance.HoverColor:=$0001CDF1;
mtlCancel2.Appearance.HoverTextColor:=$0001A4C1;
mtlCancel2.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlUpdate.Appearance.Color:=clOlive;
mtlUpdate.Appearance.DownColor:=clOlive;
mtlUpdate.Appearance.TextColor:=clWhite;
mtlUpdate.Appearance.HoverColor:=clOlive;
mtlUpdate.Appearance.HoverTextColor:=$0001CDF1;
mtlUpdate.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlUpdate2.Appearance.Color:=$00BFE996;
mtlUpdate2.Appearance.DownColor:=$00BFE996;
mtlUpdate2.Appearance.TextColor:=clWhite;
mtlUpdate2.Appearance.HoverColor:=$00BFE996;
mtlUpdate2.Appearance.HoverTextColor:=$0001CDF1;
mtlUpdate2.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlPrevious.Appearance.Color:=$0001CDF1;
mtlPrevious.Appearance.TextColor:=clWhite;
mtlPrevious.Appearance.HoverColor:=$0001CDF1;
mtlPrevious.Appearance.HoverTextColor:=$0001A4C1;
mtlPrevious.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlOk.Appearance.Color:=$0001CDF1;
mtlOK.Appearance.TextColor:=clWhite;
mtlOk.Appearance.HoverColor:=$0001CDF1;
mtlOK.Appearance.HoverTextColor:=$0001A4C1;
mtlOK.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlOk2.Appearance.Color:=$0001CDF1;
mtlOK2.Appearance.TextColor:=clWhite;
mtlOk2.Appearance.HoverColor:=$0001CDF1;
mtlOK2.Appearance.HoverTextColor:=$0001A4C1;
mtlOK2.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlbabyhub.Appearance.Color:=$0001A4C1;
mtlBabyhub.Appearance.TextColor:=clWhite;
mtlBabyhub.Appearance.HoverColor:=$0001CDF1;
mtlBabyhub.Appearance.HoverTextColor:=clWhite;
mtlBabyhub.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlOrganise.Appearance.Color:=$0001A4C1;
mtlOrganise.Appearance.TextColor:=clWhite;
mtlOrganise.Appearance.HoverColor:=$0001CDF1;
mtlOrganise.Appearance.HoverTextColor:=clWhite;
mtlOrganise.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlAdd0.Appearance.Color:=$0001A4C1;
mtlAdd0.Appearance.TextColor:=clWhite;
mtlAdd0.Appearance.HoverColor:=$0001CDF1;
mtladd0.Appearance.HoverTextColor:=clWhite;
mtladd0.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlMedia.Appearance.Color:=$0001A4C1;
mtlMedia.Appearance.TextColor:=clWhite;
mtlMedia.Appearance.HoverColor:=$0001CDF1;
mtlMedia.Appearance.HoverTextColor:=clWhite;
mtlMedia.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlWildC.Appearance.Color:=$0001A4C1;
mtlWildC.Appearance.TextColor:=clWhite;
mtlWildC.Appearance.HoverColor:=$0001CDF1;
mtlWildC.Appearance.HoverTextColor:=clWhite;
mtlWildC.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlEdit0.Appearance.Color:=$0001A4C1;
mtledit0.Appearance.TextColor:=clWhite;
mtledit0.Appearance.HoverColor:=$0001CDF1;
mtledit0.Appearance.HoverTextColor:=clWhite;
mtledit0.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlNext.Appearance.Color:=$0001CDF1;
mtlNext.Appearance.TextColor:=clWhite;
mtlNext.Appearance.HoverColor:=$0001CDF1;
mtlNext.Appearance.HoverTextColor:=$0001A4C1;
mtlNext.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlNext2.Appearance.Color:=$0001CDF1;
mtlNext2.Appearance.TextColor:=clWhite;
mtlNext2.Appearance.HoverColor:=$0001CDF1;
mtlNext2.Appearance.HoverTextColor:=$0001A4C1;
mtlNext2.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlDel.Appearance.Color:=$0001CDF1;
mtlDel.Appearance.TextColor:=clWhite;
mtlDel.Appearance.HoverColor:=$0001CDF1;
mtlDel.Appearance.HoverTextColor:=$0001A4C1;
mtlDel.Appearance.DownTextColor:=$0001A4C1;
////////////
mtlDelall.Appearance.Color:=$0001CDF1;
mtlDelall.Appearance.TextColor:=clWhite;
mtlDelall.Appearance.HoverColor:=$0001CDF1;
mtlDelall.Appearance.HoverTextColor:=$0001A4C1;
mtlDelall.Appearance.DownTextColor:=$0001A4C1;
/////////////
mtlRefresh.Appearance.Color:=$0001CDF1;
mtlrefresh.Appearance.TextColor:=clWhite;
mtlrefresh.Appearance.HoverColor:=$0001CDF1;
mtlrefresh.Appearance.HoverTextColor:=$0001A4C1;
mtlrefresh.Appearance.DownTextColor:=$0001A4C1;
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
mtlView0.Appearance.Color:=$0001A4C1;
mtlView0.Appearance.TextColor:=clWhite;
mtlView0.Appearance.HoverColor:=$0001CDF1;
mtlView0.Appearance.HoverTextColor:=clWhite;
mtlView0.Appearance.DownTextColor:=$0001A4C1;
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
mtlT.Appearance.Color:=$00F8F8F8;
mtlF.Appearance.Color:=$00F8F8F8;
mtlM.Appearance.Color:=$00F8F8F8;
mtlPlus.Appearance.Color:=$00F8F8F8;
mtlTimes.Appearance.Color:=$00F8F8F8;
mtlMinus.Appearance.Color:=$00F8F8F8;
mtlDiv.Appearance.Color:=$00F8F8F8;
mtlEqual.Appearance.Color:=$00F8F8F8;
mtlYebo.Appearance.Color:=$00F8F8F8;
mtlNee.Appearance.Color:=$00F8F8F8;
mtlClear.Appearance.Color:=$00F8F8F8;
mtlSnext.Appearance.Color:=$00F8F8F8;
mtlSback.Appearance.Color:=$00F8F8F8;
mtlDot.Appearance.Color:=$00F8F8F8;
mtlBrac1.Appearance.Color:=$00F8F8F8;
mtlBrac2.Appearance.Color:=$00F8F8F8;
////////////
mtlT2.Appearance.Color:=$00F8F8F8;
mtlF2.Appearance.Color:=$00F8F8F8;
mtlM2.Appearance.Color:=$00F8F8F8;
mtlPlus3.Appearance.Color:=$00F8F8F8;
mtlTimes3.Appearance.Color:=$00F8F8F8;
mtlMinus3.Appearance.Color:=$00F8F8F8;
mtlDiv3.Appearance.Color:=$00F8F8F8;
mtlEqual3.Appearance.Color:=$00F8F8F8;
mtlYebo3.Appearance.Color:=$00F8F8F8;
mtlNee3.Appearance.Color:=$00F8F8F8;
mtlClear3.Appearance.Color:=$00F8F8F8;
mtlSnext3.Appearance.Color:=$00F8F8F8;
mtlSback3.Appearance.Color:=$00F8F8F8;
mtlDot3.Appearance.Color:=$00F8F8F8;
mtlBrac6.Appearance.Color:=$00F8F8F8;
mtlBrac5.Appearance.Color:=$00F8F8F8;
mtlDone2.Appearance.Color:= $00F8F8F8;
////////////
mtlX.Appearance.Color:=$00F8F8F8;
mtlY.Appearance.Color:=$00F8F8F8;
mtlPlus2.Appearance.Color:=$00F8F8F8;
mtlTimes2.Appearance.Color:=$00F8F8F8;
mtlMinus2.Appearance.Color:=$00F8F8F8;
mtlDiv2.Appearance.Color:=$00F8F8F8;
mtlEqual2.Appearance.Color:=$00F8F8F8;
mtlYebo2.Appearance.Color:=$00F8F8F8;
mtlNee2.Appearance.Color:=$00F8F8F8;
mtlClear2.Appearance.Color:=$00F8F8F8;
mtlSnext2.Appearance.Color:=$00F8F8F8;
mtlSback2.Appearance.Color:=$00F8F8F8;
mtlDot2.Appearance.Color:=$00F8F8F8;
mtlBrac3.Appearance.Color:=$00F8F8F8;
mtlBrac4.Appearance.Color:=$00F8F8F8;
end;

procedure TfrmWorkplace.ComboBox1Click(Sender: TObject);
var
sOrder:string;
begin
sOrder:=combobox1.Text;
qryOrgAni.Active:=false;
qryOrgAni.SQL.Text:='select * from EcoraNum where ( [Order]= "'+sOrder+'")';
qryOrgAni.Active:=true;
end;

procedure TfrmWorkplace.SpinEdit1Change(Sender: TObject);
var
sNum:string;
begin
sNum:=spinedit1.Text;
qryOrgAni.Active:=false;
qryOrgAni.SQL.Text:='select * from EcoraNum where ( [Number_of_male] Like "%'+sNum+'%")';
qryOrgAni.Active:=true;
if spinedit1.Text = '' then
begin
spinedit1.Value:=0;
end;
end;

procedure TfrmWorkplace.SpinEdit2Change(Sender: TObject);
var
sNum:string;
begin
sNum:=spinedit2.Text;
qryOrgAni.Active:=false;
qryOrgAni.SQL.Text:='select * from EcoraNum where ( [Number_of_female] Like "%'+sNum+'%")';
qryOrgAni.Active:=true;
if spinedit2.Text = '' then
begin
spinedit2.Value:=0;
end;
end;

procedure TfrmWorkplace.mtlDelAClick(Sender: TObject);
begin
pnlDelete.Visible:=true;
panel5.Visible:=true;
mtlDeLA.Visible:=false;
mtlAddcA.Visible:=false;
mtlDel.Visible:=true;
mtlDelall.Visible:=true;
mtlRefresh.Visible:=true;
mtlCancel.Visible:=true;
pnlAddC.Visible:=false;
label4.Caption:='Delete...';
mtlPrevious.Visible:=false;

end;

procedure TfrmWorkplace.mtlAddcAClick(Sender: TObject);
begin
pnlDelete.Visible:=false;
mtlDeLA.Visible:=false;
mtlAddcA.Visible:=false;
mtlDelall.Visible:=true;
mtlRefresh.Visible:=true;
mtlCancel.Visible:=true;
pnlAddC.Visible:=true;
label4.Caption:='Add new colomn...';
mtlPrevious.Visible:=false;
end;

procedure TfrmWorkplace.AdvMetroTile1Click(Sender: TObject);
begin
tabsheet2.TabVisible:=true;
tabsheet1.TabVisible:=false;
mtlPrevious.Visible:=true;
end;

procedure TfrmWorkplace.Button1Click(Sender: TObject);
var
sSqL:string;
begin
//sSql:=edit1.Text;
qryOrgAni.Active:=false;
qryOrgAni.SQL.Text:=' '+sSql+' ';
//qryOrgAni.SQL.Text:='Select Animal,Kingdom,Format([number_of_male]+[number_of_female]) as [Total_number_of_animal] from EcoraNum';
qryOrgAni.Active:=true;
end;

procedure TfrmWorkplace.CheckBox4Click(Sender: TObject);
begin
If Checkbox4.Checked = True then
checkbox5.State:= cbGrayed;
end;

procedure TfrmWorkplace.CheckBox5Click(Sender: TObject);
begin
If Checkbox5.Checked = True then
checkbox4.State:= cbGrayed;
end;

procedure TfrmWorkplace.CheckBox2Click(Sender: TObject);
begin
If Checkbox2.Checked = True then
mtlF.Visible:=true
else
mtlF.Visible:=False;
end;

procedure TfrmWorkplace.CheckBox1Click(Sender: TObject);
begin
If Checkbox1.Checked = True then
mtlM.Visible:=true
else
mtlM.Visible:=False;
end;

procedure TfrmWorkplace.CheckBox3Click(Sender: TObject);
begin
If Checkbox3.Checked = True then
mtlT.Visible:=true
else
mtlT.Visible:=False;
end;

procedure TfrmWorkplace.mtlYeboClick(Sender: TObject);
begin
GroupBox4.Visible:=true;
GroupBox6.Visible:=true;
panel8.Height:=220;
dbgrid2.Height:=180;
mtlOk.Visible:=true;
mtlNext.Visible:=false;
end;

procedure TfrmWorkplace.mtlNeeClick(Sender: TObject);
begin
GroupBox4.Visible:=false;
GroupBox6.Visible:=true;
panel8.Height:=220;
dbgrid2.Height:=180;
mtlOk.Visible:=true;
mtlNext.Visible:=false;
end;

procedure TfrmWorkplace.mtlOKCClick(Sender: TObject);
var
sCal,sSymbol,sOrder,sName,sSName,sAs:string;
iItems:integer;
begin
iItems:=combobox2.ItemIndex;
case iItems of
0:sSymbol:='=';
1:sSymbol:='<>';
end;
sOrder:=combobox4.Text;
sName:=combobox3.Text;
sSName:=edit1.Text;
sCal:=edtDisplay.Text;
sAs:=edtSaveas.Text;
/////////////////////////////////////////////
 if (checkbox7.Checked = true) and (Checkbox4.Checked = true) and (checkbox6.Checked = true) AND (combobox2.ItemIndex = 2) then  ////order by condition ASC with where and like
 begin
 try
 qryOrgAni.Active:=false;
 qryOrgAni.SQL.Text:='Select EcoraID,Animal,Format('+sCal+') as ['+sAs+'],[Order],[Number_of_male],[Number_of_female],Total_number_of_animal,Kingdom,IMG,Description  from EcoraNum where ('+sName+' Like ''%'+sSName+'%'') Order by '+sOrder+' ASC';
 qryOrgAni.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgAni.Active:=false;
  qryOrgAni.SQL.Text:='Select * from EcoraNum ';
  qryOrgAni.Active:=true;
 end;
 end
 else if (checkbox7.Checked = true) and (Checkbox5.Checked = true) and (checkbox6.Checked = true) AND (combobox2.ItemIndex = 2) then /////order by condition DESC with where and like
 begin
 try
 qryOrgAni.Active:=false;
 qryOrgAni.SQL.Text:='Select EcoraID,Animal,Format('+sCal+') as ['+sAs+'],[Order],[Number_of_male],[Number_of_female],Total_number_of_animal,Kingdom,IMG,Description  from EcoraNum where ('+sName+' Like ''%'+sSName+'%'') Order by '+sOrder+' DESC';
 qryOrgAni.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgAni.Active:=false;
  qryOrgAni.SQL.Text:='Select * from EcoraNum ';
  qryOrgAni.Active:=true;
 end;
 end
/////////////////////////
 else if (checkbox7.Checked = true) and (Checkbox4.Checked = true) and (checkbox6.Checked = true) then    ////order by condition ASC with where
 begin
 try
 qryOrgAni.Active:=false;
 qryOrgAni.SQL.Text:='Select EcoraID,Animal,Format('+sCal+') as ['+sAs+'],[Order],[Number_of_male],[Number_of_female],Total_number_of_animal,Kingdom,IMG,Description  from EcoraNum where ('+sName+' '+sSymbol+' '''+sSName+''') Order by '+sOrder+' ASC';
 qryOrgAni.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgAni.Active:=false;
  qryOrgAni.SQL.Text:='Select * from EcoraNum ';
  qryOrgAni.Active:=true;
 end;

 end
 else if (checkbox7.Checked = true) and (Checkbox5.Checked = true) and (checkbox6.Checked = true) then    ////order by condition DESC with where
 begin
 try
 qryOrgAni.Active:=false;
 qryOrgAni.SQL.Text:='Select EcoraID,Animal,Format('+sCal+') as ['+sAs+'],[Order],[Number_of_male],[Number_of_female],Total_number_of_animal,Kingdom,IMG,Description  from EcoraNum where ('+sName+' '+sSymbol+' '''+sSName+''') Order by '+sOrder+' DESC';
 qryOrgAni.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgAni.Active:=false;
  qryOrgAni.SQL.Text:='Select * from EcoraNum ';
  qryOrgAni.Active:=true;
 end;
 end
/////////////////////////////////////////////////////////
 else if (checkbox6.Checked = true) AND (combobox2.ItemIndex = 2) then // where like condition
 begin
  try
 qryOrgAni.Active:=false;
 qryOrgAni.SQL.Text:='Select EcoraID,Animal,Format('+sCal+') as ['+sAs+'],[Order],[Number_of_male],[Number_of_female],Total_number_of_animal,Kingdom,IMG,Description  from EcoraNum where ('+sName+' Like ''%'+sSName+'%'')';
 qryOrgAni.Active:=true;
  except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgAni.Active:=false;
  qryOrgAni.SQL.Text:='Select * from EcoraNum ';
  qryOrgAni.Active:=true;
  end;
 end
 else if checkbox6.Checked = true then//where condition
 begin
  try
 qryOrgAni.Active:=false;
 qryOrgAni.SQL.Text:='Select EcoraID,Animal,Format('+sCal+') as ['+sAs+'],[Order],[Number_of_male],[Number_of_female],Total_number_of_animal,Kingdom,IMG,Description  from EcoraNum where ('+sName+' '+sSymbol+' '''+sSName+''')';
 qryOrgAni.Active:=true;
  except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgAni.Active:=false;
  qryOrgAni.SQL.Text:='Select * from EcoraNum ';
  qryOrgAni.Active:=true;
  end;
 end
///////////////////////////////////////
 else if (checkbox7.Checked = true) and (Checkbox4.Checked = true) then //oder by condition ASC
 begin
  try
 qryOrgAni.Active:=false;
 qryOrgAni.SQL.Text:='Select EcoraID,Animal,Format('+sCal+') as ['+sAs+'],[Order],[Number_of_male],[Number_of_female],Total_number_of_animal,Kingdom,IMG,Description  from EcoraNum  Order by '+sOrder+' ASC';
 qryOrgAni.Active:=true;
  except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgAni.Active:=false;
  qryOrgAni.SQL.Text:='Select * from EcoraNum ';
  qryOrgAni.Active:=true;
  end;
 end
 else if (checkbox7.Checked = true) and (Checkbox5.Checked = true) then//order by condition DESC
 begin
  try
 qryOrgAni.Active:=false;
 qryOrgAni.SQL.Text:='Select EcoraID,Animal,Format('+sCal+') as ['+sAs+'],[Order],[Number_of_male],[Number_of_female],Total_number_of_animal,Kingdom,IMG,Description  from EcoraNum Order by '+sOrder+' DESC';
 qryOrgAni.Active:=true;
  except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgAni.Active:=false;
  qryOrgAni.SQL.Text:='Select * from EcoraNum ';
  qryOrgAni.Active:=true;
 end;
 end
///////////////////
 else if groupbox4.Visible <> true then// step 4 not avialable
 begin
  try
 qryOrgAni.Active:=false;
 qryOrgAni.SQL.Text:='Select EcoraID,Animal,Format('+sCal+') as ['+sAs+'],[Order],[Number_of_male],[Number_of_female],Total_number_of_animal,Kingdom,IMG,Description  from EcoraNum';
 qryOrgAni.Active:=true;
  except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgAni.Active:=false;
  qryOrgAni.SQL.Text:='Select * from EcoraNum ';
  qryOrgAni.Active:=true;
 end;
 end;
//////////////////////////////////////////////////////////////////////////////////////end of long nested if
panel8.Height:=370;
dbgrid2.Height:=329;
groupbox6.Visible:=false;
groupbox4.Visible:=false;
Groupbox5.Visible:=false;
pnlSaveas.Visible:=false;
CheckBox6.Checked:=false;
CheckBox7.Checked:=false;
mtlOK.Visible:=false;
edtdisplay.Clear;
edtSaveas.Text:='Type name of column here';
end;

procedure TfrmWorkplace.mtlMClick(Sender: TObject);
begin
edtDisplay.Text:=edtDisplay.Text+'[Number_of_male]';
end;

procedure TfrmWorkplace.mtlTClick(Sender: TObject);
begin
edtDisplay.Text:=edtDisplay.Text+'[Total_number_of_animal]';
end;

procedure TfrmWorkplace.mtlFClick(Sender: TObject);
begin
edtDisplay.Text:=edtDisplay.Text+'[Number_of_female]';
end;

procedure TfrmWorkplace.AdvMetroButton7Click(Sender: TObject);
begin
edtDisplay.Text:=edtDisplay.Text+'9';
end;

procedure TfrmWorkplace.AdvMetroButton9Click(Sender: TObject);
begin
edtDisplay.Text:=edtDisplay.Text+'7';
end;

procedure TfrmWorkplace.AdvMetroButton10Click(Sender: TObject);
begin
edtDisplay.Text:=edtDisplay.Text+'8';
end;

procedure TfrmWorkplace.AdvMetroButton5Click(Sender: TObject);
begin
edtDisplay.Text:=edtDisplay.Text+'6';
end;

procedure TfrmWorkplace.AdvMetroButton4Click(Sender: TObject);
begin
edtDisplay.Text:=edtDisplay.Text+'4';
end;

procedure TfrmWorkplace.AdvMetroButton11Click(Sender: TObject);
begin
edtDisplay.Text:=edtDisplay.Text+'5';
end;

procedure TfrmWorkplace.AdvMetroButton3Click(Sender: TObject);
begin
edtDisplay.Text:=edtDisplay.Text+'2';
end;

procedure TfrmWorkplace.AdvMetroButton6Click(Sender: TObject);
begin
edtDisplay.Text:=edtDisplay.Text+'3';
end;

procedure TfrmWorkplace.AdvMetroButton2Click(Sender: TObject);
begin
edtDisplay.Text:=edtDisplay.Text+'1';
end;

procedure TfrmWorkplace.AdvMetroButton1Click(Sender: TObject);
begin
edtDisplay.Text:=edtDisplay.Text+'0';
end;

procedure TfrmWorkplace.mtlPlusClick(Sender: TObject);
begin
edtDisplay.Text:=edtDisplay.Text+'+';
end;

procedure TfrmWorkplace.mtlMinusClick(Sender: TObject);
begin
edtDisplay.Text:=edtDisplay.Text+'-';
end;

procedure TfrmWorkplace.mtlTimesClick(Sender: TObject);
begin
edtDisplay.Text:=edtDisplay.Text+'*';
end;

procedure TfrmWorkplace.mtlDivClick(Sender: TObject);
begin
edtDisplay.Text:=edtDisplay.Text+'/';
end;

procedure TfrmWorkplace.mtlClearClick(Sender: TObject);
begin
edtDisplay.Clear;

end;

procedure TfrmWorkplace.mtlSnextClick(Sender: TObject);
begin
Groupbox5.Visible:=true;
end;

procedure TfrmWorkplace.mtlSbackClick(Sender: TObject);
begin
pnlSaveas.Visible:=false;
mtlNext.Visible:=false;
end;

procedure TfrmWorkplace.mtlEqualClick(Sender: TObject);
begin
if edtDisplay.Text = '' then
begin
messagedlg('Please do a calculation '+#13+'EG. [Number_of_male]*5',mtError,[mbOK],0);
end
else if edtDisplay.Text <> '' then
begin
pnlSaveas.Visible:=true;
mtlNext.Visible:=true;
end;
end;

procedure TfrmWorkplace.mtlDotClick(Sender: TObject);
begin
edtDisplay.Text:=edtDisplay.Text+'.';
end;

procedure TfrmWorkplace.mtlBrac1Click(Sender: TObject);
begin
edtDisplay.Text:=edtDisplay.Text+'(';
end;

procedure TfrmWorkplace.mtlBrac2Click(Sender: TObject);
begin
edtDisplay.Text:=edtDisplay.Text+')';
end;

procedure TfrmWorkplace.mtlCancelClick(Sender: TObject);
begin
if pnlAddc.Visible = true then
begin
pnlAddC.Visible:=false;
panel8.Height:=370;
dbgrid2.Height:=329;
groupbox6.Visible:=false;
groupbox4.Visible:=false;
Groupbox5.Visible:=false;
pnlSaveas.Visible:=false;
edtdisplay.Clear;
edtSaveas.Clear;
mtlDeLA.Visible:=true;
mtlAddcA.Visible:=true;
label4.Caption:='Please select option...';
mtlRefresh.Visible:=false;
mtlCancel.Visible:=false;
mtlPrevious.Visible:=true;
mtlNext.Visible:=false;
mtlOK.Visible:=false;
end
else if pnldelGeo.Visible =true then
begin
pnldelGeo.Visible:= false;
mtlDeLG.Visible:=true;
mtlAddG.Visible:=true;
label19.Caption:='Please select option...';
mtlDel.Visible:=false;
mtlRefresh.Visible:=false;
mtlCancel.Visible:=false;
mtlPrevious.Visible:=true;
mtlNext.Visible:=false;
mtlOK.Visible:=false;
end
else if pnlAddG.Visible = true then
begin
pnlAddG.Visible:=false;
panel34.Height:=370;
dbgrid3.Height:=329;
groupbox12.Visible:=false;
groupbox10.Visible:=false;
Groupbox11.Visible:=false;
pnlSaveas2.Visible:=false;
edtdisplay2.Clear;
edtSaveas2.Clear;
mtlDeLG.Visible:=true;
mtlAddG.Visible:=true;
label19.Caption:='Please select option...';
mtlRefresh.Visible:=false;
mtlCancel.Visible:=false;
mtlPrevious.Visible:=true;
mtlNext.Visible:=false;
mtlOK.Visible:=false;
end
else if pnldelete.Visible =true then
begin
pnldelete.Visible:= false;
panel5.Visible:=false;
mtlDeLA.Visible:=true;
mtlAddcA.Visible:=true;
label4.Caption:='Please select option...';
mtlDel.Visible:=false;
mtlRefresh.Visible:=false;
mtlCancel.Visible:=false;
mtlPrevious.Visible:=true;
mtlNext.Visible:=false;
mtlOK.Visible:=false;
end
else if pnldelv.Visible =true then
begin
pnlDelV.Visible:= false;
mtlDelV.Visible:=true;
label18.Caption:='Please select option...';
mtlDel.Visible:=false;
mtlRefresh.Visible:=false;
mtlCancel.Visible:=false;
mtlPrevious.Visible:=true;
mtlNext.Visible:=false;
mtlOK.Visible:=false;
end
else if pnlBaddc.Visible =true then
begin
pnlBaddc.Visible:=false;
tabsheet7.TabVisible:=true;
tabsheet10.TabVisible:=false;
mtlDel.Visible:=false;
mtlRefresh.Visible:=false;
mtlCancel.Visible:=false;
mtlNext.Visible:=false;
panel76.Height:=370;
dbgrid7.Height:=329;
groupbox17.Visible:=false;
groupbox18.Visible:=false;
Groupbox19.Visible:=false;
pnlSaveas3.Visible:=false;
edtdisplay3.Clear;
edtSaveas3.Clear;
mtlOK.Visible:=false;
end
else if pnlDelB.Visible =true then
begin
pnlDelB.Visible:=false;
tabsheet7.TabVisible:=true;
tabsheet9.TabVisible:=false;
mtlDel.Visible:=false;
mtlRefresh.Visible:=false;
mtlCancel.Visible:=false;
mtlNext.Visible:=false;
mtlOK.Visible:=false;
end
else if pnlBadd.Visible = true then
begin
pnlBadd.Visible:=false;
tabsheet8.TabVisible:=false;
tabsheet7.TabVisible:=true;
mtlDel.Visible:=false;
mtlRefresh.Visible:=false;
mtlCancel.Visible:=false;
mtlNext.Visible:=false;
mtlOK2.Visible:=false;
end;
end;

procedure TfrmWorkplace.mtlDelClick(Sender: TObject);
begin
if pnlDelete.Visible = true then
begin
if MessageDLG('Are you sure you want to delete the animal '+qryOrgAni['Animal']+' from EcoraNum and EcoraFacts table ?',mtWarning,[mbOK,mbCancel],0) = mrOK then
begin
qryfDelete.Active:=false;
qryfDelete.SQl.Text:='Delete from EcoraFacts where Animal = '''+qryOrgAni['Animal']+''' ' ;
qryfDelete.ExecSQl;
qryfDelete.SQL.Text:='Select * from EcoraFacts';
qryfDelete.Active:=true;
qryOrgAni.Delete;
end;
end
else if pnlDelGeo.Visible =true then
begin
if MessageDLG('Are you sure you want to delete the animal '+qryOrgGeo['Animal']+' from EcoraGeoTagging table ?',mtWarning,[mbOK,mbCancel],0) = mrOK then
qryOrgGeo.Delete;
end
else if pnlDelV.Visible =true then
begin
if MessageDLG('Are you sure you want to delete the animal '+qryOrgVac['Name']+' from EcoraAnimals table ?',mtWarning,[mbOK,mbCancel],0) = mrOK then
qryOrgVac.Delete;
end
else if pnlDelB.Visible =true then
begin
if MessageDLG('Are you sure you want to delete the animal '+qryBaby['Animal']+' from EcoraBaby table ?',mtWarning,[mbOK,mbCancel],0) = mrOK then
qryBaby.Delete;
end;

end;

procedure TfrmWorkplace.mtlRefreshClick(Sender: TObject);
begin
qryOrgAni.Active:=false;
qryOrgAni.SQL.Text:='Select * from EcoraNum';
qryOrgAni.Active:=true;
if pnldelete.Visible=true then
begin
spinedit1.Value:=0;
spinedit2.Value:=0;
combobox1.ItemIndex:=-1;
end
else if pnlDelB.Visible = true then
begin
qryBaby.Active:=false;
qryBaby.SQL.Text:='Select * from EcoraBaby';
qryBaby.Active:=true;
end
///
else if pnlDelV.Visible = true then
begin
qryOrgVac.Active:=false;
qryOrgVac.SQL.Text:='Select * from EcoraAnimals';
qryOrgVac.Active:=true;
end
///
else if pnlDelGeo.Visible = true then
begin
qryOrgGeo.Active:=false;
qryOrgGeo.SQL.Text:='Select * from EcoraGeoTagging';
qryOrgGeo.Active:=true;
end
///
else if pnlAddG.Visible = true then
begin
edtSaveas.Text:='Type name of column here';
panel8.Height:=370;
dbgrid2.Height:=329;
groupbox12.Visible:=false;
groupbox11.Visible:=false;
Groupbox10.Visible:=false;
pnlSaveas2.Visible:=false;
mtlOK.Visible:=false;
checkbox9.Checked:=false;
checkbox8.Checked:=false;
checkbox12.Checked:=false;
checkbox11.Checked:=false;
edtdisplay2.Clear;
end
///
else if pnlAddc.Visible = true then
begin
edtSaveas.Text:='Type name of column here';
panel8.Height:=370;
dbgrid2.Height:=329;
groupbox6.Visible:=false;
groupbox4.Visible:=false;
Groupbox5.Visible:=false;
pnlSaveas.Visible:=false;
mtlOK.Visible:=false;
checkbox2.Checked:=false;
checkbox1.Checked:=false;
checkbox3.Checked:=false;
checkbox6.Checked:=false;
checkbox7.Checked:=false;
edtdisplay.Clear;
end
///
else if pnlEditF.Visible = true then
begin
qryFacts.Active:=false;
qryFacts.SQL.Text:='Select * from EcoraFacts';
qryFacts.Active:=true;
end
///
else if pnlEditV.Visible = true then
begin
qryOrgVac.Active:=false;
qryOrgVac.SQL.Text:='Select * from EcoraAnimals';
qryOrgVac.Active:=true;
end
///
else if pnlEditA.Visible = true then
begin
qryOrgAni.Active:=false;
qryOrgAni.SQL.Text:='Select * from EcoraNum';
qryOrgAni.Active:=true;
end
///
else if pnlEditG.Visible = true then
begin
qryOrgGeo.Active:=false;
qryOrgGeo.SQL.Text:='Select * from EcoraGeoTagging';
qryOrgGeo.Active:=true;
end
///
else if pnlBEdit.Visible = true then
begin
qryBaby.Active:=false;
qryBaby.SQL.Text:='Select * from EcoraBaby';
qryBaby.Active:=true;
end;

end;
procedure TfrmWorkplace.mtlOKClick(Sender: TObject);
var
sCal,sNameadd,sbabyName,sSymbol,sOrder,sName,sSName,sAs:string;
iItems,iMale,ifemale:integer;
begin
if pnlBaddc.Visible = true then // if statement 1
begin
//Assign values into sSymbol
iItems:=combobox11.ItemIndex;
case iItems of
0:sSymbol:='=';
1:sSymbol:='<>';
end;
sOrder:=combobox12.Text;
sName:=combobox10.Text;
sSName:=edit9.Text;
sCal:=edtDisplay3.Text;
sAs:=edtSaveas3.Text;
//////////////////////////////////////////////
 if (checkbox18.Checked = true) and (Checkbox17.Checked = true) and (checkbox19.Checked = true) AND (combobox11.ItemIndex = 2) then  ////order by condition ASC with where and like
 begin
 try
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select EcoraID,[Baby Animal],Animal,Format('+sCal+') as ['+sAs+'],[Number of girl babys],[Number of boy babys],[Total Number of babys] from EcoraBaby where ('+sName+' Like ''%'+sSName+'%'') Order by '+sOrder+' ASC';
 qryBaby.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select * from EcoraBaby';
 qryBaby.Active:=true;
 end;
 end
 else if (checkbox17.Checked = true) and (Checkbox10.Checked = true) and (checkbox18.Checked = true) AND (combobox11.ItemIndex = 2) then /////order by condition DESC with where and like
 begin
 try
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select EcoraID,[Baby Animal],Animal,Format('+sCal+') as ['+sAs+'],[Number of girl babys],[Number of boy babys],[Total Number of babys] from EcoraBaby where ('+sName+' Like ''%'+sSName+'%'') Order by '+sOrder+' DESC';
 qryBaby.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select * from EcoraBaby';
 qryBaby.Active:=true;
 end;
 end
//////////////////////////
 else if (checkbox17.Checked = true) and (Checkbox18.Checked = true) and (checkbox19.Checked = true) then    ////order by condition ASC with where
 begin
 try
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select EcoraID,[Baby Animal],Animal,Format('+sCal+') as ['+sAs+'],[Number of girl babys],[Number of boy babys],[Total Number of babys] from EcoraBaby  where ('+sName+' '+sSymbol+' '''+sSName+''') Order by '+sOrder+' ASC';
 qryBaby.Active:=true
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select * from EcoraBaby';
 qryBaby.Active:=true;
 end;
 end
 else if (checkbox17.Checked = true) and (Checkbox18.Checked = true) and (checkbox20.Checked = true) then    ////order by condition DESC with where
 begin
 try
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select EcoraID,[Baby Animal],Animal,Format('+sCal+') as ['+sAs+'],[Number of girl babys],[Number of boy babys], [Total Number of babys] from EcoraBaby where ('+sName+' '+sSymbol+' '''+sSName+''') Order by '+sOrder+' DESC';
 qryBaby.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select * from EcoraBaby';
 qryBaby.Active:=true;
 end;
 end
/////////////////////////////////////////////////////////
 else if (checkbox17.Checked = true) AND (combobox11.ItemIndex = 2) then // where like condition
 begin
 try
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select EcoraID,[Baby Animal],Animal,Format('+sCal+') as ['+sAs+'],[Number of girl babys],[Number of boy babys], [Total Number of babys] from EcoraBaby where ('+sName+' Like ''%'+sSName+'%'')';
 qryBaby.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select * from EcoraBaby';
 qryBaby.Active:=true;
 end;
 end
 else if checkbox17.Checked = true then//where condition
 begin
 try
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select EcoraID,[Baby Animal],Animal,Format('+sCal+') as ['+sAs+'],[Number of girl babys],[Number of boy babys], [Total Number of babys] from EcoraBaby where ('+sName+' '+sSymbol+' '''+sSName+''')';
 qryBaby.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select * from EcoraBaby';
 qryBaby.Active:=true;
 end;
 end
///////////////////////////////////////
 else if (checkbox18.Checked = true) and (Checkbox19.Checked = true) then //oder by condition ASC
 begin
 try
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select EcoraID,[Baby Animal],Animal,Format('+sCal+') as ['+sAs+'],[Number of girl babys],[Number of boy babys],[Total Number of babys] from EcoraBaby Order by '+sOrder+' ASC';
 qryBaby.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select * from EcoraBaby';
 qryBaby.Active:=true;
 end;
 end
 else if (checkbox18.Checked = true) and (Checkbox20.Checked = true) then//order by condition DESC
 begin
 try
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select EcoraID,[Baby Animal],Animal,Format('+sCal+') as ['+sAs+'],[Number of girl babys],[Number of boy babys],[Total Number of babys] from EcoraBaby Order by '+sOrder+' DESC';
 qryBaby.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select * from EcoraBaby';
 qryBaby.Active:=true;
 end;
 end
///////////////////
 else if groupbox17.Visible <> true then// step 4 not avialable
 begin
 try
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select EcoraID,Animal,Format('+sCal+') as ['+sAs+'],[Number of girl babys],[Number of boy babys],[Baby Animal],[Total Number of babys] from EcoraBaby';
 qryBaby.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select * from EcoraBaby';
 qryBaby.Active:=true;
 end;
 end;
//////////////////////////////////////////////////////////////////////////////////////end of long nested if
mtlOK.Visible:=false;
panel76.Height:=370;
dbgrid7.Height:=329;
groupbox18.Visible:=false;
groupbox17.Visible:=false;
CheckBox17.Checked:=false;
CheckBox18.Checked:=false;
Groupbox19.Visible:=false;
pnlSaveas3.Visible:=false;
edtdisplay3.Clear;
edtSaveas3.Text:='Type name of column here';
end
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////end of 1st if statement


else if pnlAddC.Visible = true then //2
begin
iItems:=combobox2.ItemIndex;
case iItems of
0:sSymbol:='=';
1:sSymbol:='<>';
end;
sOrder:=combobox4.Text;
sName:=combobox3.Text;
sSName:=edit1.Text;
sCal:=edtDisplay.Text;
sAs:=edtSaveas.Text;
/////////////////////////////////////////////
 if (checkbox7.Checked = true) and (Checkbox4.Checked = true) and (checkbox6.Checked = true) AND (combobox2.ItemIndex = 2) then  ////order by condition ASC with where and like
 begin
 try
 qryOrgAni.Active:=false;
 qryOrgAni.SQL.Text:='Select EcoraID,Animal,Format('+sCal+') as ['+sAs+'],[Order],[Number_of_male],[Number_of_female],Total_number_of_animal,Kingdom,IMG,Description  from EcoraNum where ('+sName+' Like ''%'+sSName+'%'') Order by '+sOrder+' ASC';
 qryOrgAni.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgAni.Active:=false;
  qryOrgAni.SQL.Text:='Select * from EcoraNum ';
  qryOrgAni.Active:=true;
 end;
 end
 else if (checkbox7.Checked = true) and (Checkbox5.Checked = true) and (checkbox6.Checked = true) AND (combobox2.ItemIndex = 2) then /////order by condition DESC with where and like
 begin
 try
 qryOrgAni.Active:=false;
 qryOrgAni.SQL.Text:='Select EcoraID,Animal,Format('+sCal+') as ['+sAs+'],[Order],[Number_of_male],[Number_of_female],Total_number_of_animal,Kingdom,IMG,Description  from EcoraNum where ('+sName+' Like ''%'+sSName+'%'') Order by '+sOrder+' DESC';
 qryOrgAni.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgAni.Active:=false;
  qryOrgAni.SQL.Text:='Select * from EcoraNum ';
  qryOrgAni.Active:=true;
 end;
 end
/////////////////////////
 else if (checkbox7.Checked = true) and (Checkbox4.Checked = true) and (checkbox6.Checked = true) then    ////order by condition ASC with where
 begin
 try
 qryOrgAni.Active:=false;
 qryOrgAni.SQL.Text:='Select EcoraID,Animal,Format('+sCal+') as ['+sAs+'],[Order],[Number_of_male],[Number_of_female],Total_number_of_animal,Kingdom,IMG,Description  from EcoraNum where ('+sName+' '+sSymbol+' '''+sSName+''') Order by '+sOrder+' ASC';
 qryOrgAni.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgAni.Active:=false;
  qryOrgAni.SQL.Text:='Select * from EcoraNum ';
  qryOrgAni.Active:=true;
 end;

 end
 else if (checkbox7.Checked = true) and (Checkbox5.Checked = true) and (checkbox6.Checked = true) then    ////order by condition DESC with where
 begin
 try
 qryOrgAni.Active:=false;
 qryOrgAni.SQL.Text:='Select EcoraID,Animal,Format('+sCal+') as ['+sAs+'],[Order],[Number_of_male],[Number_of_female],Total_number_of_animal,Kingdom,IMG,Description  from EcoraNum where ('+sName+' '+sSymbol+' '''+sSName+''') Order by '+sOrder+' DESC';
 qryOrgAni.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgAni.Active:=false;
  qryOrgAni.SQL.Text:='Select * from EcoraNum ';
  qryOrgAni.Active:=true;
 end;
 end
/////////////////////////////////////////////////////////
 else if (checkbox6.Checked = true) AND (combobox2.ItemIndex = 2) then // where like condition
 begin
  try
 qryOrgAni.Active:=false;
 qryOrgAni.SQL.Text:='Select EcoraID,Animal,Format('+sCal+') as ['+sAs+'],[Order],[Number_of_male],[Number_of_female],Total_number_of_animal,Kingdom,IMG,Description  from EcoraNum where ('+sName+' Like ''%'+sSName+'%'')';
 qryOrgAni.Active:=true;
  except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgAni.Active:=false;
  qryOrgAni.SQL.Text:='Select * from EcoraNum ';
  qryOrgAni.Active:=true;
  end;
 end
 else if checkbox6.Checked = true then//where condition
 begin
  try
 qryOrgAni.Active:=false;
 qryOrgAni.SQL.Text:='Select EcoraID,Animal,Format('+sCal+') as ['+sAs+'],[Order],[Number_of_male],[Number_of_female],Total_number_of_animal,Kingdom,IMG,Description  from EcoraNum where ('+sName+' '+sSymbol+' '''+sSName+''')';
 qryOrgAni.Active:=true;
  except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgAni.Active:=false;
  qryOrgAni.SQL.Text:='Select * from EcoraNum ';
  qryOrgAni.Active:=true;
  end;
 end
///////////////////////////////////////
 else if (checkbox7.Checked = true) and (Checkbox4.Checked = true) then //oder by condition ASC
 begin
  try
 qryOrgAni.Active:=false;
 qryOrgAni.SQL.Text:='Select EcoraID,Animal,Format('+sCal+') as ['+sAs+'],[Order],[Number_of_male],[Number_of_female],Total_number_of_animal,Kingdom,IMG,Description  from EcoraNum  Order by '+sOrder+' ASC';
 qryOrgAni.Active:=true;
  except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgAni.Active:=false;
  qryOrgAni.SQL.Text:='Select * from EcoraNum ';
  qryOrgAni.Active:=true;
  end;
 end
 else if (checkbox7.Checked = true) and (Checkbox5.Checked = true) then//order by condition DESC
 begin
  try
 qryOrgAni.Active:=false;
 qryOrgAni.SQL.Text:='Select EcoraID,Animal,Format('+sCal+') as ['+sAs+'],[Order],[Number_of_male],[Number_of_female],Total_number_of_animal,Kingdom,IMG,Description  from EcoraNum Order by '+sOrder+' DESC';
 qryOrgAni.Active:=true;
  except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgAni.Active:=false;
  qryOrgAni.SQL.Text:='Select * from EcoraNum ';
  qryOrgAni.Active:=true;
 end;
 end
///////////////////
 else if groupbox4.Visible <> true then// step 4 not avialable
 begin
  try
 qryOrgAni.Active:=false;
 qryOrgAni.SQL.Text:='Select EcoraID,Animal,Format('+sCal+') as ['+sAs+'],[Order],[Number_of_male],[Number_of_female],Total_number_of_animal,Kingdom,IMG,Description  from EcoraNum';
 qryOrgAni.Active:=true;
  except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgAni.Active:=false;
  qryOrgAni.SQL.Text:='Select * from EcoraNum ';
  qryOrgAni.Active:=true;
 end;
 end;
//////////////////////////////////////////////////////////////////////////////////////end of long nested if
panel8.Height:=370;
dbgrid2.Height:=329;
groupbox6.Visible:=false;
groupbox4.Visible:=false;
Groupbox5.Visible:=false;
pnlSaveas.Visible:=false;
CheckBox6.Checked:=false;
CheckBox7.Checked:=false;
mtlOK.Visible:=false;
edtdisplay.Clear;
edtSaveas.Text:='Type name of column here';
end
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////end of 2nd if statement

else if pnlAddG.Visible = true then
begin
iItems:=combobox6.ItemIndex;
case iItems of
0:sSymbol:='=';
1:sSymbol:='<>';
end;
sOrder:=combobox7.Text;
sName:=combobox5.Text;
sSName:=edit5.Text;
sCal:=edtDisplay2.Text;
sAs:=edtSaveas2.Text;

/////////////////////////////////////////////////////////
 if (checkbox12.Checked = true) and (Checkbox13.Checked = true) and (checkbox11.Checked = true) AND (combobox6.ItemIndex = 2) then  ////order by condition ASC with where and like
 begin
 try
 qryOrgGeo.Active:=false;
 qryOrgGeo.SQL.Text:='Select GeoID,Animal,Format('+sCal+') as ['+sAs+'],[Park/Sight spoted],[X-coordinates of Animal],[Y-coordinates of Animal],[Type of weather condition],[Date spotted],[EcoraID] from EcoraGeoTagging where ('+sName+' Like ''%'+sSName+'%'') Order by '+sOrder+' ASC';
 qryOrgGeo.Active:=true;
  except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgGeo.Active:=false;
  qryOrgGeo.SQL.Text:='Select * from EcoraGeoTagging ';
  qryOrgGeo.Active:=true;
 end;
 end
 else if (checkbox12.Checked = true) and (Checkbox11.Checked = true) and (checkbox12.Checked = true) AND (combobox6.ItemIndex = 2) then /////order by condition DESC with where and like
 begin
 try
 qryOrgGeo.Active:=false;
 qryOrgGeo.SQL.Text:='Select GeoID,Animal,Format('+sCal+') as ['+sAs+'],[Park/Sight spoted],[X-coordinates of Animal],[Y-coordinates of Animal],[Type of weather condition],[Date spotted],[EcoraID] from EcoraGeoTagging where ('+sName+' Like ''%'+sSName+'%'') Order by '+sOrder+' DESC';
 qryOrgGeo.Active:=true;
  except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgGeo.Active:=false;
  qryOrgGeo.SQL.Text:='Select * from EcoraGeoTagging ';
  qryOrgGeo.Active:=true;
 end;
 end
/////////////////////////
 else if (checkbox12.Checked = true) and (Checkbox13.Checked = true) and (checkbox11.Checked = true) then    ////order by condition ASC with where
 begin
 try
 qryOrgGeo.Active:=false;
 qryOrgGeo.SQL.Text:='Select GeoID,Animal,Format('+sCal+') as ['+sAs+'],[Park/Sight spoted],[X-coordinates of Animal],[Y-coordinates of Animal],[Type of weather condition],[Date spotted],[EcoraID] from EcoraGeoTagging where ('+sName+' '+sSymbol+' '''+sSName+''') Order by '+sOrder+' ASC';
 qryOrgGeo.Active:=true
   except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgGeo.Active:=false;
  qryOrgGeo.SQL.Text:='Select * from EcoraGeoTagging ';
  qryOrgGeo.Active:=true;
 end;
 end
 else if (checkbox12.Checked = true) and (Checkbox14.Checked = true) and (checkbox11.Checked = true) then    ////order by condition DESC with where
 begin
 try
 qryOrgGeo.Active:=false;
 qryOrgGeo.SQL.Text:='Select GeoID,Animal,Format('+sCal+') as ['+sAs+'],[Park/Sight spoted],[X-coordinates of Animal],[Y-coordinates of Animal],[Type of weather condition],[Date spotted],[EcoraID] from EcoraGeoTagging where ('+sName+' '+sSymbol+' '''+sSName+''') Order by '+sOrder+' DESC';
 qryOrgGeo.Active:=true;
 except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgGeo.Active:=false;
  qryOrgGeo.SQL.Text:='Select * from EcoraGeoTagging ';
  qryOrgGeo.Active:=true;
 end;
 end
/////////////////////////////////////////////////////////
 else if (checkbox11.Checked = true) AND (combobox6.ItemIndex = 2) then // where like condition
 begin
 try
 qryOrgGeo.Active:=false;
 qryOrgGeo.SQL.Text:='Select GeoID,Animal,Format('+sCal+') as ['+sAs+'],[Park/Sight spoted],[X-coordinates of Animal],[Y-coordinates of Animal],[Type of weather condition],[Date spotted],[EcoraID] from EcoraGeoTagging where ('+sName+' Like ''%'+sSName+'%'')';
 qryOrgGeo.Active:=true;
 except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgGeo.Active:=false;
  qryOrgGeo.SQL.Text:='Select * from EcoraGeoTagging ';
  qryOrgGeo.Active:=true;
 end;
 end
 else if checkbox11.Checked = true then//where condition
 begin
 try
 qryOrgGeo.Active:=false;
 qryOrgGeo.SQL.Text:='Select GeoID,Animal,Format('+sCal+') as ['+sAs+'],[Park/Sight spoted],[X-coordinates of Animal],[Y-coordinates of Animal],[Type of weather condition],[Date spotted],[EcoraID] from EcoraGeoTagging where ('+sName+' '+sSymbol+' '''+sSName+''')';
 qryOrgGeo.Active:=true;
 except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgGeo.Active:=false;
  qryOrgGeo.SQL.Text:='Select * from EcoraGeoTagging ';
  qryOrgGeo.Active:=true;
 end;
 end
///////////////////////////////////////
 else if (checkbox12.Checked = true) and (Checkbox13.Checked = true) then //oder by condition ASC
 begin
 try
 qryOrgGeo.Active:=false;
 qryOrgGeo.SQL.Text:='Select GeoID,Animal,Format('+sCal+') as ['+sAs+'],[Park/Sight spoted],[X-coordinates of Animal],[Y-coordinates of Animal],[Type of weather condition],[Date spotted],[EcoraID] from EcoraGeoTagging Order by '+sOrder+' ASC';
 qryOrgGeo.Active:=true;
 except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgGeo.Active:=false;
  qryOrgGeo.SQL.Text:='Select * from EcoraGeoTagging ';
  qryOrgGeo.Active:=true;
 end;
 end
 else if (checkbox12.Checked = true) and (Checkbox14.Checked = true) then//order by condition DESC
 begin
 try
 qryOrgGeo.Active:=false;
 qryOrgGeo.SQL.Text:='Select GeoID,Animal,Format('+sCal+') as ['+sAs+'],[Park/Sight spoted],[X-coordinates of Animal],[Y-coordinates of Animal],[Type of weather condition],[Date spotted],[EcoraID] from EcoraGeoTagging Order by '+sOrder+' DESC';
 qryOrgGeo.Active:=true;
 except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgGeo.Active:=false;
  qryOrgGeo.SQL.Text:='Select * from EcoraGeoTagging ';
  qryOrgGeo.Active:=true;
 end;
 end
///////////////////
 else if groupbox10.Visible <> true then// step 4 not avialable
 begin
 try
 qryOrgGeo.Active:=false;
 qryOrgGeo.SQL.Text:='Select GeoID,Animal,Format('+sCal+') as ['+sAs+'],[Park/Sight spoted],[X-coordinates of Animal],[Y-coordinates of Animal],[Type of weather condition],[Date spotted],[EcoraID] from EcoraGeoTagging';
 qryOrgGeo.Active:=true;
 except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgGeo.Active:=false;
  qryOrgGeo.SQL.Text:='Select * from EcoraGeoTagging ';
  qryOrgGeo.Active:=true;
 end;
 end;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////end of  long nested if statement
panel34.Height:=370;
dbgrid3.Height:=329;
groupbox11.Visible:=false;
groupbox10.Visible:=false;
Groupbox12.Visible:=false;
pnlSaveas2.Visible:=false;
CHeckBox12.Checked:=false;
CheckBox11.Checked:=false;
edtdisplay2.Clear;
edtSaveas2.Text:='Type name of column here';
mtlOK.Visible:=false;
end
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////end of if statement

else if pnlBadd.Visible = true then //baby hub
begin
sNameAdd:=edit4.Text;
sBabyName:=edit5.Text;
iMale:=spinedit4.Value;
iFemale:=spinedit3.Value;
qryBaby.Active:=false;
qryBaby.SQL.Text:='INSERT INTO EcoraBabyclub(EcoraID,Animal,[Baby Animal],[Number of girl babys],[Number of boy babys],[Number of boy babys]) Values ('''+sNameAdd+''','''+sbabyName+''','+Inttostr(iMale)+','+Inttostr(iFemale)+','+(Inttostr(iFemale)+Inttostr(iMale))+')';
qryBaby.ExecSQL;
messagedlg('Thank you for your time'+#13+'You can now proceed',mtInformation,[mbOK],0);
qrybaby.Active:=true;
edit4.Clear;
edit5.Clear;
spinedit4.Value:=0;
spinedit3.Value:=0;
end;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////end of last if statement


end;
procedure TfrmWorkplace.mtlNextClick(Sender: TObject);
begin
if pnlAddC.Visible = true then
begin
Groupbox5.Visible:=true;
end
else if pnlAddG.Visible = true then
begin
Groupbox11.Visible:=true;
end
else if pnlBAddc.Visible = true then
begin
Groupbox18.Visible:=true;
end
else if pnlAddNewA.Visible = true then
begin
mtlOk2.Visible:=true;
mtlPrevious.Visible:=true;
mtlNext.Visible:=false;
pnlFacts.Visible:=true;
pnlAddNewA.Visible:=false;
tabsheet12.TabVisible:=false;
tabsheet13.Visible:=true;
edit11.SetFocus;
end;
end;

procedure TfrmWorkplace.DateTimePicker1Change(Sender: TObject);
var
Date:TDateTime;
sDate:string;
begin
Date:=DateTimePicker1.Date;
sDate:=DateToStr(Date);
qryOrgGeo.Active:=false;
qryOrgGeo.SQL.Text:='select * from EcoraGeoTagging where [Date spotted] = #'+sDate+'#';
qryOrgGeo.Active:=true;
end;

procedure TfrmWorkplace.Edit2Change(Sender: TObject);
begin
qryOrgGeo.Active:=false;
qryOrgGeo.SQL.Text:='select * from EcoraGeoTagging where [Park/Sight spoted] like "%'+edit2.Text+'%"';
qryOrgGeo.Active:=true;
end;

procedure TfrmWorkplace.mtlDelGClick(Sender: TObject);
begin
pnlDelGeo.Visible:=true;
mtlDeLG.Visible:=false;
mtlAddG.Visible:=false;
mtlDel.Visible:=true;
mtlDelall.Visible:=true;
mtlRefresh.Visible:=true;
mtlCancel.Visible:=true;
//pnl.Visible:=false;
label19.Caption:='Delete...';
mtlPrevious.Visible:=false;

end;

procedure TfrmWorkplace.mtlAddGClick(Sender: TObject);
begin
pnlDelGeo.Visible:=false;
mtlDeLG.Visible:=false;
mtlAddG.Visible:=false;
mtlDelall.Visible:=true;
mtlRefresh.Visible:=true;
mtlCancel.Visible:=true;
pnlAddG.Visible:=true;
label19.Caption:='Add new colomn...';
mtlPrevious.Visible:=false;
end;

procedure TfrmWorkplace.CheckBox9Click(Sender: TObject);
begin
If Checkbox9.Checked = True then
mtlX.Visible:=true
else
mtlX.Visible:=False;
end;

procedure TfrmWorkplace.CheckBox8Click(Sender: TObject);
begin
If Checkbox8.Checked = True then
mtlY.Visible:=true
else
mtlY.Visible:=False;
end;

procedure TfrmWorkplace.AdvMetroButton17Click(Sender: TObject);
begin
edtDisplay2.Text:=edtDisplay2.Text+'9';
end;

procedure TfrmWorkplace.AdvMetroButton19Click(Sender: TObject);
begin
edtDisplay2.Text:=edtDisplay2.Text+'8';
end;

procedure TfrmWorkplace.AdvMetroButton18Click(Sender: TObject);
begin
edtDisplay2.Text:=edtDisplay2.Text+'7';
end;

procedure TfrmWorkplace.AdvMetroButton15Click(Sender: TObject);
begin
edtDisplay2.Text:=edtDisplay2.Text+'6';
end;

procedure TfrmWorkplace.AdvMetroButton20Click(Sender: TObject);
begin
edtDisplay2.Text:=edtDisplay2.Text+'5';
end;

procedure TfrmWorkplace.AdvMetroButton14Click(Sender: TObject);
begin
edtDisplay2.Text:=edtDisplay2.Text+'4';
end;

procedure TfrmWorkplace.AdvMetroButton16Click(Sender: TObject);
begin
edtDisplay2.Text:=edtDisplay2.Text+'3';
end;

procedure TfrmWorkplace.AdvMetroButton13Click(Sender: TObject);
begin
edtDisplay2.Text:=edtDisplay2.Text+'2';
end;

procedure TfrmWorkplace.AdvMetroButton12Click(Sender: TObject);
begin
edtDisplay2.Text:=edtDisplay2.Text+'1';
end;

procedure TfrmWorkplace.AdvMetroButton8Click(Sender: TObject);
begin
edtDisplay2.Text:=edtDisplay2.Text+'0';
end;

procedure TfrmWorkplace.mtlPlus2Click(Sender: TObject);
begin
edtDisplay2.Text:=edtDisplay2.Text+'+';
end;

procedure TfrmWorkplace.mtlMinus2Click(Sender: TObject);
begin
edtDisplay2.Text:=edtDisplay2.Text+'-';
end;

procedure TfrmWorkplace.mtlTimes2Click(Sender: TObject);
begin
edtDisplay2.Text:=edtDisplay2.Text+'*';
end;

procedure TfrmWorkplace.mtlDiv2Click(Sender: TObject);
begin
edtDisplay2.Text:=edtDisplay2.Text+'/';
end;

procedure TfrmWorkplace.mtlBrac4Click(Sender: TObject);
begin
edtDisplay2.Text:=edtDisplay2.Text+')';
end;

procedure TfrmWorkplace.mtlBrac3Click(Sender: TObject);
begin
edtDisplay2.Text:=edtDisplay2.Text+'(';
end;

procedure TfrmWorkplace.mtlDot2Click(Sender: TObject);
begin
edtDisplay2.Text:=edtDisplay2.Text+'.';
end;

procedure TfrmWorkplace.mtlXClick(Sender: TObject);
begin
edtDisplay2.Text:=edtDisplay2.Text+'[X-coordinates of Animal]';
end;

procedure TfrmWorkplace.mtlYClick(Sender: TObject);
begin
edtDisplay2.Text:=edtDisplay2.Text+'[Y-coordinates of Animal]';
end;

procedure TfrmWorkplace.mtlClear2Click(Sender: TObject);
begin
edtDisplay2.Clear;
end;

procedure TfrmWorkplace.mtlEqual2Click(Sender: TObject);
begin
if edtDisplay2.Text = '' then
begin
messagedlg('Please do a calculation '+#13+'EG. [Number_of_male]*5',mtError,[mbOK],0);
end
else if edtDisplay2.Text <> '' then
begin
pnlSaveas2.Visible:=true;
mtlNext.Visible:=true;
end;
end;

procedure TfrmWorkplace.mtlSback2Click(Sender: TObject);
begin
pnlSaveas2.Visible:=false;
mtlNext.Visible:=false;
end;

procedure TfrmWorkplace.mtlSnext2Click(Sender: TObject);
begin
Groupbox11.Visible:=true;
end;

procedure TfrmWorkplace.mtlYebo2Click(Sender: TObject);
begin
GroupBox10.Visible:=true;
GroupBox12.Visible:=true;
panel34.Height:=220;
dbgrid4.Height:=180;
mtlOk.Visible:=true;
mtlNext.Visible:=false;
end;

procedure TfrmWorkplace.mtlNee2Click(Sender: TObject);
begin
GroupBox10.Visible:=false;
GroupBox12.Visible:=true;
panel34.Height:=220;
dbgrid3.Height:=180;
mtlOk.Visible:=true;
mtlNext.Visible:=false;
end;

procedure TfrmWorkplace.CheckBox13Click(Sender: TObject);
begin
If Checkbox13.Checked = True then
checkbox14.State:= cbGrayed;
end;

procedure TfrmWorkplace.CheckBox14Click(Sender: TObject);
begin
If Checkbox14.Checked = True then
checkbox13.State:= cbGrayed;
end;

procedure TfrmWorkplace.mtlDoneClick(Sender: TObject);
var
sCal,sSymbol,sOrder,sName,sSName,sAs:string;
iItems:integer;
begin
iItems:=combobox6.ItemIndex;
case iItems of
0:sSymbol:='=';
1:sSymbol:='<>';
end;
sOrder:=combobox7.Text;
sName:=combobox5.Text;
sSName:=edit5.Text;
sCal:=edtDisplay2.Text;
sAs:=edtSaveas2.Text;

/////////////////////////////////////////////////////////
 if (checkbox12.Checked = true) and (Checkbox13.Checked = true) and (checkbox11.Checked = true) AND (combobox6.ItemIndex = 2) then  ////order by condition ASC with where and like
 begin
 try
 qryOrgGeo.Active:=false;
 qryOrgGeo.SQL.Text:='Select GeoID,Animal,Format('+sCal+') as ['+sAs+'],[Park/Sight spoted],[X-coordinates of Animal],[Y-coordinates of Animal],[Type of weather condition],[Date spotted],[EcoraID] from EcoraGeoTagging where ('+sName+' Like ''%'+sSName+'%'') Order by '+sOrder+' ASC';
 qryOrgGeo.Active:=true;
  except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgGeo.Active:=false;
  qryOrgGeo.SQL.Text:='Select * from EcoraGeoTagging ';
  qryOrgGeo.Active:=true;
 end;
 end
 else if (checkbox12.Checked = true) and (Checkbox11.Checked = true) and (checkbox12.Checked = true) AND (combobox6.ItemIndex = 2) then /////order by condition DESC with where and like
 begin
 try
 qryOrgGeo.Active:=false;
 qryOrgGeo.SQL.Text:='Select GeoID,Animal,Format('+sCal+') as ['+sAs+'],[Park/Sight spoted],[X-coordinates of Animal],[Y-coordinates of Animal],[Type of weather condition],[Date spotted],[EcoraID] from EcoraGeoTagging where ('+sName+' Like ''%'+sSName+'%'') Order by '+sOrder+' DESC';
 qryOrgGeo.Active:=true;
  except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgGeo.Active:=false;
  qryOrgGeo.SQL.Text:='Select * from EcoraGeoTagging ';
  qryOrgGeo.Active:=true;
 end;
 end
/////////////////////////
 else if (checkbox12.Checked = true) and (Checkbox13.Checked = true) and (checkbox11.Checked = true) then    ////order by condition ASC with where
 begin
 try
 qryOrgGeo.Active:=false;
 qryOrgGeo.SQL.Text:='Select GeoID,Animal,Format('+sCal+') as ['+sAs+'],[Park/Sight spoted],[X-coordinates of Animal],[Y-coordinates of Animal],[Type of weather condition],[Date spotted],[EcoraID] from EcoraGeoTagging where ('+sName+' '+sSymbol+' '''+sSName+''') Order by '+sOrder+' ASC';
 qryOrgGeo.Active:=true
   except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgGeo.Active:=false;
  qryOrgGeo.SQL.Text:='Select * from EcoraGeoTagging ';
  qryOrgGeo.Active:=true;
 end;
 end
 else if (checkbox12.Checked = true) and (Checkbox14.Checked = true) and (checkbox11.Checked = true) then    ////order by condition DESC with where
 begin
 try
 qryOrgGeo.Active:=false;
 qryOrgGeo.SQL.Text:='Select GeoID,Animal,Format('+sCal+') as ['+sAs+'],[Park/Sight spoted],[X-coordinates of Animal],[Y-coordinates of Animal],[Type of weather condition],[Date spotted],[EcoraID] from EcoraGeoTagging where ('+sName+' '+sSymbol+' '''+sSName+''') Order by '+sOrder+' DESC';
 qryOrgGeo.Active:=true;
 except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgGeo.Active:=false;
  qryOrgGeo.SQL.Text:='Select * from EcoraGeoTagging ';
  qryOrgGeo.Active:=true;
 end;
 end
/////////////////////////////////////////////////////////
 else if (checkbox11.Checked = true) AND (combobox6.ItemIndex = 2) then // where like condition
 begin
 try
 qryOrgGeo.Active:=false;
 qryOrgGeo.SQL.Text:='Select GeoID,Animal,Format('+sCal+') as ['+sAs+'],[Park/Sight spoted],[X-coordinates of Animal],[Y-coordinates of Animal],[Type of weather condition],[Date spotted],[EcoraID] from EcoraGeoTagging where ('+sName+' Like ''%'+sSName+'%'')';
 qryOrgGeo.Active:=true;
 except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgGeo.Active:=false;
  qryOrgGeo.SQL.Text:='Select * from EcoraGeoTagging ';
  qryOrgGeo.Active:=true;
 end;
 end
 else if checkbox11.Checked = true then//where condition
 begin
 try
 qryOrgGeo.Active:=false;
 qryOrgGeo.SQL.Text:='Select GeoID,Animal,Format('+sCal+') as ['+sAs+'],[Park/Sight spoted],[X-coordinates of Animal],[Y-coordinates of Animal],[Type of weather condition],[Date spotted],[EcoraID] from EcoraGeoTagging where ('+sName+' '+sSymbol+' '''+sSName+''')';
 qryOrgGeo.Active:=true;
 except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgGeo.Active:=false;
  qryOrgGeo.SQL.Text:='Select * from EcoraGeoTagging ';
  qryOrgGeo.Active:=true;
 end;
 end
///////////////////////////////////////
 else if (checkbox12.Checked = true) and (Checkbox13.Checked = true) then //oder by condition ASC
 begin
 try
 qryOrgGeo.Active:=false;
 qryOrgGeo.SQL.Text:='Select GeoID,Animal,Format('+sCal+') as ['+sAs+'],[Park/Sight spoted],[X-coordinates of Animal],[Y-coordinates of Animal],[Type of weather condition],[Date spotted],[EcoraID] from EcoraGeoTagging Order by '+sOrder+' ASC';
 qryOrgGeo.Active:=true;
 except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgGeo.Active:=false;
  qryOrgGeo.SQL.Text:='Select * from EcoraGeoTagging ';
  qryOrgGeo.Active:=true;
 end;
 end
 else if (checkbox12.Checked = true) and (Checkbox14.Checked = true) then//order by condition DESC
 begin
 try
 qryOrgGeo.Active:=false;
 qryOrgGeo.SQL.Text:='Select GeoID,Animal,Format('+sCal+') as ['+sAs+'],[Park/Sight spoted],[X-coordinates of Animal],[Y-coordinates of Animal],[Type of weather condition],[Date spotted],[EcoraID] from EcoraGeoTagging Order by '+sOrder+' DESC';
 qryOrgGeo.Active:=true;
 except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgGeo.Active:=false;
  qryOrgGeo.SQL.Text:='Select * from EcoraGeoTagging ';
  qryOrgGeo.Active:=true;
 end;
 end
///////////////////
 else if groupbox10.Visible <> true then// step 4 not avialable
 begin
 try
 qryOrgGeo.Active:=false;
 qryOrgGeo.SQL.Text:='Select GeoID,Animal,Format('+sCal+') as ['+sAs+'],[Park/Sight spoted],[X-coordinates of Animal],[Y-coordinates of Animal],[Type of weather condition],[Date spotted],[EcoraID] from EcoraGeoTagging';
 qryOrgGeo.Active:=true;
 except
  MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
  qryOrgGeo.Active:=false;
  qryOrgGeo.SQL.Text:='Select * from EcoraGeoTagging ';
  qryOrgGeo.Active:=true;
 end;
 end;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////end of  long nested if statement
panel34.Height:=370;
dbgrid3.Height:=329;
groupbox11.Visible:=false;
groupbox10.Visible:=false;
Groupbox12.Visible:=false;
pnlSaveas2.Visible:=false;
CHeckBox12.Checked:=false;
CheckBox11.Checked:=false;
edtdisplay2.Clear;
edtSaveas2.Text:='Type name of column here';
mtlOK.Visible:=false;
end;

procedure TfrmWorkplace.AdvMetroTile2Click(Sender: TObject);
begin
tabsheet3.TabVisible:=true;
tabsheet1.TabVisible:=false;
mtlPrevious.Visible:=true;
end;

procedure TfrmWorkplace.ComboBox8Change(Sender: TObject);
begin
qryOrgVac.Active:=false;
qryOrgVac.SQL.Text:='select * from EcoraAnimals where [Season of birth] like "%'+combobox8.Text+'%"';
qryOrgVac.Active:=true;
end;

procedure TfrmWorkplace.Edit3Change(Sender: TObject);
begin
qryOrgVac.Active:=false;
qryOrgVac.SQL.Text:='select * from EcoraAnimals where [Name] like "%'+edit3.Text+'%"';
qryOrgVac.Active:=true;
end;

procedure TfrmWorkplace.ComboBox9Change(Sender: TObject);
begin
qryOrgVac.Active:=false;
qryOrgVAc.SQL.Text:='select * from EcoraAnimals where [Vacinaited] = '+combobox9.Text+'';
qryOrgVac.Active:=true;
end;

procedure TfrmWorkplace.mtlDelVClick(Sender: TObject);
begin
pnlDelv.Visible:=true;
mtlDeLv.Visible:=false;
mtlDel.Visible:=true;
mtlDelall.Visible:=true;
mtlRefresh.Visible:=true;
mtlCancel.Visible:=true;
//pnl.Visible:=false;
label18.Caption:='Delete...';
mtlPrevious.Visible:=false;
end;

procedure TfrmWorkplace.AdvMetroTile3Click(Sender: TObject);
begin
tabsheet4.TabVisible:=true;
tabsheet1.TabVisible:=false;
mtlPrevious.Visible:=true;
end;

procedure TfrmWorkplace.mtlPreviousClick(Sender: TObject);
begin
if pagecontrol1.Visible = true then
begin
tabsheet1.TabVisible:=true;
tabsheet2.TabVisible:=false;
tabsheet3.TabVisible:=false;
tabsheet4.TabVisible:=false;
mtlPrevious.Visible:=false;
end
else if pnlFacts.Visible=true then
begin
pnlAddnewA.Visible:=true;
pnlFacts.Visible:=false;
mtlPrevious.Visible:=false;
tabsheet12.TabVisible:=true;
tabsheet11.TabVisible:=false;
mtlOK2.Visible:=false;
mtlNext.Visible:=true;
mtlCancel2.Visible:=true;
mtlRefresh.Visible:=true;
end
else if pagecontrol6.Visible=true then
begin
pagecontrol6.SelectNextPage(false,False);
end
else if tabsheet45.TabVisible = true then
begin
tabsheet44.TabVisible:=true;
tabsheet45.TabVisible:=false;
mtlCancel3.Visible:=true;
mtlPrevious.Visible:=false;
end;
end;

procedure TfrmWorkplace.mtlView0Click(Sender: TObject);
var
Flags: DWORD;
  Handle: HWND;
begin

   Pagecontrol7.DoubleBuffered:=true;
   Handle := Pagecontrol7.Handle;
    if Hidden then
    Flags := AW_ACTIVATE
    else
    //Flags  :=AW_Hide;
    Hidden := not Hidden;
    Flags :=Flags or AW_Slide;
    Flags :=Flags  OR AW_HOR_Negative ;
      if not AnimateWindow(Handle, 500, Flags) then begin
    if GetLastError = ERROR_SUCCESS then //Error handeling
        //showmessage('The thread does not own the window! ERROR');
    exit;
  end;
pagecontrol7.Visible:=true;
Label75.Visible:=false;
Label75.Visible:=true;
/////////////
/////////////

mtlView0.ZoomOnHover:=0;
mtlAdd0.ZoomOnHover:=2;
mtlBabyHub.ZoomOnHover:=2;
mtlOrganise.ZoomOnHover:=2;
mtlQuick0.ZoomOnHover:=2;
mtlClip0.ZoomOnHover:=2;
mtlEdit0.ZoomOnHover:=2;
mtlFilter0.ZoomOnHover:=2;
mltStats0.ZoomOnHover:=2;
/////////
mtlView0.Appearance.Color:=$0001AECD;
mtlbabyhub.Appearance.Color:=$0001A4C1;
mtlClip0.Appearance.Color:=$0001A4C1;
mtlOrganise.Appearance.Color:=$0001A4C1;
mtlAdd0.Appearance.Color:=$0001A4C1;
mtlQuick0.Appearance.Color:=$0001A4C1;
mtlFilter0.Appearance.Color:=$0001A4C1;
mltStats0.Appearance.Color:=$0001A4C1;
mtlEdit0.Appearance.Color:=$0001A4C1;
/////////////
panel5.Visible:=false;
TabSheet33.TabVisible:=true;
pageControl8.Visible:=false;
TABSHEET43.TabVisible:=false;
tabsheet39.TabVisible:=true;
TABSHEET41.TabVisible:=false;
TABSHEET40.TabVisible:=false;
pageControl8.Visible:=false;
TABSHEET43.TabVisible:=false;
tabsheet39.TabVisible:=true;
TABSHEET41.TabVisible:=false;
TABSHEET40.TabVisible:=false;
pageControl9.Visible:=false;
pnlOF.Visible:=false;
pnlNum.Visible:=false;
pnlNameF.Visible:=False;
pnlYesNo.Visible:=false;
pnlAniF.Visible:=true;
pnlOrderF.Visible:=true;
pnlVacF.Visible:=true;
pnlTopF.Visible:=true;
pnlHeading.Visible:=false;
pnlFilter.Visible:=false;
pnlFilterh.Visible:=false;
mtlCancel3.Visible:=false;
pnlHD.Visible:=false;
tabsheet44.TabVisible:=true;
tabsheet45.TabVisible:=false;
pagecontrol6.Visible:=false;
Pagecontrol5.Visible:=false;
pagecontrol3.Visible:=false;
pagecontrol1.Visible:=false;
pagecontrol2.Visible:=false;
pagecontrol4.Visible:=false;
mtlcancel3.Visible:=true;
mtlNext2.Visible:=false;
tabsheet22.TabVisible:=true;
tabsheet23.TabVisible:=false;
tabsheet24.TabVisible:=false;
tabsheet25.TabVisible:=false;
tabsheet46.TabVisible:=false;
tabsheet27.TabVisible:=false;
redAni.Visible:=false;
redAni2.Visible:=false;
redAni3.Visible:=false;
redAni44.Visible:=false;
redAni5.Visible:=false;
tabsheet11.TabVisible:=true;
tabsheet12.TabVisible:=false;
tabsheet13.TabVisible:=false;
tabsheet14.TabVisible:=false;
tabsheet15.TabVisible:=false;
tabsheet7.TabVisible:=true;
tabsheet8.TabVisible:=false;
tabsheet9.TabVisible:=false;
tabsheet10.TabVisible:=false;
mtlOK2.Visible:=false;
mtlCancel2.Visible:=false;
mtlNext.Visible:=false;
mtlRefresh.Visible:=false;
mtlPrevious.Visible:=false;
mtlDel.Visible:=false;
pnlAddc.Visible:=false;
pnlDelV.Visible:=false;
pnlAddG.Visible:=false;
pnlDelGeo.Visible:=false;
pnlDelete.Visible:=false;
pnlBEdit.Visible:=false;
mtlDelA.Visible:=true;
mtlAddcA.Visible:=true;
mtlDelG.Visible:=true;
mtlAddG.Visible:=true;
mtlDelV.Visible:=true;
pnlBadd.Visible:=false;
mtlCancel.Visible:=false;
pnlDelB.Visible:=false;
pnlBaddc.Visible:=false;
mtlcancel3.Visible:=false;
pnlAddNewA.Visible:=false;
pnlfacts.Visible:=false;
pnlAddNewG.Visible:=false;
pnlAddNewV.Visible:=false;
pnlEditG.Visible:=false;
pnlEditA.Visible:=false;
pnlEditV.Visible:=false;
pnlEditF.Visible:=false;
tabsheet16.TabVisible:=true;
tabsheet17.TabVisible:=false;
tabsheet18.TabVisible:=false;
tabsheet19.TabVisible:=false;
tabsheet20.TabVisible:=false;
tabsheet1.TabVisible:=true;
tabsheet2.TabVisible:=false;
tabsheet3.TabVisible:=false;
tabsheet4.TabVisible:=false;
end;

procedure TfrmWorkplace.mtlOrganiseClick(Sender: TObject);
var
Flags: DWORD;
  Handle: HWND;
begin

   Pagecontrol1.DoubleBuffered:=true;
   Handle := Pagecontrol1.Handle;
    if Hidden then
    Flags := AW_ACTIVATE
    else
    //Flags  :=AW_Hide;
    Hidden := not Hidden;
    Flags :=Flags or AW_Slide;
    Flags :=Flags  OR AW_HOR_Negative ;
      if not AnimateWindow(Handle, 500, Flags) then begin
    if GetLastError = ERROR_SUCCESS then //Error handeling
        //showmessage('The thread does not own the window! ERROR');
    exit;
  end;
pagecontrol1.Visible:=true;
Label1.Visible:=false;
Label1.Visible:=true;
/////////////
mtlOrganise.ZoomOnHover:=0;
mtlAdd0.ZoomOnHover:=2;
mtlBabyHub.ZoomOnHover:=2;
mtlEdit0.ZoomOnHover:=2;
mtlQuick0.ZoomOnHover:=2;
mtlClip0.ZoomOnHover:=2;
mtlView0.ZoomOnHover:=2;
mtlFilter0.ZoomOnHover:=2;
mltStats0.ZoomOnHover:=2;
////////////////
mtlOrganise.Appearance.Color:=$0001AECD;
mtlbabyhub.Appearance.Color:=$0001A4C1;
mtlClip0.Appearance.Color:=$0001A4C1;
mtlAdd0.Appearance.Color:=$0001A4C1;
mtlView0.Appearance.Color:=$0001A4C1;
mtlQuick0.Appearance.Color:=$0001A4C1;
mtlFilter0.Appearance.Color:=$0001A4C1;
mltStats0.Appearance.Color:=$0001A4C1;
mtlEdit0.Appearance.Color:=$0001A4C1;
//////////////
panel5.Visible:=false;
pagecontrol7.Visible:=false;
pageControl8.Visible:=false;
TABSHEET43.TabVisible:=false;
tabsheet39.TabVisible:=true;
TABSHEET41.TabVisible:=false;
TABSHEET40.TabVisible:=false;
TABSHEET43.TabVisible:=false;
tabsheet39.TabVisible:=true;
TABSHEET43.TabVisible:=false;
tabsheet39.TabVisible:=true;

TABSHEET41.TabVisible:=false;
TABSHEET40.TabVisible:=false;
pageControl9.Visible:=false;
pnlOF.Visible:=false;
pnlNum.Visible:=false;
pnlNameF.Visible:=False;
pnlYesNo.Visible:=false;
pnlAniF.Visible:=true;
pnlOrderF.Visible:=true;
pnlVacF.Visible:=true;
pnlTopF.Visible:=true;
pnlHeading.Visible:=false;
pnlFilter.Visible:=false;
pnlFilterh.Visible:=false;
mtlCancel3.Visible:=false;
pnlHD.Visible:=false;
tabsheet44.TabVisible:=true;
tabsheet45.TabVisible:=false;
mtlNext2.Visible:=false;
pagecontrol6.Visible:=false;
pagecontrol2.Visible:=false;

pagecontrol4.Visible:=false;
pagecontrol3.Visible:=false;
pagecontrol5.Visible:=false;
tabsheet22.TabVisible:=true;
tabsheet23.TabVisible:=false;
tabsheet24.TabVisible:=false;
tabsheet25.TabVisible:=false;
tabsheet46.TabVisible:=false;
tabsheet27.TabVisible:=false;
redAni.Visible:=false;
redAni2.Visible:=false;
redAni3.Visible:=false;
redAni44.Visible:=false;
redAni5.Visible:=false;
mtlCancel3.Visible:=false;
tabsheet11.TabVisible:=true;
tabsheet12.TabVisible:=false;
tabsheet13.TabVisible:=false;
tabsheet14.TabVisible:=false;
tabsheet15.TabVisible:=false;
tabsheet7.TabVisible:=true;
tabsheet8.TabVisible:=false;
tabsheet9.TabVisible:=false;
tabsheet10.TabVisible:=false;
mtlOK2.Visible:=false;
mtlCancel2.Visible:=false;
mtlNext.Visible:=false;
mtlRefresh.Visible:=false;
mtlPrevious.Visible:=false;
mtlDel.Visible:=false;
pnlAddc.Visible:=false;
pnlDelV.Visible:=false;
pnlAddG.Visible:=false;
pnlDelGeo.Visible:=false;
pnlDelete.Visible:=false;
pnlBEdit.Visible:=false;
mtlDelA.Visible:=true;
mtlAddcA.Visible:=true;
mtlDelG.Visible:=true;
mtlAddG.Visible:=true;
mtlDelV.Visible:=true;
pnlBadd.Visible:=false;
mtlCancel.Visible:=false;
pnlDelB.Visible:=false;
pnlBaddc.Visible:=false;
mtlcancel3.Visible:=false;
pnlAddNewA.Visible:=false;
pnlfacts.Visible:=false;
pnlAddNewG.Visible:=false;
pnlAddNewV.Visible:=false;
pnlEditG.Visible:=false;
pnlEditA.Visible:=false;
pnlEditV.Visible:=false;
pnlEditF.Visible:=false;
tabsheet16.TabVisible:=true;
tabsheet17.TabVisible:=false;
tabsheet18.TabVisible:=false;
tabsheet19.TabVisible:=false;
tabsheet20.TabVisible:=false;
tabsheet1.TabVisible:=true;
tabsheet2.TabVisible:=false;
tabsheet3.TabVisible:=false;
tabsheet4.TabVisible:=false;
end;
procedure TfrmWorkplace.mtlBAddClick(Sender: TObject);
begin
pnlBadd.Visible:=true;
tabsheet8.TabVisible:=true;
tabsheet7.TabVisible:=false;
mtlCancel.Visible:=true;
mtlRefresh.Visible:=true;
mtlDelall.Visible:=true;
mtlPrevious.Visible:=false;
mtlOk2.Visible:=true;
end;

procedure TfrmWorkplace.mtlOK2Click(Sender: TObject);
var
sNameadd,sIMG,sDEC,sbabyName:string;
sOrder:string;
iMale,iTotal,ifemale:integer;
Date:TDateTime;
sHight,sSpeed,sSciName,sPark,sGeoName,sVacName,sNickname,sVaccinated,sSeason,sDate,sWeather,sEcoraID:string;
iItems,iX,iY,iWeight,iYear,iIQ:integer;
begin
sIMG:=edit22.Text;
sDEC:=memo1.Lines.Text;
sGeoName:=edit14.Text;
sVacName:=edit7.Text;
sNickname:=edit17.Text;
sSeason:=combobox13.Text;
iItems:=radiogroup1.ItemIndex;
sPark:=edit15.Text;
iX:=spinedit13.Value;
iY:=spinedit15.Value;
sSciName:=edit11.Text;
sSpeed:=edit12.text;
sHight:=edit13.text;
iWeight:=spinedit10.Value;
iYear:= spinedit12.Value;
iIQ:=spinedit11.Value;
Date:=DateTimePicker2.Date;
sDate:=DateToStr(Date);
sWeather:=edit16.Text;
Case iItems of
0:sVaccinated:='True';
1:sVaccinated:='False';
end;
if pnlBadd.Visible = true then //baby hub
begin
sNameAdd:=edit4.Text;
sBabyName:=edit6.Text;
iMale:=spinedit4.Value;
iFemale:=spinedit3.Value;
iTotal:=iFemale+iMale;
qryBaby.Active:=false;
qryBaby.SQL.Text:='INSERT INTO EcoraBaby(Animal,[Baby Animal],[Number of girl babys],[Number of boy babys],[Total Number of babys]) Values ('''+sNameAdd+''','''+sbabyName+''','+Inttostr(ifemale)+','+Inttostr(imale)+','+Inttostr(iTotal)+')';
qryBaby.ExecSQL;
messagedlg('Thank you for your time'+#13+'The animal has been added to the EcoraBabys table',mtInformation,[mbOK],0);
qryBaby.SQL.Text:='Select * from EcoraBaby';
qrybaby.Active:=true;
end
else if pnlFacts.Visible = true then
begin
sNameAdd:=Edit8.Text;
qryFacts.Active:=false;
qryFacts.SQL.Text:='INSERT INTO EcoraFacts(Animal,[Scientific Name],[Top speed(Km/h)],[Max Shoulder Height(m)],[Max Weight(Kg)],[Lifespan(years)],Intelligence) Values ('''+sNameAdd+''','''+sSciName+''',"'+sSpeed+'","'+sHight+'",'+Inttostr(iWeight)+','+Inttostr(iYear)+','+Inttostr(iIQ)+')';
qryFacts.ExecSQL;
messagedlg('Thank you for your time'+#13+'You can now proceed',mtInformation,[mbOK],0);
qryFacts.SQL.Text:='select * from EcoraFacts';
qryFacts.Active:=true;
/////////////////////////////////////////////////////////////
sOrder:=cmbOrder.Text;
iFemale:=spinedit7.Value;
imale:=spinedit8.Value;
iTotal:=iFemale+iMale;
qryOrgAni.Active:=false;
qryOrgAni.SQL.Text:='INSERT INTO EcoraNum(Kingdom,Animal,[Order],Number_of_male,Number_of_female,Total_number_of_animal,IMG,Description) VALUES ("Mammals",'''+sNameAdd+''','''+sOrder+''','+Inttostr(iMale)+','+Inttostr(iFemale)+','+Inttostr(iTotal)+','''+sIMG+''','''+sDEC+''')';
qryOrgAni.ExecSQL;
qryOrgAni.SQL.Text:='Select * from EcoraNum';
qryOrgAni.Active:=true;
pnlAddNewA.Visible:=true;
pnlFacts.Visible:=false;
tabsheet12.TabVisible:=true;
tabsheet11.TabVisible:=false;
mtlPrevious.Visible:=false;
mtlNext.Visible:=true;
mtlOk2.Visible:=false;
edit8.Clear;
edit8.SetFocus;
spinedit7.Value:=0;
spinedit8.Value:=0;

end
else if pnlAddNewG.Visible = true then
begin
try
qrywork2.Filtered:=true;
qrywork2.Active:=true;
qrywork2.Filter:='(Animal = '''+sGeoName+''')';
sEcoraID:=inttostr(qrywork2['EcoraID']);
////
qryOrgGeo.Active:=false;
qryOrgGeo.SQL.Text:='INSERT INTO EcoraGeoTagging(Animal,[Park/Sight spoted],[X-coordinates of Animal],[Y-coordinates of Animal],[Type of weather condition],[Date spotted],[EcoraID]) Values('''+sGeoName+''','''+sPark+''','+Inttostr(iX)+','+Inttostr(iY)+','''+sWeather+''',#'+sDate+'#,'''+sEcoraID+''')';
qryOrgGeo.ExecSQL;
messagedlg('Thank you for your time'+#13+'The animal '+edit14.Text+' has been added to the EcoraGeoTagging table' ,mtInformation,[mbOK],0);
pnlAddNewG.Visible:=True;
qryOrgGeo.SQL.Text:='select * from EcoraGeoTagging';
qryOrgGeo.Active:=true;
edit14.Clear;
edit15.Clear;
edit16.Clear;
spinedit13.Value:=0;
spinedit15.Value:=0;
edit14.SetFocus;
except
messageDlg('The Animal '+edit14.Text+' is not found'+#13+' Please make sure that the name of the animal was typed in correctly.',mtError,[mbOK],0);
pnlAddNewG.Visible:=True;
qryOrgGeo.Active:=false;
qryOrgGeo.SQL.Text:='select * from EcoraGeoTagging';
qryOrgGeo.Active:=true;
edit14.Clear;
edit15.Clear;
edit16.Clear;
spinedit13.Value:=0;
spinedit15.Value:=0;
edit14.SetFocus;
end;
end
else if pnlAddNewV.Visible = True then
begin
qrywork2.Filtered:=true;
qrywork2.Active:=true;
qrywork2.Filter:='(Animal = '''+sVacName+''')';
sEcoraID:=inttostr(qrywork2['EcoraID']);
///////
qryOrgVac.Active:=false;
qryOrgVac.SQL.Text:='INSERT INTO EcoraAnimals(Animal,Name,[Season of birth],Vacinaited,EcoraID) Values ('''+sVacName+''','''+sNickName+''','''+sSeason+''','+sVaccinated+','''+sEcoraID+''')';
qryOrgVac.ExecSQL;
messagedlg('Thank you for your time.'+#13+''+edit17.Text+' has been added to the EcoraAnimals table',mtInformation,[mbOK],0);
pnlAddNewV.Visible:=true;
qryOrgVac.SQL.Text:='select * from EcoraAnimals';
qryOrgVac.Active:=true;
edit7.Clear;
edit7.SetFocus;
edit17.Clear;
combobox13.Text:='Select here...';
end;

end;

procedure TfrmWorkplace.SpinEdit5Change(Sender: TObject);
var
sNum:string;
begin
sNum:=spinedit5.Text;
qryBaby.Active:=false;
qryBaby.SQL.Text:='select * from EcoraBaby where ( [Number of girl babys] Like "%'+sNum+'%")';
qryBaby.Active:=true;
if spinedit5.Text = '' then
begin
spinedit5.Value:=0;
end;
end;

procedure TfrmWorkplace.SpinEdit6Change(Sender: TObject);
var
sNum:string;
begin
sNum:=spinedit6.Text;
qryBaby.Active:=false;
qryBaby.SQL.Text:='select * from EcoraBaby where ( [Number of boy babys] Like "%'+sNum+'%")';
qryBaby.Active:=true;
if spinedit6.Text = '' then
begin
spinedit6.Value:=0;
end;
end;

procedure TfrmWorkplace.mtlBdelClick(Sender: TObject);
begin
tabsheet9.TabVisible:=true;
tabsheet7.TabVisible:=false;
mtlDel.Visible:=true;
mtlDelall.Visible:=true;
mtlRefresh.Visible:=true;
mtlCancel.Visible:=true;
pnlDelB.Visible:=true;
end;

procedure TfrmWorkplace.mtlM2Click(Sender: TObject);
begin
edtDisplay3.Text:=edtDisplay3.Text+'[Number of boy babys]';
end;

procedure TfrmWorkplace.mtlT2Click(Sender: TObject);
begin                                                                          
edtDisplay3.Text:=edtDisplay3.Text+'[Total Number of babys]';
end;

procedure TfrmWorkplace.mtlf2Click(Sender: TObject);
begin
edtDisplay3.Text:=edtDisplay3.Text+'[Number of girl babys]';
end;

procedure TfrmWorkplace.mtlDot3Click(Sender: TObject);
begin
edtDisplay3.Text:=edtDisplay3.Text+'.';
end;

procedure TfrmWorkplace.mtlBrac5Click(Sender: TObject);
begin
edtDisplay3.Text:=edtDisplay3.Text+'(';
end;

procedure TfrmWorkplace.mtlBrac6Click(Sender: TObject);
begin
edtDisplay3.Text:=edtDisplay3.Text+')';
end;

procedure TfrmWorkplace.AdvMetroButton27Click(Sender: TObject);
begin
edtDisplay3.Text:=edtDisplay3.Text+'9';
end;

procedure TfrmWorkplace.AdvMetroButton28Click(Sender: TObject);
begin
edtDisplay3.Text:=edtDisplay3.Text+'7';
end;

procedure TfrmWorkplace.AdvMetroButton30Click(Sender: TObject);
begin
edtDisplay3.Text:=edtDisplay3.Text+'5';
end;

procedure TfrmWorkplace.AdvMetroButton26Click(Sender: TObject);
begin
edtDisplay3.Text:=edtDisplay3.Text+'3';
end;

procedure TfrmWorkplace.AdvMetroButton22Click(Sender: TObject);
begin
edtDisplay3.Text:=edtDisplay3.Text+'1';
end;

procedure TfrmWorkplace.AdvMetroButton29Click(Sender: TObject);
begin
edtDisplay3.Text:=edtDisplay3.Text+'8';
end;

procedure TfrmWorkplace.AdvMetroButton25Click(Sender: TObject);
begin
edtDisplay3.Text:=edtDisplay3.Text+'6';
end;

procedure TfrmWorkplace.AdvMetroButton24Click(Sender: TObject);
begin
edtDisplay3.Text:=edtDisplay3.Text+'4';
end;

procedure TfrmWorkplace.AdvMetroButton23Click(Sender: TObject);
begin
edtDisplay3.Text:=edtDisplay3.Text+'2';
end;

procedure TfrmWorkplace.AdvMetroButton21Click(Sender: TObject);
begin
edtDisplay3.Text:=edtDisplay3.Text+'0';
end;

procedure TfrmWorkplace.mtlPlus3Click(Sender: TObject);
begin
edtDisplay3.Text:=edtDisplay3.Text+'+';
end;

procedure TfrmWorkplace.mtlMinus3Click(Sender: TObject);
begin
edtDisplay3.Text:=edtDisplay3.Text+'-';
end;

procedure TfrmWorkplace.mtlTimes3Click(Sender: TObject);
begin
edtDisplay3.Text:=edtDisplay3.Text+'*';
end;

procedure TfrmWorkplace.mtlDiv3Click(Sender: TObject);
begin
edtDisplay3.Text:=edtDisplay3.Text+'/';
end;

procedure TfrmWorkplace.mtlEqual3Click(Sender: TObject);
begin

if edtDisplay3.Text = '' then
begin
messagedlg('Please do a calculation '+#13+'EG. [Number_of_male]*5',mtError,[mbOK],0);
end
else if edtDisplay3.Text <> '' then
begin
pnlSaveas3.Visible:=true;
mtlNext.Visible:=true;
end;

end;

procedure TfrmWorkplace.CheckBox15Click(Sender: TObject);
begin
If Checkbox15.Checked = True then
mtlF2.Visible:=true
else
mtlF2.Visible:=False;
end;

procedure TfrmWorkplace.CheckBox10Click(Sender: TObject);
begin
If Checkbox10.Checked = True then
mtlM2.Visible:=true
else
mtlM2.Visible:=False;
end;

procedure TfrmWorkplace.CheckBox16Click(Sender: TObject);
begin
If Checkbox16.Checked = True then
mtlT2.Visible:=true
else
mtlT2.Visible:=False;
end;

procedure TfrmWorkplace.mtlClear3Click(Sender: TObject);
begin
edtDisplay3.Clear;
end;

procedure TfrmWorkplace.mtlSNext3Click(Sender: TObject);
begin

Groupbox18.Visible:=true;
end;

procedure TfrmWorkplace.mtlSback3Click(Sender: TObject);
begin
pnlSaveas3.Visible:=false;
mtlNext.Visible:=false;
end;

procedure TfrmWorkplace.mtlYebo3Click(Sender: TObject);
begin
GroupBox17.Visible:=true;
GroupBox19.Visible:=true;
panel76.Height:=220;
dbgrid7.Height:=180;
mtlOk.Visible:=true;
mtlNext.Visible:=false;
end;

procedure TfrmWorkplace.mtlNee3Click(Sender: TObject);
begin
GroupBox17.Visible:=false;
GroupBox19.Visible:=true;
panel76.Height:=220;
dbgrid7.Height:=180;
mtlOk.Visible:=true;
mtlNext.Visible:=false;
end;

procedure TfrmWorkplace.mtlDone2Click(Sender: TObject);
var
sCal,sSymbol,sOrder,sName,sSName,sAs:string;
iItems:integer;
begin
//Assign values into sSymbol
iItems:=combobox11.ItemIndex;
case iItems of
0:sSymbol:='=';
1:sSymbol:='<>';
end;
sOrder:=combobox12.Text;
sName:=combobox10.Text;
sSName:=edit9.Text;
sCal:=edtDisplay3.Text;
sAs:=edtSaveas3.Text;
//////////////////////////////////////////////
 if (checkbox18.Checked = true) and (Checkbox17.Checked = true) and (checkbox19.Checked = true) AND (combobox11.ItemIndex = 2) then  ////order by condition ASC with where and like
 begin
 try
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select EcoraID,[Baby Animal],Animal,Format('+sCal+') as ['+sAs+'],[Number of girl babys],[Number of boy babys],[Total Number of babys] from EcoraBaby where ('+sName+' Like ''%'+sSName+'%'') Order by '+sOrder+' ASC';
 qryBaby.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select * from EcoraBaby';
 qryBaby.Active:=true;
 end;
 end
 else if (checkbox17.Checked = true) and (Checkbox10.Checked = true) and (checkbox18.Checked = true) AND (combobox11.ItemIndex = 2) then /////order by condition DESC with where and like
 begin
 try
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select EcoraID,[Baby Animal],Animal,Format('+sCal+') as ['+sAs+'],[Number of girl babys],[Number of boy babys],[Total Number of babys] from EcoraBaby where ('+sName+' Like ''%'+sSName+'%'') Order by '+sOrder+' DESC';
 qryBaby.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select * from EcoraBaby';
 qryBaby.Active:=true;
 end;
 end
//////////////////////////
 else if (checkbox17.Checked = true) and (Checkbox18.Checked = true) and (checkbox19.Checked = true) then    ////order by condition ASC with where
 begin
 try
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select EcoraID,[Baby Animal],Animal,Format('+sCal+') as ['+sAs+'],[Number of girl babys],[Number of boy babys],[Total Number of babys] from EcoraBaby  where ('+sName+' '+sSymbol+' '''+sSName+''') Order by '+sOrder+' ASC';
 qryBaby.Active:=true
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select * from EcoraBaby';
 qryBaby.Active:=true;
 end;
 end
 else if (checkbox17.Checked = true) and (Checkbox18.Checked = true) and (checkbox20.Checked = true) then    ////order by condition DESC with where
 begin
 try
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select EcoraID,[Baby Animal],Animal,Format('+sCal+') as ['+sAs+'],[Number of girl babys],[Number of boy babys], [Total Number of babys] from EcoraBaby where ('+sName+' '+sSymbol+' '''+sSName+''') Order by '+sOrder+' DESC';
 qryBaby.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select * from EcoraBaby';
 qryBaby.Active:=true;
 end;
 end
/////////////////////////////////////////////////////////
 else if (checkbox17.Checked = true) AND (combobox11.ItemIndex = 2) then // where like condition
 begin
 try
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select EcoraID,[Baby Animal],Animal,Format('+sCal+') as ['+sAs+'],[Number of girl babys],[Number of boy babys], [Total Number of babys] from EcoraBaby where ('+sName+' Like ''%'+sSName+'%'')';
 qryBaby.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select * from EcoraBaby';
 qryBaby.Active:=true;
 end;
 end
 else if checkbox17.Checked = true then//where condition
 begin
 try
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select EcoraID,[Baby Animal],Animal,Format('+sCal+') as ['+sAs+'],[Number of girl babys],[Number of boy babys], [Total Number of babys] from EcoraBaby where ('+sName+' '+sSymbol+' '''+sSName+''')';
 qryBaby.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select * from EcoraBaby';
 qryBaby.Active:=true;
 end;
 end
///////////////////////////////////////
 else if (checkbox18.Checked = true) and (Checkbox19.Checked = true) then //oder by condition ASC
 begin
 try
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select EcoraID,[Baby Animal],Animal,Format('+sCal+') as ['+sAs+'],[Number of girl babys],[Number of boy babys],[Total Number of babys] from EcoraBaby Order by '+sOrder+' ASC';
 qryBaby.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select * from EcoraBaby';
 qryBaby.Active:=true;
 end;
 end
 else if (checkbox18.Checked = true) and (Checkbox20.Checked = true) then//order by condition DESC
 begin
 try
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select EcoraID,[Baby Animal],Animal,Format('+sCal+') as ['+sAs+'],[Number of girl babys],[Number of boy babys],[Total Number of babys] from EcoraBaby Order by '+sOrder+' DESC';
 qryBaby.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select * from EcoraBaby';
 qryBaby.Active:=true;
 end;
 end
///////////////////
 else if groupbox17.Visible <> true then// step 4 not avialable
 begin
 try
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select EcoraID,Animal,Format('+sCal+') as ['+sAs+'],[Number of girl babys],[Number of boy babys],[Baby Animal],[Total Number of babys] from EcoraBaby';
 qryBaby.Active:=true;
 except
 MessageDLG('The calculation that you are attempting to is invalid',mtError,[mbOK],0);
 qryBaby.Active:=false;
 qryBaby.SQL.Text:='Select * from EcoraBaby';
 qryBaby.Active:=true;
 end;
 end;
//////////////////////////////////////////////////////////////////////////////////////end of long nested if
mtlOK.Visible:=false;
panel76.Height:=370;
dbgrid7.Height:=329;
groupbox18.Visible:=false;
groupbox17.Visible:=false;
Groupbox19.Visible:=false;
CheckBox17.Checked:=false;
CheckBox18.Checked:=false;
pnlSaveas3.Visible:=false;
edtdisplay3.Clear;
edtSaveas3.Text:='Type name of column here';
end;

procedure TfrmWorkplace.mtlBAddCClick(Sender: TObject);
begin
pnlBaddc.Visible:=true;
mtlDelall.Visible:=true;
mtlRefresh.Visible:=true;
mtlCancel.Visible:=true;
tabsheet10.TabVisible:=true;
tabsheet7.TabVisible:=false;
mtlPrevious.Visible:=false;
end;

procedure TfrmWorkplace.mtlBabyhubClick(Sender: TObject);
var
Flags: DWORD;
  Handle: HWND;
begin
////////////////////////////////////////////////////////////////////////////////
   Pagecontrol2.DoubleBuffered:=true;
   Handle := Pagecontrol2.Handle;
    if Hidden then
    Flags := AW_ACTIVATE
    else
    //Flags  :=AW_Hide;
    Hidden := not Hidden;
    Flags :=Flags or AW_Slide;                                             {internet}
    Flags :=Flags  OR AW_HOR_Negative ;
      if not AnimateWindow(Handle, 500, Flags) then begin
    if GetLastError = ERROR_SUCCESS then //Error handeling
        //showmessage('The thread does not own the window! ERROR');
    exit;
  end;
///////////////////////////////////////////////////////////////////////////////
pagecontrol2.Visible:=true;
Label37.Visible:=false;
Label37.Visible:=true;
/////////////
mtlBabyHub.ZoomOnHover:=0;
mtlAdd0.ZoomOnHover:=2;
mtlEdit0.ZoomOnHover:=2;
mtlOrganise.ZoomOnHover:=2;
mtlQuick0.ZoomOnHover:=2;
mtlClip0.ZoomOnHover:=2;
mtlView0.ZoomOnHover:=2;
mtlFilter0.ZoomOnHover:=2;
mltStats0.ZoomOnHover:=2;
///////////////
mtlBabyhub.Appearance.Color:=$0001AECD;
mtlAdd0.Appearance.Color:=$0001A4C1;
mtlClip0.Appearance.Color:=$0001A4C1;
mtlOrganise.Appearance.Color:=$0001A4C1;
mtlView0.Appearance.Color:=$0001A4C1;
mtlQuick0.Appearance.Color:=$0001A4C1;
mtlFilter0.Appearance.Color:=$0001A4C1;
mltStats0.Appearance.Color:=$0001A4C1;
mtlEdit0.Appearance.Color:=$0001A4C1;
/////////////////
panel5.Visible:=false;
pagecontrol7.Visible:=false;
pageControl8.Visible:=false;
TABSHEET43.TabVisible:=false;
tabsheet39.TabVisible:=true;
TABSHEET41.TabVisible:=false;
TABSHEET40.TabVisible:=false;
pageControl9.Visible:=false;
pnlOF.Visible:=false;
pnlNum.Visible:=false;
pnlNameF.Visible:=False;
pnlYesNo.Visible:=false;
pnlAniF.Visible:=true;
pnlOrderF.Visible:=true;
pnlVacF.Visible:=true;
pnlTopF.Visible:=true;
pnlHeading.Visible:=false;
pnlFilter.Visible:=false;
pnlFilterh.Visible:=false;
mtlCancel3.Visible:=false;
pnlHD.Visible:=false;
tabsheet44.TabVisible:=true;
tabsheet45.TabVisible:=false;
mtlNext2.Visible:=false;
pagecontrol6.Visible:=false;
tabsheet7.TabVisible:=true;
tabsheet8.TabVisible:=false;
tabsheet9.TabVisible:=false;
tabsheet10.TabVisible:=false;
pagecontrol4.Visible:=false;

pagecontrol1.Visible:=false;
pagecontrol3.Visible:=false;
pagecontrol5.Visible:=false;
tabsheet22.TabVisible:=true;
tabsheet23.TabVisible:=false;
tabsheet24.TabVisible:=false;
tabsheet25.TabVisible:=false;
tabsheet46.TabVisible:=false;
tabsheet27.TabVisible:=false;
redAni.Visible:=false;
redAni2.Visible:=false;
redAni3.Visible:=false;
redAni44.Visible:=false;
redAni5.Visible:=false;
mtlCancel3.Visible:=false;
tabsheet1.TabVisible:=true;
tabsheet2.TabVisible:=false;
tabsheet3.TabVisible:=false;
tabsheet4.TabVisible:=false;
tabsheet11.TabVisible:=true;
tabsheet12.TabVisible:=false;
tabsheet13.TabVisible:=false;
tabsheet14.TabVisible:=false;
tabsheet15.TabVisible:=false;
tabsheet21.TabVisible:=false;
mtlcancel3.Visible:=false;
mtlOK2.Visible:=false;
mtlCancel2.Visible:=false;
mtlNext.Visible:=false;
mtlRefresh.Visible:=false;
mtlPrevious.Visible:=false;
mtlDel.Visible:=false;
mtlCancel.Visible:=false;
pnlAddc.Visible:=false;
pnlDelV.Visible:=false;
pnlAddG.Visible:=false;
pnlDelGeo.Visible:=false;
pnlDelete.Visible:=false;
pnlBEdit.Visible:=false;
mtlDelA.Visible:=true;
mtlAddcA.Visible:=true;
mtlDelG.Visible:=true;
mtlAddG.Visible:=true;
mtlDelV.Visible:=true;
pnlBadd.Visible:=false;
pnlDelB.Visible:=false;
pnlBaddc.Visible:=false;
pnlAddNewA.Visible:=false;
pnlfacts.Visible:=false;
pnlAddNewG.Visible:=false;
pnlAddNewV.Visible:=false;
pnlEditG.Visible:=false;
pnlEditA.Visible:=false;
pnlEditV.Visible:=false;
pnlEditF.Visible:=false;
tabsheet16.TabVisible:=true;
tabsheet17.TabVisible:=false;
tabsheet18.TabVisible:=false;
tabsheet19.TabVisible:=false;
tabsheet20.TabVisible:=false;
end;

procedure TfrmWorkplace.mtlEdit0Click(Sender: TObject);
var
Flags: DWORD;
  Handle: HWND;
begin

   Pagecontrol4.DoubleBuffered:=true;
   Handle := Pagecontrol4.Handle;
    if Hidden then
    Flags := AW_ACTIVATE
    else
    //Flags  :=AW_Hide;
    Hidden := not Hidden;
    Flags :=Flags or AW_Slide;
    Flags :=Flags  OR AW_HOR_Negative ;
      if not AnimateWindow(Handle, 500, Flags) then begin
    if GetLastError = ERROR_SUCCESS then //Error handeling
        //showmessage('The thread does not own the window! ERROR');
    exit;
  end;
pagecontrol4.Visible:=true;
Label74.Visible:=false;
Label74.Visible:=true;
/////////////
mtlEdit0.ZoomOnHover:=0;
mtlAdd0.ZoomOnHover:=2;
mtlBabyHub.ZoomOnHover:=2;
mtlOrganise.ZoomOnHover:=2;
mtlQuick0.ZoomOnHover:=2;
mtlClip0.ZoomOnHover:=2;
mtlView0.ZoomOnHover:=2;
mtlFilter0.ZoomOnHover:=2;
mltStats0.ZoomOnHover:=2;
//////////////
mtlEdit0.Appearance.Color:=$0001AECD;
mtlbabyhub.Appearance.Color:=$0001A4C1;
mtlClip0.Appearance.Color:=$0001A4C1;
mtlOrganise.Appearance.Color:=$0001A4C1;
mtlView0.Appearance.Color:=$0001A4C1;
mtlQuick0.Appearance.Color:=$0001A4C1;
mtlFilter0.Appearance.Color:=$0001A4C1;
mltStats0.Appearance.Color:=$0001A4C1;
mtlAdd0.Appearance.Color:=$0001A4C1;
//////////////////
panel5.Visible:=false;
pagecontrol7.Visible:=false;
pageControl8.Visible:=false;
TABSHEET43.TabVisible:=false;
tabsheet39.TabVisible:=true;
TABSHEET41.TabVisible:=false;
TABSHEET40.TabVisible:=false;
pageControl9.Visible:=false;
pnlOF.Visible:=false;
pnlNum.Visible:=false;
pnlNameF.Visible:=False;
pnlYesNo.Visible:=false;
pnlAniF.Visible:=true;
pnlOrderF.Visible:=true;
pnlVacF.Visible:=true;
pnlTopF.Visible:=true;
pnlHeading.Visible:=false;
pnlFilter.Visible:=false;
pnlFilterh.Visible:=false;
mtlCancel3.Visible:=false;
pnlHD.Visible:=false;
tabsheet44.TabVisible:=true;
tabsheet45.TabVisible:=false;
mtlNext2.Visible:=false;
pagecontrol6.Visible:=false;
mtlcancel3.Visible:=false;
tabsheet16.TabVisible:=true;
tabsheet17.TabVisible:=false;
tabsheet18.TabVisible:=false;
tabsheet19.TabVisible:=false;
tabsheet20.TabVisible:=false;
pagecontrol1.Visible:=false;
pagecontrol2.Visible:=false;
pagecontrol3.Visible:=false;
pagecontrol5.Visible:=false;
tabsheet22.TabVisible:=true;
tabsheet23.TabVisible:=false;
tabsheet24.TabVisible:=false;
tabsheet25.TabVisible:=false;
tabsheet46.TabVisible:=false;
tabsheet27.TabVisible:=false;
redAni.Visible:=false;
redAni2.Visible:=false;
redAni3.Visible:=false;
redAni44.Visible:=false;
redAni5.Visible:=false;
mtlCancel3.Visible:=false;
mtlOK2.Visible:=false;
mtlCancel.Visible:=false;
mtlDel.Visible:=true;
tabsheet11.TabVisible:=true;
tabsheet12.TabVisible:=false;
tabsheet13.TabVisible:=false;
tabsheet14.TabVisible:=false;
tabsheet15.TabVisible:=false;
tabsheet21.TabVisible:=false;
tabsheet1.TabVisible:=true;
tabsheet2.TabVisible:=false;
tabsheet3.TabVisible:=false;
tabsheet4.TabVisible:=false;
tabsheet7.TabVisible:=true;
tabsheet8.TabVisible:=false;
tabsheet9.TabVisible:=false;
tabsheet10.TabVisible:=false;
mtlOK2.Visible:=false;
mtlCancel2.Visible:=false;
mtlNext.Visible:=false;
mtlRefresh.Visible:=false;
mtlPrevious.Visible:=false;
mtlDel.Visible:=false;
pnlAddc.Visible:=false;
pnlDelV.Visible:=false;
pnlAddG.Visible:=false;
pnlDelGeo.Visible:=false;
pnlDelete.Visible:=false;
pnlBEdit.Visible:=false;
mtlDelA.Visible:=true;
mtlAddcA.Visible:=true;
mtlDelG.Visible:=true;
mtlAddG.Visible:=true;
mtlDelV.Visible:=true;
pnlBadd.Visible:=false;
pnlDelB.Visible:=false;
pnlBaddc.Visible:=false;
pnlAddNewA.Visible:=false;
pnlfacts.Visible:=false;
pnlAddNewG.Visible:=false;
pnlAddNewV.Visible:=false;
pnlEditG.Visible:=false;
pnlEditA.Visible:=false;
pnlEditV.Visible:=false;
pnlEditF.Visible:=false;
end;

procedure TfrmWorkplace.mtladd0Click(Sender: TObject);
var
Flags: DWORD;
  Handle: HWND;
begin
////////////////////////////////////////////////////////////////////////////////////
  Pagecontrol3.DoubleBuffered:=true;

   Handle := Pagecontrol3.Handle;
    if Hidden then
    Flags := AW_ACTIVATE

    else
    //Flags  :=AW_Hide;
    Hidden := not Hidden;                                                    //}//Internet an
    Flags :=Flags or AW_Slide;
    Flags :=Flags  OR AW_HOR_Negative ;
      if not AnimateWindow(Handle, 500, Flags) then begin
    if GetLastError = ERROR_SUCCESS then //Error handeling
        //showmessage('The thread does not own the window! ERROR');
    exit;
  end;
pagecontrol3.Visible:=true;
Label61.Visible:=false;
Label61.Visible:=true;
////////////////////////////////////////////////////////////////////////////////////
if mtlAdd0.Caption = 'Add new...' then
begin
/////////////
mtlAdd0.ZoomOnHover:=0;
mtlEdit0.ZoomOnHover:=2;
mtlBabyHub.ZoomOnHover:=2;
mtlOrganise.ZoomOnHover:=2;
mtlQuick0.ZoomOnHover:=2;
mtlClip0.ZoomOnHover:=2;
mtlView0.ZoomOnHover:=2;
mtlFilter0.ZoomOnHover:=2;
mltStats0.ZoomOnHover:=2;
//////////////
mtlAdd0.Appearance.Color:=$0001AECD;
mtlbabyhub.Appearance.Color:=$0001A4C1;
mtlClip0.Appearance.Color:=$0001A4C1;
mtlOrganise.Appearance.Color:=$0001A4C1;
mtlView0.Appearance.Color:=$0001A4C1;
mtlQuick0.Appearance.Color:=$0001A4C1;
mtlFilter0.Appearance.Color:=$0001A4C1;
mltStats0.Appearance.Color:=$0001A4C1;
mtlEdit0.Appearance.Color:=$0001A4C1;
///////////////
panel5.Visible:=false;
pagecontrol7.Visible:=false;
pageControl8.Visible:=false;
TABSHEET43.TabVisible:=false;
tabsheet39.TabVisible:=true;
TABSHEET41.TabVisible:=false;
TABSHEET40.TabVisible:=false;
pageControl9.Visible:=false;
pnlOF.Visible:=false;
pnlNum.Visible:=false;
pnlNameF.Visible:=False;
pnlYesNo.Visible:=false;
pnlAniF.Visible:=true;
pnlOrderF.Visible:=true;
pnlVacF.Visible:=true;
pnlTopF.Visible:=true;
pnlHeading.Visible:=false;
pnlFilter.Visible:=false;
pnlFilterh.Visible:=false;
mtlCancel3.Visible:=false;
pnlHD.Visible:=false;
tabsheet44.TabVisible:=true;
tabsheet45.TabVisible:=false;
mtlNext2.Visible:=false;
pagecontrol6.Visible:=false;
mtlcancel3.Visible:=false;
tabsheet1.TabVisible:=true;
tabsheet2.TabVisible:=false;
tabsheet3.TabVisible:=false;
tabsheet4.TabVisible:=false;
pagecontrol1.Visible:=false;
pagecontrol2.Visible:=false;
pagecontrol4.Visible:=false;
pagecontrol5.Visible:=false;
tabsheet22.TabVisible:=true;
tabsheet23.TabVisible:=false;
tabsheet24.TabVisible:=false;
tabsheet25.TabVisible:=false;
tabsheet46.TabVisible:=false;
tabsheet27.TabVisible:=false;
redAni.Visible:=false;
redAni2.Visible:=false;
redAni3.Visible:=false;
redAni44.Visible:=false;
redAni5.Visible:=false;
mtlCancel3.Visible:=false;
mtlOK2.Visible:=false;
mtlDel.Visible:=true;
tabsheet1.TabVisible:=true;
tabsheet2.TabVisible:=false;
tabsheet3.TabVisible:=false;
tabsheet4.TabVisible:=false;
tabsheet7.TabVisible:=true;
tabsheet8.TabVisible:=false;
tabsheet9.TabVisible:=false;
tabsheet10.TabVisible:=false;
tabsheet11.TabVisible:=true;
tabsheet12.TabVisible:=false;
tabsheet13.TabVisible:=false;
tabsheet14.TabVisible:=false;
tabsheet15.TabVisible:=false;
tabsheet21.TabVisible:=false;
mtlOK2.Visible:=false;
mtlCancel2.Visible:=false;
mtlCancel.Visible:=false;
mtlNext.Visible:=false;
mtlRefresh.Visible:=false;
mtlPrevious.Visible:=false;
mtlDel.Visible:=false;
pnlAddc.Visible:=false;
pnlDelV.Visible:=false;
pnlAddG.Visible:=false;
pnlDelGeo.Visible:=false;
pnlDelete.Visible:=false;
pnlBEdit.Visible:=false;
mtlDelA.Visible:=true;
mtlAddcA.Visible:=true;
mtlDelG.Visible:=true;
mtlAddG.Visible:=true;
mtlDelV.Visible:=true;
pnlBadd.Visible:=false;
pnlDelB.Visible:=false;
pnlBaddc.Visible:=false;
pnlAddNewA.Visible:=false;
pnlfacts.Visible:=false;
pnlAddNewG.Visible:=false;
pnlAddNewV.Visible:=false;
pnlEditG.Visible:=false;
pnlEditA.Visible:=false;
pnlEditV.Visible:=false;
pnlEditF.Visible:=false;
tabsheet16.TabVisible:=true;
tabsheet17.TabVisible:=false;
tabsheet18.TabVisible:=false;
tabsheet19.TabVisible:=false;
tabsheet20.TabVisible:=false;
end
else
begin
mtlAdd0.ZoomOnHover:=0;
mtlEdit0.ZoomOnHover:=2;
mtlBabyHub.ZoomOnHover:=2;
mtlOrganise.ZoomOnHover:=2;
mtlQuick0.ZoomOnHover:=2;
mtlClip0.ZoomOnHover:=2;
mtlView0.ZoomOnHover:=2;
mtlFilter0.ZoomOnHover:=2;
mltStats0.ZoomOnHover:=2;
//////////////
mtlAdd0.Appearance.Color:=$0001AECD;
mtlbabyhub.Appearance.Color:=$0001A4C1;
mtlClip0.Appearance.Color:=$0001A4C1;
mtlOrganise.Appearance.Color:=$0001A4C1;
mtlView0.Appearance.Color:=$0001A4C1;
mtlQuick0.Appearance.Color:=$0001A4C1;
mtlFilter0.Appearance.Color:=$0001A4C1;
mltStats0.Appearance.Color:=$0001A4C1;
mtlEdit0.Appearance.Color:=$0001A4C1;
///////////////
pagecontrol7.Visible:=false;
pageControl8.Visible:=false;
TABSHEET43.TabVisible:=false;
tabsheet39.TabVisible:=true;
TABSHEET41.TabVisible:=false;
TABSHEET40.TabVisible:=false;
pageControl9.Visible:=false;
pnlOF.Visible:=false;
pnlNum.Visible:=false;
pnlNameF.Visible:=False;
pnlYesNo.Visible:=false;
pnlAniF.Visible:=true;
pnlOrderF.Visible:=true;
pnlVacF.Visible:=true;
pnlTopF.Visible:=true;
pnlHeading.Visible:=false;
pnlFilter.Visible:=false;
pnlFilterh.Visible:=false;
mtlCancel3.Visible:=false;
pnlHD.Visible:=false;
tabsheet44.TabVisible:=true;
tabsheet45.TabVisible:=false;
mtlNext2.Visible:=false;
pagecontrol6.Visible:=false;
mtlcancel3.Visible:=false;
tabsheet1.TabVisible:=true;
tabsheet2.TabVisible:=false;
tabsheet3.TabVisible:=false;
tabsheet4.TabVisible:=false;
pagecontrol1.Visible:=false;
pagecontrol2.Visible:=false;
pagecontrol4.Visible:=false;
pagecontrol5.Visible:=false;
tabsheet22.TabVisible:=true;
tabsheet23.TabVisible:=false;
tabsheet24.TabVisible:=false;
tabsheet25.TabVisible:=false;
tabsheet46.TabVisible:=false;
tabsheet27.TabVisible:=false;
redAni.Visible:=false;
redAni2.Visible:=false;
redAni3.Visible:=false;
redAni44.Visible:=false;
redAni5.Visible:=false;
mtlCancel3.Visible:=false;
mtlOK2.Visible:=false;
mtlDel.Visible:=true;
tabsheet1.TabVisible:=true;
tabsheet2.TabVisible:=false;
tabsheet3.TabVisible:=false;
tabsheet4.TabVisible:=false;
tabsheet7.TabVisible:=true;
tabsheet8.TabVisible:=false;
tabsheet9.TabVisible:=false;
tabsheet10.TabVisible:=false;
tabsheet11.TabVisible:=false;
tabsheet12.TabVisible:=false;
tabsheet13.TabVisible:=false;
tabsheet14.TabVisible:=true;
tabsheet15.TabVisible:=false;
tabsheet21.TabVisible:=false;
mtlOK2.Visible:=false;
mtlCancel2.Visible:=false;
mtlCancel.Visible:=false;
mtlNext.Visible:=false;
mtlRefresh.Visible:=false;
mtlPrevious.Visible:=false;
mtlDel.Visible:=false;
pnlAddc.Visible:=false;
pnlDelV.Visible:=false;
pnlAddG.Visible:=false;
pnlDelGeo.Visible:=false;
pnlDelete.Visible:=false;
pnlBEdit.Visible:=false;
mtlDelA.Visible:=true;
mtlAddcA.Visible:=true;
mtlDelG.Visible:=true;
mtlAddG.Visible:=true;
mtlDelV.Visible:=true;
pnlBadd.Visible:=false;
pnlDelB.Visible:=false;
pnlBaddc.Visible:=false;
pnlAddNewA.Visible:=false;
pnlfacts.Visible:=false;
pnlAddNewG.Visible:=false;
pnlAddNewV.Visible:=false;
pnlEditG.Visible:=false;
pnlEditA.Visible:=false;
pnlEditV.Visible:=false;
pnlEditF.Visible:=false;
tabsheet16.TabVisible:=true;
tabsheet17.TabVisible:=false;
tabsheet18.TabVisible:=false;
tabsheet19.TabVisible:=false;
tabsheet20.TabVisible:=false;
mtlOk2.Visible:=true;
mtlRefresh.Visible:=true;
pnlAddnewG.Visible:=true;
edit14.SetFocus;
end;
end;
procedure TfrmWorkplace.mtlAddnewClick(Sender: TObject);
begin
tabsheet12.TabVisible:=true;
tabsheet11.TabVisible:=false;
pnlAddnewA.Visible:=true;
mtlNext.Visible:=true;
mtlCancel2.Visible:=true;
mtlRefresh.Visible:=true;
edit8.SetFocus;
end;

procedure TfrmWorkplace.mtlAddnewGClick(Sender: TObject);
begin
tabsheet14.TabVisible:=true;
tabsheet11.TabVisible:=false;
mtlOk2.Visible:=true;
mtlCancel2.Visible:=true;
mtlRefresh.Visible:=true;
pnlAddnewG.Visible:=true;
edit14.SetFocus;
end;

procedure TfrmWorkplace.mtlAddnewVClick(Sender: TObject);
begin
tabsheet15.TabVisible:=true;
tabsheet11.TabVisible:=false;
mtlOk2.Visible:=true;
mtlCancel2.Visible:=true;
mtlRefresh.Visible:=true;
pnlAddnewV.Visible:=true;
edit7.SetFocus;
end;

procedure TfrmWorkplace.mtlCancel2Click(Sender: TObject);
begin
if pnlAddnewa.Visible = true  then
begin
edit8.Clear;
cmbOrder.Text:='Select here...';
spinedit7.Value:=0;
spinedit8.Value:=0;
pnlAddnewa.Visible:=false;
tabsheet11.TabVisible:=true;
tabsheet12.TabVisible:=false;
mtlOK2.Visible:=false;
mtlCancel2.Visible:=false;
mtlNext.Visible:=false;
mtlRefresh.Visible:=false;
mtlPrevious.Visible:=false;
end
else if pnlAddNewG.Visible = true  then
begin
edit14.Clear;
edit15.Clear;
edit16.Clear;
spinedit13.Value:=0;
spinedit15.Value:=0;
pnlAddNewG.Visible:=false;
tabsheet11.TabVisible:=true;
tabsheet14.TabVisible:=false;
mtlOK2.Visible:=false;
mtlCancel2.Visible:=false;
mtlNext.Visible:=false;
mtlRefresh.Visible:=false;
mtlPrevious.Visible:=false;
end
else if pnlFacts.Visible = true  then
begin
edit11.Clear;
edit12.Clear;
edit13.Clear;
spinedit10.Value:=0;
spinedit12.Value:=0;
spinedit11.Value:=0;
pnlfacts.Visible:=false;
tabsheet11.TabVisible:=true;
tabsheet13.TabVisible:=false;
mtlOK2.Visible:=false;
mtlCancel2.Visible:=false;
mtlNext.Visible:=false;
mtlRefresh.Visible:=false;
mtlPrevious.Visible:=false;
end
else if pnlAddNewV.Visible = true  then
begin
edit7.Clear;
edit17.Clear;
combobox13.Text:='Select here...';
pnlAddNewG.Visible:=false;
tabsheet11.TabVisible:=true;
tabsheet15.TabVisible:=false;
mtlOK2.Visible:=false;
mtlCancel2.Visible:=false;
mtlNext.Visible:=false;
mtlRefresh.Visible:=false;
mtlPrevious.Visible:=false;
end
else if pnlEditA.Visible = true  then
begin
tabsheet16.TabVisible:=true;
tabsheet17.TabVisible:=false;
pnlEditA.Visible:=false;
mtlOK2.Visible:=false;
mtlCancel2.Visible:=false;
mtlNext.Visible:=false;
mtlRefresh.Visible:=false;
mtlPrevious.Visible:=false;
end
else if pnlEditV.Visible = true  then
begin
tabsheet16.TabVisible:=true;
tabsheet20.TabVisible:=false;
pnlEditV.Visible:=false;
mtlOK2.Visible:=false;
mtlCancel2.Visible:=false;
mtlNext.Visible:=false;
mtlRefresh.Visible:=false;
mtlPrevious.Visible:=false;
end
else if pnlEditF.Visible = true  then
begin
tabsheet16.TabVisible:=true;
tabsheet18.TabVisible:=false;
pnlEditF.Visible:=false;
mtlOK2.Visible:=false;
mtlCancel2.Visible:=false;
mtlNext.Visible:=false;
mtlRefresh.Visible:=false;
mtlPrevious.Visible:=false;
end
else if pnlEditG.Visible = true  then
begin
tabsheet16.TabVisible:=true;
tabsheet19.TabVisible:=false;
pnlEditG.Visible:=false;
mtlOK2.Visible:=false;
mtlCancel2.Visible:=false;
mtlNext.Visible:=false;
mtlRefresh.Visible:=false;
mtlPrevious.Visible:=false;
end
else if pnlBEdit.Visible = true  then
begin
tabsheet7.TabVisible:=true;
tabsheet21.TabVisible:=false;
pnlBEdit.Visible:=false;
mtlOK2.Visible:=false;
mtlCancel2.Visible:=false;
mtlNext.Visible:=false;
mtlRefresh.Visible:=false;
mtlPrevious.Visible:=false;
end;
end;

procedure TfrmWorkplace.Edit21Change(Sender: TObject);
begin
qryBaby.Active:=false;
qryBaby.SQL.Text:='select * from EcoraBaby where [Baby Animal] like "%'+edit21.Text+'%"';
qryBaby.Active:=true;
end;

procedure TfrmWorkplace.SpinEdit18Change(Sender: TObject);
var
sNum:string;
begin
sNum:=spinedit18.Text;
qryBaby.Active:=false;
qryBaby.SQL.Text:='select * from EcoraBaby where ( [Number of boy babys] Like "%'+sNum+'%")';
qryBaby.Active:=true;
if spinedit18.Text = '' then
begin
spinedit18.Value:=0;
end;
end;

procedure TfrmWorkplace.SpinEdit17Change(Sender: TObject);
var
sNum:string;
begin
sNum:=spinedit17.Text;
qryBaby.Active:=false;
qryBaby.SQL.Text:='select * from EcoraBaby where ( [Number of girl babys] Like "%'+sNum+'%")';
qryBaby.Active:=true;
if spinedit17.Text = '' then
begin
spinedit17.Value:=0;
end;
end;

procedure TfrmWorkplace.SpinEdit9Change(Sender: TObject);
var
sNum:string;
begin
sNum:=spinedit9.Text;
qryOrgAni.Active:=false;
qryOrgAni.SQL.Text:='select * from EcoraNum where ( [Number_of_male] Like "%'+sNum+'%")';
qryOrgAni.Active:=true;
if spinedit9.Text = '' then
begin
spinedit9.Value:=0;
end;
end;

procedure TfrmWorkplace.SpinEdit14Change(Sender: TObject);
var
sNum:string;
begin
sNum:=spinedit14.Text;
qryOrgAni.Active:=false;
qryOrgAni.SQL.Text:='select * from EcoraNum where ( [Number_of_female] Like "%'+sNum+'%")';
qryOrgAni.Active:=true;
if spinedit14.Text = '' then
begin
spinedit14.Value:=0;
end;
end;

procedure TfrmWorkplace.ComboBox16Change(Sender: TObject);
begin
qryOrgAni.Active:=false;
qryOrgAni.SQL.Text:='select * from EcoraNum where [Order] like "%'+combobox16.Text+'%"';
qryOrgAni.Active:=true;
end;

procedure TfrmWorkplace.DateTimePicker3Change(Sender: TObject);
var
Date:TDateTime;
sDate:string;
begin
Date:=DateTimePicker3.Date;
sDate:=DateToStr(Date);
qryOrgGeo.Active:=false;
qryOrgGeo.SQL.Text:='select * from EcoraGeoTagging where [Date spotted] = #'+sDate+'#';
qryOrgGeo.Active:=true;
end;

procedure TfrmWorkplace.Edit10Change(Sender: TObject);
begin
qryOrgGeo.Active:=false;
qryOrgGeo.SQL.Text:='select * from EcoraGeoTagging where [Park/Sight spoted] like "%'+edit10.Text+'%"';
qryOrgGeo.Active:=true;
end;

procedure TfrmWorkplace.ComboBox14Change(Sender: TObject);
begin
qryOrgVac.Active:=false;
qryOrgVac.SQL.Text:='select * from EcoraAnimals where [Season of birth] like "%'+combobox14.Text+'%"';
qryOrgVac.Active:=true;
end;

procedure TfrmWorkplace.Edit18Change(Sender: TObject);
begin
qryOrgVac.Active:=false;
qryOrgVac.SQL.Text:='select * from EcoraAnimals where [Name] like "%'+edit18.Text+'%"';
qryOrgVac.Active:=true;
end;

procedure TfrmWorkplace.ComboBox15Change(Sender: TObject);
begin
qryOrgVac.Active:=false;
qryOrgVAc.SQL.Text:='select * from EcoraAnimals where [Vacinaited] = '+combobox15.Text+'';
qryOrgVac.Active:=true;
end;

procedure TfrmWorkplace.Edit20Change(Sender: TObject);                                         
begin
qryFacts.Active:=false;
qryFacts.SQL.Text:='select * from EcoraFacts where [Top speed(Km/h)] like "%'+edit20.Text+'%"';
qryFacts.Active:=true;
end;

procedure TfrmWorkplace.Edit19Change(Sender: TObject);
begin
qryFacts.Active:=false;
qryFacts.SQL.Text:='select * from EcoraFacts where [Scientific Name] like "%'+edit19.Text+'%"';
qryFacts.Active:=true;
end;

procedure TfrmWorkplace.SpinEdit16Change(Sender: TObject);
var
sNum:string;
begin
sNum:=spinedit16.Text;
qryFActs.Active:=false;
qryFActs.SQL.Text:='select * from EcoraFacts where ( [Intelligence] Like "%'+sNum+'%")';
qryFacts.Active:=true;
if spinedit16.Text = '' then
begin
spinedit16.Value:=0;
end;
end;

procedure TfrmWorkplace.mtlEditAClick(Sender: TObject);
begin
tabsheet17.TabVisible:=true;
tabsheet16.TabVisible:=false;
pnlEditA.Visible:=true;
mtlCancel2.Visible:=true;
mtlRefresh.Visible:=true;
dbedit1.SetFocus;
end;

procedure TfrmWorkplace.mtlEditGClick(Sender: TObject);
begin
tabsheet19.TabVisible:=true;
tabsheet16.TabVisible:=false;
pnlEditG.Visible:=true;
mtlCancel2.Visible:=true;
mtlRefresh.Visible:=true;
dbedit2.SetFocus;
end;

procedure TfrmWorkplace.mtlEditVClick(Sender: TObject);
begin
tabsheet20.TabVisible:=true;
tabsheet16.TabVisible:=false;
pnlEditv.Visible:=true;
mtlCancel2.Visible:=true;
mtlRefresh.Visible:=true;
dbedit9.SetFocus;
end;

procedure TfrmWorkplace.mtlEditFClick(Sender: TObject);
begin
tabsheet18.TabVisible:=true;
tabsheet16.TabVisible:=false;
pnlEditF.Visible:=true;
mtlCancel2.Visible:=true;
mtlRefresh.Visible:=true;
dbedit10.SetFocus;
end;

procedure TfrmWorkplace.mtlUpdateClick(Sender: TObject);
begin
dbgrid14.SetFocus;
qryOrgAni.Active:=false;
qryOrgAni.SQL.Text:='Update EcoraNum Set [Total_number_of_animal] = ([Number_of_male] +[Number_of_female]) ';
qryOrgAni.ExecSQL;
messagedlg('The Total population of both sex have beer succesfully updated',mtInformation,[mbOK],1);
qryOrgAni.SQL.Text:='Select * from EcoraNum';
qryOrgAni.Active:=true;
end;

procedure TfrmWorkplace.mtlUpdate2Click(Sender: TObject);
begin
qryBaby.Active:=false;
qryBaby.SQL.Text:='Update EcoraBaby Set [Total number of babys] = ([Number of boy babys] +[Number of girl babys]) ';
qryBaby.ExecSQL;
messagedlg('The Total population of both sex have beer succesfully updated',mtInformation,[mbOK],1);
qryBaby.SQL.Text:='Select * from EcoraBaby';
qryBaby.Active:=true;
end;

procedure TfrmWorkplace.mtlEdit1Click(Sender: TObject);
begin
pnlBedit.Visible:=true;
mtlRefresh.Visible:=true;
mtlCancel2.Visible:=true;
tabsheet21.TabVisible:=true;
tabsheet7.TabVisible:=false;
mtlPrevious.Visible:=false;
end;

procedure TfrmWorkplace.mtlClipAClick(Sender: TObject);
var
iRecCount,iCount1,iRecCount1,iTTotal,iAverage:integer;
sBellowAve:string;
begin
redAni.Lines.Clear;
mtlCancel3.Visible:=true;
tabsheet22.TabVisible:=false;
tabsheet23.TabVisible:=true;
iCount:=0;
iCount1:=0;
iRecCount1:=0;
///////////////////////////////////////////////////////
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:='Select * from EcoraNum';
qryClipBoard.Active:=true;
while not qryClipBoard.Eof do
begin
iRecCount1:=qryClipBoard.RecordCount;
qryClipBoard.Next;
end;
///////////////////////////////////////////////////////////////
redAni.Lines.Text:=redAni.Lines.Text+' Welcome to the ECORANUM table clipboard'+#13;
redAni.Lines.Text:=redAni.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni.Lines.Text:=redAni.Lines.Text+''+#13;
redAni.Lines.Text:=redAni.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni.Lines.Text:=redAni.Lines.Text+' The ECORANUM is a table where you as the user can add a new spieces of animal into the'+#13;
redAni.Lines.Text:=redAni.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni.Lines.Text:=redAni.Lines.Text+' database.This data base will show you the total population,the order and the kingdom '+#13;
redAni.Lines.Text:=redAni.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni.Lines.Text:=redAni.Lines.Text+' in which that specific species belongs in...';
redAni.Lines.Text:=redAni.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni.Lines.Text:=redAni.Lines.Text+''+#13;
redAni.Lines.Text:=redAni.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni.Lines.Text:=redAni.Lines.Text+' The next set of information shows the type of animals and thier popolation density...'+#13;
redAni.Lines.Text:=redAni.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
/////////
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:='Select Count(Animal) as [Counted] from EcoraNum where [Order] = "Herbivore"';
qryClipBoard.Active:=true;
sHerbivore:=dbgrid11.SelectedField.Text;
redAni.Lines.Text:=redAni.Lines.Text+' There are '+Inttostr(iRecCount1)+' type of mammal species in Kruger National Park.'+#13;
redAni.Lines.Text:=redAni.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni.Lines.Text:=redAni.Lines.Text+#7+' '+sHerbivore +' Herbivores'+#13;
redAni.Lines.Text:=redAni.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
/////////
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:='Select Count(Animal) as [Counted] from EcoraNum where [Order] = "Carnivore"';
qryClipBoard.Active:=true;
sCarnivore:=dbgrid11.SelectedField.Text;
redAni.Lines.Text:=redAni.Lines.Text+#7+' '+sCarnivore +' Carnivores'+#13;
redAni.Lines.Text:=redAni.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
/////////
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:='Select Count(Animal) as [Counted] from EcoraNum where [Order] = "Omnivore"';
qryClipBoard.Active:=true;
sOmnivore:=dbgrid11.SelectedField.Text;
redAni.Lines.Text:=redAni.Lines.Text+#7+' '+sOmnivore +' Omnivores'+#13;
redAni.Lines.Text:=redAni.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
///////////////////
qryOrgAni.Open;
qryOrgani.First;
while not qryOrgAni.Eof do
begin
iCount1:=qryOrgAni.RecordCount;
sKingdoms:=qryOrgAni['Kingdom'];
sOrders:=qryOrgAni['Order'];
sNames:=qryOrgAni['Animal'];
iMaleT:=qryOrgAni['Number_of_male'];
iFemaleT:=qryOrgAni['Number_of_female'];
iTotal:=qryOrgAni['Total_number_of_animal'];
inc(iCount);
qryOrgAni.Next;
Calculate.SetA(sKingdoms,sOrders,sNames,iMaleT,iFemaleT,iTotal,iCount);
iTTotal:=iTTotal+iTotal;
iAverage:=iTTotal div iCount1;
redAni.Lines.Text:=redAni.Lines.Text+Calculate.Tostring;
end;
redAni.Lines.Text:=redAni.Lines.Text+'________________________________________________________'+#13;
redAni.Lines.Text:=redAni.Lines.Text+''+#13;
redAni.Lines.Text:=redAni.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni.Lines.Text:=redAni.Lines.Text+' In total there are about ' + Inttostr(iTTotal)+ ' mammal animals in the Kruger National Park ...';
redAni.Lines.Text:=redAni.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
/////////////////////////////////////////////////////
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:='Select Max(Total_number_of_animal) as [MAX] from EcoraNum ';
qryClipBoard.Active:=true;
sMax:=dbgrid11.SelectedField.Text;
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:='Select * from EcoraNum where [Total_number_of_animal] = '+sMax+'  ';
qryClipBoard.Active:=true;
redAni.Lines.Text:=redAni.Lines.Text+#7+' The animal with the highest population is the  ' + qryClipBoard['Animal'] +' with a total population of '+ sMax+'.';
redAni.Lines.Text:=redAni.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
//////////////////////////////////////////////////////
qryClipBoard.SQL.Text:='Select Min(Total_number_of_animal) as [MAX] from EcoraNum ';
qryClipBoard.Active:=true;
sLowest:=dbgrid11.SelectedField.Text;
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:='Select * from EcoraNum where [Total_number_of_animal] = '+sLowest+'  ';
qryClipBoard.Active:=true;
redAni.Lines.Text:=redAni.Lines.Text+#7+' The animal that is likely to be extint in the next 10 years is the  ' + qryClipBoard['Animal']+#13;
redAni.Lines.Text:=redAni.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni.Lines.Text:=redAni.Lines.Text+'   with a total population of '+ sLowest+'.';
redAni.Lines.Text:=redAni.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni.Lines.Text:=redAni.Lines.Text+' The average population of all mammal animals is ' + Inttostr(iAverage);
redAni.Lines.Text:=redAni.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
/////////////////////////////////////////////////////////////
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:='Select Animal from EcoraNum where [Total_number_of_animal] <= '+Inttostr(iAverage)+'';
qryClipBoard.Active:=true;
qryClipboard.Open;
qryClipBoard.First;
while not qryClipBoard.Eof do
begin
sBellowAve:=sBellowAve+#13+#7+' '+qryClipBoard['Animal'];
qryClipBoard.Next;
end;
redAni.Lines.Text:=redAni.Lines.Text+'The following animals are bellow the average population and are the endangered animals : ' + sBellowAve;
redAni.Visible:=true;
/////////////////////////////////////////////////////////////////
end;

procedure TfrmWorkplace.mtlClipGClick(Sender: TObject);
begin
mtlCancel3.Visible:=true;
tabsheet22.TabVisible:=false;
tabsheet24.TabVisible:=true;
tabsheet23.TabVisible:=false;
iCount:=0;
//////////////////////////////////////////////////////////////////////////////////// introdutory paragraph
redAni2.Clear;
redAni2.Lines.Text:=redAni2.Lines.Text+' Welcome to the ECORAGEOTAGGING table clipboard'+#13;
redAni2.Lines.Text:=redAni2.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni2.Lines.Text:=redAni2.Lines.Text+''+#13;
redAni2.Lines.Text:=redAni2.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni2.Lines.Text:=redAni2.Lines.Text+' The ECORANUM is a table where you as the user can add a new spieces of animal that'+#13;
redAni2.Lines.Text:=redAni2.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni2.Lines.Text:=redAni2.Lines.Text+' you spoted durring the course of the day.You will be require to enter the GPS coordinates,'+#13;
redAni2.Lines.Text:=redAni2.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni2.Lines.Text:=redAni2.Lines.Text+' type experienced, the type of animal you apotted and the date that you saw the animal...';
redAni2.Lines.Text:=redAni2.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni2.Lines.Text:=redAni2.Lines.Text+''+#13;
redAni2.Lines.Text:=redAni2.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni2.Lines.Text:=redAni2.Lines.Text+' The next set of information shows the type of animals that were spoted and the '+#13;
redAni2.Lines.Text:=redAni2.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni2.Lines.Text:=redAni2.Lines.Text+' coordinates the expected distance of the place...'+#13;
redAni2.Lines.Text:=redAni2.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
////////////////////////////////////////////////////////////////////////////////////
qryOrgGeo.Open;
qryOrgGeo.First;
while not qryOrgGeo.Eof do
begin
sWeather:=qryOrgGeo['Type of weather condition'];
sPark:=qryOrgGeo['Park/Sight spoted'];
sNames:=qryOrgGeo['Animal'];
iX:=qryOrgGeo['X-coordinates of Animal'];
iY:=qryOrgGeo['Y-coordinates of Animal'];
sDate:=Datetostr(qryOrgGeo['Date spotted']);
inc(iCount);
qryOrgGeo.Next;
Calculate.SetG(sdate,sNames,sPark,sWeather,iX,iY,iCount);
Calculate.CalDistance;
Calculate.FormatDate;
redAni2.Lines.Text:=redAni2.Lines.Text+Calculate.TostringGeo;
end;//end of while loop
redAni2.Visible:=true;
////////////////////////////////////////////////////////////////////////////////////
end;

procedure TfrmWorkplace.mtlClipVClick(Sender: TObject);
var
iC,iC2:integer;
begin
iC:=0;
iC2:=0;
mtlCancel3.Visible:=true;
tabsheet22.TabVisible:=false;
tabsheet25.TabVisible:=true;
iCount:=0;
//////////////////////////////////////////////////////////////////////////////////// introdutory paragraph
redAni3.Clear;
redAni3.Lines.Text:=redAni3.Lines.Text+' Welcome to the ECORAANIMALS table clipboard'+#13;
redAni3.Lines.Text:=redAni3.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni3.Lines.Text:=redAni3.Lines.Text+' '+#13;
redAni3.Lines.Text:=redAni3.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni3.Lines.Text:=redAni3.Lines.Text+' The ECORAANIMALS is a table where users can add new animal that have been tagged'+#13;
redAni3.Lines.Text:=redAni3.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni3.Lines.Text:=redAni3.Lines.Text+' or used for scientific research,you can add the lab name of the animal,the season of birth'+#13;
redAni3.Lines.Text:=redAni3.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni3.Lines.Text:=redAni3.Lines.Text+' and you can also say if the animal is vaccinated or not...';
redAni3.Lines.Text:=redAni3.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni3.Lines.Text:=redAni3.Lines.Text+' '+#13;
redAni3.Lines.Text:=redAni3.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni3.Lines.Text:=redAni3.Lines.Text+' The next set of information shows the animals that are tagged and being monitored...'+#13;
redAni3.Lines.Text:=redAni3.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni3.Lines.Text:=redAni3.Lines.Text+' '+#13;
/////////////////////////////////////////////////////
qryOrgVac.Open;
qryOrgVac.First;
while not qryOrgVac.Eof do
begin
sVac:=qryOrgVac['Vacinaited'];
sBirth:=qryOrgVac['Season of birth'];
sLabname:=qryOrgVac['Name'];
sNames:=qryOrgVac['Animal'];
inc(iCount);
qryOrgVac.Next;
Calculate.SetV(sNames,sLabname,sbirth,sVac,iCount);
redAni3.Lines.Text:=redAni3.Lines.Text+Calculate.TostringVac;
end;
//////////////////////////////////////////////////////////////
redAni3.Lines.Text:=redAni3.Lines.Text+' '+#13;
redAni3.Lines.Text:=redAni3.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;

//////////////////////////////////////////////////////////////////////////////////// Male or Female check
qryOrgVac.Open;
qryOrgVac.First;
while not qryOrgVac.Eof do
begin
sVac:=qryOrgVac['Vacinaited'];
sNames:=qryOrgVac['Animal'];
qryOrgVac.Next;
if sVAc= 'True' then
begin;
inc(iC);
end;
if sVAc= 'False' then
begin;
inc(iC2);
redAni3.Lines.Text:=redAni3.Lines.Text+#7+' '+sNames;
end;
end;
//////////////////////////////////////////////////////////////////////////////////// Display results
redAni3.Lines.Text:=redAni3.Lines.Text+'The above '+Inttostr(iC2)+' animals were not vacinated and ... only '+Inttostr(iC)+' out of '+Inttostr(iCount) +' animals where vaccinated';
redAni3.Visible:=true;
////////////////////////////////////////////////////////////////////////////////////
end;

procedure TfrmWorkplace.mtlClipBClick(Sender: TObject);
var
iRecCount,iTTotal2,iAverage2:integer;
begin
mtlCancel3.Visible:=true;
tabsheet22.TabVisible:=false;
tabsheet46.TabVisible:=true;
iCount:=0;
iRecCount:=0;
//////////////////////////////////////////////////////////////////////////////////// introdutory paragraph
redAni44.Clear;
redAni44.Lines.Text:=redAni44.Lines.Text+' Welcome to the ECORABABY table clipboard'+#13;
redAni44.Lines.Text:=redAni44.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni44.Lines.Text:=redAni44.Lines.Text+''+#13;
redAni44.Lines.Text:=redAni44.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni44.Lines.Text:=redAni44.Lines.Text+' The ECORANUM is a table where you as the user can add a new animal and its birth rate'+#13;
redAni44.Lines.Text:=redAni44.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni44.Lines.Text:=redAni44.Lines.Text+' in the database. Therefore yoou can monitor the birth rate of ech type of animal...'+#13;
redAni44.Lines.Text:=redAni44.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni44.Lines.Text:=redAni44.Lines.Text+''+#13;
redAni44.Lines.Text:=redAni44.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni44.Lines.Text:=redAni44.Lines.Text+' The next set of information shows the type of animals and thier birth rates...'+#13;
redAni44.Lines.Text:=redAni44.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
qrybaby.Open;
qrybaby.First;
while not qryBaby.Eof do
begin
iRecCount:=qryBaby.RecordCount;
iTotal:=qryBaby['Total Number of babys'];
iMaleT:=qryBaby['Number of boy babys'];
iFemaleT:=qryBaby['Number of girl babys'];
sLabname:=qryBaby['Baby Animal'];
sNames:=qryBaby['Animal'];
inc(iCount);
qrybaby.Next;
Calculate.SetA(sKingdoms,sLabname,sNames,iMaleT,iFemaleT,iTotal,iCount);
iTTotal2:=iTTotal2+iTotal;
iAverage2:=iTTotal2 div iRecCount;
redAni44.Lines.Text:=redAni44.Lines.Text+Calculate.Tostringb;
end;
////////////////////////////////////////////////////////////////////////////////////
redAni44.Lines.Text:=redAni44.Lines.Text+'________________________________________________________'+#13;
redAni44.Lines.Text:=redAni44.Lines.Text+''+#13;
redAni44.Lines.Text:=redAni44.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni44.Lines.Text:=redAni44.Lines.Text+'In total there are about ' + Inttostr(iTTotal2)+ ' baby animals born this year in the Kruger National Park ...';
redAni44.Lines.Text:=redAni44.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
////////////////////////////////////////////////////////////////////////////////////////////
qryClipboard.Active:=false;
qryClipboard.SQL.Text:='Select Max([Total Number of babys]) from EcoraBaby';
qryClipboard.Active:=true;
sMax:=dbgrid11.SelectedField.Text;
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:='Select * from EcoraBaby where [Total Number of babys] = '+sMax+'  ';
qryClipBoard.Active:=true;
redAni44.Lines.Text:=redAni44.Lines.Text+#7+' The animal with gave birth to the most babys is the ' + qryClipBoard['Animal'] +' with a total babys of '+ sMax+'.';
redAni44.Lines.Text:=redAni44.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
////////////////////////////////////////////////////////////////////
qryClipBoard.SQL.Text:='Select Min([Total Number of babys]) as [MAX] from EcoraBaby';
qryClipBoard.Active:=true;
sLowest:=dbgrid11.SelectedField.Text;
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:='Select * from EcoraBaby where [Total Number of babys] = '+sLowest+'  ';
qryClipBoard.Active:=true;
redAni44.Lines.Text:=redAni44.Lines.Text+#7+' The animal that is having a problem givin birth is the ' + qryClipBoard['Animal']+#13;
redAni44.Lines.Text:=redAni44.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni44.Lines.Text:=redAni44.Lines.Text+'   with total babys '+ sLowest+'.';
redAni44.Lines.Text:=redAni44.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni44.Lines.Text:=redAni44.Lines.Text+'The average birth rate of all mammal animals is ' + Inttostr(iAverage2)+ ' babys per season...';
redAni44.Lines.Text:=redAni44.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni44.Visible:=true;


end;

procedure TfrmWorkplace.mtlClipFClick(Sender: TObject);
begin
mtlCancel3.Visible:=true;
tabsheet22.TabVisible:=false;
tabsheet27.TabVisible:=true;
iCount:=0;
//////////////////////////////////////////////////////////////////////////////////// introdutory paragraph
redAni5.Clear;
redAni5.Lines.Text:=redAni5.Lines.Text+' Welcome to the ECORAFACTS table clipboard'+#13;
redAni5.Lines.Text:=redAni5.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni5.Lines.Text:=redAni5.Lines.Text+''+#13;
redAni5.Lines.Text:=redAni5.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni5.Lines.Text:=redAni5.Lines.Text+' The ECORAFACTS is a table where you as the user can add a new animal and some' +#13;
redAni5.Lines.Text:=redAni5.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni5.Lines.Text:=redAni5.Lines.Text+' interesting facts about the animal in the database...'+#13;
redAni5.Lines.Text:=redAni5.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni5.Lines.Text:=redAni5.Lines.Text+''+#13;
redAni5.Lines.Text:=redAni5.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
redAni5.Lines.Text:=redAni5.Lines.Text+' The next set of information shows the type of animals and thier interesting facts...'+#13;
redAni5.Lines.Text:=redAni5.Lines.Text+'----------------------------------------------------------------------------------------------------------------'+#13;
////////////////////////////////////////////////////////////////////////////////////
qryFacts.Open;
qryFacts.First;
while not qryfacts.Eof do
begin
slabName:=qryfacts['Scientific Name'];
sNames:=qryfacts['Animal'];
sKm:=qryfacts['Top speed(Km/h)'];
sMeters:=qryfacts['Max Shoulder Height(m)'];
iX:=qryfacts['Max Weight(Kg)'];
iY:=qryfacts['Lifespan(years)'];
iIQ:=qryfacts['Intelligence'];
INC(iCount);
qryFacts.Next;
Calculate.SetF(sNames,slabname,skm,sMeters,iX,iY,iIQ,iCount);
redAni5.Lines.Text:=redAni5.Lines.Text+Calculate.ToStringFacts;

end;
////////////////////////////////////////////////////////////////////////////////////
redAni5.Visible:=true;
end;


procedure TfrmWorkplace.AdvMetroFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Calculate.Free;
end;

procedure TfrmWorkplace.AdvMetroFormActivate(Sender: TObject);
begin
frmWorkPlace.Caption:='Hexagon.';
redAni.Paragraph.TabCount:=5;
redAni.Paragraph.Tab[0]:=100;
redAni.Paragraph.Tab[1]:=150;
redAni.Paragraph.Tab[2]:=200;
redAni.Paragraph.Tab[3]:=250;
redAni.Paragraph.Tab[4]:=300;
redAni2.Paragraph.TabCount:=5;
redAni2.Paragraph.Tab[0]:=100;
redAni2.Paragraph.Tab[1]:=150;
redAni2.Paragraph.Tab[2]:=200;
redAni2.Paragraph.Tab[3]:=250;
redAni2.Paragraph.Tab[4]:=300;
redAni3.Paragraph.TabCount:=5;
redAni3.Paragraph.Tab[0]:=100;
redAni3.Paragraph.Tab[1]:=200;
redAni3.Paragraph.Tab[2]:=500;
//////////
redAf.Paragraph.TabCount:=3;
redAF.Paragraph.Tab[0]:=120;
redAf.Paragraph.Tab[1]:=180;
redAf.Paragraph.Tab[2]:=270;
///////////
redff.Paragraph.TabCount:=3;
redfF.Paragraph.Tab[0]:=120;
redff.Paragraph.Tab[1]:=180;
redff.Paragraph.Tab[2]:=270;
///////////
redGf.Paragraph.TabCount:=3;
redGF.Paragraph.Tab[0]:=120;
redGf.Paragraph.Tab[1]:=180;
redGf.Paragraph.Tab[2]:=270;
///////////
redvf.Paragraph.TabCount:=3;
redvF.Paragraph.Tab[0]:=180;
redvf.Paragraph.Tab[1]:=180;
redvf.Paragraph.Tab[2]:=270;
///////////
redbf.Paragraph.TabCount:=3;
redbF.Paragraph.Tab[0]:=120;
redbf.Paragraph.Tab[1]:=180;
redbf.Paragraph.Tab[2]:=320;

end;

procedure TfrmWorkplace.mtlClip0Click(Sender: TObject);
begin
/////////////
panel5.Visible:=false;
Pagecontrol5.Visible:=true;
mtlClip0.ZoomOnHover:=0;
mtlAdd0.ZoomOnHover:=2;
mtlBabyHub.ZoomOnHover:=2;
mtlOrganise.ZoomOnHover:=2;
mtlQuick0.ZoomOnHover:=2;
mtlEdit0.ZoomOnHover:=2;
mtlView0.ZoomOnHover:=2;
mtlFilter0.ZoomOnHover:=2;
mltStats0.ZoomOnHover:=2;
///////////
mtlClip0.Appearance.Color:=$0001AECD;
mtlbabyhub.Appearance.Color:=$0001A4C1;
mtlAdd0.Appearance.Color:=$0001A4C1;
mtlOrganise.Appearance.Color:=$0001A4C1;
mtlView0.Appearance.Color:=$0001A4C1;
mtlQuick0.Appearance.Color:=$0001A4C1;
mtlFilter0.Appearance.Color:=$0001A4C1;
mltStats0.Appearance.Color:=$0001A4C1;
mtlEdit0.Appearance.Color:=$0001A4C1;
///////////////
pagecontrol7.Visible:=false;
pageControl8.Visible:=false;
TABSHEET43.TabVisible:=false;
tabsheet39.TabVisible:=true;
TABSHEET41.TabVisible:=false;
TABSHEET40.TabVisible:=false;
pageControl9.Visible:=false;
pnlOF.Visible:=false;
pnlNum.Visible:=false;
pnlNameF.Visible:=False;
pnlYesNo.Visible:=false;
pnlAniF.Visible:=true;
pnlOrderF.Visible:=true;
pnlVacF.Visible:=true;
pnlTopF.Visible:=true;
pnlHeading.Visible:=false;
pnlFilter.Visible:=false;
pnlFilterh.Visible:=false;
mtlCancel3.Visible:=false;
pnlHD.Visible:=false;
tabsheet44.TabVisible:=true;
tabsheet45.TabVisible:=false;
pagecontrol6.Visible:=false;

pagecontrol3.Visible:=false;
pagecontrol1.Visible:=false;
pagecontrol2.Visible:=false;
pagecontrol4.Visible:=false;
mtlcancel3.Visible:=true;
mtlNext2.Visible:=false;
tabsheet22.TabVisible:=true;
tabsheet23.TabVisible:=false;
tabsheet24.TabVisible:=false;
tabsheet25.TabVisible:=false;
tabsheet46.TabVisible:=false;
tabsheet27.TabVisible:=false;
redAni.Visible:=false;
redAni2.Visible:=false;
redAni3.Visible:=false;
redAni44.Visible:=false;
redAni5.Visible:=false;
tabsheet11.TabVisible:=true;
tabsheet12.TabVisible:=false;
tabsheet13.TabVisible:=false;
tabsheet14.TabVisible:=false;
tabsheet15.TabVisible:=false;
tabsheet7.TabVisible:=true;
tabsheet8.TabVisible:=false;
tabsheet9.TabVisible:=false;
tabsheet10.TabVisible:=false;
mtlOK2.Visible:=false;
mtlCancel2.Visible:=false;
mtlNext.Visible:=false;
mtlRefresh.Visible:=false;
mtlPrevious.Visible:=false;
mtlDel.Visible:=false;
pnlAddc.Visible:=false;
pnlDelV.Visible:=false;
pnlAddG.Visible:=false;
pnlDelGeo.Visible:=false;
pnlDelete.Visible:=false;
pnlBEdit.Visible:=false;
mtlDelA.Visible:=true;
mtlAddcA.Visible:=true;
mtlDelG.Visible:=true;
mtlAddG.Visible:=true;
mtlDelV.Visible:=true;
pnlBadd.Visible:=false;
mtlCancel.Visible:=false;
pnlDelB.Visible:=false;
pnlBaddc.Visible:=false;
mtlcancel3.Visible:=false;
pnlAddNewA.Visible:=false;
pnlfacts.Visible:=false;
pnlAddNewG.Visible:=false;
pnlAddNewV.Visible:=false;
pnlEditG.Visible:=false;
pnlEditA.Visible:=false;
pnlEditV.Visible:=false;
pnlEditF.Visible:=false;
tabsheet16.TabVisible:=true;
tabsheet17.TabVisible:=false;
tabsheet18.TabVisible:=false;
tabsheet19.TabVisible:=false;
tabsheet20.TabVisible:=false;
tabsheet1.TabVisible:=true;
tabsheet2.TabVisible:=false;
tabsheet3.TabVisible:=false;
tabsheet4.TabVisible:=false;
end;

procedure TfrmWorkplace.mtlCancel3Click(Sender: TObject);
begin
////////////////////////////////////////////////////////////////////////////////////
if redani.Visible = true then
begin
Tabsheet22.TabVisible:=true;
Tabsheet23.TabVisible:=false;
mtlCancel3.Visible:=false;
redAni.Visible:=false;
end
////////////////////////////////////////////////////////////////////////////////////
else if redani2.Visible = true then
begin
Tabsheet22.TabVisible:=true;
Tabsheet24.TabVisible:=false;
mtlCancel3.Visible:=false;
redAni2.Visible:=false;
end
////////////////////////////////////////////////////////////////////////////////////
else if redani3.Visible = true then
begin
Tabsheet22.TabVisible:=true;
Tabsheet25.TabVisible:=false;
mtlCancel3.Visible:=false;
redAni3.Visible:=false;
end
////////////////////////////////////////////////////////////////////////////////////
else if redani44.Visible = true then
begin
Tabsheet22.TabVisible:=true;
Tabsheet46.TabVisible:=false;
mtlCancel3.Visible:=false;
redAni44.Visible:=false;
end
////////////////////////////////////////////////////////////////////////////////////
else if redani5.Visible = true then
begin
Tabsheet22.TabVisible:=true;
Tabsheet27.TabVisible:=false;
mtlCancel3.Visible:=false;
redAni5.Visible:=false;
end
////////////////////////////////////////////////////////////////////////////////////
else if (tabsheet34.TabVisible = true ) or (tabsheet35.TabVisible = true ) or (tabsheet36.TabVisible = true ) or (tabsheet37.TabVisible = true ) or (tabsheet38.TabVisible = true ) then
begin
Tabsheet33.TabVisible:=true;
Tabsheet34.TabVisible:=false;
Tabsheet36.TabVisible:=false;
Tabsheet35.TabVisible:=false;
Tabsheet37.TabVisible:=false;
Tabsheet38.TabVisible:=false;
mtlCancel3.Visible:=false;
end
////////////////////////////////////////////////////////////////////////////////////
else if (pnlOf.Visible = true ) or(pnlNamef.Visible = true ) or(pnlYesNo.Visible = true ) or(pnlNum.Visible = true ) then
begin
pnlOF.Visible:=false;
pnlNum.Visible:=false;
pnlNameF.Visible:=False;
pnlYesNo.Visible:=false;
pnlAniF.Visible:=true;
pnlOrderF.Visible:=true;
pnlVacF.Visible:=true;
pnlTopF.Visible:=true;
pnlHeading.Visible:=false;
pnlFilter.Visible:=false;
pnlFilterh.Visible:=false;
mtlCancel3.Visible:=false;
pnlHD.Visible:=false;
end
////////////////////////////////////////////////////////////////////////////////////
else if (tabsheet40.TabVisible = true ) or (tabsheet41.TabVisible = true ) or (tabsheet43.TabVisible = true ) then
begin
Tabsheet39.TabVisible:=true;
Tabsheet41.TabVisible:=false;
Tabsheet40.TabVisible:=false;
Tabsheet43.TabVisible:=false;
mtlCancel3.Visible:=false;
end
////////////////////////////////////////////////////////////////////////////////////
end;

procedure TfrmWorkplace.mtlNext2Click(Sender: TObject);
begin
pagecontrol6.SelectNextPage(True,False);
end;

procedure TfrmWorkplace.mtlQuick0Click(Sender: TObject);
var
Flags: DWORD;
  Handle: HWND;
begin
////////////////////////////////////////////////////////////////////////////////////
   Pagecontrol6.DoubleBuffered:=true;
   Handle := Pagecontrol6.Handle;
    if Hidden then
    Flags := AW_ACTIVATE
    else
    //Flags  :=AW_Hide;
    Hidden := not Hidden;                                                      //}//internet animation/slide
    Flags :=Flags or AW_Slide;
    Flags :=Flags  OR AW_HOR_Negative ;
      if not AnimateWindow(Handle, 500, Flags) then begin
    if GetLastError = ERROR_SUCCESS then //Error handeling
        //showmessage('The thread does not own the window! ERROR');
    exit;
  end;
Pagecontrol6.Visible:=true;
////////////////////////////////////////////////////////////////////////////////////
mtlQuick0.ZoomOnHover:=0;
mtlAdd0.ZoomOnHover:=2;
mtlBabyHub.ZoomOnHover:=2;
mtlOrganise.ZoomOnHover:=2;
mtlEdit0.ZoomOnHover:=2;
mtlClip0.ZoomOnHover:=2;
mtlView0.ZoomOnHover:=2;
mtlFilter0.ZoomOnHover:=2;
mltStats0.ZoomOnHover:=2;
///////////
mtlbabyhub.Appearance.Color:=$0001A4C1;
mtlClip0.Appearance.Color:=$0001A4C1;
mtlOrganise.Appearance.Color:=$0001A4C1;
mtlView0.Appearance.Color:=$0001A4C1;
mtlAdd0.Appearance.Color:=$0001A4C1;
mtlFilter0.Appearance.Color:=$0001A4C1;
mltStats0.Appearance.Color:=$0001A4C1;
mtlEdit0.Appearance.Color:=$0001A4C1;
mtlQuick0.Appearance.Color:=$0001AECD;
//////////////////
panel5.Visible:=false;
PAGECONTROL6.TabIndex:=0;
pagecontrol7.Visible:=false;
pageControl8.Visible:=false;
TABSHEET43.TabVisible:=false;
tabsheet39.TabVisible:=true;
TABSHEET41.TabVisible:=false;
TABSHEET40.TabVisible:=false;
tabsheet28.TabVisible:=true;
pnlOF.Visible:=false;
pnlNum.Visible:=false;
pnlNameF.Visible:=False;
pnlYesNo.Visible:=false;
pnlAniF.Visible:=true;
pnlOrderF.Visible:=true;
pnlVacF.Visible:=true;
pnlTopF.Visible:=true;
pnlHeading.Visible:=false;
pnlFilter.Visible:=false;
pnlFilterh.Visible:=false;
mtlCancel3.Visible:=false;
pnlHD.Visible:=false;
pagecontrol5.Visible:=false;

pagecontrol3.Visible:=false;
pagecontrol1.Visible:=false;
pagecontrol2.Visible:=false;
pagecontrol4.Visible:=false;
mtlcancel3.Visible:=true;
mtlPrevious.Visible:=true;
mtlNext2.Visible:=true;
tabsheet44.TabVisible:=true;
tabsheet45.TabVisible:=false;
tabsheet22.TabVisible:=true;
tabsheet23.TabVisible:=false;
tabsheet24.TabVisible:=false;
tabsheet25.TabVisible:=false;
tabsheet46.TabVisible:=false;
tabsheet27.TabVisible:=false;
redAni.Visible:=false;
redAni2.Visible:=false;
redAni3.Visible:=false;
redAni44.Visible:=false;
redAni5.Visible:=false;
tabsheet11.TabVisible:=true;
tabsheet12.TabVisible:=false;
tabsheet13.TabVisible:=false;
tabsheet14.TabVisible:=false;
tabsheet15.TabVisible:=false;
tabsheet7.TabVisible:=true;
tabsheet8.TabVisible:=false;
tabsheet9.TabVisible:=false;
tabsheet10.TabVisible:=false;
mtlOK2.Visible:=false;
mtlCancel2.Visible:=false;
mtlNext.Visible:=false;
mtlRefresh.Visible:=false;
mtlDel.Visible:=false;
pnlAddc.Visible:=false;
pnlDelV.Visible:=false;
pnlAddG.Visible:=false;
pnlDelGeo.Visible:=false;
pnlDelete.Visible:=false;
pnlBEdit.Visible:=false;
mtlDelA.Visible:=true;
mtlAddcA.Visible:=true;
mtlDelG.Visible:=true;
mtlAddG.Visible:=true;
mtlDelV.Visible:=true;
pnlBadd.Visible:=false;
mtlCancel.Visible:=false;
pnlDelB.Visible:=false;
pnlBaddc.Visible:=false;
mtlcancel3.Visible:=false;
pnlAddNewA.Visible:=false;
pnlfacts.Visible:=false;
pnlAddNewG.Visible:=false;
pnlAddNewV.Visible:=false;
pnlEditG.Visible:=false;
pnlEditA.Visible:=false;
pnlEditV.Visible:=false;
pnlEditF.Visible:=false;
tabsheet16.TabVisible:=true;
tabsheet17.TabVisible:=false;
tabsheet18.TabVisible:=false;
tabsheet19.TabVisible:=false;
tabsheet20.TabVisible:=false;
tabsheet1.TabVisible:=true;
tabsheet2.TabVisible:=false;
tabsheet3.TabVisible:=false;
tabsheet4.TabVisible:=false;
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:= 'Select Count(*) from EcoraNum';
qryClipBoard.Active:=true;
lblAni.Caption:=dbgrid11.SelectedField.Text;
///////////////////////////////////////////
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:= 'Select Count(*) from EcoraNum where [Order] = "Herbivore"';
qryClipBoard.Active:=true;
lblHerbi.Caption:=dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////////////////////////////////
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:= 'Select Count(*) from EcoraNum where [Order] = "Carnivore"';
qryClipBoard.Active:=true;
lblCarni.Caption:=dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////////////////////
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:= 'Select Count(*) from EcoraNum where [Order] = "Omnivore"';
qryClipBoard.Active:=true;
lblOmni.Caption:=dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:= 'Select Sum(Total_number_of_animal) from EcoraNum ';
qryClipBoard.Active:=true;
lblTotal1.Caption:=dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////////////////////
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:= 'Select Count(*) from EcoraAnimals where [Vacinaited] = True';
qryClipBoard.Active:=true;
lblVacT.Caption:=dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////////////////////
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:= 'Select Count(*) from EcoraAnimals where [Vacinaited] = False';
qryClipBoard.Active:=true;
lblVacF.Caption:=dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:= 'Select Sum([Number of girl babys]) from EcoraBaby ';
qryClipBoard.Active:=true;
lblBabyG.Caption:=dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:= 'Select Sum([Number of boy babys]) from EcoraBAby ';
qryClipBoard.Active:=true;
lblBabyB.Caption:=dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:= 'Select Sum([Total Number of babys]) from EcoraBAby ';
qryClipBoard.Active:=true;
lblBabyT.Caption:=dbgrid11.SelectedField.Text;
///////////////////////////////////////////////////
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:= 'Select Max([Intelligence]) from EcoraFacts ';
qryClipBoard.Active:=true;
lblIQ.Caption:=dbgrid11.SelectedField.Text;
qryFdelete.Active:=false;
qryFDelete.SQL.Text:= 'Select Animal from EcoraFacts where [Intelligence] = '+lblIQ.Caption+' ';
qryFDelete.Active:=true;
lblIF.Caption:=qryFDelete['Animal'];
///////////////////////////////////////////////////
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:= 'Select Max([Max Shoulder Height(m)]) from EcoraFacts ';
qryClipBoard.Active:=true;
lblTall.Caption:=dbgrid11.SelectedField.Text;
qryFdelete.Active:=false;
qryFDelete.SQL.Text:= 'Select Animal from EcoraFacts where [Max Shoulder Height(m)] = "'+lblTall.Caption+'" ';
qryFDelete.Active:=true;
lblTF.Caption:=qryFDelete['Animal'];
///////////////////////////////////////////////////
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:= 'Select Max([Max Weight(Kg)]) from EcoraFacts ';
qryClipBoard.Active:=true;
lblKG.Caption:=dbgrid11.SelectedField.Text;
qryFdelete.Active:=false;
qryFDelete.SQL.Text:= 'Select Animal from EcoraFacts where [Max Weight(Kg)] = '+lblKG.Caption+' ';
qryFDelete.Active:=true;
lblHF.Caption:=qryFDelete['Animal'];
///////////////////////////////////////////////////
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:= 'Select Max([Top speed(Km/h)]) from EcoraFacts ';
qryClipBoard.Active:=true;
lblKM.Caption:=dbgrid11.SelectedField.Text;
qryFdelete.Active:=false;
qryFDelete.SQL.Text:= 'Select Animal from EcoraFacts where [Top speed(Km/h)] = "'+lblKM.Caption+'" ';
qryFDelete.Active:=true;
lblNF.Caption:=qryFDelete['Animal'];
///////////////////////////////////////////////////
qryClipBoard.Active:=false;
qryClipBoard.SQL.Text:= 'Select Max([Lifespan(years)]) from EcoraFacts ';
qryClipBoard.Active:=true;
lblYears.Caption:=dbgrid11.SelectedField.Text;
qryFdelete.Active:=false;
qryFDelete.SQL.Text:= 'Select Animal from EcoraFacts where [Lifespan(years)] = '+lblYears.Caption+' ';
qryFDelete.Active:=true;
lblLF.Caption:=qryFDelete['Animal'];
end;

procedure TfrmWorkplace.mtlAniVClick(Sender: TObject);
begin
tabsheet38.TabVisible:=true;
tabsheet33.TabVisible:=false;
mtlCancel3.Visible:=true;
end;

procedure TfrmWorkplace.mtlGeoVClick(Sender: TObject);
begin
tabsheet34.TabVisible:=true;
tabsheet33.TabVisible:=false;
mtlCancel3.Visible:=true;
end;

procedure TfrmWorkplace.mtlVacVClick(Sender: TObject);
begin
tabsheet35.TabVisible:=true;
tabsheet33.TabVisible:=false;
mtlCancel3.Visible:=true;
end;

procedure TfrmWorkplace.mtlFactsVClick(Sender: TObject);
begin
tabsheet37.TabVisible:=true;
tabsheet33.TabVisible:=false;
mtlCancel3.Visible:=true;
end;

procedure TfrmWorkplace.mtlBabyVClick(Sender: TObject);
begin
tabsheet36.TabVisible:=true;
tabsheet33.TabVisible:=false;
mtlCancel3.Visible:=true;
end;

procedure TfrmWorkplace.mtlStatsAClick(Sender: TObject);
begin
TABSHEET40.TabVisible:=true;
tabsheet39.TabVisible:=false;
mtlCancel3.Visible:=true;
qryOrgAni.Active:=False;
qryorgAni.SQL.Text:= 'Select * from EcoraNum';
qryOrgAni.Active:=true;


end;

procedure TfrmWorkplace.mtlStatsBClick(Sender: TObject);
begin
TABSHEET41.TabVisible:=true;
tabsheet39.TabVisible:=false;
mtlCancel3.Visible:=true;
qryBaby.Active:=False;
qryBaby.SQL.Text:= 'Select * from EcoraBaby';
qryBaby.Active:=true;
end;

procedure TfrmWorkplace.mtlStatsVClick(Sender: TObject);
begin
tabsheet39.TabVisible:=false;
mtlCancel3.Visible:=true;
qryOrgVac.Active:=False;
qryorgVac.SQL.Text:= 'Select * from EcoraAnimals';
qryOrgVac.Active:=true;
end;

procedure TfrmWorkplace.mtlStatsFClick(Sender: TObject);
begin
TABSHEET43.TabVisible:=true;
tabsheet39.TabVisible:=false;
mtlCancel3.Visible:=true;
qryFacts.Active:=False;
qryFacts.SQL.Text:= 'Select  * from EcoraFacts';
qryFacts.Active:=true;
end;

procedure TfrmWorkplace.mtlF1Click(Sender: TObject);
begin
pnlHeading.Visible:=true;
pnlHeading.Caption:='Please select animal you want to filter.';
pnlOF.Visible:=false;
pnlNum.Visible:=false;
pnlNameF.Visible:=true;
pnlYesNo.Visible:=false;
pnlAniF.Visible:=false;
pnlOrderF.Visible:=False;
pnlVacF.Visible:=false;
pnlTopF.Visible:=false;
pnlFilter.Visible:=true;
pnlFilterh.Visible:=true;
mtlCancel3.Visible:=true;
pnlHD.Visible:=true;
end;

procedure TfrmWorkplace.mtlFilterClick(Sender: TObject);
var
i1,i2,i3,i4,i5:integer;
begin
RedAf.Lines.Clear;
RedFF.Lines.Clear;
redGF.Lines.Clear;
redBf.Lines.Clear;
redVf.Lines.Clear;
////////////////////////////////////////////////////////////////////////////////
if pnlNameF.Visible = true then
begin
i1:=0;
i2:=0;
i3:=0;
i4:=0;
i5:=0;
qryClipboard.Active:=false;
qryClipboard.SQL.Text:='Select * From EcoraBaby where Animal = '''+dbedtNAme.Caption+'''';
qryClipBoard.Active:=true;
//////////////////////////////////////////////////////////////////////////////////////

qryClipBoard.Open;
qryClipBoard.First;
while not qryClipBoard.Eof do
begin
iTotal:=qryClipBoard['Total Number of babys'];
iMaleT:=qryClipBoard['Number of boy babys'];
iFemaleT:=qryClipBoard['Number of girl babys'];
sLabname:=qryClipBoard['Baby Animal'];
sNames:=qryClipBoard['Animal'];
inc(i1);
qryClipBoard.Next;
Calculate.SetA(sKingdoms,sLabname,sNames,iMaleT,iFemaleT,iTotal,i1);
redBF.Lines.Text:=redBf.Lines.Text+Calculate.ToFilterb;
end;
LblBF.Caption:=Inttostr(i1);

////////////////////////////////////////////////////////////////////////////////////

qryClipboard.Active:=false;
qryClipboard.SQL.Text:='Select * From EcoraGeoTagging where Animal = '''+dbedtNAme.Caption+'''';
qryClipBoard.Active:=true;
////////////////////////////////////////////////////////////////////////////////////

qryClipBoard.Open;
qryClipBoard.First;
while not qryClipBoard.Eof do
begin
sWeather:=qryClipBoard['Type of weather condition'];
sPark:=qryClipBoard['Park/Sight spoted'];
sNames:=qryClipBoard['Animal'];
iX:=qryClipBoard['X-coordinates of Animal'];
iY:=qryClipBoard['Y-coordinates of Animal'];
sDate:=Datetostr(qryClipboard['Date spotted']);
inc(i2);
qryClipboard.Next;
Calculate.SetG(sdate,sNames,sPark,sWeather,iX,iY,i2);
Calculate.FormatDate;
Calculate.CalDistance;
redGF.Lines.Text:=redGF.Lines.Text+Calculate.ToFilterG;
end;
lblGF.Caption:=inttostr(i2);
////////////////////////////////////////////////////////////////////////////////////

qryClipboard.Active:=false;
qryClipboard.SQL.Text:='Select * From EcoraNum where Animal = '''+dbedtNAme.Caption+'''';
qryClipBoard.Active:=true;
////////////////////////////////////////////////////////////////////////////////////

qryClipBoard.Open;
qryClipBoard.First;
while not qryClipBoard.Eof do
begin
sKingdoms:=qryClipBoard['Kingdom'];
sOrders:=qryClipBoard['Order'];
sNames:=qryClipBoard['Animal'];
iMaleT:=qryClipBoard['Number_of_male'];
iFemaleT:=qryClipBoard['Number_of_female'];
iTotal:=qryClipBoard['Total_number_of_animal'];
inc(i3);
qryClipBoard.Next;
Calculate.SetA(sKingdoms,sOrders,sNames,iMaleT,iFemaleT,iTotal,i3);
redAF.Lines.Text:=redAF.Lines.Text+Calculate.ToFilterA;
end;
lblAniF.Caption:=inttostr(i3);
////////////////////////////////////////////////////////////////////////////////////

qryClipboard.Active:=false;
qryClipboard.SQL.Text:='Select * From EcoraAnimals where Animal = '''+dbedtNAme.Caption+'''';
qryClipBoard.Active:=true;
////////////////////////////////////////////////////////////////////////////////////

qryClipBoard.Open;
qryClipBoard.First;
while not qryClipBoard.Eof do
begin
sVac:=qryClipBoard['Vacinaited'];
sBirth:=qryClipBoard['Season of birth'];
sLabname:=qryClipBoard['Name'];
sNames:=qryClipBoard['Animal'];
inc(i4);
qryClipBoard.Next;
Calculate.SetV(sNames,sLabname,sbirth,sVac,i4);
redVf.Lines.Text:=redVf.Lines.Text+Calculate.ToFilterV;
end;
lblVf.Caption:=inttostr(i4);
////////////////////////////////////////////////////////////////////////////////////

qryClipboard.Active:=false;
qryClipboard.SQL.Text:='Select * From EcoraFacts where Animal = '''+dbedtNAme.Caption+'''';
qryClipBoard.Active:=true;
////////////////////////////////////////////////////////////////////////////////////

qryClipBoard.Open;
qryClipBoard.First;
while not qryClipBoard.Eof do
begin
slabName:=qryClipBoard['Scientific Name'];
sNames:=qryClipBoard['Animal'];
sKm:=qryClipBoard['Top speed(Km/h)'];
sMeters:=qryClipBoard['Max Shoulder Height(m)'];
iX:=qryClipBoard['Max Weight(Kg)'];
iY:=qryClipBoard['Lifespan(years)'];
iIQ:=qryClipBoard['Intelligence'];
INC(i5);
qryClipBoard.Next;
Calculate.SetF(sNames,slabname,skm,sMeters,iX,iY,iIQ,i5);
redff.Lines.Text:=redff.Lines.Text+Calculate.ToFilterF;
end;
lblff.Caption:=inttostr(i5);
end; ///end of ist if statement


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
if pnlOF.Visible = true then
begin
i1:=0;
i2:=0;
i3:=0;
i4:=0;
i5:=0;
//////////////////////////
qryClipboard.Active:=false;
qryClipboard.SQL.Text:='Select * From EcoraNum where [Order] = '''+lblOrderF.Caption+'''';
qryClipBoard.Active:=true;
qryClipBoard.Open;
qryClipBoard.First;
while not qryClipBoard.Eof do
begin
sKingdoms:=qryClipBoard['Kingdom'];
sOrders:=qryClipBoard['Order'];
sNames:=qryClipBoard['Animal'];
iMaleT:=qryClipBoard['Number_of_male'];
iFemaleT:=qryClipBoard['Number_of_female'];
iTotal:=qryClipBoard['Total_number_of_animal'];
inc(i3);
qryClipBoard.Next;
Calculate.SetA(sKingdoms,sOrders,sNames,iMaleT,iFemaleT,iTotal,i3);
redAF.Lines.Text:=redAF.Lines.Text+Calculate.ToFilterA;
end;
lblAniF.Caption:=inttostr(i3);
///////////////////////////////////////////
qryClipboard.Active:=false;
qryClipboard.SQL.Text:='Select [Order],EcoraFacts.Animal,[Scientific Name],' ;
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'[Top speed(Km/h)],[Max Shoulder Height(m)], ';
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'[Max Weight(Kg)],[Lifespan(years)],[Intelligence] from EcoraNum,EcoraFacts where EcoraNum.EcoraID = EcoraFacts.EcoraID and ([Order] = "'+lblOrderF.Caption+'")';
qryClipBoard.Active:=true;
qryClipBoard.Open;
qryClipBoard.First;
while not qryClipBoard.Eof do
begin
slabName:=qryClipBoard['Scientific Name'];
sNames:=qryClipBoard['Animal'];
sKm:=qryClipBoard['Top speed(Km/h)'];
sMeters:=qryClipBoard['Max Shoulder Height(m)'];
iX:=qryClipBoard['Max Weight(Kg)'];
iY:=qryClipBoard['Lifespan(years)'];
iIQ:=qryClipBoard['Intelligence'];
INC(i5);
qryClipBoard.Next;
Calculate.SetF(sNames,slabname,skm,sMeters,iX,iY,iIQ,i5);
redff.Lines.Text:=redff.Lines.Text+Calculate.ToFilterF;
end;
lblff.Caption:=inttostr(i5);
/////////////////////////////////////////////////////
qryClipboard.Active:=false;
qryClipboard.SQL.Text:='Select [Order],EcoraGeoTagging.Animal,[Type of weather condition],' ;
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'[Park/Sight spoted],[X-coordinates of Animal], ';
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'[Y-coordinates of Animal],[Date spotted] from EcoraNum,EcoraGeoTagging where EcoraNum.EcoraID = EcoraGeotagging.EcoraID and ([Order] = "'+lblOrderF.Caption+'")';
qryClipBoard.Active:=true;
qryClipBoard.Open;
qryClipBoard.First;
while not qryClipBoard.Eof do
begin
sWeather:=qryClipBoard['Type of weather condition'];
sPark:=qryClipBoard['Park/Sight spoted'];
sNames:=qryClipBoard['Animal'];
iX:=qryClipBoard['X-coordinates of Animal'];
iY:=qryClipBoard['Y-coordinates of Animal'];
sDate:=Datetostr(qryClipboard['Date spotted']);
inc(i2);
qryClipboard.Next;
Calculate.SetG(sdate,sNames,sPark,sWeather,iX,iY,i2);
Calculate.FormatDate;
Calculate.CalDistance;
redGF.Lines.Text:=redGF.Lines.Text+Calculate.ToFilterG;
end;
lblGF.Caption:=inttostr(i2);
///////////////////
qryClipboard.Active:=false;
qryClipboard.SQL.Text:='Select [Order],EcoraAnimals.Animal,[Vacinaited],' ;
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'[Season of birth],[Name]';
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'from EcoraNum,EcoraFacts,EcoraAnimals where EcoraNum.EcoraID = EcoraFacts.EcoraID and (EcoraFacts.EcoraID = EcoraAnimals.EcoraID) and ([Order] = "'+lblOrderF.Caption+'")';
qryClipBoard.Open;
qryClipBoard.First;
while not qryClipBoard.Eof do
begin
sVac:=qryClipBoard['Vacinaited'];
sBirth:=qryClipBoard['Season of birth'];
sLabname:=qryClipBoard['Name'];
sNames:=qryClipBoard['Animal'];
inc(i4);
qryClipBoard.Next;
Calculate.SetV(sNames,sLabname,sbirth,sVac,i4);
redVf.Lines.Text:=redVf.Lines.Text+Calculate.ToFilterV;
end;
lblVf.Caption:=inttostr(i4);
////////////////////
qryClipboard.Active:=false;
qryClipboard.SQL.Text:='Select [Order],EcoraBaby.Animal,[Total Number of babys],' ;
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'[Number of boy babys],[Number of girl babys],[Baby Animal]';
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'from EcoraNum,EcoraGeoTagging,EcoraBaby where EcoraNum.EcoraID = EcoraGeotagging.EcoraID and (EcoraGeotagging.EcoraID = EcoraBaby.EcoraID) and ([Order] = "'+lblOrderF.Caption+'")';
qryClipBoard.Open;
qryClipBoard.First;
while not qryClipBoard.Eof do
begin
iTotal:=qryClipBoard['Total Number of babys'];
iMaleT:=qryClipBoard['Number of boy babys'];
iFemaleT:=qryClipBoard['Number of girl babys'];
sLabname:=qryClipBoard['Baby Animal'];
sNames:=qryClipBoard['Animal'];
inc(i1);
qryClipBoard.Next;
Calculate.SetA(sKingdoms,sLabname,sNames,iMaleT,iFemaleT,iTotal,i1);
redBF.Lines.Text:=redBf.Lines.Text+Calculate.ToFilterb;
end;
LblBF.Caption:=Inttostr(i1);
//////////////////////////////////
end;//end of 2nd if statement




/////////////////////////////////
if pnlYesNO.Visible = true then
begin
i1:=0;
i2:=0;
i3:=0;
i4:=0;
i5:=0;
////////////////
qryClipboard.Active:=false;
qryClipboard.SQL.Text:='Select * From EcoraAnimals where [Vacinaited] = '+lblYesNo.Caption+'';
qryClipBoard.Active:=true;
qryClipBoard.Open;
qryClipBoard.First;
while not qryClipBoard.Eof do
begin
sVac:=qryClipBoard['Vacinaited'];
sBirth:=qryClipBoard['Season of birth'];
sLabname:=qryClipBoard['Name'];
sNames:=qryClipBoard['Animal'];
inc(i4);
qryClipBoard.Next;
Calculate.SetV(sNames,sLabname,sbirth,sVac,i4);
redVf.Lines.Text:=redVf.Lines.Text+Calculate.ToFilterV;
end;
lblVf.Caption:=inttostr(i4);
/////////////////
qryClipboard.Active:=false;
qryClipboard.SQL.Text:='Select [Vacinaited],EcoraFacts.Animal,[Scientific Name],' ;
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'[Top speed(Km/h)],[Max Shoulder Height(m)], ';
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'[Max Weight(Kg)],[Lifespan(years)],[Intelligence] from EcoraNum,EcoraFacts,EcoraAnimals where EcoraNum.EcoraID = EcoraFacts.EcoraID and EcoraFacts.EcoraID = EcoraAnimals.EcoraID and ([Vacinaited] = '+lblYesNo.Caption+')';
qryClipBoard.Active:=true;
qryClipBoard.Open;
qryClipBoard.First;
while not qryClipBoard.Eof do
begin
slabName:=qryClipBoard['Scientific Name'];
sNames:=qryClipBoard['Animal'];
sKm:=qryClipBoard['Top speed(Km/h)'];
sMeters:=qryClipBoard['Max Shoulder Height(m)'];
iX:=qryClipBoard['Max Weight(Kg)'];
iY:=qryClipBoard['Lifespan(years)'];
iIQ:=qryClipBoard['Intelligence'];
INC(i5);
qryClipBoard.Next;
Calculate.SetF(sNames,slabname,skm,sMeters,iX,iY,iIQ,i5);
redff.Lines.Text:=redff.Lines.Text+Calculate.ToFilterF;
end;
lblff.Caption:=inttostr(i5);
//////////////
/////////////////////////////////////////////////////
qryClipboard.Active:=false;
qryClipboard.SQL.Text:='Select [Vacinaited],EcoraGeoTagging.Animal,[Type of weather condition],' ;
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'[Park/Sight spoted],[X-coordinates of Animal], ';
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'[Y-coordinates of Animal],[Date spotted]' ;
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+' from EcoraNum,EcoraGeoTagging,EcoraAnimals,EcoraFacts where EcoraNum.EcoraID = EcoraFacts.EcoraID and EcoraFacts.EcoraID = EcoraAnimals.EcoraID and EcoraNum.EcoraID = EcoraGeotagging.EcoraID and ([Vacinaited] = '+lblYesNo.Caption+')';
qryClipBoard.Active:=true;
qryClipBoard.Open;
qryClipBoard.First;
while not qryClipBoard.Eof do
begin
sWeather:=qryClipBoard['Type of weather condition'];
sPark:=qryClipBoard['Park/Sight spoted'];
sNames:=qryClipBoard['Animal'];
iX:=qryClipBoard['X-coordinates of Animal'];
iY:=qryClipBoard['Y-coordinates of Animal'];
sDate:=Datetostr(qryClipboard['Date spotted']);
inc(i2);
qryClipboard.Next;
Calculate.SetG(sdate,sNames,sPark,sWeather,iX,iY,i2);
Calculate.FormatDate;
Calculate.CalDistance;
redGF.Lines.Text:=redGF.Lines.Text+Calculate.ToFilterG;
end;
lblGF.Caption:=inttostr(i2);
////////////////////
qryClipboard.Active:=false;
qryClipboard.SQL.Text:='Select [Vacinaited],EcoraBaby.Animal,[Total Number of babys],' ;
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'[Number of boy babys],[Number of girl babys],[Baby Animal]';
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'from EcoraNum,EcoraGeoTagging,EcoraBaby,EcoraFacts,EcoraAnimals where EcoraNum.EcoraID = EcoraFacts.EcoraID and EcoraFacts.EcoraID = EcoraAnimals.EcoraID and';
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'EcoraNum.EcoraID = EcoraGeotagging.EcoraID and (EcoraGeotagging.EcoraID = EcoraBaby.EcoraID) and ([Vacinaited] = '+lblYesNo.Caption+')';
qryClipBoard.Open;
qryClipBoard.First;
while not qryClipBoard.Eof do
begin
iTotal:=qryClipBoard['Total Number of babys'];
iMaleT:=qryClipBoard['Number of boy babys'];
iFemaleT:=qryClipBoard['Number of girl babys'];
sLabname:=qryClipBoard['Baby Animal'];
sNames:=qryClipBoard['Animal'];
inc(i1);
qryClipBoard.Next;
Calculate.SetA(sKingdoms,sLabname,sNames,iMaleT,iFemaleT,iTotal,i1);
redBF.Lines.Text:=redBf.Lines.Text+Calculate.ToFilterb;
end;
LblBF.Caption:=Inttostr(i1);
///////////////////
qryClipboard.Active:=false;
qryClipboard.SQL.Text:='Select [Vacinaited],[Kingdom],[Order],EcoraNum.Animal';
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+',[Number_of_male],[Number_of_female],[Total_number_of_animal]';
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'From EcoraNum,EcoraFacts,EcoraAnimals where EcoraNum.EcoraID = EcoraFacts.EcoraID and EcoraFacts.EcoraID = EcoraAnimals.EcoraID and ([Vacinaited] = '+lblYesNo.Caption+')';
qryClipBoard.Active:=true;
qryClipBoard.Open;
qryClipBoard.First;
while not qryClipBoard.Eof do
begin
sKingdoms:=qryClipBoard['Kingdom'];
sOrders:=qryClipBoard['Order'];
sNames:=qryClipBoard['Animal'];
iMaleT:=qryClipBoard['Number_of_male'];
iFemaleT:=qryClipBoard['Number_of_female'];
iTotal:=qryClipBoard['Total_number_of_animal'];
inc(i3);
qryClipBoard.Next;
Calculate.SetA(sKingdoms,sOrders,sNames,iMaleT,iFemaleT,iTotal,i3);
redAF.Lines.Text:=redAF.Lines.Text+Calculate.ToFilterA;
end;
lblAniF.Caption:=inttostr(i3);
///////////////////////////////////////////
end;///end of 3rd if statement


////////////////////////////////////////////////////////////////////////////////////
if pnlNum.Visible = true then
begin
i1:=0;
i2:=0;
i3:=0;
i4:=0;
i5:=0;
/////////////////
qryClipboard.Active:=false;
qryClipboard.SQL.Text:='Select Animal,[Scientific Name],' ;
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'[Top speed(Km/h)],[Max Shoulder Height(m)], ';
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'[Max Weight(Kg)],[Lifespan(years)],[Intelligence] from EcoraFacts where ([Top speed(Km/h)] Like "%'+lblNum.Caption+'%")';
qryClipBoard.Active:=true;
qryClipBoard.Open;
qryClipBoard.First;
while not qryClipBoard.Eof do
begin
slabName:=qryClipBoard['Scientific Name'];
sNames:=qryClipBoard['Animal'];
sKm:=qryClipboard['Top speed(Km/h)'];
sMeters:=qryClipBoard['Max Shoulder Height(m)'];
iX:=qryClipBoard['Max Weight(Kg)'];
iY:=qryClipBoard['Lifespan(years)'];
iIQ:=qryClipBoard['Intelligence'];
INC(i5);
qryClipBoard.Next;
Calculate.SetF(sNames,slabname,skm,sMeters,iX,iY,iIQ,i5);
redff.Lines.Text:=redff.Lines.Text+Calculate.ToFilterF;
end;
lblff.Caption:=inttostr(i5);
//////////////////////////
qryClipboard.Active:=false;
qryClipboard.SQL.Text:='Select [Top speed(Km/h)],[Kingdom],[Order],EcoraNum.Animal';
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+',[Number_of_male],[Number_of_female],[Total_number_of_animal]';
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'From EcoraNum,EcoraFacts where EcoraNum.EcoraID = EcoraFacts.EcoraID  and ([Top speed(Km/h)] Like "%'+lblNum.Caption+'%")';
qryClipBoard.Active:=true;
qryClipBoard.Open;
qryClipBoard.First;
while not qryClipBoard.Eof do
begin
sKingdoms:=qryClipBoard['Kingdom'];
sOrders:=qryClipBoard['Order'];
sNames:=qryClipBoard['Animal'];
iMaleT:=qryClipBoard['Number_of_male'];
iFemaleT:=qryClipBoard['Number_of_female'];
iTotal:=qryClipBoard['Total_number_of_animal'];
inc(i3);
qryClipBoard.Next;
Calculate.SetA(sKingdoms,sOrders,sNames,iMaleT,iFemaleT,iTotal,i3);
redAF.Lines.Text:=redAF.Lines.Text+Calculate.ToFilterA;
end;
lblAniF.Caption:=inttostr(i3);
////////////////////////
qryClipboard.Active:=false;
qryClipboard.SQL.Text:='Select [Top speed(Km/h)],EcoraBaby.Animal,[Total Number of babys],' ;
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'[Number of boy babys],[Number of girl babys],[Baby Animal]';
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'from EcoraNum,EcoraGeoTagging,EcoraBaby,EcoraFacts where EcoraNum.EcoraID = EcoraFacts.EcoraID and';
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'EcoraNum.EcoraID = EcoraGeotagging.EcoraID and (EcoraGeotagging.EcoraID = EcoraBaby.EcoraID) and ([Top speed(Km/h)] Like "%'+lblNum.Caption+'%")';
qryClipBoard.Open;
qryClipBoard.First;
while not qryClipBoard.Eof do
begin
iTotal:=qryClipBoard['Total Number of babys'];
iMaleT:=qryClipBoard['Number of boy babys'];
iFemaleT:=qryClipBoard['Number of girl babys'];
sLabname:=qryClipBoard['Baby Animal'];
sNames:=qryClipBoard['Animal'];
inc(i1);
qryClipBoard.Next;
Calculate.SetA(sKingdoms,sLabname,sNames,iMaleT,iFemaleT,iTotal,i1);
redBF.Lines.Text:=redBf.Lines.Text+Calculate.ToFilterb;
end;
LblBF.Caption:=Inttostr(i1);
///////////////////
qryClipboard.Active:=false;
qryClipboard.SQL.Text:='Select [Top speed(Km/h)],EcoraGeoTagging.Animal,[Type of weather condition],' ;
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'[Park/Sight spoted],[X-coordinates of Animal], ';
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'[Y-coordinates of Animal],[Date spotted]' ;
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+' from EcoraNum,EcoraGeoTagging,EcoraFacts where EcoraNum.EcoraID = EcoraFacts.EcoraID and EcoraNum.EcoraID = EcoraGeotagging.EcoraID and ([Top speed(Km/h)] Like "%'+lblNum.Caption+'%")';
qryClipBoard.Active:=true;
qryClipBoard.Open;
qryClipBoard.First;
while not qryClipBoard.Eof do
begin
sWeather:=qryClipBoard['Type of weather condition'];
sPark:=qryClipBoard['Park/Sight spoted'];
sNames:=qryClipBoard['Animal'];
iX:=qryClipBoard['X-coordinates of Animal'];
iY:=qryClipBoard['Y-coordinates of Animal'];
sDate:=Datetostr(qryClipboard['Date spotted']);
inc(i2);
qryClipboard.Next;
Calculate.SetG(sdate,sNames,sPark,sWeather,iX,iY,i2);
Calculate.FormatDate;
Calculate.CalDistance;
redGF.Lines.Text:=redGF.Lines.Text+Calculate.ToFilterG;
end;
lblGF.Caption:=inttostr(i2);
////////////////////
qryClipboard.Active:=false;
qryClipboard.SQL.Text:='Select [Top speed(Km/h)],EcoraAnimals.Animal,[Vacinaited],' ;
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'[Season of birth],[Name]';
qryClipboard.SQL.Text:=qryClipboard.SQL.Text+'from EcoraNum,EcoraFacts,EcoraAnimals where EcoraNum.EcoraID = EcoraFacts.EcoraID and (EcoraFacts.EcoraID = EcoraAnimals.EcoraID) and ([Top speed(Km/h)] Like "%'+lblNum.Caption+'%")';
qryClipBoard.Active:=true;
qryClipBoard.Open;
qryClipBoard.First;
while not qryClipBoard.Eof do
begin
sVac:=qryClipBoard['Vacinaited'];
sBirth:=qryClipBoard['Season of birth'];
sLabname:=qryClipBoard['Name'];
sNames:=qryClipBoard['Animal'];
inc(i4);
qryClipBoard.Next;
Calculate.SetV(sNames,sLabname,sbirth,sVac,i4);
redVf.Lines.Text:=redVf.Lines.Text+Calculate.ToFilterV;
end;
lblVf.Caption:=inttostr(i4);
/////////////////
end; //end of 4th if statement
////////////////////////////////////////////////////////////////////////////////////

tabsheet45.TabVisible:=true;
tabsheet44.TabVisible:=false;
mtlCancel3.Visible:=false;
mtlPrevious.Visible:=true;
////////////////////////////////////////////////////////////////////////////////////
end;
procedure TfrmWorkplace.ComboBox17Change(Sender: TObject);
begin
lblOrderF.Caption:=comboBox17.Text;
end;

procedure TfrmWorkplace.mtlFO2Click(Sender: TObject);
begin
pnlHeading.Visible:=true;
pnlHeading.Caption:='Please select the order of animal you want to filter.';
pnlOF.Visible:=true;
pnlNum.Visible:=false;
pnlNameF.Visible:=False;
pnlYesNo.Visible:=false;
pnlAniF.Visible:=false;
pnlOrderF.Visible:=False;
pnlVacF.Visible:=false;
pnlTopF.Visible:=false;
pnlFilter.Visible:=true;
pnlFilterh.Visible:=true;
pnlHD.Visible:=true;
mtlCancel3.Visible:=true;
end;

procedure TfrmWorkplace.ComboBox18Change(Sender: TObject);
begin
lblYesNo.Caption:=comboBox18.Text;
end;

procedure TfrmWorkplace.mtlFV4Click(Sender: TObject);
begin
pnlHeading.Visible:=true;
pnlHeading.Caption:='Is the animal you want to vaccinated ?';
pnlOF.Visible:=false;
pnlNum.Visible:=false;
pnlNameF.Visible:=False;
pnlYesNo.Visible:=true;
pnlAniF.Visible:=false;
pnlOrderF.Visible:=False;
pnlVacF.Visible:=false;
pnlTopF.Visible:=false;
pnlFilter.Visible:=true;
pnlFilterh.Visible:=true;
pnlHD.Visible:=true;
mtlCancel3.Visible:=true;
end;

procedure TfrmWorkplace.SpinEdit19Change(Sender: TObject);
begin
if spinedit19.Text = '' then
begin
spinedit19.Value:=0;
end;
lblNum.Caption:=spinedit19.Text;
end;

procedure TfrmWorkplace.mtlFT3Click(Sender: TObject);
begin
pnlHeading.Visible:=true;
pnlHeading.Caption:='Please enter the possible top speed.';
pnlOF.Visible:=false;
pnlNum.Visible:=true;
pnlNameF.Visible:=False;
pnlYesNo.Visible:=false;
pnlAniF.Visible:=false;
pnlOrderF.Visible:=False;
pnlVacF.Visible:=false;
pnlTopF.Visible:=false;
pnlFilter.Visible:=true;
pnlFilterh.Visible:=true;
pnlHD.Visible:=true;
mtlCancel3.Visible:=true;
end;

procedure TfrmWorkplace.mtlFilter0Click(Sender: TObject);
var
Flags: DWORD;
  Handle: HWND;
begin
////////////////////////////////////////////////////////////////////////
   Pagecontrol9.DoubleBuffered:=true;
   Handle := Pagecontrol9.Handle;
    if Hidden then
    Flags := AW_ACTIVATE
    else
    //Flags  :=AW_Hide;
    Hidden := not Hidden;
    Flags :=Flags or AW_Slide;
    Flags :=Flags  OR AW_HOR_Negative ;
      if not AnimateWindow(Handle, 500, Flags) then begin
    if GetLastError = ERROR_SUCCESS then //Error handeling              }//internet
        //showmessage('The thread does not own the window! ERROR');
    exit;
  end;
pageControl9.Visible:=true;
Label84.Visible:=false;
Label84.Visible:=true;
///////////////////////////////////////////////////////////////////////////
mtlFilter0.ZoomOnHover:=0;
mtlAdd0.ZoomOnHover:=2;
mtlBabyHub.ZoomOnHover:=2;
mtlOrganise.ZoomOnHover:=2;
mtlQuick0.ZoomOnHover:=2;
mtlClip0.ZoomOnHover:=2;
mtlView0.ZoomOnHover:=2;
mtlEdit0.ZoomOnHover:=2;
mltStats0.ZoomOnHover:=2;
////////////////////////
mtlFilter0.Appearance.Color:=$0001AECD;
mtlbabyhub.Appearance.Color:=$0001A4C1;
mtlClip0.Appearance.Color:=$0001A4C1;
mtlOrganise.Appearance.Color:=$0001A4C1;
mtlView0.Appearance.Color:=$0001A4C1;
mtlQuick0.Appearance.Color:=$0001A4C1;
mtlAdd0.Appearance.Color:=$0001A4C1;
mltStats0.Appearance.Color:=$0001A4C1;
mtlEdit0.Appearance.Color:=$0001A4C1;
/////////////////////////////////////////////
panel5.Visible:=false;
pagecontrol7.Visible:=false;
pageControl8.Visible:=false;
TABSHEET43.TabVisible:=false;
tabsheet39.TabVisible:=true;
TABSHEET41.TabVisible:=false;
TABSHEET40.TabVisible:=false;
TABSHEET43.TabVisible:=false;
tabsheet39.TabVisible:=true;
TABSHEET41.TabVisible:=false;
TABSHEET40.TabVisible:=false;
pnlOF.Visible:=false;
pnlNum.Visible:=false;
pnlNameF.Visible:=False;
pnlYesNo.Visible:=false;
pnlAniF.Visible:=true;
pnlOrderF.Visible:=true;
pnlVacF.Visible:=true;
pnlTopF.Visible:=true;
pnlHeading.Visible:=false;
pnlFilter.Visible:=false;
pnlFilterh.Visible:=false;
mtlCancel3.Visible:=false;
pnlHD.Visible:=false;
tabsheet44.TabVisible:=true;
tabsheet45.TabVisible:=false;
pagecontrol6.Visible:=false;
Pagecontrol5.Visible:=false;
pagecontrol3.Visible:=false;
pagecontrol1.Visible:=false;
pagecontrol2.Visible:=false;
pagecontrol4.Visible:=false;
mtlcancel3.Visible:=true;
mtlNext2.Visible:=false;
tabsheet22.TabVisible:=true;
tabsheet23.TabVisible:=false;
tabsheet24.TabVisible:=false;
tabsheet25.TabVisible:=false;
tabsheet46.TabVisible:=false;
tabsheet27.TabVisible:=false;
redAni.Visible:=false;
redAni2.Visible:=false;
redAni3.Visible:=false;
redAni44.Visible:=false;
redAni5.Visible:=false;
tabsheet11.TabVisible:=true;
tabsheet12.TabVisible:=false;
tabsheet13.TabVisible:=false;
tabsheet14.TabVisible:=false;
tabsheet15.TabVisible:=false;
tabsheet7.TabVisible:=true;
tabsheet8.TabVisible:=false;
tabsheet9.TabVisible:=false;
tabsheet10.TabVisible:=false;
mtlOK2.Visible:=false;
mtlCancel2.Visible:=false;
mtlNext.Visible:=false;
mtlRefresh.Visible:=false;
mtlPrevious.Visible:=false;
mtlDel.Visible:=false;
pnlAddc.Visible:=false;
pnlDelV.Visible:=false;
pnlAddG.Visible:=false;
pnlDelGeo.Visible:=false;
pnlDelete.Visible:=false;
pnlBEdit.Visible:=false;
mtlDelA.Visible:=true;
mtlAddcA.Visible:=true;
mtlDelG.Visible:=true;
mtlAddG.Visible:=true;
mtlDelV.Visible:=true;
pnlBadd.Visible:=false;
mtlCancel.Visible:=false;
pnlDelB.Visible:=false;
pnlBaddc.Visible:=false;
mtlcancel3.Visible:=false;
pnlAddNewA.Visible:=false;
pnlfacts.Visible:=false;
pnlAddNewG.Visible:=false;
pnlAddNewV.Visible:=false;
pnlEditG.Visible:=false;
pnlEditA.Visible:=false;
pnlEditV.Visible:=false;
pnlEditF.Visible:=false;
tabsheet16.TabVisible:=true;
tabsheet17.TabVisible:=false;
tabsheet18.TabVisible:=false;
tabsheet19.TabVisible:=false;
tabsheet20.TabVisible:=false;
tabsheet1.TabVisible:=true;
tabsheet2.TabVisible:=false;
tabsheet3.TabVisible:=false;
tabsheet4.TabVisible:=false;
end;

procedure TfrmWorkplace.mltStats0Click(Sender: TObject);
var
Flags: DWORD;
  Handle: HWND;
begin
///////////////////////////////////////////////////////////////////////////////
   Pagecontrol8.DoubleBuffered:=true;
   Handle := Pagecontrol8.Handle;
    if Hidden then
    Flags := AW_ACTIVATE
    else
    //Flags  :=AW_Hide;
    Hidden := not Hidden;
    Flags :=Flags or AW_Slide;                                                 {}//internet
    Flags :=Flags  OR AW_HOR_Negative ;
      if not AnimateWindow(Handle, 500, Flags) then begin
    if GetLastError = ERROR_SUCCESS then //Error handeling
        //showmessage('The thread does not own the window! ERROR');
    ;
  end;
pageControl8.Visible:=true;
Label76.Visible:=false;
Label76.Visible:=true;
//////////////////////////////////////////////////////////////////////////////
mltStats0.ZoomOnHover:=0;
mtlAdd0.ZoomOnHover:=2;
mtlBabyHub.ZoomOnHover:=2;
mtlOrganise.ZoomOnHover:=2;
mtlQuick0.ZoomOnHover:=2;
mtlClip0.ZoomOnHover:=2;
mtlView0.ZoomOnHover:=2;
mtlFilter0.ZoomOnHover:=2;
mtlEdit0.ZoomOnHover:=2;
//////////
mltStats0.Appearance.Color:=$0001AECD;
mtlbabyhub.Appearance.Color:=$0001A4C1;
mtlClip0.Appearance.Color:=$0001A4C1;
mtlOrganise.Appearance.Color:=$0001A4C1;
mtlView0.Appearance.Color:=$0001A4C1;
mtlQuick0.Appearance.Color:=$0001A4C1;
mtlFilter0.Appearance.Color:=$0001A4C1;
mtlAdd0.Appearance.Color:=$0001A4C1;
mtlEdit0.Appearance.Color:=$0001A4C1;
///////////
panel5.Visible:=false;
pagecontrol7.Visible:=false;
TABSHEET43.TabVisible:=false;
tabsheet39.TabVisible:=true;
TABSHEET41.TabVisible:=false;
TABSHEET40.TabVisible:=false;
pageControl9.Visible:=false;
pnlOF.Visible:=false;
pnlNum.Visible:=false;
pnlNameF.Visible:=False;
pnlYesNo.Visible:=false;
pnlAniF.Visible:=true;
pnlOrderF.Visible:=true;
pnlVacF.Visible:=true;
pnlTopF.Visible:=true;
pnlHeading.Visible:=false;
pnlFilter.Visible:=false;
pnlFilterh.Visible:=false;
mtlCancel3.Visible:=false;
pnlHD.Visible:=false;
tabsheet44.TabVisible:=true;
tabsheet45.TabVisible:=false;
mtlNext2.Visible:=false;
pagecontrol6.Visible:=false;
pagecontrol2.Visible:=false;
pagecontrol1.Visible:=false;
pagecontrol4.Visible:=false;
pagecontrol3.Visible:=false;
pagecontrol5.Visible:=false;
tabsheet22.TabVisible:=true;
tabsheet23.TabVisible:=false;
tabsheet24.TabVisible:=false;
tabsheet25.TabVisible:=false;
tabsheet46.TabVisible:=false;
tabsheet27.TabVisible:=false;
redAni.Visible:=false;
redAni2.Visible:=false;
redAni3.Visible:=false;
redAni44.Visible:=false;
redAni5.Visible:=false;
mtlCancel3.Visible:=false;
tabsheet11.TabVisible:=true;
tabsheet12.TabVisible:=false;
tabsheet13.TabVisible:=false;
tabsheet14.TabVisible:=false;
tabsheet15.TabVisible:=false;
tabsheet7.TabVisible:=true;
tabsheet8.TabVisible:=false;
tabsheet9.TabVisible:=false;
tabsheet10.TabVisible:=false;
mtlOK2.Visible:=false;
mtlCancel2.Visible:=false;
mtlNext.Visible:=false;
mtlRefresh.Visible:=false;
mtlPrevious.Visible:=false;
mtlDel.Visible:=false;
pnlAddc.Visible:=false;
pnlDelV.Visible:=false;
pnlAddG.Visible:=false;
pnlDelGeo.Visible:=false;
pnlDelete.Visible:=false;
pnlBEdit.Visible:=false;
mtlDelA.Visible:=true;
mtlAddcA.Visible:=true;
mtlDelG.Visible:=true;
mtlAddG.Visible:=true;
mtlDelV.Visible:=true;
pnlBadd.Visible:=false;
mtlCancel.Visible:=false;
pnlDelB.Visible:=false;
pnlBaddc.Visible:=false;
mtlcancel3.Visible:=false;
pnlAddNewA.Visible:=false;
pnlfacts.Visible:=false;
pnlAddNewG.Visible:=false;
pnlAddNewV.Visible:=false;
pnlEditG.Visible:=false;
pnlEditA.Visible:=false;
pnlEditV.Visible:=false;
pnlEditF.Visible:=false;
tabsheet16.TabVisible:=true;
tabsheet17.TabVisible:=false;
tabsheet18.TabVisible:=false;
tabsheet19.TabVisible:=false;
tabsheet20.TabVisible:=false;
tabsheet1.TabVisible:=true;
tabsheet2.TabVisible:=false;
tabsheet3.TabVisible:=false;
tabsheet4.TabVisible:=false;
end;

procedure TfrmWorkplace.SpinEdit7Change(Sender: TObject);
begin
if spinedit7.Text = '' then
begin
spinedit7.Value:=0;
end;
end;

procedure TfrmWorkplace.SpinEdit8Change(Sender: TObject);
begin
if spinedit7.Text = '' then
begin
spinedit7.Value:=0;
end;
end;

procedure TfrmWorkplace.SpinEdit10Change(Sender: TObject);
begin
if spinedit10.Text = '' then
begin
spinedit10.Value:=0;
end;
end;

procedure TfrmWorkplace.SpinEdit12Change(Sender: TObject);
begin
if spinedit12.Text = '' then
begin
spinedit12.Value:=0;
end;
end;

procedure TfrmWorkplace.SpinEdit11Change(Sender: TObject);
begin
if spinedit11.Text = '' then
begin
spinedit11.Value:=0;
end;
end;

procedure TfrmWorkplace.SpinEdit13Change(Sender: TObject);
begin
if spinedit13.Text = '' then
begin
spinedit13.Value:=0;
end;
end;

procedure TfrmWorkplace.SpinEdit15Change(Sender: TObject);
begin
if spinedit15.Text = '' then
begin
spinedit15.Value:=0;
end;
end;

procedure TfrmWorkplace.mtlLoadClick(Sender: TObject);
begin
If (OpenPictureDialog1.Execute) then
begin
Edit22.Clear;
Edit22.Text:=OpenPictureDialog1.FileName;
Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
Image2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;
end;

procedure TfrmWorkplace.AdvMetroTile5Click(Sender: TObject);
begin
pnlMemo.Visible:=true;
end;

procedure TfrmWorkplace.AdvMetroTile6Click(Sender: TObject);
begin
pnlMemo.Visible:=false;
end;

procedure TfrmWorkplace.AdvMetroTile4Click(Sender: TObject);
begin
//Update record
DBMemo2.Lines.Clear;
If (OpenPictureDialog1.Execute) then
begin
qryOrgAni.Active:=false;
qryOrgAni.SQL.Text:='Update EcoraNum Set[IMG] = '''+OpenPictureDialog1.FileName+''' where [Animal] = '''+label192.Caption+'''';
qryOrgAni.ExecSQL;
qryOrgAni.SQL.Text:='Select * from EcoraNum';
qryOrgAni.Active:=true;
end;

end;
procedure TfrmWorkplace.DBGrid14CellClick(Column: TColumn);
begin
Label192.Caption:=DbText1.Caption;
end;

procedure TfrmWorkplace.mtlHomeClick(Sender: TObject);
begin
//Takes youback home
frmWorkPlace.Visible:=false;
frmHome.Visible:=true;
end;

procedure TfrmWorkplace.mtlWildCClick(Sender: TObject);
begin
//Open Wildcards in tourist zone
frmTourist.show;
frmWorkplace.Hide;
frmTourist.panel1.Hide;
frmTourist.mtlDel.Show;
frmTourist.mtlDel2.Hide;
end;

procedure TfrmWorkplace.mtlMediaClick(Sender: TObject);
begin
frmHexagon.visible:=true;
end;

procedure TfrmWorkplace.mtlSearchClick(Sender: TObject);
begin
//Open New window
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

procedure TfrmWorkplace.Edit23MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
edit23.Font.Color:=$00BFE996;
end;

procedure TfrmWorkplace.AdvMetroFormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
edit23.Font.Color:=clwhite;
end;

procedure TfrmWorkplace.Panel1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
edit23.Font.Color:=clwhite;
end;

procedure TfrmWorkplace.Panel2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
edit23.Font.Color:=clwhite;
end;

procedure TfrmWorkplace.Edit23Click(Sender: TObject);
begin
edit23.Text:='www.';
end;

procedure TfrmWorkplace.Panel462MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
edit23.Font.Color:=clwhite;
end;

procedure TfrmWorkplace.CheckBox19Click(Sender: TObject);
begin
If Checkbox19.Checked = True then
checkbox20.State:= cbGrayed;
end;

procedure TfrmWorkplace.CheckBox20Click(Sender: TObject);
begin
If Checkbox20.Checked = True then
checkbox19.State:= cbGrayed;
end;

procedure TfrmWorkplace.SpinEdit3Change(Sender: TObject);
begin
if spinedit3.Text = '' then
begin
spinedit3.Value:=0;
end;
end;

procedure TfrmWorkplace.SpinEdit4Change(Sender: TObject);
begin
if spinedit4.Text = '' then
begin
spinedit4.Value:=0;
end;
end;

procedure TfrmWorkplace.mtlDelallClick(Sender: TObject);
begin
frmHelp.Show;
end;

end.
