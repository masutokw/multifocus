unit filterlist;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, ValEdit, ComCtrls, ToolWin, StdCtrls, EnhEdits, inifiles, drivers;
   
type
   TFilterForm = class(TForm)
      GroupBox2: TGroupBox;
      GroupBox1: TGroupBox;
      StaticText1: TStaticText;
      LongEditSl1: TLongEdit;
      StaticText2: TStaticText;
      LongEditSl2: TLongEdit;
      StaticText3: TStaticText;
      LongEditSl3: TLongEdit;
      StaticText4: TStaticText;
      LongEditSl4: TLongEdit;
      StaticText5: TStaticText;
      LongEditSl5: TLongEdit;
      StaticText6: TStaticText;
      LongEditSl6: TLongEdit;
      StaticText11: TStaticText;
      StaticText7: TStaticText;
      LongEditSlMax: TLongEdit;
      StaticText8: TStaticText;
      StaticText9: TStaticText;
      LongEditslback: TLongEdit;
      StaticText10: TStaticText;
      LongEdit8: TLongEdit;
      LongEdit10: TLongEdit;
      FloatEditSlsize: TFloatEdit;
      GroupBox3: TGroupBox;
      StaticText12: TStaticText;
      LongEditS1: TLongEdit;
      StaticText13: TStaticText;
      LongEdits2: TLongEdit;
      StaticText14: TStaticText;
      LongEdits3: TLongEdit;
      StaticText15: TStaticText;
      LongEditS4: TLongEdit;
      StaticText16: TStaticText;
      LongEditS5: TLongEdit;
      StaticText17: TStaticText;
      LongEditS6: TLongEdit;
      StaticText18: TStaticText;
      StaticText19: TStaticText;
      LongEditsmax: TLongEdit;
      StaticText20: TStaticText;
      StaticText21: TStaticText;
      LongEditsback: TLongEdit;
      StaticText22: TStaticText;
      LongEdit13: TLongEdit;
      LongEdit14: TLongEdit;
      FloatEditSsize: TFloatEdit;
      GroupBox4: TGroupBox;
      StaticText23: TStaticText;
      PosLongEdit1: TLongEdit;
      StaticText24: TStaticText;
      PosLongEdit2: TLongEdit;
      StaticText25: TStaticText;
      PosLongEdit3: TLongEdit;
      StaticText26: TStaticText;
      PosLongEdit4: TLongEdit;
      StaticText27: TStaticText;
      PosLongEdit5: TLongEdit;
      StaticText28: TStaticText;
      PosLongEdit6: TLongEdit;
      StaticText30: TStaticText;
      LongEditfMax: TLongEdit;
      StaticText31: TStaticText;
      StaticText32: TStaticText;
      LongEditfback: TLongEdit;
      FloatEditfsize: TFloatEdit;
      Button5: TButton;
      StaticText29: TStaticText;
      PosLongEdit7: TLongEdit;
      StaticText33: TStaticText;
      PosLongEdit8: TLongEdit;
      OffLongEdit1: TLongEdit;
      OffLongEdit2: TLongEdit;
      OffLongEdit3: TLongEdit;
      OffLongEdit4: TLongEdit;
      OffLongEdit5: TLongEdit;
      OffLongEdit6: TLongEdit;
      OffLongEdit7: TLongEdit;
      OffLongEdit8: TLongEdit;
      FilterEdit1: TEdit;
      FilterEdit2: TEdit;
      FilterEdit3: TEdit;
      FilterEdit4: TEdit;
      FilterEdit5: TEdit;
      FilterEdit6: TEdit;
      FilterEdit7: TEdit;
      FilterEdit8: TEdit;
      StaticText34: TStaticText;
      FilterEdit9: TEdit;
      PosLongEdit9: TLongEdit;
      OffLongEdit9: TLongEdit;
      Label2: TLabel;
      ButtonreadIC: TButton;
      Button1: TButton;
      Button2: TButton;
      GroupBox5: TGroupBox;
      StaticText35: TStaticText;
      LongEdit1: TLongEdit;
      StaticText36: TStaticText;
      LongEdit2: TLongEdit;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
    Button7: TButton;
    Button9: TButton;
    Button8: TButton;
    LongEdit3: TLongEdit;
      procedure ReadSettings;
      procedure SaveSettings;
      procedure FormCreate(Sender: TObject);
      procedure Button3Click(Sender: TObject);
      procedure Button4Click(Sender: TObject);
      procedure ButtonreadICClick(Sender: TObject);
      procedure Button1Click(Sender: TObject);
      procedure Button2Click(Sender: TObject);
      procedure Button6Click(Sender: TObject);
      procedure Button7Click(Sender: TObject);
      procedure Button5Click(Sender: TObject);
      procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
      
   private
      { Private declarations }
   public
      { Public declarations }
   end;
      
var
   FilterForm: TFilterForm;
   
implementation

{$R *.dfm}

procedure TFilterForm.FormCreate(Sender: TObject);

VAR
   i, j: Integer;
begin
   FilterForm.ReadSettings;
end;
procedure TFilterForm.ReadSettings;
var inifile: TiniFile;
begin
   inifile := TINIFile.Create( ExtractFilePath(Application.EXEName) + 'multifocus.ini');
   with inifile do
   begin
      longeditSlMax.value := readinteger ('FocuserA', 'MaxStep', 10000);
      longeditSlback.value := readinteger ('FocuserA', 'Back', 0);
      floateditSlsize.value := readfloat ('FocuserA', 'Stepsize', 1);
      longeditSl1.value := readinteger ('FocuserA', 'Slot1', 0);
      longeditSl2.value := readinteger ('FocuserA', 'Slot2', 0);
      longeditSl3.value := readinteger ('FocuserA', 'Slot3', 0);
      longeditSl4.value := readinteger ('FocuserA', 'Slot4', 0);
      longeditSl5.value := readinteger ('FocuserA', 'Slot5', 0);
      longeditSl6.value := readinteger ('FocuserA', 'Slot6', 0);

      longeditSMax.value := readinteger ('FocuserB', 'MaxStep', 10000);
      longeditSback.value := readinteger ('FocuserB', 'Back', 0);
      floateditSsize.value := readfloat ('FocuserB', 'Stepsize', 1);
      longeditS1.value := readinteger ('FocuserB', 'Slot1', 0);
      longeditS2.value := readinteger ('FocuserB', 'Slot2', 0);
      longeditS3.value := readinteger ('FocuserB', 'Slot3', 0);
      longeditS4.value := readinteger ('FocuserB', 'Slot4', 0);
      longeditS5.value := readinteger ('FocuserB', 'Slot5', 0);
      longeditS6.value := readinteger ('FocuserB', 'Slot6', 0);

      longeditFMax.value := readinteger('Filter', 'MaxStep', 10000);
      longeditFback.value := readinteger('Filter', 'Back', 0 );
      floateditFsize.value := readfloat ('Filter', 'Stepsize', 1.0);

      FilterEdit1.Text := ReadString('Filter', 'Name1', 'Luminance');
      FilterEdit2.Text := ReadString('Filter', 'Name2', 'Red');
      FilterEdit3.Text := ReadString('Filter', 'Name3', 'Green');
      FilterEdit4.Text := ReadString('Filter', 'Name4', 'Blue');
      FilterEdit5.Text := ReadString('Filter', 'Name5', 'IR');
      FilterEdit6.Text := ReadString('Filter', 'Name6', 'IR cut');
      FilterEdit7.Text := ReadString('Filter', 'Name7', 'Ha');
      FilterEdit8.Text := ReadString('Filter', 'Name8', 'P');
      FilterEdit9.Text := ReadString('Filter', 'Name9', 'k');

      PosLongEdit1.Value := readinteger('Filter', 'Slot1', 0);
      PosLongEdit2.Value := readinteger('Filter', 'Slot2', 0);
      PosLongEdit3.Value := readinteger('Filter', 'Slot3', 0);
      PosLongEdit4.Value := readinteger('Filter', 'Slot4', 0);
      PosLongEdit5.Value := readinteger('Filter', 'Slot5', 0);
      PosLongEdit6.Value := readinteger('Filter', 'Slot6', 0);
      PosLongEdit7.Value := readinteger('Filter', 'Slot7', 0);
      PosLongEdit8.Value := readinteger('Filter', 'Slot8', 0);
      PosLongEdit9.Value := readinteger('Filter', 'Slot9', 0);

      OffLongEdit1.Value := readinteger('Filter', 'Off1', 0);
      OffLongEdit2.Value := readinteger('Filter', 'Off2', 0);
      OffLongEdit3.Value := readinteger('Filter', 'Off3', 0);
      OffLongEdit4.Value := readinteger('Filter', 'Off4', 0);
      OffLongEdit5.Value := readinteger('Filter', 'Off5', 0);
      OffLongEdit6.Value := readinteger('Filter', 'Off6', 0);
      OffLongEdit7.Value := readinteger('Filter', 'Off7', 0);
      OffLongEdit8.Value := readinteger('Filter', 'Off8', 0);
      OffLongEdit9.Value := readinteger('Filter', 'Off9', 0);
      LongEdit1.Value:=readinteger('Rotator', 'Maxsteps',1000);
   end;
   inifile.Free;
end;
procedure TFilterform.SaveSettings;
var inifile: TiniFile;
begin

   inifile := TINIFile.Create(ExtractFilePath(Application.EXEName) + 'multifocus.ini');
   with inifile do
   begin
      writeinteger ('FocuserA', 'MaxStep', longeditSlMax.value );
      writeinteger ('FocuserA', 'Back',    longeditSlback.value );
      writefloat   ('FocuserA', 'Stepsize',  floateditSlsize.value );
      writeinteger ('FocuserA', 'Slot1',   longeditSl1.value);
      writeinteger ('FocuserA', 'Slot2',   longeditSl2.value);
      writeinteger ('FocuserA', 'Slot3',   longeditSl3.value);
      writeinteger ('FocuserA', 'Slot4',   longeditSl4.value);
      writeinteger ('FocuserA', 'Slot5',   longeditSl5.value);
      writeinteger ('FocuserA', 'Slot6',   longeditSl6.value);

      writeinteger ('FocuserB', 'MaxStep', longeditSMax.value );
      writeinteger ('FocuserB', 'Back',    longeditSback.value );
      writefloat   ('FocuserB', 'Stepsize', floateditSsize.value );
      writeinteger ('FocuserB', 'Slot1',   longeditS1.value);
      writeinteger ('FocuserB', 'Slot2',   longeditS2.value);
      writeinteger ('FocuserB', 'Slot3',   longeditS3.value);
      writeinteger ('FocuserB', 'Slot4',   longeditS4.value);
      writeinteger ('FocuserB', 'Slot5',   longeditS5.value);
      writeinteger ('FocuserB', 'Slot6',   longeditS6.value);

      Writeinteger('Filter', 'MaxStep', longeditFMax.value);
      writeinteger ('Filter', 'Back', longeditFback.value );
      writefloat ('Filter', 'Stepsize', floateditFsize.value );

      WriteString('Filter', 'Name1', FilterEdit1.Text);
      WriteString('Filter', 'Name2', FilterEdit2.Text);
      WriteString('Filter', 'Name3', FilterEdit3.Text);
      WriteString('Filter', 'Name4', FilterEdit4.Text);
      WriteString('Filter', 'Name5', FilterEdit5.Text);
      WriteString('Filter', 'Name6', FilterEdit6.Text);
      WriteString('Filter', 'Name7', FilterEdit7.Text);
      WriteString('Filter', 'Name8', FilterEdit8.Text);
      WriteString('Filter', 'Name9', FilterEdit9.Text);



      writeinteger('Filter', 'Slot1', PosLongEdit1.Value);
      writeinteger('Filter', 'Slot2', PosLongEdit2.Value);
      writeinteger('Filter', 'Slot3', PosLongEdit3.Value);
      writeinteger('Filter', 'Slot4', PosLongEdit4.Value);
      writeinteger('Filter', 'Slot5', PosLongEdit5.Value);
      writeinteger('Filter', 'Slot6', PosLongEdit6.Value);
      writeinteger('Filter', 'Slot7', PosLongEdit7.Value);
      writeinteger('Filter', 'Slot8', PosLongEdit8.Value);
      writeinteger('Filter', 'Slot9', PosLongEdit9.Value);

      writeinteger('Filter', 'Off1', OffLongEdit1.Value);
      writeinteger('Filter', 'Off2', OffLongEdit2.Value);
      writeinteger('Filter', 'Off3', OffLongEdit3.Value);
      writeinteger('Filter', 'Off4', OffLongEdit4.Value);
      writeinteger('Filter', 'Off5', OffLongEdit5.Value);
      writeinteger('Filter', 'Off6', OffLongEdit6.Value);
      writeinteger('Filter', 'Off7', OffLongEdit7.Value);
      writeinteger('Filter', 'Off8', OffLongEdit8.Value);
      writeinteger('Filter', 'Off9', OffLongEdit9.Value);
      writeinteger('Rotator', 'Maxsteps',LongEdit1.Value);
      writestring('Serial','Port',rotator.comport.Port);

   end;
   inifile.Free;
end;
procedure TFilterForm.Button3Click(Sender: TObject);
begin
   ReadSettings;
end;

procedure TFilterForm.Button4Click(Sender: TObject);
begin
   saveSettings;
end;



procedure TFilterForm.ButtonreadICClick(Sender: TObject);
begin
   FocuserA.send('R#');
end;

procedure TFilterForm.Button1Click(Sender: TObject);
begin
   FocuserB.send('R#')
end;

procedure TFilterForm.Button2Click(Sender: TObject);
begin
Filterw.send('FI1#');
Filterw.send('FI2#');
Filterw.send('FI3#');
Filterw.send('FI4#');
Filterw.send('FI5#');
Filterw.send('FI6#');
Filterw.send('FI7#');
Filterw.send('FI8#');
Filterw.send('FI9#');
Filterw.send('R#');

end;

procedure TFilterForm.Button6Click(Sender: TObject);
begin
FocuserA.send('N'+longeditSlMax.AsString+'p#');
FocuserA.send('N'+longeditSlBack.AsString+'B#');
FocuserA.send('N'+longeditSl1.AsString+'I0#');
FocuserA.send('N'+longeditSl2.AsString+'I1#');
FocuserA.send('N'+longeditSl3.AsString+'I2#');
FocuserA.send('N'+longeditSl4.AsString+'I3#');
FocuserA.send('N'+longeditSl5.AsString+'I4#');
FocuserA.send('N'+longeditSl6.AsString+'I5#');
 FocuserA.send('N'+longedit10.AsString+'R#');
FocuserA.send('G#');
end;

procedure TFilterForm.Button7Click(Sender: TObject);
begin
FocuserB.send('N'+longeditSMax.AsString+'p#');
FocuserB.send('N'+longeditSBack.AsString+'B#');
FocuserB.send('N'+longeditS1.AsString+'I0#');
FocuserB.send('N'+longeditS2.AsString+'I1#');
FocuserB.send('N'+longeditS3.AsString+'I2#');
FocuserB.send('N'+longeditS4.AsString+'I3#');
FocuserB.send('N'+longeditS5.AsString+'I4#');
FocuserB.send('N'+longeditS6.AsString+'I5#');
FocuserB.send('N'+longedit14.AsString+'R#');
FocuserB.send('G#');
end;

procedure TFilterForm.Button8Click(Sender: TObject);
begin
  FocuserB.send('G#');
end;

procedure TFilterForm.Button5Click(Sender: TObject);
begin
Filterw.send('N'+longeditfMax.AsString+'p#');
Filterw.send('N'+longeditfBack.AsString+'B#');
Filterw.send('N'+Poslongedit1.AsString+'I0#');
Filterw.send('N'+Poslongedit2.AsString+'I1#');
Filterw.send('N'+Poslongedit3.AsString+'I2#');
Filterw.send('N'+Poslongedit4.AsString+'I3#');
Filterw.send('N'+Poslongedit5.AsString+'I4#');
Filterw.send('N'+Poslongedit6.AsString+'I5#');
Filterw.send('N'+Poslongedit7.AsString+'I6#');
Filterw.send('N'+Poslongedit8.AsString+'I7#');
Filterw.send('N'+Poslongedit9.AsString+'I8#');
FilterW.send('N'+longedit3.AsString+'R#');
FilterW.send('N'+OffLongEdit1.asstring+'OI0,'+filterEdit1.Text+'#');
FilterW.send('N'+OffLongEdit2.asstring+'OI1,'+filterEdit2.Text+'#');
FilterW.send('N'+OffLongEdit3.asstring+'OI2,'+filterEdit3.Text+'#');
FilterW.send('N'+OffLongEdit4.asstring+'OI3,'+filterEdit4.Text+'#');
FilterW.send('N'+OffLongEdit5.asstring+'OI4,'+filterEdit5.Text+'#');
FilterW.send('N'+OffLongEdit6.asstring+'OI5,'+filterEdit6.Text+'#');
FilterW.send('N'+OffLongEdit7.asstring+'OI6,'+filterEdit7.Text+'#');
FilterW.send('N'+OffLongEdit8.asstring+'OI7,'+filterEdit8.Text+'#');
FilterW.send('N'+OffLongEdit9.asstring+'OI8,'+filterEdit9.Text+'#');
FilterW.send('G#');
end;



procedure TFilterForm.Button9Click(Sender: TObject);
begin
         Rotator.maxstep:= longedit1.Value  ;
         Rotator.send('N'+longeditSMax.AsString+'p#');
         Rotator.step_size := 360.0/rotator.maxstep;
         Rotator.send('N'+longedit2.AsString+'R#');
         Rotator.send('G#');
end;

end.
