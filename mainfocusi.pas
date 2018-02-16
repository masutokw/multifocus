unit mainfocusi;


{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj, ActiveX, MultiFocuser_TLB, StdVcl,drivers;
  const
   DRIVER_NAME = 'MultiFocuser';
   DRIVER_ID = DRIVER_NAME + '.Focuser';
 //var Factory:  IClassFactory;

type
  TFocuser = class(TAutoObject, IFocuser)
  public
  counter:integer;
  tcomp:boolean;
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
    function Get_SupportedActions: OleVariant; safecall;
    procedure Halt; safecall;
    procedure Move(val: Integer); safecall;
    procedure Set_Link(__MIDL_0095: WordBool); safecall;
    procedure Set_TempComp(__MIDL_0101: WordBool); safecall;
    procedure SetUpDialog; safecall;

    { Protected declarations }
  end;
 //  var focus: Ifocuser;
implementation

uses ComServ, sysutils, Dialogs, Controls, ShellAPI;

 const ID='D1' ;
function TFocuser.Get_Absolute: WordBool;
begin
  Get_Absolute:=true;
end;

function TFocuser.Get_IsMoving: WordBool;
begin
// result:=false;
//  FocusForm.comport1.WriteStr( deviceID +'m#') ;
//  sleep (100);
result:=focuserA.moving;
end;

function TFocuser.Get_Link: WordBool;
begin
  //   result:= FocusForm.comport1.Connected;
  result:=true;
end;

function TFocuser.Get_MaxIncrement: Integer;
begin
   result:=focuserA.maxstep div 2;
end;

function TFocuser.Get_MaxStep: Integer;
begin
    result:=focuserA.maxstep;
end;

function TFocuser.Get_Position: Integer;
begin
focuserA.send ('P#');
result:=focuserA.position;

end;

function TFocuser.Get_StepSize: Double;
begin
    result:=65000/focuserA.maxstep;
end;

function TFocuser.Get_TempComp: WordBool;
begin
  result:=tcomp;
end;

function TFocuser.Get_TempCompAvailable: WordBool;
begin
    result:=true;
end;

function TFocuser.Get_Temperature: Double;
begin

 RESULT:=15.6;
end;
 function TFocuser.Get_SupportedActions: OleVariant;
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
procedure TFocuser.Halt;
begin
focusera.halt;
end;

procedure TFocuser.Move(val: Integer);

var ms:string;
begin
if not tcomp then  focuserA.move(val) else
raise   EOLEexception.Create('Invalid Value 1',$80040404,'none','0',0);
end;

procedure TFocuser.Set_Link(__MIDL_0095: WordBool);
begin

end;

procedure TFocuser.Set_TempComp(__MIDL_0101: WordBool);
begin
    tcomp:=__MIDL_0101;
end;

procedure TFocuser.SetUpDialog;
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
         ProfileObject.Register(DRIVER_ID, 'Multifocuser Main');
         // set persistent default values if any
      end;
end;

initialization
 CoInitializeex(nil, COINIT_APARTMENTTHREADED);
  RegisterThySelf;
 //factory:=
 TAutoObjectFactory.Create(ComServer, TFocuser, Class_Focuser,cimultiInstance, tmApartment);
 // OleCheck(Factory.CreateInstance( nil, IFocuser, focus));
   
end.




