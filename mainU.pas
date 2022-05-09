unit mainU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm6 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}
uses ShellApi;
procedure TForm6.Button1Click(Sender: TObject);
var
  filename : string;
begin
filename := 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe';
ShellExecute(handle,'open',PChar(filename), '','',SW_SHOWNORMAL);
end;

end.
