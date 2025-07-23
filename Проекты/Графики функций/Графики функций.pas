uses vcl;

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
  Panel1: Panel;
  CheckBox4: CheckBox;
  Button11: Button;
  Button15: Button;
  TextBox2: TextBox;
  TextBox3: TextBox;
  Panel2: Panel;
  TextLabel3: TextLabel;
  CheckBox1: CheckBox;
  Button8: Button;
  Button9: Button;
  Edit6: Edit;
  Button10: Button;
  Button12: Button;
  Panel3: Panel;
  TextLabel5: TextLabel;
  TextLabel6: TextLabel;
  Button16: Button;
  Button17: Button;
  CheckBox5: CheckBox;
  Edit1: Edit;
  Edit2: Edit;
  Edit3: Edit;
  Panel4: Panel;
  TextLabel2: TextLabel;
  TextLabel4: TextLabel;
  Button18: Button;
  Button19: Button;
  CheckBox6: CheckBox;
  Edit4: Edit;
  Edit5: Edit;
  ColorDialog1: ColorDialog;
  SaveDialog1: SaveDialog;
//$VCLDESIGN-


  Var x,y,xk,xn:real;
      x1,y1,i,ed,q,cx,cy,w,h,j:integer;
      lw,lw1,lw2,lw3,lw5,lw6,lw7:integer;
      cvet4,cvet5,cvet6,cvetf,cvet7:integer;
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


     pen.color:=cvet4;
     pen.width:=lw3;
     x:=xn;
    If checkbox4.checked=true then
     While x<xk do
     Begin
      y:=x*x*x;
      x1:=cx+round(x*ed);
      y1:=cy-Round(y*ed);
      if x=xn then moveto(x1,y1);
      lineto(x1,y1);
      x:=x+1/ed/5;
     End;

     pen.color:=cvet5;
     pen.width:=lw5;
     x:=xn;
    If checkbox5.checked=true then
     While x<xk do
     Begin
      y:=strtofloat(edit1.text)*x*x+strtofloat(edit2.text)*x+strtofloat(edit3.text);
      x1:=cx+round(x*ed);
      y1:=cy-Round(y*ed);
      if x=xn then moveto(x1,y1);
      lineto(x1,y1);
      x:=x+1/ed/5;
     End;

    pen.color:=cvet6;
     pen.width:=lw6;
     x:=xn;
    If checkbox6.checked=true then
     While x<xk do
     Begin
      y:=strtofloat(edit4.text)*sin(x)+strtofloat(edit5.text)*cos(x);
      x1:=cx+round(x*ed);
      y1:=cy-Round(y*ed);
      if x=xn then moveto(x1,y1);
      lineto(x1,y1);
      x:=x+1/ed/5;
     End;

     pen.color:=cvet7;
     pen.width:=lw7;
     x:=xn;
    If checkbox1.checked=true then
     While x<xk do
     Begin
      y:=strtofloat(edit6.text)/x;
      x1:=cx+round(x*ed);
      y1:=cy-Round(y*ed);
      if x=xn then moveto(x1,y1);
      lineto(x1,y1);
      x:=x+1/ed/5;
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
  begin
   ed:=45;
   cx:=250;
   cy:=250;
   checkbox1.checked:=false;
   checkbox4.checked:=false;
   checkbox5.checked:=false;
   checkbox6.checked:=false;
   w:=PaintBox1.width;
   h:=PaintBox1.Height;
   Button1OnClick;
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
   Paintbox1.clear;
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
   Paintbox1.clear;
   Button1OnClick;
  end;

 procedure CheckBox4OnClick;
  begin
   Paintbox1.clear;
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

procedure Button11OnClick;
begin
  If colordialog1.execute then cvet4:=colordialog1.color;
  Paintbox1.clear;
  button1onclick;
end;

procedure Button15OnClick;
begin
  inc (lw3);
  If lw3>5 then lw3:=1;
  button15.caption:='толщина '+inttostr(lw3);
  Paintbox1.clear;
  button1onclick;
end;

procedure MainMenu1_4_2OnClick;
begin
 If textbox3.visible=true then textbox3.visible:=false else textbox3.visible:=true;
end;

procedure MainMenu1_4_1OnClick;
begin
 If textbox2.visible=true then textbox2.visible:=false else textbox2.visible:=true;
end;


procedure Button16OnClick;
begin
 If colordialog1.execute then cvet5:=colordialog1.color;
  Paintbox1.clear;
  button1onclick;
end;

procedure Button17OnClick;
begin
  inc (lw5);
  If lw5>5 then lw5:=1;
  button17.caption:='толщина '+inttostr(lw5);
  Paintbox1.clear;
  button1onclick;
end;


procedure CheckBox5OnClick;
begin
 Button1OnClick;
end;

procedure CheckBox6OnClick;
begin
 Button1OnClick;
end;

procedure Button18OnClick;
begin
 If colordialog1.execute then cvet6:=colordialog1.color;
  button1onclick;
end;

procedure Button19OnClick;
begin
  inc (lw6);
  If lw6>5 then lw6:=1;
  button19.caption:='толщина '+inttostr(lw6);
  button1onclick;
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

procedure MainMenu1_2_3_1OnClick;
begin
 checkbox6.checked:=true;
 button1onclick;
end;

procedure MainMenu1_2_1_2OnClick;
begin
  If colordialog1.execute then cvet4:=colordialog1.color;
  checkbox4.color:=cvet4;
  Paintbox1.clear;
  button1onclick;
end;

procedure MainMenu1_2_3_2OnClick;
begin
 If colordialog1.execute then cvet6:=colordialog1.color;
 button1onclick;
end;

procedure MainMenu1_2_2_2OnClick;
begin
 If colordialog1.execute then cvet5:=colordialog1.color;
 Paintbox1.clear;
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

procedure MainMenu1_1_1OnClick;
begin
 ed:=45;
 cx:=250;
 cy:=250;
 spinedit1.value:=45;
 checkbox1.checked:=false;
 checkbox4.checked:=false;
 checkbox5.checked:=false;
 checkbox6.checked:=false;
 Paintbox1.clear;
end;

procedure Button8OnClick;
begin
  If colordialog1.execute then cvet7:=colordialog1.color;
  Paintbox1.clear;
  button1onclick;
end;

procedure Button9OnClick;
begin
  inc (lw7);
  If lw7>5 then lw7:=1;
  button9.caption:='толщина '+inttostr(lw7);
  Paintbox1.clear;
  button1onclick;
end;

procedure MainMenu1_2_4_1OnClick;
begin
 checkbox1.checked:=true;
 button1onclick;
end;

procedure MainMenu1_2_4_2OnClick;
begin
 If colordialog1.execute then cvet7:=colordialog1.color;
 Paintbox1.clear;
 button1onclick;
end;

procedure Button12OnClick;
begin
 ed:=45;
 cx:=250;
 cy:=250;
 spinedit1.value:=45;
 checkbox1.checked:=false;
 checkbox4.checked:=false;
 checkbox5.checked:=false;
 checkbox6.checked:=false;
 Paintbox1.clear;
end;

procedure Button10OnClick;
begin
 if savedialog1.execute then fn:=savedialog1.filename;
 paintbox1.savetofile(fn);
end;

 procedure InitControls;
  begin
  Form1:= Form.Create(0,0,764,579);
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
  Button6:= Button.Create(Form1,128,480,105,25);
  Button6.InitControl(True,True,alNone,crDefault,0,'выход','');
  Button7:= Button.Create(Form1,8,480,105,25);
  Button7.InitControl(True,True,alNone,crDefault,0,'очистить','');
  Panel1:= Panel.Create(Form1,8,392,225,49);
  Panel1.InitControl(True,True,alNone,crDefault,clSkyBlue,'','');
  CheckBox4:= CheckBox.Create(Panel1,16,16,73,17);
  CheckBox4.InitControl(True,True,alNone,crDefault,clSkyBlue,'y=x*x*x','');
  Button11:= Button.Create(Panel1,104,16,49,17);
  Button11.InitControl(True,True,alNone,crDefault,0,'цвет','');
  Button15:= Button.Create(Panel1,152,16,73,17);
  Button15.InitControl(True,True,alNone,crDefault,0,'толщина','');
  TextBox2:= TextBox.Create(Form1,240,8,185,209);
  TextBox2.InitControl(True,False,alNone,crDefault,clWindow,'','');
  TextBox2.ScrollBars:= ssNone;
  TextBox3:= TextBox.Create(Form1,552,8,185,137);
  TextBox3.InitControl(True,False,alNone,crDefault,clWindow,'','');
  TextBox3.ScrollBars:= ssNone;
  Panel2:= Panel.Create(Form1,8,336,225,49);
  Panel2.InitControl(True,True,alNone,crDefault,clSkyBlue,'','');
  TextLabel3:= TextLabel.Create(Panel2,80,16,15,20);
  TextLabel3.InitControl(True,True,alNone,crDefault,clSkyBlue,'/ x','');
  CheckBox1:= CheckBox.Create(Panel2,8,16,33,17);
  CheckBox1.InitControl(True,True,alNone,crDefault,clSkyBlue,'y=','');
  Button8:= Button.Create(Panel2,104,16,49,17);
  Button8.InitControl(True,True,alNone,crDefault,0,'цвет','');
  Button9:= Button.Create(Panel2,152,16,73,17);
  Button9.InitControl(True,True,alNone,crDefault,0,'толщина','');
  Edit6:= Edit.Create(Panel2,48,8,33,28);
  Edit6.InitControl(True,True,alNone,crDefault,clWindow,'1','');
  Button10:= Button.Create(Form1,128,448,105,25);
  Button10.InitControl(True,True,alNone,crDefault,0,'сохранить','');
  Button12:= Button.Create(Form1,8,448,105,25);
  Button12.InitControl(True,True,alNone,crDefault,0,'новый','');
  Panel3:= Panel.Create(Form1,8,184,225,73);
  Panel3.InitControl(True,True,alNone,crDefault,clSkyBlue,'','');
  TextLabel5:= TextLabel.Create(Panel3,82,16,32,20);
  TextLabel5.InitControl(True,True,alNone,crDefault,clSkyBlue,'x^2+','');
  TextLabel6:= TextLabel.Create(Panel3,160,16,16,20);
  TextLabel6.InitControl(True,True,alNone,crDefault,clSkyBlue,'x+','');
  Button16:= Button.Create(Panel3,16,48,89,17);
  Button16.InitControl(True,True,alNone,crDefault,0,'цвет','');
  Button17:= Button.Create(Panel3,120,48,97,17);
  Button17.InitControl(True,True,alNone,crDefault,0,'толщина','');
  CheckBox5:= CheckBox.Create(Panel3,8,16,41,25);
  CheckBox5.InitControl(True,True,alNone,crDefault,clSkyBlue,'y=','');
  Edit1:= Edit.Create(Panel3,40,8,41,28);
  Edit1.InitControl(True,True,alNone,crDefault,clWindow,'1','');
  Edit2:= Edit.Create(Panel3,112,8,41,28);
  Edit2.InitControl(True,True,alNone,crDefault,clWindow,'1','');
  Edit3:= Edit.Create(Panel3,176,8,41,28);
  Edit3.InitControl(True,True,alNone,crDefault,clWindow,'1','');
  Panel4:= Panel.Create(Form1,8,264,225,65);
  Panel4.InitControl(True,True,alNone,crDefault,clSkyBlue,'','');
  TextLabel2:= TextLabel.Create(Panel4,88,8,46,25);
  TextLabel2.InitControl(True,True,alNone,crDefault,clSkyBlue,'sin(x)+','');
  TextLabel4:= TextLabel.Create(Panel4,178,8,42,20);
  TextLabel4.InitControl(True,True,alNone,crDefault,clSkyBlue,'cos(x)','');
  Button18:= Button.Create(Panel4,16,40,89,17);
  Button18.InitControl(True,True,alNone,crDefault,0,'цвет','');
  Button19:= Button.Create(Panel4,120,40,97,17);
  Button19.InitControl(True,True,alNone,crDefault,0,'толщина','');
  CheckBox6:= CheckBox.Create(Panel4,8,8,41,25);
  CheckBox6.InitControl(True,True,alNone,crDefault,clSkyBlue,'y=','');
  Edit4:= Edit.Create(Panel4,48,8,41,28);
  Edit4.InitControl(True,True,alNone,crDefault,clWindow,'1','');
  Edit5:= Edit.Create(Panel4,136,8,41,28);
  Edit5.InitControl(True,True,alNone,crDefault,clWindow,'1','');
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
  CheckBox4.Checked:= True;
  CheckBox4.Font.Size:= 12;
  TextBox3.Font.Size:= 14;
  TextLabel3.Font.Size:= 12;
  CheckBox1.Checked:= True;
  CheckBox1.Font.Size:= 12;
  Edit6.Font.Size:= 12;
  Button10.Font.Size:= 12;
  Button12.Font.Size:= 12;
  Panel3.Font.Size:= 12;
  TextLabel5.Font.Size:= 12;
  TextLabel6.Font.Size:= 12;
  Button16.Font.Size:= 12;
  Button17.Font.Size:= 12;
  CheckBox5.Checked:= True;
  CheckBox5.Font.Size:= 12;
  Edit1.Font.Size:= 12;
  Edit2.Font.Size:= 12;
  Edit3.Font.Size:= 12;
  Panel4.Font.Size:= 12;
  TextLabel2.Font.Size:= 12;
  TextLabel4.Font.Size:= 12;
  Button18.Font.Size:= 12;
  Button19.Font.Size:= 12;
  CheckBox6.Checked:= True;
  CheckBox6.Font.Size:= 12;
  Edit4.Font.Size:= 12;
  Edit5.Font.Size:= 12;
  MainMenu1.Add('Файл');
  MainMenu1.items[1].Add('Новый',MainMenu1_1_1OnClick);
  MainMenu1.items[1].Add('Сохранить',MainMenu1_1_2OnClick);
  MainMenu1.items[1].Add('Выход',MainMenu1_1_6OnClick);
  MainMenu1.Add('Правка');
  MainMenu1.items[2].Add('y=x*x*x');
  MainMenu1.items[2].items[1].Add('построить',MainMenu1_2_1_1OnClick);
  MainMenu1.items[2].items[1].Add('цвет',MainMenu1_2_1_2OnClick);
  MainMenu1.items[2].Add('y=ax^2+bx+c');
  MainMenu1.items[2].items[2].Add('построить',MainMenu1_2_2_1OnClick);
  MainMenu1.items[2].items[2].Add('цвет',MainMenu1_2_2_2OnClick);
  MainMenu1.items[2].Add('y=a*sin(x)+b*cos(x)');
  MainMenu1.items[2].items[3].Add('построить',MainMenu1_2_3_1OnClick);
  MainMenu1.items[2].items[3].Add('цвет',MainMenu1_2_3_2OnClick);
  MainMenu1.items[2].Add('y=a/x');
  MainMenu1.items[2].items[4].Add('построить',MainMenu1_2_4_1OnClick);
  MainMenu1.items[2].items[4].Add('цвет',MainMenu1_2_4_2OnClick);
  MainMenu1.Add('Вид');
  MainMenu1.items[3].Add('очистить',MainMenu1_3_1OnClick);
  MainMenu1.items[3].Add('цвет фона',MainMenu1_3_2OnClick);
  MainMenu1.Add('Справка');
  MainMenu1.items[4].Add('Помощь',MainMenu1_4_1OnClick);
  MainMenu1.items[4].Add('Об авторе',MainMenu1_4_2OnClick);
  TextBox2.Lines.Add('Кнопка для построения ');
  TextBox2.Lines.Add('активных графиков');
  TextBox2.Lines.Add('');
  TextBox2.Lines.Add('Для перемещения КНОПКИ:');
  TextBox2.Lines.Add('вверх; влево; вправо; вниз');
  TextBox2.Lines.Add('');
  TextBox2.Lines.Add('вы можете менять масштаб ');
  TextBox2.Lines.Add('графика');
  TextBox2.Lines.Add('');
  TextBox2.Lines.Add('График вида:');
  TextBox2.Lines.Add('y=ax^2+bx+c');
  TextBox2.Lines.Add('График вида:');
  TextBox2.Lines.Add('y=a*sin(x)+b*cos(x)');
  TextBox2.Lines.Add('');
  TextBox2.Lines.Add('Стандартные графики.');
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
  CheckBox4.OnClick:=CheckBox4OnClick;
  Button11.OnClick:=Button11OnClick;
  Button15.OnClick:=Button15OnClick;
  CheckBox1.OnClick:=CheckBox1OnClick;
  Button8.OnClick:=Button8OnClick;
  Button9.OnClick:=Button9OnClick;
  Button10.OnClick:=Button10OnClick;
  Button12.OnClick:=Button12OnClick;
  Button16.OnClick:=Button16OnClick;
  Button17.OnClick:=Button17OnClick;
  CheckBox5.OnClick:=CheckBox5OnClick;
  Button18.OnClick:=Button18OnClick;
  Button19.OnClick:=Button19OnClick;
  CheckBox6.OnClick:=CheckBox6OnClick;
  Form1.Position:= poScreenCenter;
  Form1.OnCreate;
  Form1.Show;
  end;

 begin
  InitControls;
 end.
