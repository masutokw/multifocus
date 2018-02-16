unit auxfocusi;



{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj, ActiveX, MultiFocuser_TLB, StdVcl,drivers;
  const
   DRIVER_NAME = 'MultiFocuserAux';
   DRIVER_ID = DRIVER_NAME + '.Focuser';

type
  TFocuser1 = class(TAutoObject, IFocuser)
  public  tcomp:boolean;
  protected

    function Get_Absolute: WordBool; safecall;
    function Get_IsMoving: WordBool; safecall;
    function Get_Link: WordBool; safecall;
    function Get_MaxIncrement: Integer; safecall;
    function Get_MaxStep: Integer; safecall;
    function Get_Position: Integer; safecall;
    function Get_StepSize: Double; safecall;
    function Get_TempComp: WordBool; safecall;
    function Get_TempCompAvailable: WordBool; safecall;
    function Get_Temperature: Double; safecall;
    procedure Halt; safecall;
    procedure Move(val: Integer); safecall;
    procedure Set_Link(__MIDL_0095: WordBool); safecall;
    procedure Set_TempComp(__MIDL_0101: WordBool); safecall;
    procedure SetUpDialog; safecall;
     function Get_SupportedActions: OleVariant; safecall;
    { Protected declarations }
  end;

implementation

uses ComServ, sysutils, Dialogs, Controls, ShellAPI;
 const ID='D1' ;
function TFocuser1.Get_Absolute: WordBool;
begin
  Get_Absolute:=true;
end;

function TFocuser1.Get_IsMoving: WordBool;
begin
// result:=false;
//  FocusForm.comport1.WriteStr( deviceID +'m#') ;
//  sleep (100);
result:=focuserB.moving;
end;

function TFocuser1.Get_Link: WordBool;
begin
     result:= true;//FocusForm.comport1.Connected;
end;

function TFocuser1.Get_MaxIncrement: Integer;
begin
   result:=focuserB.maxstep div 2;
end;

function TFocuser1.Get_MaxStep: Integer;
begin
    result:=FocuserB.maxstep;
end;

function TFocuser1.Get_Position: Integer;
begin
focuserB.send ('P#');
result:=focuserB.position;
end;

function TFocuser1.Get_StepSize: Double;
begin
    result:=65000/focuserb.maxstep;
end;

function TFocuser1.Get_TempComp: WordBool;
begin
  result:=tcomp;
end;

function TFocuser1.Get_TempCompAvailable: WordBool;
begin
    result:=true;
end;

function TFocuser1.Get_Temperature: Double;
begin

 RESULT:=15;
end;
 function TFocuser1.Get_SupportedActions: OleVariant;
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
procedure TFocuser1.Halt;
begin
 FocuserB.halt;
end;

procedure TFocuser1.Move(val: Integer);

var ms:string;
begin
if not tcomp then  focuserB.move(val) else
raise   EOLEexception.Create('Invalid Value 1',$80040404,'none','0',0);
end;

procedure TFocuser1.Set_Link(__MIDL_0095: WordBool);
begin

 //FocusForm.ComPort1.Connected:=__MIDL_0095;
 //focusform.HiResTimer1.Enabled:=__MIDL_0095;;
end;

procedure TFocuser1.Set_TempComp(__MIDL_0101: WordBool);
begin
 tcomp:=__MIDL_0101;
end;

procedure TFocuser1.SetUpDialog;
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
ProfileObject.DeviceType := 'Focuser';
   if (not ProfileObject.IsRegistered(DRIVER_ID)) then
      begin
         ShowMessage('Self-Registering: ASCOM ' + DRIVER_ID);
         ProfileObject.Register(DRIVER_ID, 'Multifocuser Aux');
         // set persistent default values if any
      end;
end;

initialization
 CoInitializeex(nil, COINIT_APARTMENTTHREADED);
  RegisterThySelf;
  TAutoObjectFactory.Create(ComServer, TFocuser1, Class_Focuser1,
    cimultiInstance, tmApartment);
end.




