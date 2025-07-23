unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

Var s1,s2,im : string;
    sl : array [1..300] of string;
    liveotv : array [1..500] of boolean;
    ksl,km,msov : integer;
    kolmem : integer; // колличество файлов с памятью


implementation

{$R *.lfm}

{ TForm1 }

//разбивает строку на слова
Procedure razbivka(s:string);
Var q:integer;
 Begin

  s:=s+' '; ksl:=0;
  For q:=1 to length (s) do
   If (s[q]=',') or (s[q]='.') or (s[q]=':') or
   (s[q]=';') or (s[q]='!') or (s[q]='?') then delete (s,q,1);

  while s<>'' do
   Begin
    inc(ksl);
    sl[ksl]:=copy(s,1,pos(' ',s));
    sl[ksl]:=copy(sl[ksl],1,round(length(sl[ksl])*0.8));
    delete (s,1,pos(' ',s));
   end;

 end;

//выбираем ответ из документа n
Function vybor(n:integer):string;
Var f:text; s:string; k:integer;
    v: array [1..50] of string;
 Begin
  Assign (f,'memories/'+inttostr(n)+'.txt');
  Reset (f); Readln (f,s); k:=0;

   While not (eof(f)) do
    Begin
     inc (k);
     Readln (f,v[k]);
    End;

  vybor:=v[random(k)+1];
  close (f);
 End;

//проверяет подходит ли файл
Procedure maxsovp;
Var ks,i,j:integer;
    proc: real; f:text;
    title: string;
 Begin

  msov:=0; proc:=0;
  For i:=1 to kolmem do
   Begin
    Assign (f,'memories/'+inttostr (i)+'.txt'); Reset (f);
    Readln (f,title); close (f);
    ks:=0;
     For j:=1 to ksl do
      If pos(sl[j],title)<>0 then inc (ks);
    If (ks/ksl>=proc) and (ks/ksl>=0.4) then
      Begin msov:=i; proc:=ks/ksl; End;
   End;

 // If ((ks/ksl)*100>=50) then sovp:=true;
 end;

//формирование ответа
function otvet(s0:string):string;
 Begin
  razbivka (s0); //разбиваем вопрос на слова
  maxsovp; //ищем подходящий файл (номер файла)
  otvet:=vybor(msov); //в ответ записываем рандомный из выбора
 end;

//отослать
procedure TForm1.Button1Click(Sender: TObject);
begin
 s1:=edit1.text; edit1.text:='';
 memo1.Lines.Add (im+s1);
 s2:=otvet(s1);
 If s2<>'' then
  memo1.Lines.Add ('DaVinci: '+s2);
end;


//при криэйте
procedure TForm1.FormCreate(Sender: TObject);
Var f:text;
begin
 s1:=''; s2:=''; kolmem:=0;
 memo1.clear; edit1.clear;

 Assignfile (f,'memories/memory.txt'); Reset (f);
 Readln (f,kolmem);
 im:='Андрей: ';
 closefile (f);
end;

end.

