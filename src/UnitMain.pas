unit UnitMain;

{$mode objfpc}{$H+}
{$MACRO ON}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus,
  Messages, ComCtrls, ExtCtrls, Buttons, UnitOutputMonitor, UnitTranspose, UnitReplace;

type

  { TFormMain }

  TFormMain = class(TForm)
    CheckBoxEffect: TCheckBox;
    EditInsName: TEdit;
    EditLength: TEdit;
    EditLoopEnd: TEdit;
    EditLoopStart: TEdit;
    EditSongName: TEdit;
    GroupBoxAbout: TGroupBox;
    GroupBoxDownsampling: TGroupBox;
    GroupBoxMemoryUse: TGroupBox;
    GroupBoxResampling: TGroupBox;
    GroupBoxSampleEnvelope: TGroupBox;
    GroupBoxSampleInfo: TGroupBox;
    GroupBoxSampleLength: TGroupBox;
    GroupBoxSampleList: TGroupBox;
    GroupBoxSampleLoop: TGroupBox;
    GroupBoxSampleMisc: TGroupBox;
    GroupBoxSongList: TGroupBox;
    GroupBoxWaveEnvPreview: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    LabelAR: TLabel;
    LabelBRRInfo: TLabel;
    LabelDR: TLabel;
    LabelLoopEnd: TLabel;
    LabelLoopStart: TLabel;
    LabelSize: TLabel;
    LabelSL: TLabel;
    LabelSR: TLabel;
    LabelVolume: TLabel;
    LabelWavInfo: TLabel;
    ListBoxIns: TListBox;
    ListBoxSong: TListBox;
    MainMenu: TMainMenu;
    MAutostep: TMenuItem;
    MCleanupInstruments: TMenuItem;
    MExportSPC: TMenuItem;
    MExtractSourceWave: TMenuItem;
    MFile: TMenuItem;
    MImportFamiTracker: TMenuItem;
    MImportMidi: TMenuItem;
    MImportSPCBank: TMenuItem;
    MImportXM: TMenuItem;
    MImportXMSong: TMenuItem;
    MImportXMSoundEffects: TMenuItem;
    MInstrumentAutoNumber: TMenuItem;
    MInstrumentReplace: TMenuItem;
    MInstruments: TMenuItem;
    MNew: TMenuItem;
    MOctave: TMenuItem;
    MOctave1: TMenuItem;
    MOctave2: TMenuItem;
    MOctave3: TMenuItem;
    MOctave4: TMenuItem;
    MOctave5: TMenuItem;
    MOctave6: TMenuItem;
    MOctave7: TMenuItem;
    MOctave8: TMenuItem;
    MOpen: TMenuItem;
    MOutputMonitor: TMenuItem;
    MSave: TMenuItem;
    MExportAndSave: TMenuItem;
    MExport: TMenuItem;
    MExit: TMenuItem;
    MSong: TMenuItem;
    MSongCleanUp: TMenuItem;
    MSongClear: TMenuItem;
    MSongPlayCur: TMenuItem;
    MSongPlayStart: TMenuItem;
    MSongScaleVolume: TMenuItem;
    MSongStop: TMenuItem;
    MTransposeDialog: TMenuItem;
    N1: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    OpenDialogImportFTM: TOpenDialog;
    OpenDialogImportMidi: TOpenDialog;
    OpenDialogImportSPCBank: TOpenDialog;
    OpenDialogImportXM: TOpenDialog;
    OpenDialogInstrument: TOpenDialog;
    OpenDialogModule: TOpenDialog;
    OpenDialogWave: TOpenDialog;
    PageControlMode: TPageControl;
    PaintBoxADSR: TPaintBox;
    PaintBoxMemoryUse: TPaintBox;
    PaintBoxSong: TPaintBox;

    SaveDialogExportSPC: TSaveDialog;
    SaveDialogExportWav: TSaveDialog;
    SaveDialogInstrument: TSaveDialog;
    SaveDialogModule: TSaveDialog;
    SpeedButtonDownsample1: TSpeedButton;
    SpeedButtonDownsample2: TSpeedButton;
    SpeedButtonDownsample4: TSpeedButton;
    SpeedButtonEQReset: TSpeedButton;
    SpeedButtonImportWav: TSpeedButton;
    SpeedButtonInsDelete: TSpeedButton;
    SpeedButtonInsLoad: TSpeedButton;
    SpeedButtonInsMoveDown: TSpeedButton;
    SpeedButtonInsMoveUp: TSpeedButton;
    SpeedButtonInsSave: TSpeedButton;
    SpeedButtonLengthToMax: TSpeedButton;
    SpeedButtonLoop: TSpeedButton;
    SpeedButtonLoopEndDec: TSpeedButton;
    SpeedButtonLoopEndInc: TSpeedButton;
    SpeedButtonLoopRamp: TSpeedButton;
    SpeedButtonLoopStartDec: TSpeedButton;
    SpeedButtonLoopStartInc: TSpeedButton;
    SpeedButtonLoopToBegin: TSpeedButton;
    SpeedButtonLoopToEnd: TSpeedButton;
    SpeedButtonLoopUnroll: TSpeedButton;
    SpeedButtonLoopWav: TSpeedButton;
    SpeedButtonResampleBand: TSpeedButton;
    SpeedButtonResampleCubic: TSpeedButton;
    SpeedButtonResampleLinear: TSpeedButton;
    SpeedButtonResampleNearest: TSpeedButton;
    SpeedButtonResampleSine: TSpeedButton;
    SpeedButtonSampleLengthDec: TSpeedButton;
    SpeedButtonSampleLengthInc: TSpeedButton;
    SpeedButtonSongDown: TSpeedButton;
    SpeedButtonSongUp: TSpeedButton;
    StaticTextEQHigh: TStaticText;
    StaticTextEQLow: TStaticText;
    StaticTextEQMid: TStaticText;
    TabSheetInfo: TTabSheet;
    TabSheetInstruments: TTabSheet;
    TabSheetSong: TTabSheet;
    TabSheetSongList: TTabSheet;
    TimerOutputMonitor: TTimer;
    TimerScrollDelay: TTimer;
    TrackBarAR: TTrackBar;
    TrackBarDR: TTrackBar;
    TrackBarSL: TTrackBar;
    TrackBarSR: TTrackBar;
    TrackBarVolume: TTrackBar;
    PatternGetTopRow2x: TFormMain;
    //ButtonImportClick:

    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);


    procedure MNewClick(Sender: TObject);
    procedure MOpenClick(Sender: TObject);
    procedure MSaveClick(Sender: TObject);
    procedure MExportAndSaveClick(Sender: TObject);
    procedure MExportClick(Sender: TObject);
    procedure MExitClick(Sender: TObject);


    procedure PaintBoxSongClick(Sender: TObject);
    procedure PaintBoxSongDblClick(Sender: TObject);
    procedure PaintBoxSongMouseUp(Sender: TObject);
    procedure PaintBoxSongMouseMove(Sender: TObject);
    procedure PaintBoxSongMouseDown(Sender: TObject);
    procedure PaintBoxSongPaint(Sender: TObject);

    procedure TabSheetSongListEnter(Sender: TObject);
    procedure SpeedButtonSongUpClick(Sender: TObject);
    procedure SpeedButtonSongDownClick(Sender: TObject);
    procedure EditSongNameChange(Sender: TObject);
    procedure EditSongNameKeyPress(Sender: TObject);
    procedure ListBoxSongClick(Sender: TObject);
    procedure ListBoxSongDblClick(Sender: TObject);
    procedure ListBoxSongDrawItem(Sender: TObject);
    procedure CheckBoxEffectClick(Sender: TObject);
    procedure SpeedButtonImportWavClick(Sender: TObject);
    procedure SpeedButtonInsMoveUpClick(Sender: TObject);
    procedure SpeedButtonInsMoveDownClick(Sender: TObject);
    procedure SpeedButtonInsDeleteClick(Sender: TObject);
    procedure SpeedButtonInsLoadClick(Sender: TObject);
    procedure SpeedButtonInsSaveClick(Sender: TObject);
    procedure TrackBarARChange(Sender: TObject);
    procedure TrackBarDRChange(Sender: TObject);
    procedure TrackBarSLChange(Sender: TObject);
    procedure TrackBarSRChange(Sender: TObject);
    procedure EditInsNameChange(Sender: TObject);
    procedure EditInsNameKeyPress(Sender: TObject);
    procedure ListBoxInsDblClick(Sender: TObject);
    procedure ListBoxInsDrawItem(Sender: TObject);
    procedure ListBoxInsMouseDown(Sender: TObject);
    procedure SpeedButtonLengthToMaxClick(Sender: TObject);
    procedure SpeedButtonSampleLengthIncMouseDown(Sender: TObject);
    procedure SpeedButtonSampleLengthDecMouseDown(Sender: TObject);
    procedure EditLengthChange(Sender: TObject);
    procedure EditLengthKeyPress(Sender: TObject);
    procedure SpeedButtonDownsample1Click(Sender: TObject);


    procedure SpeedButtonResampleNearestClick(Sender: TObject);


    procedure SpeedButtonEQResetClick(Sender: TObject);
    procedure TrackBarVolumeChange(Sender: TObject);

    procedure StaticTextEQLowMouseDown(Sender: TObject);
    procedure StaticTextEQLowMouseMove(Sender: TObject);

    procedure SpeedButtonLoopClick(Sender: TObject);
    procedure SpeedButtonLoopToBeginClick(Sender: TObject);
    procedure SpeedButtonLoopToEndClick(Sender: TObject);
    procedure SpeedButtonLoopWavClick(Sender: TObject);
    procedure SpeedButtonLoopRampClick(Sender: TObject);
    procedure SpeedButtonLoopStartIncMouseDown(Sender: TObject);
    procedure SpeedButtonLoopStartDecMouseDown(Sender: TObject);
    procedure SpeedButtonLoopEndIncMouseDown(Sender: TObject);
    procedure SpeedButtonLoopEndDecMouseDown(Sender: TObject);
    procedure SpeedButtonLoopUnrollClick(Sender: TObject);
    procedure EditLoopStartChange(Sender: TObject);

    procedure EditLoopEndChange(Sender: TObject);

    procedure PaintBoxADSRPaint(Sender: TObject);
    procedure TabSheetInfoShow(Sender: TObject);
    procedure PaintBoxMemoryUsePaint(Sender: TObject);

    procedure MSongClearClick(Sender: TObject);
    procedure MSongCleanUpClick(Sender: TObject);
    procedure MTransposeDialogClick(Sender: TObject);
    procedure MSongScaleVolumeClick(Sender: TObject);
    procedure MImportXMSongClick(Sender: TObject);
    procedure MImportXMSoundEffectsClick(Sender: TObject);
    procedure MImportMidiClick(Sender: TObject);
    procedure MImportFamiTrackerClick(Sender: TObject);
    procedure MExportSPCClick(Sender: TObject);
    procedure MImportSPCBankClick(Sender: TObject);
    procedure MCleanupInstrumentsClick(Sender: TObject);
    procedure MExtractSourceWaveClick(Sender: TObject);
    procedure MInstrumentReplaceClick(Sender: TObject);
    procedure MSongPlayStartClick(Sender: TObject);
    procedure MSongPlayCurClick(Sender: TObject);
    procedure MSongStopClick(Sender: TObject);
    procedure MOctave1Click(Sender: TObject);

    procedure MAutostepClick(Sender: TObject);
    procedure MOutputMonitorClick(Sender: TObject);
    procedure TimerScrollDelayTimer(Sender: TObject);
    procedure TimerOutputMonitorTimer(Sender: TObject);
    procedure PageControlModeEnter(Sender: TObject);

  private

  public

  end;

  instrumentStruct = record
    source: ^Int8;
    source_length: Int32;
	source_rate: Int32;
    source_volume: Int32;

    env_ar: Int32;
    env_dr: Int32;
    env_sl: Int32;
    env_sr: Int32;

    length: Int32;

    loop_start: Int32;
    loop_end: Int32;
    loop_enable: Boolean;
    loop_unroll: Boolean;

    wav_loop_start: Int32;
    wav_loop_end: Int32;

    resample_type: Int32;
    downsample_factor: Int32;
  end;

var
	FormMain: TFormMain;

	BRRTemp: ^UInt8;
	BRRTempAllocSize: Int32;
	BRRTempSize: Int32;
	BRRTempLoop: Int32;

	CompressSrcPtr: Int32;
	CompressSeqPtr: Int32;
	CompressOutPtr: Int32;

  // to do, songstructs and undostructs

	SongCur: Int32;
	RowCur: Int32;
	RowView: Int32;
	ColCur: Int32;
	ColCurPrev: Int32;
	OctaveCur: Int32;

	TextFontHeight: Int32;
	TextFontWidth: Int32;

	PageStep: Int32;
	AutoStep: Int32;

	ResetNumber: Boolean;

	SelectionColS: Int32;
	SelectionRowS: Int32;
	SelectionColE: Int32;
	SelectionRowE: Int32;
	SelectionWidth: Int32;
	SelectionHeight: Int32;

	CopyBufferWidth: Int32;
	CopyBufferHeight: Int32;

	ShiftKeyIsDown: Boolean;

	SPCInstrumentsSize: Int32;
	SPCMusicSize: Int32;
	SPCEffectsSize: Int32;
	SPCMemTopAddr: Int32;
	SPCMusicLargestSize: Int32;

	InstrumentsCount: Int32;

	UpdateSampleData: Boolean;

	PrevMouseY: Int32;

	SongDoubleClick: Boolean;

	SPCTemp: array [0..66047] of UInt8;
	SPCTempPlay: array [0..66047] of UInt8;
	SPCMem: array [0..65535] of UInt8;

	SPCChnMem: array [0..65535] of UInt8;
	SPCChnPack: array [0..65535] of UInt8;

	CompressSeqBuf: array [0..255] of UInt8;

	ChannelMute: array [0..7] of Boolean;
const
	 VERSION_STR = 'SNESGSS-DX';
	 CONFIG_NAME = 'snesgss.cfg';
	 PROJECT_SIGNATURE = '[SNESGSS Module]';
	 INSTRUMENT_SIGNATURE = '[SNESGSS Instrument]';
	 EX_VOL_SIGNATURE = '[EX VOL]';
	 UPDATE_RATE_HZ = 160;

     MAX_INSTRUMENTS = 99;
     MAX_SONGS = 99;
     MAX_ROWS = 10000;

     COLUMN_TYPE_SPEED = 0;
     COLUMN_TYPE_INSTRUMENT = 1;
     COLUMN_TYPE_NOTE = 2;
     COLUMN_TYPE_EFFECT = 3;
     COLUMN_TYPE_VALUE = 4;

     DEFAULT_PAGE_ROWS = 16;

{$define DEFAULT_SPEED := (UPDATE_RATE_HZ/(120*(1.0/60.0)*4))}

implementation

{$R *.lfm}

{ TFormMain }

procedure TFormMain.FormCreate(Sender: TObject);
begin

end;

procedure TFormMain.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin

end;


//Paintbox Song
procedure TFormMain.PaintBoxSongDblClick(Sender: TObject);
begin

end;
procedure TFormMain.PaintBoxSongClick(Sender: TObject);
begin

end;
procedure TFormMain.PaintBoxSongMouseDown(Sender: TObject);
begin

end;
procedure TFormMain.PaintBoxSongMouseMove(Sender: TObject);
begin

end;
procedure TFormMain.PaintBoxSongMouseUp(Sender: TObject);
begin

end;
procedure TFormMain.PaintBoxSongPaint(Sender: TObject);
begin

end;

procedure TFormMain.TabSheetSongListEnter(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonSongUpClick(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonSongDownClick(Sender: TObject);
begin

end;

procedure TFormMain.EditSongNameChange(Sender: TObject);
begin

end;

procedure TFormMain.EditSongNameKeyPress(Sender: TObject);
begin

end;

procedure TFormMain.ListBoxSongClick(Sender: TObject);
begin

end;

procedure TFormMain.ListBoxSongDblClick(Sender: TObject);
begin

end;

procedure TFormMain.ListBoxSongDrawItem(Sender: TObject);
begin

end;

procedure TFormMain.CheckBoxEffectClick(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonImportWavClick(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonInsMoveUpClick(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonInsMoveDownClick(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonInsDeleteClick(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonInsLoadClick(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonInsSaveClick(Sender: TObject);
begin

end;

procedure TFormMain.TrackBarARChange(Sender: TObject);
begin

end;

procedure TFormMain.TrackBarDRChange(Sender: TObject);
begin

end;

procedure TFormMain.TrackBarSLChange(Sender: TObject);
begin

end;

procedure TFormMain.TrackBarSRChange(Sender: TObject);
begin

end;

procedure TFormMain.EditInsNameChange(Sender: TObject);
begin

end;

procedure TFormMain.EditInsNameKeyPress(Sender: TObject);
begin

end;

procedure TFormMain.ListBoxInsDblClick(Sender: TObject);
begin

end;

procedure TFormMain.ListBoxInsDrawItem(Sender: TObject);
begin

end;

procedure TFormMain.ListBoxInsMouseDown(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonLengthToMaxClick(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonSampleLengthIncMouseDown(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonSampleLengthDecMouseDown(Sender: TObject);
begin

end;

procedure TFormMain.EditLengthChange(Sender: TObject);
begin

end;

procedure TFormMain.EditLengthKeyPress(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonDownsample1Click(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonResampleNearestClick(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonEQResetClick(Sender: TObject);
begin

end;

procedure TFormMain.TrackBarVolumeChange(Sender: TObject);
begin

end;

procedure TFormMain.StaticTextEQLowMouseDown(Sender: TObject);
begin

end;

procedure TFormMain.StaticTextEQLowMouseMove(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonLoopClick(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonLoopToBeginClick(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonLoopToEndClick(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonLoopWavClick(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonLoopRampClick(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonLoopStartIncMouseDown(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonLoopStartDecMouseDown(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonLoopEndIncMouseDown(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonLoopEndDecMouseDown(Sender: TObject);
begin

end;

procedure TFormMain.SpeedButtonLoopUnrollClick(Sender: TObject);
begin

end;

procedure TFormMain.EditLoopStartChange(Sender: TObject);
begin

end;

procedure TFormMain.EditLoopEndChange(Sender: TObject);
begin

end;

procedure TFormMain.PaintBoxADSRPaint(Sender: TObject);
begin

end;

procedure TFormMain.TabSheetInfoShow(Sender: TObject);
begin

end;

procedure TFormMain.PaintBoxMemoryUsePaint(Sender: TObject);
begin

end;

procedure TFormMain.MSongClearClick(Sender: TObject);
begin

end;

procedure TFormMain.MSongCleanUpClick(Sender: TObject);
begin

end;

procedure TFormMain.MTransposeDialogClick(Sender: TObject);
begin
  FormTranspose:=TFormTranspose.Create(Nil);
  FormTranspose.ShowModal;
  FreeAndNil(FormTranspose);
end;

procedure TFormMain.MSongScaleVolumeClick(Sender: TObject);
begin

end;

procedure TFormMain.MImportXMSongClick(Sender: TObject);
begin

end;

procedure TFormMain.MImportXMSoundEffectsClick(Sender: TObject);
begin

end;

procedure TFormMain.MImportMidiClick(Sender: TObject);
begin

end;

procedure TFormMain.MImportFamiTrackerClick(Sender: TObject);
begin

end;

procedure TFormMain.MExportSPCClick(Sender: TObject);
begin
      SaveDialogExportSPC.Execute;
end;

procedure TFormMain.MImportSPCBankClick(Sender: TObject);
begin
      OpenDialogImportSPCBank.Execute;
end;

procedure TFormMain.MCleanupInstrumentsClick(Sender: TObject);
begin

end;

procedure TFormMain.MExtractSourceWaveClick(Sender: TObject);
begin

end;

procedure TFormMain.MInstrumentReplaceClick(Sender: TObject);
begin
  FormReplace:=TFormReplace.Create(Nil);
  FormReplace.ShowModal;
  FreeAndNil(FormReplace);
end;

procedure TFormMain.MSongPlayStartClick(Sender: TObject);
begin

end;

procedure TFormMain.MSongPlayCurClick(Sender: TObject);
begin

end;

procedure TFormMain.MSongStopClick(Sender: TObject);
begin

end;

procedure TFormMain.MOctave1Click(Sender: TObject);
begin

end;

procedure TFormMain.MAutostepClick(Sender: TObject);
begin

end;

procedure TFormMain.MOutputMonitorClick(Sender: TObject);
begin
    //TFormOutputMonitor.Enabled = True;
  FormOutputMonitor:=TFormOutputMonitor.Create(Nil);
  FormOutputMonitor.ShowModal;
  FreeAndNil(FormOutputMonitor);
end;

procedure TFormMain.TimerScrollDelayTimer(Sender: TObject);
begin

end;

procedure TFormMain.TimerOutputMonitorTimer(Sender: TObject);
begin

end;

procedure TFormMain.PageControlModeEnter(Sender: TObject);
begin

end;

//File Menu
procedure TFormMain.MNewClick(Sender: TObject);
begin

end;
procedure TFormMain.MOpenClick(Sender: TObject);
begin
      OpenDialogModule.Execute;
end;
procedure TFormMain.MSaveClick(Sender: TObject);
begin
      SaveDialogModule.Execute;
end;
procedure TFormMain.MExportAndSaveClick(Sender: TObject);
begin
      SaveDialogModule.Execute;
end;
procedure TFormMain.MExportClick(Sender: TObject);
begin
      //??
end;
procedure TFormMain.MExitClick(Sender: TObject);
begin

end;


end.

