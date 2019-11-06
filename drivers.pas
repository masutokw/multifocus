unit drivers;

interface
uses cport, SysUtils, activex, inifiles,variants;
Type
   TRotator = class
      
   Public
      maxstep: integer;
      step_size: single;
      position: integer;
      angle,target: single;
      reverse: boolean;
      comport: Tcomport;
      slot: array[1..8]of single;
      id: string[3];
      moving:boolean;
      constructor create(idc: string);
      procedure  send (str: string);
      procedure  move(angle_inc: single);
      procedure  move_absolute(angle: single);
      procedure sync(angle: single);
      procedure get_angle;
      procedure  halt();
      
   end;
      
   TFocus = class
   Public
      position, target, maxstep, backslash: integer;
      step_size, temperature: double;
      slot: array[1..6]of integer;
      comport: Tcomport;
      moving:boolean;
      id: string[3];
      constructor create(IDC: string);
      procedure sync(value: integer);
      procedure move(value: integer);
      procedure halt;
      procedure goto_slot(index: integer);
      function temp: double;
      procedure send(str: String);
      procedure set_slot(index, position: integer);
   end;
      
   TFilter = class
   Public
      position, target, maxstep: integer;
      step_size:  double;
      slotc: smallint;
      slot: array[1..9]of integer;
      slot_off: array[1..9]of integer;
     // Bounds: array[0..0] of TSafeArrayBound;
      Bounds:SafeArrayBound;
      SafeArray,SafeArrayNames: PSafeArray;
      v:variant;
      Slotnames: array[1..9]of string;
      comport: Tcomport;
      id: string[3];
      moving:boolean;
      constructor create(IDC: string);
      procedure sync(value: integer);
      procedure move(value: integer);
      procedure halt;
      procedure goto_slot(index: integer);
      procedure set_slot(index, position: integer);
      procedure send(str: String);
      //procedure update_slots
   end;
      
      
var rotator: TRotator;
   focuserA, focuserB: Tfocus;
   FilterW: TFilter;
   filepath: string;
implementation


//---------------------------------------------------------------
constructor TRotator.create(IDC: string);
 var  inifile: TiniFile;
begin
   id := 'D' + idc;
    inifile := TINIFile.Create(FilePath + 'multifocus.ini');
     with inifile do
   begin
      maxstep := readinteger ('Rotator', 'MaxSteps', 10000);
   end;
   inifile.Free;
   step_size := 360.0/maxstep;
   slot[1]:=0.0;
   slot[2]:=45.0;
    slot[3]:=90.0;
   slot[4]:=135.0;
    slot[5]:=180.0;
   slot[6]:=225.0;
    slot[7]:=270.0;
   slot[8]:=315.0;

   moving:=false;

end;
procedure trotator.send(str: String);
var n: integer;
   cmd: string;
begin
   cmd := ID + str;
{   for n := 1 to length(cmd) do
   begin
      comport.TransmitChar(cmd[n]);
      sleep(5);
   end;}
    comport.WriteStr(cmd);
end;
procedure trotator.move(angle_inc: single);
var value: string;
angleV:single;
begin
   anglev:=angle + angle_inc;
   if anglev<0 then anglev:=360.0-anglev;
   while anglev >=360.0 do anglev:= anglev-360.0;
   value := 'N' + inttostr(round((anglev) / step_size)) + 'M#';
   target:=anglev;
   send(value);
end;
procedure  TRotator.move_absolute(angle: single);
var value: string;
begin
while angle >=360.0 do angle:= angle-360.0;
   value := 'N' + inttostr(trunc(angle / step_size)) + 'M#';
   target:=angle;
   send(value);
end;
procedure TRotator.halt;
begin
   send ('Q#');
   send('P#');
end;
procedure TRotator.sync(angle: single);
var value: string;
begin
   value := 'N' + inttostr(trunc(angle / step_size)) + 'S#';
   send(value);;
end;
procedure TRotator.get_angle;
begin
   send('P#');
end;
//-----------------------------------------------------------------

constructor TFocus.create(IDC: string);
var section: string;
   inifile: TiniFile;
begin
   id := 'D' + idc;
   if idC = '1' then
      section := 'FocuserA' else section := 'FocuserB';

   inifile := TINIFile.Create(FilePath + 'multifocus.ini');
   with inifile do
   begin
      maxstep := readinteger (section, 'MaxStep', 10000);
      backslash := readinteger(section, 'Back', 0);
      step_size := readfloat (section, 'Stepsize', 1);
      slot[1] := readinteger (section, 'Slot1', 3000);
      slot[2] := readinteger (section, 'Slot2', 2000);
      slot[3] := readinteger (section, 'Slot3', 3000);
      slot[4] := readinteger (section, 'Slot4', 4000);
      slot[5] := readinteger (section, 'Slot5', 5000);
      slot[6] := readinteger (section, 'Slot6', 6000);
   end;
   inifile.Free;


end;

procedure TFocus.sync(value: integer);
begin
   send('N' + inttostr(value) + 'S#');
end;
procedure TFocus.move(value: integer);
begin
   send('N' + inttostr(value) + 'M#');
end;

procedure Tfocus.halt;
begin
   send ('Q#');
end;
procedure TFocus.goto_slot(index: integer);
begin
   send('N' + inttostr(slot[index]) + 'M#');
end;

function TFocus.temp: double;
begin
   result := 15.0;
end;

procedure Tfocus.send(str: String);
var n: integer;
   cmd: string;

begin
   cmd := ID + str;
 { for n := 1 to length(cmd) do
   begin
      comport.TransmitChar(cmd[n]);
     // sleep(5);
   end;}
   comport.WriteStr(cmd);
end;

procedure Tfocus.set_slot(index, position: integer);
begin
   slot[index] := position;
end;

constructor tFilter.create(IDC: string);
var i: integer;
   section: string;
   inifile: TiniFile;
begin
   id := 'D' + idc;
   section := 'Filter';
   inifile := TINIFile.Create(FilePath + 'multifocus.ini');
   with inifile do
   begin
      maxstep := readinteger (section, 'MaxStep', 4096);
      //backslash := readinteger(section, 'Back',0);
      step_size := readfloat (section, 'Stepsize', 1);
      slot[1] := readinteger (section, 'Slot1', 0);
      slot[2] := readinteger (section, 'Slot2', 455);
      slot[3] := readinteger (section, 'Slot3', 910);
      slot[4] := readinteger (section, 'Slot4', 1365);
      slot[5] := readinteger (section, 'Slot5', 1820);
      slot[6] := readinteger (section, 'Slot6', 2275);
      slot[7] := readinteger (section, 'Slot7', 2730);
      slot[8] := readinteger (section, 'Slot8', 3185);
      slot[9] := readinteger (section, 'Slot9', 3640);

      slot_off[1] := readinteger (section, 'Off1', 0);
      slot_off[2] := readinteger (section, 'Off2', 0);
      slot_off[3] := readinteger (section, 'Off3', 0);
      slot_off[4] := readinteger (section, 'Off4', 0);
      slot_off[5] := readinteger (section, 'Off5', 0);
      slot_off[6] := readinteger (section, 'Off6', 0);
      slot_off[7] := readinteger (section, 'Off7', 0);
      slot_off[8] := readinteger (section, 'Off8', 0);
      slot_off[9] := readinteger (section, 'Off9', 0);

      slotnames[1] := readstring (section, 'SlotName1', 'Luminance');
      slotnames[2] := readstring (section, 'SlotName2', 'Red');
      slotnames[3] := readstring (section, 'SlotName3', 'Green');
      slotnames[4] := readstring (section, 'SlotName4', 'Blue');
      slotnames[5] := readstring (section, 'SlotName5', 'IR');
      slotnames[6] := readstring (section, 'SlotName6', 'IRC');
      slotnames[7] := readstring (section, 'SlotName7', 'HA');
      slotnames[8] := readstring (section, 'SlotName8', 'P');
      slotnames[9] := readstring (section, 'SlotName9', 'OIII');
   end;
   inifile.Free;
   i := 0;
  // bounds[0].lLbound := 0;
   //bounds[0].cElements := 8;
    bounds.lLbound := 0;
    bounds.cElements := 8;

   SafeArray := SafeArrayCreate(VT_I4, 1, @bounds);
 //   SafeArrayNames := SafeArrayCreate(VT_BSTR, 1, bounds);
      v := VarArrayCreate ([0, 7], varOleStr);

   For i := 1 to 8  do
   begin
      safeArrayputElement(SafeArray, i, slot_off[i+1]);
     // safeArrayputElement(SafeArrayNames, i, slotnames[i+1]);
     v[i-1]:=slotnames[i]
    end;
    SafeArrayNames := PSafeArray(TVarData(v).VArray);
   // SafeArrayUnlock(SafeArray);
   // SafeArrayUnlock(SafeArrayNames);
end;
procedure tFilter.sync(value: integer);
begin
   send('N' + inttostr(value) + 'S#');
end;
procedure tFilter.move(value: integer);
begin
   send('N' + inttostr(value) + 'M#');
end;
procedure tFilter.halt;
begin

end;
procedure tFilter.goto_slot(index: integer);
begin
   send('N' + inttostr(slot[index]) + 'M#');
   slotc := index;
end;
procedure tFilter.send(str: String);
var n: integer;
   cmd: string;

begin
   cmd := ID + str;
 {  for n := 1 to length(cmd) do
   begin
      comport.TransmitChar(cmd[n]);
      sleep(1);
   end;}
    comport.WriteStr(cmd);
end;

procedure TFilter.set_slot(index, position: integer);
begin

   slot[index] := position;
end;





end.
