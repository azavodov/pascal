program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {randomaze};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Trandomaze, randomaze);
  Application.Run;
end.
