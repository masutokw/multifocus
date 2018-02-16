unit MultiFocuser_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 11/02/2018 22:25:03 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\Angel\Documents\Embarcadero\Studio\Projects\Multifocus\MultiFocuser (1)
// LIBID: {7D31EC31-5ABA-4E32-89A7-DAD6EF22C9A3}
// LCID: 0
// Helpfile:
// HelpString: ASCOM MultiFocuser Library
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  MultiFocuserMajorVersion = 1;
  MultiFocuserMinorVersion = 0;

  LIBID_MultiFocuser: TGUID = '{7D31EC31-5ABA-4E32-89A7-DAD6EF22C9A3}';

  IID_IFocuser: TGUID = '{17DFFB6D-7B0C-489F-A3ED-19B08C8445BC}';
  IID_IRotator: TGUID = '{13269301-EB94-4D47-BDBF-2F2B2EA150A0}';
  CLASS_Rotator: TGUID = '{5CA04A8E-A459-4791-AD0D-C285D9F71BA8}';
  CLASS_Focuser: TGUID = '{6E6A9381-CC34-4D0E-94E7-45E51F9F2862}';
  IID_IFilterWheel: TGUID = '{C2E18F8F-27D2-41DD-A24A-CA8840F2D678}';
  CLASS_FilterWheel: TGUID = '{AF976DA8-FC0B-4526-887A-34A0E1A313FF}';
  CLASS_Focuser1: TGUID = '{A25A2F27-8DAB-4FAB-A31F-37AA70569E41}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  IFocuser = interface;
  IFocuserDisp = dispinterface;
  IRotator = interface;
  IRotatorDisp = dispinterface;
  IFilterWheel = interface;
  IFilterWheelDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  Rotator = IRotator;
  Focuser = IFocuser;
  FilterWheel = IFilterWheel;
  Focuser1 = IFocuser;


// *********************************************************************//
// Interface: IFocuser
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {17DFFB6D-7B0C-489F-A3ED-19B08C8445BC}
// *********************************************************************//
  IFocuser = interface(IDispatch)
    ['{17DFFB6D-7B0C-489F-A3ED-19B08C8445BC}']
    function Get_Absolute: WordBool; safecall;
    function Get_IsMoving: WordBool; safecall;
    function Get_Link: WordBool; safecall;
    procedure Set_Link(__MIDL_0095: WordBool); safecall;
    function Get_MaxIncrement: Integer; safecall;
    function Get_MaxStep: Integer; safecall;
    function Get_Position: Integer; safecall;
    function Get_StepSize: Double; safecall;
    function Get_TempComp: WordBool; safecall;
    procedure Set_TempComp(__MIDL_0101: WordBool); safecall;
    function Get_TempCompAvailable: WordBool; safecall;
    function Get_Temperature: Double; safecall;
    procedure Halt; safecall;
    procedure SetupDialog; safecall;
    procedure Move(val: Integer); safecall;
    function Get_SupportedActions: OleVariant; safecall;
    property Absolute: WordBool read Get_Absolute;
    property IsMoving: WordBool read Get_IsMoving;
    property Link: WordBool read Get_Link write Set_Link;
    property MaxIncrement: Integer read Get_MaxIncrement;
    property MaxStep: Integer read Get_MaxStep;
    property Position: Integer read Get_Position;
    property StepSize: Double read Get_StepSize;
    property TempComp: WordBool read Get_TempComp write Set_TempComp;
    property TempCompAvailable: WordBool read Get_TempCompAvailable;
    property Temperature: Double read Get_Temperature;
    property SupportedActions: OleVariant read Get_SupportedActions;
  end;

// *********************************************************************//
// DispIntf:  IFocuserDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {17DFFB6D-7B0C-489F-A3ED-19B08C8445BC}
// *********************************************************************//
  IFocuserDisp = dispinterface
    ['{17DFFB6D-7B0C-489F-A3ED-19B08C8445BC}']
    property Absolute: WordBool readonly dispid 101;
    property IsMoving: WordBool readonly dispid 102;
    property Link: WordBool dispid 103;
    property MaxIncrement: Integer readonly dispid 104;
    property MaxStep: Integer readonly dispid 105;
    property Position: Integer readonly dispid 106;
    property StepSize: Double readonly dispid 107;
    property TempComp: WordBool dispid 108;
    property TempCompAvailable: WordBool readonly dispid 109;
    property Temperature: Double readonly dispid 110;
    procedure Halt; dispid 401;
    procedure SetupDialog; dispid 402;
    procedure Move(val: Integer); dispid 403;
    property SupportedActions: OleVariant readonly dispid 6;
  end;

// *********************************************************************//
// Interface: IRotator
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {13269301-EB94-4D47-BDBF-2F2B2EA150A0}
// *********************************************************************//
  IRotator = interface(IDispatch)
    ['{13269301-EB94-4D47-BDBF-2F2B2EA150A0}']
    function Get_CanReverse: WordBool; safecall;
    function Get_Connected: WordBool; safecall;
    procedure Set_Connected(pVal: WordBool); safecall;
    function Get_IsMoving: WordBool; safecall;
    function Get_Position: Single; safecall;
    function Get_Reverse: WordBool; safecall;
    procedure Set_Reverse(pVal: WordBool); safecall;
    function Get_StepSize: Single; safecall;
    function Get_TargetPosition: Single; safecall;
    procedure Halt; safecall;
    procedure Move(Position: Single); safecall;
    procedure MoveAbsolute(Position: Single); safecall;
    procedure SetupDialog; safecall;
    function Get_DriverInfo: WideString; safecall;
    function Get_DriverVersion: WideString; safecall;
    function Get_InterfaceVersion: Shortint; safecall;
    procedure CommandBlind(const Command: WideString; Raw: WordBool); safecall;
    function Get_Description: WideString; safecall;
    function Get_Name: WideString; safecall;
    function Get_SupportedActions: OleVariant; safecall;
    property CanReverse: WordBool read Get_CanReverse;
    property Connected: WordBool read Get_Connected write Set_Connected;
    property IsMoving: WordBool read Get_IsMoving;
    property Position: Single read Get_Position;
    property Reverse: WordBool read Get_Reverse write Set_Reverse;
    property StepSize: Single read Get_StepSize;
    property TargetPosition: Single read Get_TargetPosition;
    property DriverInfo: WideString read Get_DriverInfo;
    property DriverVersion: WideString read Get_DriverVersion;
    property InterfaceVersion: Shortint read Get_InterfaceVersion;
    property Description: WideString read Get_Description;
    property Name: WideString read Get_Name;
    property SupportedActions: OleVariant read Get_SupportedActions;
  end;

// *********************************************************************//
// DispIntf:  IRotatorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {13269301-EB94-4D47-BDBF-2F2B2EA150A0}
// *********************************************************************//
  IRotatorDisp = dispinterface
    ['{13269301-EB94-4D47-BDBF-2F2B2EA150A0}']
    property CanReverse: WordBool readonly dispid 101;
    property Connected: WordBool dispid 102;
    property IsMoving: WordBool readonly dispid 103;
    property Position: Single readonly dispid 104;
    property Reverse: WordBool dispid 105;
    property StepSize: Single readonly dispid 106;
    property TargetPosition: Single readonly dispid 107;
    procedure Halt; dispid 401;
    procedure Move(Position: Single); dispid 402;
    procedure MoveAbsolute(Position: Single); dispid 403;
    procedure SetupDialog; dispid 404;
    property DriverInfo: WideString readonly dispid 1;
    property DriverVersion: WideString readonly dispid 2;
    property InterfaceVersion: Shortint readonly dispid 3;
    procedure CommandBlind(const Command: WideString; Raw: WordBool); dispid 4;
    property Description: WideString readonly dispid 5;
    property Name: WideString readonly dispid 7;
    property SupportedActions: OleVariant readonly dispid 6;
  end;

// *********************************************************************//
// Interface: IFilterWheel
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C2E18F8F-27D2-41DD-A24A-CA8840F2D678}
// *********************************************************************//
  IFilterWheel = interface(IDispatch)
    ['{C2E18F8F-27D2-41DD-A24A-CA8840F2D678}']
    function Get_Connected: WordBool; safecall;
    procedure Set_Connected(pVal: WordBool); safecall;
    function Get_FocusOffsets: PSafeArray; safecall;
    function Get_Position: Smallint; safecall;
    procedure Set_Position(pVal: Smallint); safecall;
    function Get_Names: PSafeArray; safecall;
    procedure SetupDialog; safecall;
    function Get_SupportedActions: OleVariant; safecall;
    function Get_DriverInfo: WideString; safecall;
    function Get_DriverVersion: WideString; safecall;
    function Get_InterfaceVersion: Shortint; safecall;
    function Get_Name: WideString; safecall;
    function Get_Description: WideString; safecall;
    property Connected: WordBool read Get_Connected write Set_Connected;
    property FocusOffsets: PSafeArray read Get_FocusOffsets;
    property Position: Smallint read Get_Position write Set_Position;
    property Names: PSafeArray read Get_Names;
    property SupportedActions: OleVariant read Get_SupportedActions;
    property DriverInfo: WideString read Get_DriverInfo;
    property DriverVersion: WideString read Get_DriverVersion;
    property InterfaceVersion: Shortint read Get_InterfaceVersion;
    property Name: WideString read Get_Name;
    property Description: WideString read Get_Description;
  end;

// *********************************************************************//
// DispIntf:  IFilterWheelDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C2E18F8F-27D2-41DD-A24A-CA8840F2D678}
// *********************************************************************//
  IFilterWheelDisp = dispinterface
    ['{C2E18F8F-27D2-41DD-A24A-CA8840F2D678}']
    property Connected: WordBool dispid 101;
    property FocusOffsets: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 102;
    property Position: Smallint dispid 103;
    property Names: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 104;
    procedure SetupDialog; dispid 401;
    property SupportedActions: OleVariant readonly dispid 6;
    property DriverInfo: WideString readonly dispid 1;
    property DriverVersion: WideString readonly dispid 2;
    property InterfaceVersion: Shortint readonly dispid 3;
    property Name: WideString readonly dispid 7;
    property Description: WideString readonly dispid 5;
  end;

// *********************************************************************//
// The Class CoRotator provides a Create and CreateRemote method to
// create instances of the default interface IRotator exposed by
// the CoClass Rotator. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoRotator = class
    class function Create: IRotator;
    class function CreateRemote(const MachineName: string): IRotator;
  end;

// *********************************************************************//
// The Class CoFocuser provides a Create and CreateRemote method to
// create instances of the default interface IFocuser exposed by
// the CoClass Focuser. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoFocuser = class
    class function Create: IFocuser;
    class function CreateRemote(const MachineName: string): IFocuser;
  end;

// *********************************************************************//
// The Class CoFilterWheel provides a Create and CreateRemote method to
// create instances of the default interface IFilterWheel exposed by
// the CoClass FilterWheel. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoFilterWheel = class
    class function Create: IFilterWheel;
    class function CreateRemote(const MachineName: string): IFilterWheel;
  end;

// *********************************************************************//
// The Class CoFocuser1 provides a Create and CreateRemote method to
// create instances of the default interface IFocuser exposed by
// the CoClass Focuser1. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoFocuser1 = class
    class function Create: IFocuser;
    class function CreateRemote(const MachineName: string): IFocuser;
  end;

implementation

uses System.Win.ComObj;

class function CoRotator.Create: IRotator;
begin
  Result := CreateComObject(CLASS_Rotator) as IRotator;
end;

class function CoRotator.CreateRemote(const MachineName: string): IRotator;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Rotator) as IRotator;
end;

class function CoFocuser.Create: IFocuser;
begin
  Result := CreateComObject(CLASS_Focuser) as IFocuser;
end;

class function CoFocuser.CreateRemote(const MachineName: string): IFocuser;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Focuser) as IFocuser;
end;

class function CoFilterWheel.Create: IFilterWheel;
begin
  Result := CreateComObject(CLASS_FilterWheel) as IFilterWheel;
end;

class function CoFilterWheel.CreateRemote(const MachineName: string): IFilterWheel;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FilterWheel) as IFilterWheel;
end;

class function CoFocuser1.Create: IFocuser;
begin
  Result := CreateComObject(CLASS_Focuser1) as IFocuser;
end;

class function CoFocuser1.CreateRemote(const MachineName: string): IFocuser;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Focuser1) as IFocuser;
end;

end.

