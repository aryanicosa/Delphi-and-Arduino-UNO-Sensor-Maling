object Form1: TForm1
  Left = 734
  Top = 132
  Width = 338
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 32
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Setup'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 120
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Scan'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 208
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 112
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object ComPort1: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    OnRxChar = ComPort1RxChar
    Left = 72
    Top = 32
  end
end
