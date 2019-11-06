unit MultiFocus;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Spin, StdCtrls, EnhEdits, Buttons, CPort, CPortCtl, ComCtrls, ComObj,
  // sUpDown, sButton, ExtCtrls, sPanel, sTrackBar,
   filterlist, drivers, activex,logs,inifiles,
  Vcl.ExtCtrls;
   
type
   TMFocusForm = class(TForm)
      FocuserGroupBox: TGroupBox;
      FocusLongEdit1: TLongEdit;
      SpinButton1: TSpinButton;
      In_Button1: TButton;
      Out_Button1: TButton;
      TargetLongEdit1: TLongEdit;
      SyncButton1: TButton;
      MoveButton1: TButton;
      ComPort1: TComPort;
      GroupBox1: TGroupBox;
      counterLongEdit2: TLongEdit;
      SpinButton2: TSpinButton;
      InButton2: TButton;
      outtButton2: TButton;
      SyncButton2: TButton;
      MoveButton2: TButton;
      GroupBox2: TGroupBox;
      SpinButton3: TSpinButton;
      CCButton: TButton;
      CCWButton: TButton;
      SyncButton3: TButton;
      MoveButton3: TButton;
      CounterFloatEdit: TFloatEdit;
      reverseCheckBox: TCheckBox;
      TargetFloatEdit: TFloatEdit;
      GroupBox5: TGroupBox;
      ComDataPacket1: TComDataPacket;
      FButton1: TButton;
      fButton2: TButton;
      FButton4: TButton;
      FButton3: TButton;
      FButton6: TButton;
      FButton5: TButton;
      RButton1: TButton;
      RButton2: TButton;
      RButton3: TButton;
      RButton4: TButton;
      RButton5: TButton;
      RButton6: TButton;
      GroupBox6: TGroupBox;
      Label1: TLabel;
      TrackBar1: TTrackBar;
      GroupBox7: TGroupBox;
      CheckBox2: TCheckBox;
      Button1: TButton;
      Button12: TButton;
      Button11: TButton;
      ComLed1: TComLed;
      ComComboBox1: TComComboBox;
      Image1: TImage;
      WButton1: TButton;
      WButton2: TButton;
      WButton3: TButton;
      WButton4: TButton;
      WButton5: TButton;
      WButton6: TButton;
      WButton7: TButton;
      WButton8: TButton;
      WButton9: TButton;
      Image2: TImage;
      targetLongEdit2: TLongEdit;
      RButton7: TButton;
      RButton8: TButton;
      Button1f: TButton;
      Button2f: TButton;
      Button3f: TButton;
      Button4f: TButton;
      Button5f: TButton;
      Button6f: TButton;
      Label2: TLabel;
      Button2: TButton;
      ComDataPacket2: TComDataPacket;
    ComDataPacket3: TComDataPacket;
    Timer1: TTimer;
    CheckBox1: TCheckBox;
      procedure SpinButton1UpClick(Sender: TObject);
      procedure SpinButton1DownClick(Sender: TObject);
      procedure Button11Click(Sender: TObject);
      procedure Button12Click(Sender: TObject);
      procedure writecominter(device, str: string);
      procedure In_Button1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
      procedure Button1Click(Sender: TObject);
      procedure InButton2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
      procedure Button14Click(Sender: TObject);
      procedure In_Button1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
      procedure FormCreate(Sender: TObject);
      procedure ComDataPacket1Packet(Sender: TObject; const Str: String);
      procedure InButton2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
      procedure CCButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
      procedure CCButtonMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
      procedure WButton1Click(Sender: TObject);
      procedure FButton1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
      procedure FButton1Click(Sender: TObject);
      
      procedure Button1fContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
      procedure Button1fClick(Sender: TObject);
      procedure Button2Click(Sender: TObject);
      procedure CheckBox1Click(Sender: TObject);

      procedure ComDataPacket2Packet(Sender: TObject; const Str: String);
    procedure Button4Click(Sender: TObject);
    procedure ComDataPacket3Packet(Sender: TObject; const Str: String);
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;
      
var
   MFocusForm: TMFocusForm;
   

implementation
//{$R windowsxp.res}
{$R *.dfm}

procedure TMFocusForm.SpinButton1UpClick(Sender: TObject);
begin
   case  TSpinButton(sender).Tag of
      1:  Targetlongedit1.Value := targetlongedit1.Value + 1 ;
      2:   Targetlongedit2.Value := targetlongedit2.Value + 1 ;
   end;
end;

procedure TMFocusForm.Timer1Timer(Sender: TObject);
begin
if comport1.Connected then
begin
  comport1.WriteStr('D1P#');
   comport1.WriteStr('D2P#');
   comport1.WriteStr('D3P#');
   comport1.WriteStr('D4P#');
  // comport1.WriteStr('D1T#');
end;
end;

procedure TMFocusForm.SpinButton1DownClick(Sender: TObject);
begin
   case  TSpinButton(sender).Tag of
      1:  Targetlongedit1.Value := targetlongedit1.Value - 1 ;
      2:   Targetlongedit2.Value := targetlongedit2.Value - 1 ;
   end;
end;

procedure TMFocusForm.Button11Click(Sender: TObject);
begin
comport1.Port:=comcombobox1.Text;
comport1.Connected := not comport1.Connected;
 timer1.Enabled:=comport1.Connected;
end;

procedure TMFocusForm.Button12Click(Sender: TObject);
begin
   comport1.SetDTR(true); sleep(50); comport1.SetDTR(false);
end;
procedure TMFocusForm.writecominter(device, str: string) ;
var n: integer;
begin
   str := device + str;
 { for n := 1 to length(str) do
   begin
      comport1.TransmitChar(str[n]);
      sleep(5);
   end;        }
    comport1.WriteStr(str);
end;
procedure TMFocusForm.In_Button1MouseDown(Sender: TObject;
Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var tag: integer;
begin
   tag := TButton(sender).Tag;
   case Tag   of

      1: focuserA.move(0);
      2: focuserA.move(focusera.maxstep);
      3: focuserA.move(targetlongedit1.Value);
      4: focuserA.sync(targetlongedit1.Value);
      5, 6, 7, 8, 9, 10: focuserA.move(focuserA.slot[Tag - 4] );
   end;
end;

procedure TMFocusForm.Button1Click(Sender: TObject);
begin
   filterform.Show ;

end;



procedure TMFocusForm.InButton2MouseDown(Sender: TObject;
Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var tag: integer;
begin
   tag := TButton(sender).Tag;
   case Tag   of

      1: focuserB.move(0);
      2: focuserB.move(focusera.maxstep);
      3: focuserB.move(targetlongedit2.Value);
      4: focuserB.sync(targetlongedit2.Value);
      5, 6, 7, 8, 9, 10: focuserB.move(focuserB.slot[Tag - 4] );
   end;
end;

procedure TMFocusForm.Button14Click(Sender: TObject);
begin
   writecominter('D2', 'P#');
end;

procedure TMFocusForm.In_Button1MouseUp(Sender: TObject;
Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   case     TButton(sender).Tag   of

      1, 2: focuserA.halt;

   end;
   writecominter('D1', 'P#');
end;

procedure TMFocusForm.FormCreate(Sender: TObject);

var v: double;
   i, h: integer;
  inifile: TiniFile;
begin
     inifile := TINIFile.Create(ExtractFilePath(Application.EXEName)+'multifocus.ini');
     with inifile do
   begin
     comcombobox1.Text:= readstring ('Serial','Port', 'COM1');
   end;
   SetWindowPos(handle, HWND_TOPMOST, Left, Top, Width, Height, 0);
   filepath := ExtractFilePath(Application.EXEName) ;
   focuserA := TFocus.create('1');
   focuserA.comport := comport1;
   focuserB := TFocus.create('2');
   focuserB.comport := comport1;
   filterw := Tfilter.create('3');
   filterw.comport := comport1;
   rotator := Trotator.create('4');
   rotator.comport := comport1;
   comport1.Port:=comcombobox1.Text;
   comport1.Connected := not comport1.Connected;
   timer1.Enabled:=comport1.Connected ;

   comport1.Connected := true;
   for  i := 1 to 6 do
   begin
      safeArraygetElement(filterw.SafeArray, i, h);
      label2.Caption := label2.Caption + ' ' + inttostr(h);

   end;
   checkbox1.checked:=comport1.Connected;
end;


procedure TMFocusForm.ComDataPacket1Packet(Sender: TObject; const Str: String);
var input: string;
   position: double;
   post: integer;
   device: integer;
   status:boolean;
begin
   input := str;
   status:= (input[2]='t');
   device := ord(input[3]) - 48;
   input := stringreplace(input, '#', '', [rfReplaceAll, rfIgnoreCase]);
   input := copy(input, 5, length(input));
   if  TryStrTofloat(input, position)then
   begin
      post := trunc(position);
      case device of
      1: begin focuslongedit1.value := post; focuserA.position := post;focuserA.moving:=status end;
      2: begin counterlongedit2.value := post; focuserB.position :=post; focuserB.moving:=status; end;
      3: begin filterw.moving:=status;end;
      4: begin counterfloatedit.value := post * rotator.step_size; rotator.angle := post * rotator.step_size;rotator.moving:=status; end;
      end;
   end;
end;

procedure TMFocusForm.InButton2MouseUp(Sender: TObject;
Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   case     TButton(sender).Tag   of

      1: writecominter('D2', 'Q#');
      2: writecominter('D2', 'Q#');


   end;
   writecominter('D2', 'P#');
end;

procedure TMFocusForm.CCButtonMouseDown(Sender: TObject;
Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var tag: integer;
begin
   tag := TButton(sender).Tag;
   case   tag   of

      1:  rotator.move_absolute(0.0);
      2:  rotator.move_absolute(359.9);
      3:  rotator.move_absolute(targetfloatEdit.value);
      4:  rotator.sync(targetfloatEdit.value);
      5, 6, 7, 8, 9, 10, 11, 12: rotator.move_absolute(rotator.slot[Tag - 4] );
   end;
end;

procedure TMFocusForm.CCButtonMouseUp(Sender: TObject;
Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

begin
   case     TButton(sender).Tag   of

      1, 2: rotator.halt



   end;

end;

procedure TMFocusForm.WButton1Click(Sender: TObject);
var tag: integer;
begin
   tag := TButton(sender).Tag;
   Filterw.goto_slot( tag );
   label2.Caption := filterw.Slotnames[tag];
end;

procedure TMFocusForm.FButton1ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
var tag, value: integer;
begin
   tag := tbutton(sender).tag;
   value := focuslongedit1.value;
   TButton (sender).Hint := inttostr(value);
   case tag of
      5: filterform.LongEditSl1.Value := value;
      6: filterform.LongEditSl2.Value := value;
      7: filterform.LongEditSl3.Value := value;
      8: filterform.LongEditSl4.Value := value;
      9: filterform.LongEditSl5.Value := value;
      10: filterform.LongEditSl6.Value := value;
   end;
   focuserA.set_slot(tag - 4, value);
   focuserA.send('N' + inttostr(value) + 'I' + inttostr(tag - 5) + '#');
   showmessage('Setting changed');
end;

procedure TMFocusForm.FButton1Click(Sender: TObject);
var tag: integer;
begin
   tag := tbutton(sender).tag;
     targetlongedit1.Value:= focuserA.slot[Tag - 4];
   case tag of
      5, 6, 7, 8, 9, 10: focuserA.move(focuserA.slot[Tag - 4] );
   end;
end;

procedure TMFocusForm.Button1fContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
var tag, value: integer;
begin
   tag := tbutton(sender).tag;
   value := counterlongedit2.value;
   TButton (sender).Hint := inttostr(value);
   case tag of
      5: filterform.LongEditS1.Value := value;
      6: filterform.LongEditS2.Value := value;
      7: filterform.LongEditS3.Value := value;
      8: filterform.LongEditS4.Value := value;
      9: filterform.LongEditS5.Value := value;
      10: filterform.LongEditS6.Value := value;
   end;
   focuserB.set_slot(tag - 4, value);

   showmessage('Setting changed');
end;

procedure TMFocusForm.Button1fClick(Sender: TObject);

var tag: integer;
begin
   tag := tbutton(sender).tag;
   case tag of
      5, 6, 7, 8, 9, 10: focuserB.move(focuserB.slot[Tag - 4] );
   end;
end;


procedure TMFocusForm.Button2Click(Sender: TObject);
begin
   //writecominter('D2','N2345I2#');
   writecominter('D3', 'FI1#');
   writecominter('D3', 'FI2#');
   writecominter('D3', 'FI3#');
   writecominter('D3', 'FI4#');
   writecominter('D3', 'FI5#');
   writecominter('D3', 'FI6#');
   writecominter('D3', 'FI7#');
   writecominter('D3', 'FI8#');
   writecominter('D3', 'FI9#');
end;



procedure TMFocusForm.CheckBox1Click(Sender: TObject);
begin
   timer1.Enabled := checkbox1.Checked;
end;

procedure TMFocusForm.CheckBox2Click(Sender: TObject);
begin
 if checkbox2.Checked  then formlog.show else formlog.Hide;
end;



procedure TMFocusForm.ComDataPacket2Packet(Sender: TObject;
const Str: String);
var List: Tstrings;
   n, s, dev: integer;
begin
   List := TStringList.Create;
   try
      N := ExtractStrings([','], [], PChar(str), List);


   finally
      //for s:=0 to n-1 do filterform.memotest.lines.Add(list[s]) ;
      dev := strtoint(list[0]);
      with filterform do     begin
         if dev = 1 then begin

            longEditSlMax.value := strtoint(list[1]);
            longEditSlback.value := strtoint(list[3]);
            longEditSl1.value := strtoint(list[4]);
            longEditSl2.value := strtoint(list[5]);
            longEditSl3.value := strtoint(list[6]);
            longEditSl4.value := strtoint(list[7]);
            longEditSl5.value := strtoint(list[8]);
            longEditSl6.value := strtoint(list[9]);
         end;
         if dev = 2 then begin

            longEditSMax.value := strtoint(list[1]);
            longEditSback.value := strtoint(list[3]);
            longEditS1.value := strtoint(list[4]);
            longEditS2.value := strtoint(list[5]);
            longEditS3.value := strtoint(list[6]);
            longEditS4.value := strtoint(list[7]);
            longEditS5.value := strtoint(list[8]);
            longEditS6.value := strtoint(list[9]);
         end;
            if dev = 3 then begin

            longEditFMax.value := strtoint(list[1]);
            longEditFback.value := strtoint(list[3]);
            PoslongEdit1.value := strtoint(list[4]);
            PoslongEdit2.value := strtoint(list[5]);
            PoslongEdit3.value := strtoint(list[6]);
            PoslongEdit4.value := strtoint(list[7]);
            PoslongEdit5.value := strtoint(list[8]);
            PoslongEdit6.value := strtoint(list[9]);
         end;
      end;

      List.Free;
   end;
end;

procedure TMFocusForm.Button4Click(Sender: TObject);
begin
 writecominter('D3', 'N2OI2,Luminance#');
end;

procedure TMFocusForm.ComDataPacket3Packet(Sender: TObject;
  const Str: String);
var List: Tstrings;
   n, s, index: integer;
begin
   List := TStringList.Create;
   try
      N := ExtractStrings([','], [], PChar(str), List);


   finally
      //for s:=0 to n-1 do filterform.memotest.lines.Add(list[s]) ;
      index := strtoint(list[0]);
      with filterform do     begin
         case index of
            1:begin filterEdit1.Text:=list[1];OffLongEdit1.value:=strtoint (list[2]); end;
            2:begin filterEdit2.Text:=list[1];OffLongEdit2.value:=strtoint (list[2]); end;
            3:begin filterEdit3.Text:=list[1];OffLongEdit3.value:=strtoint (list[2]); end;
            4:begin filterEdit4.Text:=list[1];OffLongEdit4.value:=strtoint (list[2]); end;
            5:begin filterEdit5.Text:=list[1];OffLongEdit5.value:=strtoint (list[2]); end;
            6:begin filterEdit6.Text:=list[1];OffLongEdit6.value:=strtoint (list[2]); end;
            7:begin filterEdit7.Text:=list[1];OffLongEdit7.value:=strtoint (list[2]); end;
            8:begin filterEdit8.Text:=list[1];OffLongEdit8.value:=strtoint (list[2]); end;
            9:begin filterEdit9.Text:=list[1];OffLongEdit9.value:=strtoint (list[2]); end;

         end;


      end;

      List.Free;
   end;
  end;
end.
