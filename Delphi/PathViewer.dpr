program PathViewer;

uses
  Forms,
  ufrmPathViewer in 'ufrmPathViewer.pas' {frmPathViewer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Path Viewer';
  Application.CreateForm(TfrmPathViewer, frmPathViewer);
  Application.Run;
end.
