unit MainForm;

{$mode objfpc}{$H+}

interface

uses
  Forms, StdCtrls, ComCtrls, IniFiles, Classes;

type
  TByteSet = set of Byte;
  PShipAABase = ^TShipAABase;
  TShipAABase = record
    EquipmentTypeSet: TByteSet;
    SlotSize: array [0..3] of LongWord;
    SlotNum: LongWord;
    CID: LongWord;
    CIDOriginal: LongWord;
    ShipType: LongWord;
    AABase: LongInt;
    AAStrengthenTop: LongInt;
    Country: LongInt;
    Title: AnsiString;

    SkillType: Array [0..1] of LongWord;
  end;

  TSkillBase = record
    Title: AnsiString;
    SkillID: LongWord;
    SkillType: LongWord;
    SkillLevel: LongWord;
  end;

  PEquipAABase = ^TEquipAABase;
  TEquipAABase = record
    ShipTypeSet: TByteSet;
    AACorrection: Double;
    AA: LongInt;
    CID: LongWord;
    EquipmentType: LongWord;
    Title: AnsiString;
  end;

  TShipAAData = record
    EquipmentList: array [0..3] of LongWord;
    PtrBase: PShipAABase;
    AAStrengthen: LongInt;
    SkillID: LongWord;
  end;

  { TFormMain }

  TFormMain = class(TForm)
    ButtonClearLast: TButton;
    ButtonClearAll: TButton;
    ButtonClose: TButton;
    ComboBoxShip0: TComboBox;
    ComboBoxShip1: TComboBox;
    ComboBoxShip2: TComboBox;
    ComboBoxShip3: TComboBox;
    ComboBoxShip4: TComboBox;
    ComboBoxShip5: TComboBox;
    ComboBoxS0E0: TComboBox;
    ComboBoxS0E1: TComboBox;
    ComboBoxS0E2: TComboBox;
    ComboBoxS0E3: TComboBox;
    ComboBoxS1E0: TComboBox;
    ComboBoxS1E1: TComboBox;
    ComboBoxS1E2: TComboBox;
    ComboBoxS1E3: TComboBox;
    ComboBoxS2E0: TComboBox;
    ComboBoxS2E1: TComboBox;
    ComboBoxS2E2: TComboBox;
    ComboBoxS2E3: TComboBox;
    ComboBoxS3E0: TComboBox;
    ComboBoxS3E1: TComboBox;
    ComboBoxS3E2: TComboBox;
    ComboBoxS3E3: TComboBox;
    ComboBoxS4E0: TComboBox;
    ComboBoxS4E1: TComboBox;
    ComboBoxS4E2: TComboBox;
    ComboBoxS4E3: TComboBox;
    ComboBoxS5E0: TComboBox;
    ComboBoxS5E1: TComboBox;
    ComboBoxS5E2: TComboBox;
    ComboBoxS5E3: TComboBox;
    ComboBoxSkill0: TComboBox;
    ComboBoxSkill1: TComboBox;
    ComboBoxSkill2: TComboBox;
    ComboBoxSkill3: TComboBox;
    ComboBoxSkill4: TComboBox;
    ComboBoxSkill5: TComboBox;
    ComboBoxBattleStep: TComboBox;
    LabelSelfAA0: TLabel;
    LabelFleetAA0: TLabel;
    LabelFleetAA1: TLabel;
    LabelFleetAA2: TLabel;
    LabelFleetAA3: TLabel;
    LabelFleetAA4: TLabel;
    LabelFleetAA5: TLabel;
    LabelSelfAA1: TLabel;
    LabelSelfAA2: TLabel;
    LabelSelfAA3: TLabel;
    LabelSelfAA4: TLabel;
    LabelSelfAA5: TLabel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    TrackBarAA0: TTrackBar;
    TrackBarAA1: TTrackBar;
    TrackBarAA2: TTrackBar;
    TrackBarAA3: TTrackBar;
    TrackBarAA4: TTrackBar;
    TrackBarAA5: TTrackBar;
    procedure ButtonClearAllClick(Sender: TObject);
    procedure ButtonClearLastClick(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);
    procedure ComboBoxBattleStepChange(Sender: TObject);
    procedure ComboBoxS0E0Change(Sender: TObject);
    procedure ComboBoxS0E1Change(Sender: TObject);
    procedure ComboBoxS0E2Change(Sender: TObject);
    procedure ComboBoxS0E3Change(Sender: TObject);
    procedure ComboBoxS1E0Change(Sender: TObject);
    procedure ComboBoxS1E1Change(Sender: TObject);
    procedure ComboBoxS1E2Change(Sender: TObject);
    procedure ComboBoxS1E3Change(Sender: TObject);
    procedure ComboBoxS2E0Change(Sender: TObject);
    procedure ComboBoxS2E1Change(Sender: TObject);
    procedure ComboBoxS2E2Change(Sender: TObject);
    procedure ComboBoxS2E3Change(Sender: TObject);
    procedure ComboBoxS3E0Change(Sender: TObject);
    procedure ComboBoxS3E1Change(Sender: TObject);
    procedure ComboBoxS3E2Change(Sender: TObject);
    procedure ComboBoxS3E3Change(Sender: TObject);
    procedure ComboBoxS4E0Change(Sender: TObject);
    procedure ComboBoxS4E1Change(Sender: TObject);
    procedure ComboBoxS4E2Change(Sender: TObject);
    procedure ComboBoxS4E3Change(Sender: TObject);
    procedure ComboBoxS5E0Change(Sender: TObject);
    procedure ComboBoxS5E1Change(Sender: TObject);
    procedure ComboBoxS5E2Change(Sender: TObject);
    procedure ComboBoxS5E3Change(Sender: TObject);
    procedure ComboBoxShip0Change(Sender: TObject);
    procedure ComboBoxShip1Change(Sender: TObject);
    procedure ComboBoxShip2Change(Sender: TObject);
    procedure ComboBoxShip3Change(Sender: TObject);
    procedure ComboBoxShip4Change(Sender: TObject);
    procedure ComboBoxShip5Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TrackBarAA0Change(Sender: TObject);
    procedure TrackBarAA1Change(Sender: TObject);
    procedure TrackBarAA2Change(Sender: TObject);
    procedure TrackBarAA3Change(Sender: TObject);
    procedure TrackBarAA4Change(Sender: TObject);
    procedure TrackBarAA5Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

const
  SHIPMAX=1024;
  EQUIPMAX=1024;

  FLEETSIZEMAX=6;
  EQUIPSIZEMAX=4;

  SKILLTYPEMAX=128;
  SKILLMAXLV=4;
  SKILLMAX=(1+SKILLMAXLV)*SKILLTYPEMAX;

var
  FormMain: TFormMain;

  ShipCount: LongInt;
  ShipAAFullList: array [0..SHIPMAX-1] of TShipAABase;

  EquipCount: LongInt;
  EquipAAFullList: array [0..EQUIPMAX-1] of TEquipAABase;

  SkillCount: LongInt;
  SkillFullList: array [0..SKILLMAX] of TSkillBase;
  SkillTypeList: array [0..SKILLTYPEMAX, 0..SKILLMAXLV] of LongWord;
  // Shall not be modified after Form built

const
  NIL_SHIP: PShipAABase = @ShipAAFullList[0];

  // IniSkillsData: TIniFile;

implementation

{$R *.lfm}

var
  ShowResultRef: array [0..FLEETSIZEMAX-1] of TLabel;
  ShowSelfAARef: array [0..FLEETSIZEMAX-1] of TLabel;
  ModifyStrengthenRef: array [0..FLEETSIZEMAX-1] of TTrackBar;

  ShipBoxRef: array [0..FLEETSIZEMAX-1] of TComboBox;
  SkillBoxRef: array [0..FLEETSIZEMAX-1] of TComboBox;
  EquipBoxRef: array [0..FLEETSIZEMAX-1, 0..EQUIPSIZEMAX-1] of TComboBox;
  // Array of Refrernces, shall not be modified after Form's creation

{ Init Functions }

procedure DivideStringIntoSet(out bs:TByteSet; const s:AnsiString; dlm:Char);
var
  i, j, tmp: SizeInt;
  Converted: LongInt;
begin
  bs:=[];
  i:=1;
  while i<=length(s) do
  begin
    j:=i;
    while (j<length(s)) and (dlm<>s[j]) do
      inc(j);
    if s[j]<>dlm then
      inc(j);
    Val(Copy(s, i, j-i), Converted, tmp);
    include(bs, Converted);
    i:=j+1;
  end;
end;

procedure DivideStringIntoUIntArr(out arr:array of LongWord; const s:AnsiString; dlm:Char);
var
  i, j, k, tmp:SizeInt;
begin
  k:=0;
  i:=1;
  while (i<=length(s)) and (k<length(arr)) do
  begin
    j:=i;
    while (j<length(s)) and (dlm<>s[j]) do
      inc(j);
    if s[j]<>dlm then
      inc(j);
    Val(Copy(s, i, j-i), arr[k], tmp);
    i:=j+1;
    inc(k);
  end;
end;

procedure ReadShipsData;
var
  IniShipsData: TIniFile;
  i: SizeInt;
  SectionStr, TmpStr: AnsiString;
begin
  IniShipsData:=TIniFile.Create('ShipData.ini');
  ShipCount:=IniShipsData.ReadInteger('MetaData', 'ShipCount', 0);

  for i:=1 to ShipCount do
  begin
    str(i, TmpStr);
    SectionStr:='Ship'+TmpStr;
    with ShipAAFullList[i] do
    begin
      CID:=IniShipsData.ReadInteger(SectionStr, 'CID', 0);
      CIDOriginal:=IniShipsData.ReadInteger(SectionStr, 'CIDOriginal', 0);
      ShipType:=IniShipsData.ReadInteger(SectionStr, 'Type', 0);
      AABase:=IniShipsData.ReadInteger(SectionStr, 'AABase', 0);
      AAStrengthenTop:=IniShipsData.ReadInteger(SectionStr, 'AAIncrease', 0);
      Country:=IniShipsData.ReadInteger(SectionStr, 'Country', 0);
      Title:=IniShipsData.ReadString(SectionStr, 'Title', '');
      SlotNum:=IniShipsData.ReadInteger(SectionStr, 'SlotNum', 0);

      TmpStr:=IniShipsData.ReadString(SectionStr, 'EquipTypeSet', '');
      DivideStringIntoSet(EquipmentTypeSet, TmpStr, ',');
      TmpStr:=IniShipsData.ReadString(SectionStr,'SlotSize','');
      DivideStringIntoUIntArr(SlotSize[0..SlotNum-1], TmpStr, ',');

      TmpStr:=IniShipsData.ReadString(SectionStr, 'SkillType', '');
      DivideStringIntoUIntArr(SkillType, TmpStr, ',');
    end;
  end;
end;

procedure ReadEquipmentsData;
var
  IniEquipmentsData: TIniFile;
  i: SizeInt;
  SectionStr, TmpStr: AnsiString;
begin
  IniEquipmentsData:=TIniFile.Create('EquipmentData.ini');
  EquipCount:=IniEquipmentsData.ReadInteger('MetaData', 'EquipmentCount', 0);
  for i:=1 to EquipCount do
  begin
    str(i, TmpStr);
    SectionStr:='Equipment'+TmpStr;

    with EquipAAFullList[i] do
    begin
      CID:=IniEquipmentsData.ReadInteger(SectionStr, 'CID', 0);
      EquipmentType:=IniEquipmentsData.ReadInteger(SectionStr, 'Type', 0);
      Title:=IniEquipmentsData.ReadString(SectionSTr, 'Title', '');
      AA:=IniEquipmentsData.ReadInteger(SectionStr, 'AA', 0);
      AACorrection:=IniEquipmentsData.ReadFloat(SectionStr, 'AACorrection', 0.0);
      TmpStr:=IniEquipmentsData.ReadString(SectionStr, 'ShipTypeSet', '');
      DivideStringIntoSet(ShipTypeSet, TmpStr, ',');
    end;
  end;
end;

procedure ReadSkillsData;
var
  IniSkillsData: TIniFile;
  i: SizeInt;
  SectionStr: AnsiString;
begin
  IniSkillsData:=TIniFile.Create('SkillData.ini');
  SkillCount:=IniSkillsData.ReadInteger('MetaData', 'SkillCount', 0);
  for i:=1 to SkillCount do
    with SkillFullList[i] do
    begin
      str(i, SectionStr);
      SectionStr:='Skill'+SectionStr;
      Title:=IniSkillsData.ReadString(SectionStr, 'Title', '');
      SkillType:=IniSkillsData.ReadInteger(SectionStr, 'SkillType', 0);
      SkillID:=IniSkillsData.ReadInteger(SectionStr, 'SkillID', 0);
      SkillLevel:=IniSkillsData.ReadInteger(SectionStr, 'SkillLevel', 0);

      SkillTypeList[SkillType, SkillLevel]:=SkillID;
    end;
end;

function IsEnemyShipCID(CID: LongWord):Boolean;
begin
  result:=CID>=20000000;
end;

function IsPlayerShipCID(CID: LongWord):Boolean;
begin
  result:=(CID>=10000000) and (CID<20000000);
end;

// Array for results of calculation
// BattleStep is for Renown/Repulse/Vanguard's skill
var
  FleetData: array [0..FLEETSIZEMAX-1] of TShipAAData;
  FleetAAShow: array [0..FLEETSIZEMAX-1] of Double;
  BattleStep: LongInt;

function IsReplacementCrashCID(NewCID: LongWord; ind: SizeInt):Boolean;
var
  i: SizeInt;
begin
  result:=false;
  for i:=0 to FLEETSIZEMAX-1 do
    if (i<>ind) and (NewCID=FleetData[i].PtrBase^.CID) and
       IsPlayerShipCID(NewCID) then
      exit(true);
end;

procedure GetFleetAA(out FleetAA: array of Double;
                     const Fleet: array of TShipAAData);
var
  i, j: LongInt;
  SelfAAEquip: LongInt;
  SelfAAMulti: Double;
  FleetAAEquip: LongInt=0;
  FleetCorrection: Double=0.0;
begin
  for i:=0 to high(Fleet) do
    with Fleet[i] do
    begin
      FleetAA[i]:=PtrBase^.AABase+AAStrengthen;
      SelfAAEquip:=0;
      for j:=0 to PtrBase^.SlotNum-1 do
      begin
        with EquipAAFullList[EquipmentList[j]] do
        begin
          inc(SelfAAEquip, AA);
          if AACorrection>0 then
            inc(FleetAAEquip, AA);
          if AACorrection>FleetCorrection then
            FleetCorrection:=AACorrection;
        end;
      end;
      SelfAAMulti:=1.0;
      { do with Yubari's skills }
      { do with other's skills }
      FleetAA[i]:=FleetAA[i]+SelfAAMulti*SelfAAEquip{+SkillAA};
    end;
  for i:=0 to high(Fleet) do
    if Fleet[i].PtrBase<>NIL_SHIP then
      FleetAA[i] := FleetAA[i]+FleetAAEquip*FleetCorrection;
end;

procedure InitRecords;
var
  i, j: SizeInt;
begin
  FillChar(ShipAAFullList[0], sizeof(TShipAABase), 0);
  FillChar(EquipAAFullList[0], sizeof(TEquipAABase), 0);
  FillChar(FleetData, sizeof(FleetData), 0);
  for i:=low(FleetData) to high(FleetData) do
    with FleetData[i] do
    begin
      PtrBase:=@ShipAAFullList[0];
      for j:=low(EquipmentList) to high(EquipmentList) do
        EquipmentList[j]:=0;
    end;
end;

procedure RenewShownSelfAA;
var
  i, value: SizeInt;
  ShowString: AnsiString;
begin
  for i:=0 to high(FleetData) do
    with FleetData[i] do
    begin
      AAStrengthen := ModifyStrengthenRef[i].Position;
      value:=PtrBase^.AABase+AAStrengthen;
      str(value:3, ShowString);
      ShowSelfAARef[i].Caption:=ShowString;
    end;
end;

procedure RenewShownLabel;
var
  i: SizeInt;
  ShowString: AnsiString;
begin
  for i:=0 to high(FleetAAShow) do
  begin
    str(FleetAAShow[i]:6:2, ShowString);
    ShowResultRef[i].Caption:=ShowString;
  end;
end;

procedure RefreshResult;
begin
  RenewShownSelfAA;
  GetFleetAA(FleetAAShow, FleetData);
  RenewShownLabel;
end;

procedure AssociateReferences;
begin
  ShowResultRef[0]:=FormMain.LabelFleetAA0;
  ShowResultRef[1]:=FormMain.LabelFleetAA1;
  ShowResultRef[2]:=FormMain.LabelFleetAA2;
  ShowResultRef[3]:=FormMain.LabelFleetAA3;
  ShowResultRef[4]:=FormMain.LabelFleetAA4;
  ShowResultRef[5]:=FormMain.LabelFleetAA5;

  ShowSelfAARef[0]:=FormMain.LabelSelfAA0;
  ShowSelfAARef[1]:=FormMain.LabelSelfAA1;
  ShowSelfAARef[2]:=FormMain.LabelSelfAA2;
  ShowSelfAARef[3]:=FormMain.LabelSelfAA3;
  ShowSelfAARef[4]:=FormMain.LabelSelfAA4;
  ShowSelfAARef[5]:=FormMain.LabelSelfAA5;

  ModifyStrengthenRef[0]:=FormMain.TrackBarAA0;
  ModifyStrengthenRef[1]:=FormMain.TrackBarAA1;
  ModifyStrengthenRef[2]:=FormMain.TrackBarAA2;
  ModifyStrengthenRef[3]:=FormMain.TrackBarAA3;
  ModifyStrengthenRef[4]:=FormMain.TrackBarAA4;
  ModifyStrengthenRef[5]:=FormMain.TrackBarAA5;

  ShipBoxRef[0]:=FormMain.ComboBoxShip0;
  ShipBoxRef[1]:=FormMain.ComboBoxShip1;
  ShipBoxRef[2]:=FormMain.ComboBoxShip2;
  ShipBoxRef[3]:=FormMain.ComboBoxShip3;
  ShipBoxRef[4]:=FormMain.ComboBoxShip4;
  ShipBoxRef[5]:=FormMain.ComboBoxShip5;

  SkillBoxRef[0]:=FormMain.ComboBoxSkill0;
  SkillBoxRef[1]:=FormMain.ComboBoxSkill1;
  SkillBoxRef[2]:=FormMain.ComboBoxSkill2;
  SkillBoxRef[3]:=FormMain.ComboBoxSkill3;
  SkillBoxRef[4]:=FormMain.ComboBoxSkill4;
  SkillBoxRef[5]:=FormMain.ComboBoxSkill5;

  EquipBoxRef[0, 0]:=FormMain.ComboBoxS0E0;
  EquipBoxRef[0, 1]:=FormMain.ComboBoxS0E1;
  EquipBoxRef[0, 2]:=FormMain.ComboBoxS0E2;
  EquipBoxRef[0, 3]:=FormMain.ComboBoxS0E3;
  EquipBoxRef[1, 0]:=FormMain.ComboBoxS1E0;
  EquipBoxRef[1, 1]:=FormMain.ComboBoxS1E1;
  EquipBoxRef[1, 2]:=FormMain.ComboBoxS1E2;
  EquipBoxRef[1, 3]:=FormMain.ComboBoxS1E3;
  EquipBoxRef[2, 0]:=FormMain.ComboBoxS2E0;
  EquipBoxRef[2, 1]:=FormMain.ComboBoxS2E1;
  EquipBoxRef[2, 2]:=FormMain.ComboBoxS2E2;
  EquipBoxRef[2, 3]:=FormMain.ComboBoxS2E3;
  EquipBoxRef[3, 0]:=FormMain.ComboBoxS3E0;
  EquipBoxRef[3, 1]:=FormMain.ComboBoxS3E1;
  EquipBoxRef[3, 2]:=FormMain.ComboBoxS3E2;
  EquipBoxRef[3, 3]:=FormMain.ComboBoxS3E3;
  EquipBoxRef[4, 0]:=FormMain.ComboBoxS4E0;
  EquipBoxRef[4, 1]:=FormMain.ComboBoxS4E1;
  EquipBoxRef[4, 2]:=FormMain.ComboBoxS4E2;
  EquipBoxRef[4, 3]:=FormMain.ComboBoxS4E3;
  EquipBoxRef[5, 0]:=FormMain.ComboBoxS5E0;
  EquipBoxRef[5, 1]:=FormMain.ComboBoxS5E1;
  EquipBoxRef[5, 2]:=FormMain.ComboBoxS5E2;
  EquipBoxRef[5, 3]:=FormMain.ComboBoxS5E3;
end;

procedure InitShipLists;
var
  i, j: SizeInt;
begin
  for i:=0 to FLEETSIZEMAX-1 do
    for j:=1 to ShipCount do
      ShipBoxRef[i].Items.Add(ShipAAFullList[j].Title);
end;

procedure InitEquipmentLists;
var
  i, j, k: SizeInt;
begin
  for i:=0 to FLEETSIZEMAX-1 do
    for j:=0 to EQUIPSIZEMAX-1 do
      for k:=1 to EquipCount do
        EquipBoxRef[i, j].Items.Add(EquipAAFullList[k].Title);
end;

procedure ClearEquipments(ind:SizeInt);
var
  j: SizeInt;
begin
  for j:=0 to EQUIPSIZEMAX-1 do
  begin
    EquipBoxRef[ind, j].ItemIndex:=0;
    FleetData[ind].EquipmentList[j]:=0;
  end;
end;

procedure ClearShip(ind:SizeInt);
begin
  ClearEquipments(ind);
  ShipBoxRef[ind].ItemIndex:=-1;
  SkillBoxRef[ind].ItemIndex:=-1;
  ModifyStrengthenRef[ind].Position:=0;
  ModifyStrengthenRef[ind].Max:=0;
  FleetData[ind].SkillID:=0;
  FleetData[ind].AAStrengthen:=0;
  FleetData[ind].PtrBase:=NIL_SHIP;
end;

procedure ClearFleet;
var
  i: SizeInt;
begin
  for i:=0 to FLEETSIZEMAX-1 do
    ClearShip(i);
  FillChar(FleetAAShow, sizeof(FleetAAShow), 0);
  RefreshResult;
end;

procedure ChangeShipInFleet(ind:SizeInt);
begin
  ClearEquipments(ind);
  FleetData[ind].SkillID:=0;
  FleetData[ind].AAStrengthen:=0;
  // Can be modified
  FleetData[ind].PtrBase:=@ShipAAFullList[ShipBoxRef[ind].ItemIndex+1];
  //
  ModifyStrengthenRef[ind].Position:=0;
  ModifyStrengthenRef[ind].Max:=FleetData[ind].PtrBase^.AAStrengthenTop;
  RefreshResult;
end;

function ShipSelectValid(ind: SizeInt):Boolean;
var
  i: SizeInt;
begin
  result:=true;
  for i:=0 to ind-1 do
    if ShipBoxRef[i].ItemIndex=-1 then
      exit(false);
end;

procedure ClearShipSelf(ind: SizeInt);
var
  i: SizeInt;
begin
  for i:=FLEETSIZEMAX-1 downto ind do
    ClearShip(i);
  RefreshResult;
end;

procedure ClearShipLast;
var
  i: SizeInt;
begin
  i:=FLEETSIZEMAX-1;
  while i>=0 do
    if ShipBoxRef[i].ItemIndex>=0 then
    begin
      ClearShip(i);
      break;
    end
    else
      dec(i);
  RefreshResult;
end;

function TestSelectable(sind, eind: SizeInt): Boolean;
var
  ShipNum, EquipNum: SizeInt;
  IsPlayer, HasSlotSize, IsAircraft: Boolean;
begin
  ShipNum:=ShipBoxRef[sind].ItemIndex+1;
  EquipNum:=EquipBoxRef[sind, eind].ItemIndex;

  if EquipNum=0 then
    exit(true);
  if eind>=ShipAAFullList[ShipNum].SlotNum then
    exit(false);
  IsPlayer:=IsPlayerShipCID(ShipAAFullList[ShipNum].CID);
  {
    While the ship is not player's, she can equip aircraft in zero-sized slot.
    Like Bismarck (enemy) and CV Omicron T3
  }
  HasSlotSize:=ShipAAFullList[ShipNum].SlotSize[eind]>0;
  IsAircraft:=EquipAAFullList[EquipNum].EquipmentType in [4, 5, 6, 7];
  {
    4 : Torpedo Bomber
    5 : Fighter
    6 : Dive Bomber
    7 : Recon Aircraft
  }
  result:=(EquipAAFullList[EquipNum].EquipmentType in ShipAAFullList[ShipNum].EquipmentTypeSet)
          and (ShipAAFullList[ShipNum].ShipType in EquipAAFullList[EquipNum].ShipTypeSet);
  result:=result and (not IsPlayer or not IsAircraft or HasSlotSize);
end;

procedure ChangeShipEquipment(sind, eind: SizeInt);
begin
  if not TestSelectable(sind, eind) then
    EquipBoxRef[sind, eind].ItemIndex:=FleetData[sind].EquipmentList[eind]
  else
    FleetData[sind].EquipmentList[eind]:=EquipBoxRef[sind, eind].ItemIndex;
  RefreshResult;
end;

{ TFormMain }

procedure TFormMain.ButtonCloseClick(Sender: TObject);
begin
  FormMain.Close;
end;

procedure TFormMain.ButtonClearAllClick(Sender: TObject);
begin
  ClearFleet;
end;

procedure TFormMain.ButtonClearLastClick(Sender: TObject);
begin
  ClearShipLast;
end;

procedure TFormMain.ComboBoxBattleStepChange(Sender: TObject);
begin
  BattleStep := ComboBoxBattleStep.ItemIndex;
  // Update SkillAA ( Renown, Repulse, Vanguard )
  RefreshResult;
end;

procedure TFormMain.ComboBoxS0E0Change(Sender: TObject);
begin
  ChangeShipEquipment(0, 0);
end;

procedure TFormMain.ComboBoxS0E1Change(Sender: TObject);
begin
  ChangeShipEquipment(0, 1);
end;

procedure TFormMain.ComboBoxS0E2Change(Sender: TObject);
begin
  ChangeShipEquipment(0, 2);
end;

procedure TFormMain.ComboBoxS0E3Change(Sender: TObject);
begin
  ChangeShipEquipment(0, 3);
end;

procedure TFormMain.ComboBoxS1E0Change(Sender: TObject);
begin
  ChangeShipEquipment(1, 0);
end;

procedure TFormMain.ComboBoxS1E1Change(Sender: TObject);
begin
  ChangeShipEquipment(1, 1);
end;

procedure TFormMain.ComboBoxS1E2Change(Sender: TObject);
begin
  ChangeShipEquipment(1, 2);
end;

procedure TFormMain.ComboBoxS1E3Change(Sender: TObject);
begin
  ChangeShipEquipment(1, 3);
end;

procedure TFormMain.ComboBoxS2E0Change(Sender: TObject);
begin
  ChangeShipEquipment(2, 0);
end;

procedure TFormMain.ComboBoxS2E1Change(Sender: TObject);
begin
  ChangeShipEquipment(2, 1);
end;

procedure TFormMain.ComboBoxS2E2Change(Sender: TObject);
begin
  ChangeShipEquipment(2, 2);
end;

procedure TFormMain.ComboBoxS2E3Change(Sender: TObject);
begin
  ChangeShipEquipment(2, 3);
end;

procedure TFormMain.ComboBoxS3E0Change(Sender: TObject);
begin
  ChangeShipEquipment(3, 0);
end;

procedure TFormMain.ComboBoxS3E1Change(Sender: TObject);
begin
  ChangeShipEquipment(3, 1);
end;

procedure TFormMain.ComboBoxS3E2Change(Sender: TObject);
begin
  ChangeShipEquipment(3, 2);
end;

procedure TFormMain.ComboBoxS3E3Change(Sender: TObject);
begin
  ChangeShipEquipment(3, 3);
end;

procedure TFormMain.ComboBoxS4E0Change(Sender: TObject);
begin
  ChangeShipEquipment(4, 0);
end;

procedure TFormMain.ComboBoxS4E1Change(Sender: TObject);
begin
  ChangeShipEquipment(4, 1);
end;

procedure TFormMain.ComboBoxS4E2Change(Sender: TObject);
begin
  ChangeShipEquipment(4, 2);
end;

procedure TFormMain.ComboBoxS4E3Change(Sender: TObject);
begin
  ChangeShipEquipment(4, 3);
end;

procedure TFormMain.ComboBoxS5E0Change(Sender: TObject);
begin
  ChangeShipEquipment(5, 0);
end;

procedure TFormMain.ComboBoxS5E1Change(Sender: TObject);
begin
  ChangeShipEquipment(5, 1);
end;

procedure TFormMain.ComboBoxS5E2Change(Sender: TObject);
begin
  ChangeShipEquipment(5, 2);
end;

procedure TFormMain.ComboBoxS5E3Change(Sender: TObject);
begin
  ChangeShipEquipment(5, 3);
end;

procedure TFormMain.ComboBoxShip0Change(Sender: TObject);
begin
  ChangeShipInFleet(0);
end;

procedure TFormMain.ComboBoxShip1Change(Sender: TObject);
begin
  if ShipBoxRef[0].ItemIndex=-1 then
    ShipBoxRef[1].ItemIndex:=-1
  else
    ChangeShipInFleet(1);
end;

procedure TFormMain.ComboBoxShip2Change(Sender: TObject);
begin
  if ShipBoxRef[1].ItemIndex=-1 then
    ShipBoxRef[2].ItemIndex:=-1
  else
    ChangeShipInFleet(2);
end;

procedure TFormMain.ComboBoxShip3Change(Sender: TObject);
begin
  if ShipBoxRef[2].ItemIndex=-1 then
    ShipBoxRef[3].ItemIndex:=-1
  else
    ChangeShipInFleet(3);
end;

procedure TFormMain.ComboBoxShip4Change(Sender: TObject);
begin
  if ShipBoxRef[3].ItemIndex=-1 then
    ShipBoxRef[4].ItemIndex:=-1
  else
    ChangeShipInFleet(4);
end;

procedure TFormMain.ComboBoxShip5Change(Sender: TObject);
begin
  if ShipBoxRef[4].ItemIndex=-1 then
    ShipBoxRef[5].ItemIndex:=-1
  else
    ChangeShipInFleet(5);
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  AssociateReferences;
  BattleStep:=1;
  InitShipLists;
  InitEquipmentLists;

  RefreshResult;
end;

procedure TFormMain.TrackBarAA0Change(Sender: TObject);
begin
  RefreshResult;
end;

procedure TFormMain.TrackBarAA1Change(Sender: TObject);
begin
  RefreshResult;
end;

procedure TFormMain.TrackBarAA2Change(Sender: TObject);
begin
  RefreshResult;
end;

procedure TFormMain.TrackBarAA3Change(Sender: TObject);
begin
  RefreshResult;
end;

procedure TFormMain.TrackBarAA4Change(Sender: TObject);
begin
  RefreshResult;
end;

procedure TFormMain.TrackBarAA5Change(Sender: TObject);
begin
  RefreshResult;
end;

{
type
  TSkillAA=(
    NoSkill,
    PhoenixGuard,    // for Verniy
    ExPlatform,      // for Yubari
    LastGlory,       // for Renown
    MalayaSunset,    // for Repulse
    ZDElite,         // for Z31
    RoyalBoat,       // for Vanguard
    AADefense,       // for Atlanta(-class)
    OceanAAFortress, // for Maya
    NeverGiveUp,     // for Yat Sen
    AAGuard          // for Akizuki(-class)
  );
}

initialization
  InitRecords;
  ReadShipsData;
  ReadEquipmentsData;
  ReadSkillsData;

finalization

end.

