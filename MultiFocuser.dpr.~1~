program MultiFocuser;

uses
  Forms,
  MultiFocus in 'MultiFocus.pas' {MFocusForm},
  MultiFocuser_TLB in 'MultiFocuser_TLB.pas',
  mainfocusi in 'mainfocusi.pas',
  auxfocusi in 'auxfocusi.pas',
  rotatori in 'rotatori.pas',
  FilterWheeli in 'FilterWheeli.pas',
  filterlist in 'filterlist.pas' {FilterForm},
  drivers in 'drivers.pas';

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMFocusForm, MFocusForm);
  Application.CreateForm(TFilterForm, FilterForm);
  Application.Run;
end.
