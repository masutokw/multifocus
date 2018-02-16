unit rotatori;

interface
uses
  ComObj, ActiveX, MultiFocuser_TLB, StdVcl;
  const
   DRIVER_NAME = 'MultiFocuser';
   DRIVER_ID = DRIVER_NAME + '.Rotator';

type
  TRotator = class(TAutoObject, IRotator)
  protected
    function Get_CanReverse: WordBool; safecall;
    function Get_IsMoving: WordBool; safecall;
    function Get_Connected: WordBool; safecall;
    function Get_StepSize: Single; safecall;
    function Get_Position: Single; safecall;
    function Get_Reverse: WordBool; safecall;
    function Get_TargetPosition:Single ; safecall;
    procedure Halt; safecall;
    procedure Move(val: Single); safecall;
    procedure MoveAbsolute(Position: Single); safecall;
    procedure Set_Connected(pVal: WordBool); safecall;
    procedure Set_Reverse(pval:WordBool) safecall;
    procedure SetUpDialog; safecall;
    procedure CommandBlind(const Command: WideString; Raw: WordBool); safecall;
    function Get_DriverInfo:widestring;safecall;
    function Get_DriverVersion:widestring;safecall;
    function Get_InterfaceVersion:ShortInt;safecall;
    function Get_Description: WideString; safecall;
    function Get_Name: WideString; safecall;
    function Get_SupportedActions: OleVariant; safecall;
    { Protected declarations }
  end;



implementation
uses ComServ, sysutils, Dialogs, Controls, ShellAPI,drivers;
 const ID='D1';

function TRotator.Get_CanReverse:Wordbool;
begin
result:=true;
end;

function TRotator.Get_IsMoving: WordBool;
begin   rotator.get_angle;
result := rotator.moving;
end;
 function TRotator.Get_Connected: WordBool;
 begin
result := true;
end;

function TRotator.Get_StepSize: Single;

begin
result:=360.0/rotator.maxstep;
end;

function TRotator.Get_Position: Single;
begin
rotator.get_angle;
result:=rotator.angle;
end;
function TRotator.Get_Reverse: WordBool;
begin
result:=false;
end;

function TRotator.Get_TargetPosition:Single;
begin
result:=rotator.target;
end;
procedure TRotator.Halt;
begin
    rotator.halt;
end;
 function TRotator.Get_DriverInfo:widestring;
 begin
 result:='Multifocuser Rotator'
 end;
 function TRotator.Get_DriverVersion:widestring;
  begin
 result:='Multifocuser V1'
 end ;
    function TRotator.Get_InterfaceVersion:ShortInt;
     begin
 result:=2
 end;
     function TRotator.Get_Description: WideString;
     begin
     result:='Multifocus rotator driver'
     end;
    function TRotator.Get_Name: WideString;
         begin
     result:='Multifocus Rotator'
     end;
 function TRotator.Get_SupportedActions: OleVariant;
 var
  capacity: Integer;
  item:Variant;
  dotNetArrayList:Variant;
begin
{ Create object }
  dotNetArrayList := CreateOleObject('System.Collections.ArrayList');


{ Add an element }
  dotNetArrayList.Add('NULL');
  item := dotNetArrayList.Item(0);
  Result:=dotNetArrayList;
end;
procedure TRotator.CommandBlind(const Command: WideString; Raw: WordBool);
begin
end;
procedure TRotator.Move(val: Single);
begin
rotator.moving:=true;
if val <=0 then rotator.move(val)
else  raise   EOLEexception.Create('Invalid Value 1',$80040404,'none','0',0);
 
end;

procedure TRotator.MoveAbsolute(Position: Single);
begin
   rotator.moving:=true;
   rotator.move_absolute(position);
   rotator.target:=position;
end;
procedure TRotator.Set_Connected(pVal: WordBool);
begin
 
end;
procedure TRotator.Set_Reverse(pval:WordBool);
begin

end;
procedure TRotator.SetUpDialog;
begin

end;

procedure RegisterThySelf;
{--------------------------------------------------------------}
// Test id this interface is registered int he ASCOM registry area
// If not register it so the Choose can find it and also to store persistent data
var
  ProfileObject: Variant;

begin
ProfileObject := CreateOLEObject('ASCOM.Utilities.Profile');
ProfileObject.DeviceType := 'Rotator';
   if (not ProfileObject.IsRegistered(DRIVER_ID)) then
      begin
         ShowMessage('Self-Registering: ASCOM ' + DRIVER_ID);
         ProfileObject.Register(DRIVER_ID, 'Multifocuser Field Rotator');
         // set persistent default values if any
      end;
end;

initialization
 CoInitializeex(nil, COINIT_APARTMENTTHREADED);
  RegisterThySelf;
  TAutoObjectFactory.Create(ComServer, TRotator, Class_Rotator,
    cimultiInstance, tmApartment);
end.
