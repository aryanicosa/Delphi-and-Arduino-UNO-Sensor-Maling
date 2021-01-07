unit Unit1;

interface

uses
  Windows, Messages, StrUtils, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CPort;

type
  TForm1 = class(TForm)
    ComPort1: TComPort;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComPort1RxChar(Sender: TObject; Count: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
ComPort1.ShowSetupDialog;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if Button2.Caption='Scan'then
  begin
    Button2.Caption:='berjalan';
    ComPort1.Connected:=True;
  end
else
  begin
    Button2.Caption:='Scan';
    ComPort1.Connected:=False;
  end
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
close;
end;

procedure TForm1.ComPort1RxChar(Sender: TObject; Count: Integer);
var
Str : String;

begin
  ComPort1.ReadStr(Str, Count);
  begin
  Edit1.Text:='kondisi' + Str;
  end;
end;

end.
