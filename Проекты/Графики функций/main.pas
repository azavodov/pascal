uses vcl,graf;

//$VCLDESIGN+
var
  Form1: Form;
  MainMenu1: MainMenu;
  TextLabel1: TextLabel;
  PaintBox1: PaintBox;
  Button1: Button;
  Button2: Button;
  Button3: Button;
  Button4: Button;
  Button5: Button;
  SpinEdit1: SpinEdit;
  Button6: Button;
  Button7: Button;
  TextBox3: TextBox;
  Button10: Button;
  Button12: Button;
  Panel1: Panel;
  CheckBox1: CheckBox;
  CheckBox2: CheckBox;
  CheckBox3: CheckBox;
  CheckBox4: CheckBox;
  CheckBox5: CheckBox;
  Edit1: Edit;
  Edit2: Edit;
  Edit3: Edit;
  Edit4: Edit;
  Edit5: Edit;
  Button8: Button;
  Panel2: Panel;
  TextLabel2: TextLabel;
  RadioButton1: RadioButton;
  RadioButton2: RadioButton;
  RadioButton3: RadioButton;
  RadioButton4: RadioButton;
  RadioButton5: RadioButton;
  Button9: Button;
  Button11: Button;
  Panel3: Panel;
  TextLabel3: TextLabel;
  RadioButton6: RadioButton;
  RadioButton7: RadioButton;
  RadioButton8: RadioButton;
  RadioButton9: RadioButton;
  RadioButton10: RadioButton;
  Panel4: Panel;
  TextLabel4: TextLabel;
  RadioButton11: RadioButton;
  RadioButton12: RadioButton;
  RadioButton13: RadioButton;
  RadioButton14: RadioButton;
  RadioButton15: RadioButton;
  TextBox1: TextBox;
  TextBox2: TextBox;
  Button13: Button;
  ColorDialog1: ColorDialog;
  SaveDialog1: SaveDialog;
//$VCLDESIGN-


  Var x,y,xk,xn:real;
      x1,y1,i,ed,q,cx,cy,w,h,j,ng,cvetf:integer;
      lw: array [1..10] of integer;
      cvet: array [1..10] of integer;
      g1,g2,g3,g4:integer;
      fn,s,s7:string;

 procedure Button1OnClick;
  begin

   Paintbox1.clear;

   x:=-cx/ed;
   xk:=(w-cx)/ed;
   xn:=x;

   With paintbox1 do
    Begin
    pen.width:=1;
    Pen.Color:=rgb(200,200,200);

    for i:=-200 to 200 do
     begin
      Line(cx+i*ed,0,cx+i*ed,h);
      Line(0,cy+i*ed,w,cy+i*ed);
     If ed>50 then
       Begin
        Line(cx+i*ed+(ed div 2),0,cx+i*ed+(ed div 2),h);
        Line(0,cy+i*ed+(ed div 2),w,cy+i*ed+(ed div 2));
       End;
     End;

  Pen.Color:=rgb(0,0,0);
  Line(0,cy,w,cy);
  Lineto(w-20,cy+5);
  Line(w,cy,w-20,cy-5);
  TextOut(w-20,cy+19,'X');
  Line(cx,0,cx,h);
  Line(cx,0,cx+5,20);
  Line(cx,0,cx-5,20);
  TextOut(cx+19,10,'Y');
  TextOut(cx+5,cy+5,'0');


     for i:=-200 to 200 do
       begin
        line (cx+i*ed,cy-3,cx+i*ed,cy+3);
        line (cx-3,cy+i*ed,cx+3,cy+i*ed);
        If i<>0 then textout (cx+3,cy+5-i*ed,inttostr(i));
        If i>0 then q:=4 else q:=-4;
        If i>9 then q:=-2;
        If i<>0 then textout (cx+i*ed+q,cy+5,inttostr(i));
       End;



   For i:=1 to 5 do
   Begin
     pen.color:=cvet[i];
     pen.width:=lw[i];
     x:=xn;
     If (checkbox1.checked=false) and (i=1) then inc(i);
     If (checkbox2.checked=false) and (i=2) then inc(i);
     If (checkbox3.checked=false) and (i=3) then inc(i);
     If (checkbox4.checked=false) and (i=4) then inc(i);
     If (checkbox5.checked=false) and (i=5) then break;
     ng:=i;
     While x<xk do
     Begin
      y:=gr(ng,x);
      x1:=cx+round(x*ed);
      y1:=cy-Round(y*ed);
      if x=xn then moveto(x1,y1);
      lineto(x1,y1);
      x:=x+1/ed/5;
     End;
   End;


   End;

end;

 procedure Button2OnClick;
  begin
   cx:=cx-10;
   Paintbox1.clear;
   Button1OnClick;
  end;

 procedure Form1OnCreate;
 Var f:text;
  begin
   ed:=45;
   cx:=250;
   cy:=250;
   checkbox1.checked:=false;
   checkbox2.checked:=false;
   checkbox3.checked:=false;
   checkbox4.checked:=false;
   checkbox5.checked:=false;
   w:=PaintBox1.width;
   h:=PaintBox1.Height;
   spinedit1.value:=45;

  For i:=1 to 5 do
   cvet[i]:=0;
  for i:=1 to 5 do
   lw[i]:=0;

 Paintbox1.clear;

  assign(f,'graf.pas');
  Reset(f);
  for i:=1 to 9 do
    begin
      readln(f,s);
      if i=5 then edit1.text:=copy(s,10,length(s)-10);
      if i=6 then edit2.text:=copy(s,10,length(s)-10);
      if i=7 then edit3.text:=copy(s,10,length(s)-10);
      if i=8 then edit4.text:=copy(s,10,length(s)-10);
      if i=9 then edit5.text:=copy(s,10,length(s)-10);
    end;
  close(f);
  
  CheckBox1.color:=cvet[1];
  CheckBox2.color:=cvet[2];
  CheckBox3.color:=cvet[3];
  CheckBox4.color:=cvet[4];
  CheckBox5.color:=cvet[5];
  CheckBox1.font.color:=rgb(255,255,255);
  CheckBox2.font.color:=rgb(255,255,255);
  CheckBox3.font.color:=rgb(255,255,255);
  CheckBox4.font.color:=rgb(255,255,255);
  CheckBox5.font.color:=rgb(255,255,255);

  end;

 procedure Button3OnClick;
  begin
   cx:=cx+10;
   Paintbox1.clear;
   Button1OnClick;
  end;

 procedure Button4OnClick;
  begin
   cy:=cy-10;
   Paintbox1.clear;
   Button1OnClick;
  end;

 procedure Button5OnClick;
  begin
   cy:=cy+10;
   Paintbox1.clear;
   Button1OnClick;
  end;

 procedure CheckBox1OnClick;
  begin
   Button1OnClick;
  end;

 procedure SpinEdit1OnChange;
  begin
   ed:=spinedit1.value;
   Paintbox1.clear;
   button1onclick;
  end;


 procedure Button6OnClick;
  begin
   form1.close
  end;

 procedure Button7OnClick;
  begin
   paintbox1.clear;
  end;

 procedure CheckBox3OnClick;
  begin
   Button1OnClick;
  end;

 procedure CheckBox4OnClick;
  begin
   Button1OnClick;
  end;

procedure MainMenu1_1_4OnClick;
begin
 If savedialog1.execute then fn:=savedialog1.filename;
 paintbox1.savetofile (fn);
end;

procedure MainMenu1_1_6OnClick;
begin
  form1.close;
end;

procedure MainMenu1_4_2OnClick;
begin
 If textbox3.visible=true then textbox3.visible:=false else textbox3.visible:=true;
end;

procedure CheckBox5OnClick;
begin
 Button1OnClick;
end;

procedure CheckBox6OnClick;
begin
 Button1OnClick;
end;

procedure MainMenu1_2_1_1OnClick;
begin
 checkbox4.checked:=true;
 button1onclick;
end;

procedure MainMenu1_2_2_1OnClick;
begin
 checkbox5.checked:=true;
 button1onclick;
end;

procedure MainMenu1_3_1OnClick;
begin
 Paintbox1.clear;
end;

procedure MainMenu1_3_2OnClick;
begin
 If colordialog1.execute then cvetf:=colordialog1.color;
 form1.color:=cvetf;
end;

procedure MainMenu1_1_2OnClick;
begin
 if savedialog1.execute then fn:=savedialog1.filename;
 paintbox1.savetofile(fn);
end;

procedure Button12OnClick;
begin
  Form1OnCreate;
end;

procedure MainMenu1_1_1OnClick;
begin
 Form1OnCreate;
end;

procedure Button10OnClick;
begin
 if savedialog1.execute then fn:=savedialog1.filename+'.jpg';
 paintbox1.savetofile(fn);
end;

procedure Button8OnClick;
 Var g : text;
Begin
  Assign(g,'graf.pas');
  Rewrite(g);
    writeln(g,'  unit a1;');
    writeln(g,'function gr(ng:integer; x:real):real;');
    writeln(g,'begin');
    writeln(g,'  case ng of');
    writeln(g,'  1: gr:=',Edit1.text,';');
    writeln(g,'  2: gr:=',Edit2.text,';');
    writeln(g,'  3: gr:=',Edit3.text,';');
    writeln(g,'  4: gr:=',Edit4.text,';');
    writeln(g,'  5: gr:=',Edit5.text,';');
    writeln(g,'  end;');
    writeln(g,'end;');
    writeln(g,'end.');
  close(g);
  form1.close;
end;

procedure Button9OnClick;
begin
 If radiobutton1.checked=true then if ColorDialog1.Execute then Begin cvet[1]:=ColorDialog1.color; CheckBox1.color:=cvet[1]; End;
 If radiobutton2.checked=true then if ColorDialog1.Execute then Begin cvet[2]:=ColorDialog1.color; CheckBox2.color:=cvet[2]; End;
 If radiobutton3.checked=true then if ColorDialog1.Execute then Begin cvet[3]:=ColorDialog1.color; CheckBox3.color:=cvet[3]; End;
 If radiobutton4.checked=true then if ColorDialog1.Execute then Begin cvet[4]:=ColorDialog1.color; CheckBox4.color:=cvet[4]; End;
 If radiobutton5.checked=true then if ColorDialog1.Execute then Begin cvet[5]:=ColorDialog1.color; CheckBox5.color:=cvet[5]; End;
 Button1OnClick;
end;

procedure Button11OnClick;
begin
 If radiobutton1.checked=true then Begin lw[1]:=lw[1]+1; if lw[1]>5 then lw[1]:=1; Button11.caption:='Толщина - '+IntToStr(lw[1]); End;
 If radiobutton2.checked=true then Begin lw[2]:=lw[2]+1; if lw[2]>5 then lw[2]:=1; Button11.caption:='Толщина - '+IntToStr(lw[2]); End;
 If radiobutton3.checked=true then Begin lw[3]:=lw[3]+1; if lw[3]>5 then lw[3]:=1; Button11.caption:='Толщина - '+IntToStr(lw[3]); End;
 If radiobutton4.checked=true then Begin lw[4]:=lw[4]+1; if lw[4]>5 then lw[4]:=1; Button11.caption:='Толщина - '+IntToStr(lw[4]); End;
 If radiobutton5.checked=true then Begin lw[5]:=lw[5]+1; if lw[5]>5 then lw[5]:=1; Button11.caption:='Толщина - '+IntToStr(lw[5]); End;
 Button1OnClick;
end;

procedure Button13OnClick;
Var a,b,z:real;
    f1,f2:integer;
begin
 Textbox1.caption:='';
 If radiobutton6.checked=true then f1:=1;
 If radiobutton7.checked=true then f1:=2;
 If radiobutton8.checked=true then f1:=3;
 If radiobutton9.checked=true then f1:=4;
 If radiobutton10.checked=true then f1:=5;
 If radiobutton11.checked=true then f2:=1;
 If radiobutton12.checked=true then f2:=2;
 If radiobutton13.checked=true then f2:=3;
 If radiobutton14.checked=true then f2:=4;
 If radiobutton15.checked=true then f2:=5;
 a:=cx/ed;
 b:=(w-cx)/ed;
 while a<b do
  Begin
   If gr(f1,a)-gr(f2,a)<0 then
   textbox1.caption:=TextBox1.caption+'x = '+floattostr(a);
   a:=a+0.01;
  End;
end;

procedure CheckBox2OnClick;
begin
  Button1OnClick;
end;


procedure MainMenu1_2_1OnClick;
begin
  Button1OnClick;
end;

procedure MainMenu1_2_2OnClick;
begin
  Button9OnClick;
end;

procedure MainMenu1_2_3OnClick;
begin
  Button11OnClick;
end;

procedure MainMenu1_2_4OnClick;
begin
  Button8OnClick;
end;

 procedure InitControls;
  begin
  Form1:= Form.Create(0,0,1005,619);
  Form1.InitControl(True,False,alNone,crDefault,clInactiveBorder,'графики функций','');
  MainMenu1:= MainMenu.Create;
  Form1.Menu:= MainMenu1;
  TextLabel1:= TextLabel.Create(Form1,32,144,81,24);
  TextLabel1.InitControl(True,True,alNone,crDefault,clInactiveBorder,'Масштаб','');
  PaintBox1:= PaintBox.Create(Form1,240,8,500,500);
  PaintBox1.InitControl(True,True,alNone,crDefault,0,'0','');
  Button1:= Button.Create(Form1,8,8,217,25);
  Button1.InitControl(True,True,alNone,crDefault,0,'Построить графики','');
  Button2:= Button.Create(Form1,40,80,73,25);
  Button2.InitControl(True,True,alNone,crDefault,0,'Влево','');
  Button3:= Button.Create(Form1,120,80,73,25);
  Button3.InitControl(True,True,alNone,crDefault,0,'Вправо','');
  Button4:= Button.Create(Form1,80,48,73,25);
  Button4.InitControl(True,True,alNone,crDefault,0,'Вверх','');
  Button5:= Button.Create(Form1,80,112,75,25);
  Button5.InitControl(True,True,alNone,crDefault,0,'Вниз','');
  SpinEdit1:= SpinEdit.Create(Form1,128,144,73,34);
  SpinEdit1.InitControl(True,True,alNone,crDefault,clWindow,'45','');
  Button6:= Button.Create(Form1,632,520,113,25);
  Button6.InitControl(True,True,alNone,crDefault,0,'выход','');
  Button7:= Button.Create(Form1,504,520,113,25);
  Button7.InitControl(True,True,alNone,crDefault,0,'очистить','');
  TextBox3:= TextBox.Create(Form1,240,8,185,137);
  TextBox3.InitControl(True,False,alNone,crDefault,clWindow,'','');
  TextBox3.ScrollBars:= ssNone;
  Button10:= Button.Create(Form1,240,520,113,25);
  Button10.InitControl(True,True,alNone,crDefault,0,'сохранить','');
  Button12:= Button.Create(Form1,368,520,113,25);
  Button12.InitControl(True,True,alNone,crDefault,0,'новый','');
  Panel1:= Panel.Create(Form1,8,304,225,209);
  Panel1.InitControl(True,True,alNone,crDefault,clSkyBlue,'','');
  CheckBox1:= CheckBox.Create(Panel1,8,16,41,17);
  CheckBox1.InitControl(True,True,alNone,crDefault,clSkyBlue,'y=','');
  CheckBox2:= CheckBox.Create(Panel1,8,56,41,17);
  CheckBox2.InitControl(True,True,alNone,crDefault,clSkyBlue,'y=','');
  CheckBox3:= CheckBox.Create(Panel1,8,96,41,17);
  CheckBox3.InitControl(True,True,alNone,crDefault,clSkyBlue,'y=','');
  CheckBox4:= CheckBox.Create(Panel1,8,136,41,17);
  CheckBox4.InitControl(True,True,alNone,crDefault,clSkyBlue,'y=','');
  CheckBox5:= CheckBox.Create(Panel1,8,176,41,17);
  CheckBox5.InitControl(True,True,alNone,crDefault,clSkyBlue,'y=','');
  Edit1:= Edit.Create(Panel1,48,8,169,28);
  Edit1.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit2:= Edit.Create(Panel1,48,48,169,28);
  Edit2.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit3:= Edit.Create(Panel1,48,88,169,28);
  Edit3.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit4:= Edit.Create(Panel1,48,128,169,28);
  Edit4.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit5:= Edit.Create(Panel1,48,168,169,28);
  Edit5.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Button8:= Button.Create(Form1,8,520,225,25);
  Button8.InitControl(True,True,alNone,crDefault,0,'заменить графики','');
  Panel2:= Panel.Create(Form1,8,184,225,113);
  Panel2.InitControl(True,True,alNone,crDefault,clSkyBlue,'','');
  TextLabel2:= TextLabel.Create(Panel2,24,8,173,20);
  TextLabel2.InitControl(True,True,alNone,crDefault,clSkyBlue,' 1        2        3       4        5','');
  RadioButton1:= RadioButton.Create(Panel2,24,32,17,17);
  RadioButton1.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton1','');
  RadioButton2:= RadioButton.Create(Panel2,64,32,17,17);
  RadioButton2.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton2','');
  RadioButton3:= RadioButton.Create(Panel2,104,32,17,17);
  RadioButton3.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton3','');
  RadioButton4:= RadioButton.Create(Panel2,144,32,17,17);
  RadioButton4.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton4','');
  RadioButton5:= RadioButton.Create(Panel2,184,32,17,17);
  RadioButton5.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton5','');
  Button9:= Button.Create(Panel2,16,56,193,25);
  Button9.InitControl(True,True,alNone,crDefault,0,'цвет','');
  Button11:= Button.Create(Panel2,16,80,193,25);
  Button11.InitControl(True,True,alNone,crDefault,0,'толщина','');
  Panel3:= Panel.Create(Form1,752,8,225,57);
  Panel3.InitControl(True,True,alNone,crDefault,clSkyBlue,'','');
  TextLabel3:= TextLabel.Create(Panel3,24,8,173,20);
  TextLabel3.InitControl(True,True,alNone,crDefault,clSkyBlue,' 1        2        3       4        5','');
  RadioButton6:= RadioButton.Create(Panel3,24,32,17,17);
  RadioButton6.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton6','');
  RadioButton7:= RadioButton.Create(Panel3,64,32,17,17);
  RadioButton7.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton7','');
  RadioButton8:= RadioButton.Create(Panel3,104,32,17,17);
  RadioButton8.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton8','');
  RadioButton9:= RadioButton.Create(Panel3,144,32,17,17);
  RadioButton9.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton9','');
  RadioButton10:= RadioButton.Create(Panel3,184,32,17,17);
  RadioButton10.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton10','');
  Panel4:= Panel.Create(Form1,752,72,225,57);
  Panel4.InitControl(True,True,alNone,crDefault,clSkyBlue,'','');
  TextLabel4:= TextLabel.Create(Panel4,24,32,173,20);
  TextLabel4.InitControl(True,True,alNone,crDefault,clSkyBlue,'1         2        3       4        5','');
  RadioButton11:= RadioButton.Create(Panel4,24,8,17,17);
  RadioButton11.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton11','');
  RadioButton12:= RadioButton.Create(Panel4,64,8,17,17);
  RadioButton12.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton12','');
  RadioButton13:= RadioButton.Create(Panel4,104,8,17,17);
  RadioButton13.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton13','');
  RadioButton14:= RadioButton.Create(Panel4,144,8,17,17);
  RadioButton14.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton14','');
  RadioButton15:= RadioButton.Create(Panel4,184,8,17,17);
  RadioButton15.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton15','');
  TextBox1:= TextBox.Create(Form1,752,176,225,161);
  TextBox1.InitControl(True,True,alNone,crDefault,clWindow,'','');
  TextBox1.ScrollBars:= ssNone;
  TextBox2:= TextBox.Create(Form1,752,352,225,193);
  TextBox2.InitControl(True,True,alNone,crDefault,clWindow,'','');
  TextBox2.ScrollBars:= ssNone;
  Button13:= Button.Create(Form1,752,136,225,33);
  Button13.InitControl(True,True,alNone,crDefault,0,'решить систему','');
  ColorDialog1:= ColorDialog.Create;
  ColorDialog1.Color:= clBlack;
  SaveDialog1:= SaveDialog.Create;
  TextLabel1.Font.Size:= 14;
  Button1.Font.Size:= 12;
  Button2.Font.Size:= 12;
  Button3.Font.Size:= 12;
  Button4.Font.Size:= 12;
  Button5.Font.Size:= 12;
  SpinEdit1.Min:= 10;
  SpinEdit1.Max:= 500;
  SpinEdit1.Font.Size:= 14;
  Button6.Font.Size:= 12;
  Button7.Font.Size:= 12;
  TextBox3.Font.Size:= 14;
  Button10.Font.Size:= 12;
  Button12.Font.Size:= 12;
  Panel1.Font.Size:= 12;
  CheckBox1.Checked:= True;
  CheckBox1.Font.Size:= 12;
  CheckBox2.Checked:= True;
  CheckBox2.Font.Size:= 12;
  CheckBox3.Checked:= True;
  CheckBox3.Font.Size:= 12;
  CheckBox4.Checked:= True;
  CheckBox4.Font.Size:= 12;
  CheckBox5.Checked:= True;
  CheckBox5.Font.Size:= 12;
  Edit1.Font.Size:= 12;
  Edit2.Font.Size:= 12;
  Edit3.Font.Size:= 12;
  Edit4.Font.Size:= 12;
  Edit5.Font.Size:= 12;
  Button8.Font.Size:= 12;
  Panel2.Font.Size:= 12;
  TextLabel2.Font.Size:= 12;
  RadioButton1.Checked:= True;
  RadioButton1.Font.Size:= 12;
  RadioButton2.Font.Size:= 12;
  RadioButton3.Font.Size:= 12;
  RadioButton4.Font.Size:= 12;
  RadioButton5.Font.Size:= 12;
  Button9.Font.Size:= 12;
  Button11.Font.Size:= 12;
  Panel3.Font.Size:= 12;
  TextLabel3.Font.Size:= 12;
  RadioButton6.Checked:= True;
  RadioButton6.Font.Size:= 12;
  RadioButton7.Font.Size:= 12;
  RadioButton8.Font.Size:= 12;
  RadioButton9.Font.Size:= 12;
  RadioButton10.Font.Size:= 12;
  Panel4.Font.Size:= 12;
  TextLabel4.Font.Size:= 12;
  RadioButton11.Checked:= True;
  RadioButton11.Font.Size:= 12;
  RadioButton12.Font.Size:= 12;
  RadioButton13.Font.Size:= 12;
  RadioButton14.Font.Size:= 12;
  RadioButton15.Font.Size:= 12;
  TextBox1.Font.Size:= 12;
  TextBox2.Font.Size:= 12;
  Button13.Font.Size:= 12;
  MainMenu1.Add('Файл');
  MainMenu1.items[1].Add('Новый',MainMenu1_1_1OnClick);
  MainMenu1.items[1].Add('Сохранить',MainMenu1_1_2OnClick);
  MainMenu1.items[1].Add('Выход',MainMenu1_1_6OnClick);
  MainMenu1.Add('Правка');
  MainMenu1.items[2].Add('построить графики',MainMenu1_2_1OnClick);
  MainMenu1.items[2].Add('цвет',MainMenu1_2_2OnClick);
  MainMenu1.items[2].Add('толщина',MainMenu1_2_3OnClick);
  MainMenu1.items[2].Add('заменить графики',MainMenu1_2_4OnClick);
  MainMenu1.Add('Вид');
  MainMenu1.items[3].Add('очистить',MainMenu1_3_1OnClick);
  MainMenu1.items[3].Add('цвет фона',MainMenu1_3_2OnClick);
  MainMenu1.Add('Справка');
  MainMenu1.items[4].Add('Об авторе',MainMenu1_4_2OnClick);
  TextBox3.Lines.Add('Работу Выполнил:');
  TextBox3.Lines.Add('');
  TextBox3.Lines.Add('ученик 9А класса');
  TextBox3.Lines.Add('МОУ Лицей №43');
  TextBox3.Lines.Add('Заводов Андрей');
  Form1.OnCreate:=Form1OnCreate;
  Button1.OnClick:=Button1OnClick;
  Button2.OnClick:=Button2OnClick;
  Button3.OnClick:=Button3OnClick;
  Button4.OnClick:=Button4OnClick;
  Button5.OnClick:=Button5OnClick;
  SpinEdit1.OnChange:=SpinEdit1OnChange;
  Button6.OnClick:=Button6OnClick;
  Button7.OnClick:=Button7OnClick;
  Button10.OnClick:=Button10OnClick;
  Button12.OnClick:=Button12OnClick;
  CheckBox1.OnClick:=CheckBox1OnClick;
  CheckBox2.OnClick:=CheckBox2OnClick;
  CheckBox3.OnClick:=CheckBox3OnClick;
  CheckBox4.OnClick:=CheckBox4OnClick;
  CheckBox5.OnClick:=CheckBox5OnClick;
  Button8.OnClick:=Button8OnClick;
  Button9.OnClick:=Button9OnClick;
  Button11.OnClick:=Button11OnClick;
  Button13.OnClick:=Button13OnClick;
  Form1.Position:= poScreenCenter;
  Form1.OnCreate;
  Form1.Show;
  end;

 begin
  InitControls;
 end.

























































































































































