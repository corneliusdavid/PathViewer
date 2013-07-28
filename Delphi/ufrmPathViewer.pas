unit ufrmPathViewer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmPathViewer = class(TForm)
    Label1: TLabel;
    lbPaths: TListBox;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPathViewer: TfrmPathViewer;

implementation

uses
  StrUtils;

{$R *.dfm}

procedure TfrmPathViewer.FormActivate(Sender: TObject);
var
  pathstr: string;
  p: Integer;
begin
  pathstr := GetEnvironmentVariable('PATH');
  while Length(pathstr) > 0 do begin
    p := Pos(';', pathstr);
    if p = 0 then begin
      lbPaths.Items.Add(pathstr);
      pathstr := EmptyStr;
    end else begin
      lbPaths.Items.Add(LeftStr(pathstr, p-1));
      Delete(pathstr, 1, p);
    end;
  end;

end;

end.
