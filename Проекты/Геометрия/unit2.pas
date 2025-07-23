unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ComCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    ListBox1: TListBox;
    TreeView1: TTreeView;
    procedure Button1Click(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation

Uses Unit1;

{$R *.lfm}

{ TForm2 }


procedure TForm2.TreeView1Change(Sender: TObject; Node: TTreeNode);
Var i,k:integer;
    met:boolean;
begin
 form2.listbox1.Items.clear;
 i:=0; k:=0; met:=false;

   For i:=1 to 250 do
    Begin
     If (met=true) and (pos('--',form1.spr[i])<>0) then break;
     If (pos('--',form1.spr[i])<>0) and
     (treeview1.Items[k].Selected=true) then
     met:=true else
     If (pos('--',form1.spr[i])<>0) then inc (k);

     If met=true then
      form2.listbox1.Items.Add (form1.spr[i]);
    end;


end;

procedure TForm2.Button1Click(Sender: TObject);
var s, s1 : string;
    i,j,k,kol:integer;
begin
 form2.listbox1.Items.clear;

 s:=edit1.Text;
 s1:='йцукенгшщзхъфывапролджэячсмитьбюsincotgABCDFRSO12345abcdo=-+*/|rnspih ';

 If length(s)>2 then
 Begin
  delete (s,1,1);
  For i:=1 to length(s) do
   If pos(s[i],s1)=0 then delete (s,i,1);

  For i:=1 to 250 do
   Begin
    If pos(s,form1.spr[i])<>0 then
     Begin
      form2.listbox1.Items.Add (' ------ ');
      form2.listbox1.Items.Add (form1.spr[i]);
      form2.listbox1.Items.Add (' ------ ');
     End;
   End;
 end;

end;




end.

