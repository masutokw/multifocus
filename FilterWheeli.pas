unit FilterWheeli;

interface
uses
  ComObj, ActiveX, Multifocuser_TLB;

const
   DRIVER_NAME = 'Multifocuser';
   DRIVER_ID = DRIVER_NAME + '.FilterWheel';


type
  TFilterWheel = class(TAutoObject, IFilterWheel)
  protected
  function Get_Connected: WordBool; safecall;
  procedure Set_Connected(Value: WordBool); safecall;
  function Get_FocusOffsets: PSafeArray; safecall;
  function Get_Position: Smallint; safecall;
  procedure Set_Position(pVal: Smallint); safecall;
  function Get_Names: PSafeArray; safecall;
  procedure SetupDialog; safecall;
  function Get_SupportedActions: OleVariant; safecall;
  function Get_DriverInfo:widestring;safecall;
  function Get_DriverVersion:widestring;safecall;
  function Get_InterfaceVersion:ShortInt;safecall;
  function Get_Description: WideString; safecall;
  function Get_Name: WideString; safecall;

    //property Connected: WordBool read Get_Connected write Set_Connected;
    //property FocusOffsets: PSafeArray read Get_FocusOffsets;
    //property Position: Smallint read Get_Position write Set_Position;
    //property Names: PSafeArray read Get_Names;
  public
  end;

implementation
uses ComServ, sysutils, Dialogs, Controls, ShellAPI,drivers;

   function TFilterWheel.Get_Connected:WordBool;
   begin
    Get_Connected:=true
   end;
   Procedure TFilterWheel.Set_Connected(Value: WordBool);
   begin
   end;
   function TFilterWheel.Get_FocusOffsets: PSafeArray;
   begin
     SafeArrayunlock(filterw.SafeArray);
    result:=filterw.SafeArray
   end;
   function TFilterWheel.Get_Position: Smallint;
    begin
      result:=filterw.slotc;
    end;

     function TFilterWheel.Get_SupportedActions: OleVariant;
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
   procedure TFilterWheel.Set_Position(pVal: Smallint);
    begin
    if (pval <= 8)and(pval>=0 )  then  filterw.goto_slot(pval)
    else raise  EOLEexception.Create('Invalid Value 1',$80040404,'none','0',0);

    end;

   function TFilterWheel.Get_Names: PSafeArray;
   begin
   SafeArrayUnlock(filterw.SafeArrayNames);
   result:=filterw.SafeArrayNames;

   end;
   procedure TFilterWheel.SetupDialog;
   begin
   end;
 function TFilterWheel.Get_DriverInfo:widestring;
 begin
 result:='Multifocuser Rotator'
 end;
 function TFilterWheel.Get_DriverVersion:widestring;
  begin
 result:='Multifocuser V2'
 end ;
    function TFilterWheel.Get_InterfaceVersion:ShortInt;
     begin
 result:=2
 end;
     function TFilterWheel.Get_Description: WideString;
     begin
    result:='Multifocus filter driver'
    end;
   function TFilterWheel.Get_Name: WideString;
        begin
     result:='Multifocus Filter Wheel'
    end;
{--------------------------------------------------------------}
procedure RegisterThySelf;
{--------------------------------------------------------------}
// Test id this interface is registered int he ASCOM registry area
// If not register it so the Choose can find it and also to store persistent data
var
  ProfileObject: Variant;

begin

    ProfileObject := CreateOLEObject('ASCOM.Utilities.Profile');
     ProfileObject.DeviceType := 'FilterWheel';
   if (not ProfileObject.IsRegistered(DRIVER_ID)) then
      begin
         ShowMessage('Self-Registering: ASCOM ' + DRIVER_ID);
         ProfileObject.Register(DRIVER_ID, 'Multifocuser FilterWheel');

      end;
end;



initialization
CoInitializeex(nil, COINIT_APARTMENTTHREADED);
  RegisterThySelf;
  TAutoObjectFactory.Create(ComServer,TFilterWheel, Class_FilterWheel,
    cimultiInstance, tmApartment);

  end.
end.
