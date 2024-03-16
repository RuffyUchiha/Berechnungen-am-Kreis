unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    RadiusEdit: TEdit;
    DurchmesserEdit: TEdit;
    UmfangEdit: TEdit;
    FlaecheEdit: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }



procedure TForm1.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm1.Button1Click(Sender: TObject);
var radius,durchmesser,umfang,flaeche: Double;
begin
//Eingabe
radius:=StrToFloat(RadiusEdit.Text);
//Vearbeitung
durchmesser:=2*radius;
umfang:=2*PI*radius;
flaeche:=radius*radius*PI;
//Ausgabe
DurchmesserEdit.Text:=FloatToStrF(durchmesser,ffFixed,10,2);
UmfangEdit.Text:=FloatToStrF(umfang,ffFixed,10,2);
FlaecheEdit.Text:=FloatToStrF(flaeche,ffFixed,10,2);

end;


end.

