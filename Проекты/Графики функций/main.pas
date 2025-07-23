uses vcl,graf;

//$VCLDESIGN+
var
  Form1: Form;
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
  Button14: Button;
  GroupBox1: GroupBox;
  TextLabel5: TextLabel;
  TextLabel6: TextLabel;
  TextLabel7: TextLabel;
  Edit6: Edit;
  Edit7: Edit;
  Edit8: Edit;
  Button16: Button;
  Button17: Button;
  Button18: Button;
  Button19: Button;
  Button20: Button;
  Button22: Button;
  Button24: Button;
  Button25: Button;
  Button26: Button;
  Button27: Button;
  Button28: Button;
  Button29: Button;
  Button30: Button;
  Button31: Button;
  Button32: Button;
  Button33: Button;
  Button34: Button;
  Button35: Button;
  Button36: Button;
  Button37: Button;
  Button38: Button;
  Button39: Button;
  Button40: Button;
  Button41: Button;
  Button21: Button;
  Panel5: Panel;
  Shape1: Shape;
  Shape2: Shape;
  TextLabel11: TextLabel;
  TextLabel12: TextLabel;
  TextLabel14: TextLabel;
  PaintBox2: PaintBox;
  TextLabel15: TextLabel;
  TextLabel16: TextLabel;
  TextLabel17: TextLabel;
  TextLabel18: TextLabel;
  TextLabel10: TextLabel;
  TextLabel13: TextLabel;
  TextLabel19: TextLabel;
  TextLabel20: TextLabel;
  TextLabel21: TextLabel;
  TextLabel22: TextLabel;
  TextLabel23: TextLabel;
  TextLabel24: TextLabel;
  TextLabel25: TextLabel;
  TextLabel26: TextLabel;
  TextLabel27: TextLabel;
  TextLabel28: TextLabel;
  TextLabel29: TextLabel;
  Button23: Button;
  Button46: Button;
  Edit18: Edit;
  Edit19: Edit;
  Edit20: Edit;
  Edit21: Edit;
  Edit22: Edit;
  Edit23: Edit;
  Edit24: Edit;
  Edit25: Edit;
  Edit26: Edit;
  Edit27: Edit;
  Edit28: Edit;
  Edit29: Edit;
  Edit30: Edit;
  Edit31: Edit;
  GroupBox2: GroupBox;
  GroupBox3: GroupBox;
  Edit11: Edit;
  ComboBox3: ComboBox;
  Button43: Button;
  Edit12: Edit;
  ComboBox4: ComboBox;
  GroupBox4: GroupBox;
  Edit13: Edit;
  Edit14: Edit;
  ComboBox5: ComboBox;
  ComboBox6: ComboBox;
  Button44: Button;
  GroupBox5: GroupBox;
  Edit15: Edit;
  Edit16: Edit;
  ComboBox7: ComboBox;
  ComboBox8: ComboBox;
  Button45: Button;
  GroupBox6: GroupBox;
  Edit9: Edit;
  Edit10: Edit;
  Button42: Button;
  ComboBox1: ComboBox;
  ComboBox2: ComboBox;
  Edit17: Edit;
  Button15: Button;
  Button47: Button;
  Button48: Button;
  TextBox4: TextBox;
  Button49: Button;
  ColorDialog1: ColorDialog;
  SaveDialog1: SaveDialog;
  MainMenu1: MainMenu;
//$VCLDESIGN-


  Var x,y,xk,xn:real;
      x1,y1,i,ed,q,cx,cy,w,h,j,ng,cvetf,k,nf:integer;
      c,ya,yb,yc: real;
      cvet,lw: array [1..10] of integer;
      x0: array [0..50] of real;
      g1,g2,g3,g4:integer;
      fn,s,s7,z:string;

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

     If (checkbox1.checked=false) and (i=1) then inc(i);
     If (checkbox2.checked=false) and (i=2) then inc(i);
     If (checkbox3.checked=false) and (i=3) then inc(i);
     If (checkbox4.checked=false) and (i=4) then inc(i);
     If (checkbox5.checked=false) and (i=5) then break;

     ng:=i;
      case (ng) of
       1: If pos('ln',edit1.text)>0 then x:=1/ed/5 else x:=xn;
       2: If pos('ln',edit2.text)>0 then x:=1/ed/5 else x:=xn;
       3: If pos('ln',edit3.text)>0 then x:=1/ed/5 else x:=xn;
       4: If pos('ln',edit4.text)>0 then x:=1/ed/5 else x:=xn;
       5: If pos('ln',edit5.text)>0 then x:=1/ed/5 else x:=xn; End;
     pen.color:=cvet[i];
     pen.width:=lw[i];
     While x<xk do
     Begin
      y:=gr(ng,x);
      x1:=cx+round(x*ed);
      y1:=cy-Round(y*ed);
      if (x=xn) or (x=1/ed/5) then moveto(x1,y1);
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

  CheckBox1.color:=rgb(0,0,0);
  CheckBox2.color:=rgb(0,0,0);
  CheckBox3.color:=rgb(0,0,0);
  CheckBox4.color:=rgb(0,0,0);
  CheckBox5.color:=rgb(0,0,0);
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
 If textbox4.visible=true then
  Begin textbox4.visible:=false; button49.visible:=false; End
    else
  Begin textbox4.visible:=true; button49.visible:=true; End;
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

 procedure nuli1(a,b: real);        // Нахождение нуля на отрезке [a;b]
  var c,ya,yb,yc: real;

  begin
    ya:=gr(ng,a)-gr(nf,a);
    yb:=gr(ng,b)-gr(nf,b);
    while b-a>0.000001 do
      begin
        c:=(b+a)/2;        // середина отрезка [a,b]
        yc:=gr(ng,c)-gr(nf,c);
        if yc*ya>0 then a:=c else b:=c;
      end;
    k:=k+1;
    x0[k]:=c;

    TextBox2.add('при х'+IntToStr(k)+'='+FloatToStr(c));           // корни уравнения f(x)=0
  end;

procedure Button13OnClick;
begin

 Textbox2.clear;
 TextBox2.add('Корни : ');
 If radiobutton6.checked=true then nf:=1;
 If radiobutton7.checked=true then nf:=2;
 If radiobutton8.checked=true then nf:=3;
 If radiobutton9.checked=true then nf:=4;
 If radiobutton10.checked=true then nf:=5;
 If radiobutton11.checked=true then ng:=1;
 If radiobutton12.checked=true then ng:=2;
 If radiobutton13.checked=true then ng:=3;
 If radiobutton14.checked=true then ng:=4;
 If radiobutton15.checked=true then ng:=5;

  k:=0;
  x:=xn;
  ya:=gr(ng,x)-gr(nf,x);
  x:=x+1/ed;

  while x<xk do
    begin
      yb:=gr(ng,x)-gr(nf,x);
      if ya*yb<0 then nuli1(x-1/ed,x);            // между  (x-1/ed) и (х) есть ноль. Обращение к процедуре нахождения нуля
      ya:=yb;
      x:=x+1/ed;
    end;


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


procedure nuli(a,b: real);
  begin
    ya:=gr(ng,a);
    yb:=gr(ng,b);
    while b-a>0.0001 do
      begin
        c:=(b+a)/2;
        yc:=gr(ng,c);
        if yc*ya>0 then a:=c else b:=c;
      end;
    k:=k+1;
    x0[k]:=c;
    if ya<0 then z:='<' else z:='>';

    TextBox1.add(' f(x)'+z+'0 на интервале ('+FloatToStr(x0[k-1])+'; '+FloatToStr(c)+')');
    TextBox1.add('при х'+IntToStr(k)+'='+FloatToStr(c)+'   f(x'+IntToStr(k)+')= 0');
  end;

procedure Button14OnClick;
begin

  textBox1.clear;
  k:=0;
  x:=xn;
  x0[0]:=xn;
  If radiobutton6.checked=true then ng:=1;
  If radiobutton7.checked=true then ng:=2;
  If radiobutton8.checked=true then ng:=3;
  If radiobutton9.checked=true then ng:=4;
  If radiobutton10.checked=true then ng:=5;
  ya:=gr(ng,x);
  x:=x+1/ed;

  while x<xk do
    begin
      yb:=gr(ng,x);
      if ya*yb<0 then nuli(x-1/ed,x);
      ya:=yb;
      x:=x+1/ed;
    end;
  if ya<0 then z:='<' else z:='>';
  TextBox1.add(' f(x)'+z+'0 на интервале ('+FloatToStr(x0[k])+'; '+FloatToStr(xk)+')');
end;

procedure Button15OnClick;
begin
 If button15.caption='калькулятор'
 then Begin groupbox1.visible:=true; groupbox2.visible:=false;
 button47.caption:='конвертер'; button15.caption:='(скрыть)' End
 else Begin groupbox1.visible:=false; button15.caption:='калькулятор' End;
end;

procedure Button27OnClick;
begin
 edit6.caption:= edit6.caption +'1';
end;

procedure Button28OnClick;
begin
  edit6.caption:= edit6.caption +'2';
end;

procedure Button29OnClick;
begin
  edit6.caption:= edit6.caption +'3';
end;

procedure Button30OnClick;
begin
  edit6.caption:= edit6.caption +'4';
end;

procedure Button31OnClick;
begin
  edit6.caption:= edit6.caption +'5';
end;

procedure Button32OnClick;
begin
  edit6.caption:= edit6.caption +'6';
end;

procedure Button33OnClick;
begin
  edit6.caption:= edit6.caption +'7';
end;

procedure Button34OnClick;
begin
  edit6.caption:= edit6.caption +'8';
end;

procedure Button35OnClick;
begin
  edit6.caption:= edit6.caption +'9';
end;

procedure Button36OnClick;
begin
  edit6.caption:= edit6.caption +'0';
end;

procedure Button37OnClick;
begin
  edit6.caption:= edit6.caption +'.';
end;

procedure Button24OnClick;
begin
  edit6.caption:='';
end;

procedure Button25OnClick;
begin
  edit7.caption:='';
end;

procedure Button26OnClick;
begin
  edit6.caption:='';
  edit7.caption:='';
  edit8.caption:='';
end;

procedure Button16OnClick;
begin
  edit7.caption:=edit6.caption;
  edit6.caption:='';
end;

procedure Button17OnClick;
begin
  edit6.caption:=edit8.caption;
  edit8.caption:='';
end;

procedure Button38OnClick;
begin
  If edit6.caption='' then edit6.caption:='0';
  If edit7.caption='' then edit7.caption:='0';
  edit8.caption:=inttostr(strtoint(edit7.caption)+strtoint(edit6.caption));
  edit6.caption:='';
  edit7.caption:='';
end;

procedure Button39OnClick;
begin
  If edit6.caption='' then edit6.caption:='0';
  If edit7.caption='' then edit7.caption:='0';
  edit8.caption:=inttostr(strtoint(edit6.caption)-strtoint(edit7.caption));
  edit6.caption:='';
  edit7.caption:='';
end;

procedure Button41OnClick;
begin
  If edit6.caption='' then edit6.caption:='0';
  If edit7.caption='' then edit7.caption:='0';
  edit8.caption:=inttostr(strtoint(edit7.caption)*strtoint(edit6.caption));
  edit6.caption:='';
  edit7.caption:='';
end;

procedure Button40OnClick;
begin
  If edit6.caption='' then edit6.caption:='0';
  If (edit7.caption<>'') or (edit7.caption<>'0') then Begin
  edit8.caption:=floattostr(strtofloat(edit6.caption)/strtofloat(edit7.caption));
  edit6.caption:='';
  edit7.caption:=''; End;
end;

procedure Button18OnClick;
begin
  edit8.caption:=floattostr(sqrt(strtofloat(edit6.caption)));
end;

procedure Button19OnClick;
var ii,kk:integer;
begin
 kk:=1;
  For ii:=1 to strtoint(edit7.caption) do
   kk:=kk*strtoint(edit6.caption);
  edit8.caption:=inttostr(kk);
end;

procedure Button20OnClick;
var ii,kk:integer;
begin
kk:=1;
  For ii:=1 to strtoint(edit6.caption) do
   kk:=kk*ii;
  edit8.caption:=inttostr(kk);
end;

procedure Button22OnClick;
begin
  edit6.caption:='3.14159';
end;

procedure Button21OnClick;
begin
  panel5.visible:=true;
  with paintbox2 do
   Begin
    line (0,88,88,88);
    lineto (44,0);
    lineto (0,88);
    floodfill (44,44, RGB(255,255,255));
   End;
end;

procedure Button23OnClick;
begin
  panel5.visible:=false;
end;

procedure Button46OnClick;
Var polp:real;
begin
   If (edit18.caption<>'') and (edit19.caption<>'') then
    Begin
     edit20.caption:=floattostr(strtofloat(edit18.caption)*strtofloat(edit19.caption));
     edit21.caption:=floattostr((strtofloat(edit18.caption)+strtofloat(edit19.caption))*2);
    End else
   If (edit18.caption<>'') and (edit20.caption<>'') then
    Begin
     edit19.caption:=floattostr(strtofloat(edit20.caption)/strtofloat(edit18.caption));
     edit21.caption:=floattostr((strtofloat(edit18.caption)+strtofloat(edit19.caption))*2);
    End else
   If (edit19.caption<>'') and (edit20.caption<>'') then
    Begin
     edit18.caption:=floattostr(strtofloat(edit20.caption)/strtofloat(edit19.caption));
     edit21.caption:=floattostr((strtofloat(edit18.caption)+strtofloat(edit19.caption))*2);
    End else
   If (edit18.caption<>'') and (edit21.caption<>'') then
    Begin
     edit19.caption:=floattostr(strtofloat(edit21.caption)/2-strtofloat(edit19.caption));
     edit20.caption:=floattostr((strtofloat(edit18.caption)*strtofloat(edit19.caption)));
    End else
   If (edit19.caption<>'') and (edit21.caption<>'') then
    Begin
     edit18.caption:=floattostr(strtofloat(edit21.caption)/2-strtofloat(edit19.caption));
     edit20.caption:=floattostr((strtofloat(edit18.caption)*strtofloat(edit19.caption)));
    End;

   If (edit22.caption<>'') then
    Begin
     edit23.caption:=floattostr(pi*sqr(strtofloat(edit22.caption)));
     edit24.caption:=floattostr(2*pi*strtofloat(edit22.caption));
    End else
   If (edit23.caption<>'') then
    Begin
     edit22.caption:=floattostr(sqrt(strtofloat(edit23.caption))/pi);
     edit24.caption:=floattostr(2*pi*strtofloat(edit22.caption));
    End else
   If (edit24.caption<>'') then
    Begin
     edit22.caption:=floattostr(strtofloat(edit24.caption)/2/pi);
     edit23.caption:=floattostr(pi*sqr(strtofloat(edit22.caption)));
    End;


   If (edit28.caption<>'') and (edit29.caption<>'') and (edit30.caption<>'') then
    Begin
     polp:=((strtofloat(edit28.caption)) + (strtofloat(edit29.caption)) + (strtofloat(edit30.caption))) / 2;
     edit31.caption:=floattostr(sqrt(polp*(polp-strtofloat(edit28.caption))*(polp-strtofloat(edit29.caption))*(polp-strtofloat(edit30.caption))));
    End else
     Begin
      If (edit25.caption<>'') then polp:=sin(strtoint(edit25.caption)) else
      If (edit26.caption<>'') then polp:=sin(strtoint(edit26.caption)) else
      If (edit27.caption<>'') then polp:=sin(strtoint(edit27.caption));
      If (edit28.caption<>'') and (edit29.caption<>'') then
       edit31.caption:=floattostr(0.5*strtofloat(edit28.caption)*strtofloat(edit29.caption)*polp);
      If (edit29.caption<>'') and (edit30.caption<>'') then
       edit31.caption:=floattostr(0.5*strtofloat(edit30.caption)*strtofloat(edit29.caption)*polp);
      If (edit28.caption<>'') and (edit30.caption<>'') then
       edit31.caption:=floattostr(0.5*strtofloat(edit28.caption)*strtofloat(edit30.caption)*polp);
     End;
end;

procedure Button47OnClick;
begin
 If button47.caption='конвертер'
 then Begin groupbox2.visible:=true; groupbox1.visible:=false;
 button15.caption:='калькулятор'; button47.caption:='(скрыть)' End
 else Begin groupbox2.visible:=false; button47.caption:='конвертер' End;
end;

procedure Button43OnClick;
Var a,b:real;
begin
  If combobox3.text=('мкг') then a:=0.000001;
  If combobox3.text=('мг') then a:=0.001;
  If combobox3.text=('г') then a:=1;
  If combobox3.text=('кг') then a:=1000;
  If combobox3.text=('ц') then a:=100000;
  If combobox3.text=('т') then a:=1000000;

  If combobox4.text=('мкг') then b:=0.000001;
  If combobox4.text=('мг') then b:=0.001;
  If combobox4.text=('г') then b:=1;
  If combobox4.text=('кг') then b:=1000;
  If combobox4.text=('ц') then b:=100000;
  If combobox4.text=('т') then b:=1000000;

  edit12.text:=floattostr((strtofloat(edit11.text))*a/b);
end;

procedure Button44OnClick;
Var a,b:real;
begin
  If combobox5.text=('мм') then a:=0.1;
  If combobox5.text=('см') then a:=1;
  If combobox5.text=('дм') then a:=10;
  If combobox5.text=('м') then a:=100;
  If combobox5.text=('км') then a:=100000;

  If combobox6.text=('мм') then b:=0.1;
  If combobox6.text=('см') then b:=1;
  If combobox6.text=('дм') then b:=10;
  If combobox6.text=('м') then b:=100;
  If combobox6.text=('км') then b:=100000;

  edit14.text:=floattostr((strtofloat(edit13.text))*a/b);
end;

procedure Button45OnClick;
Var a,b:real;
begin
  If combobox7.text=('мс') then a:=0.16666666667;
  If combobox7.text=('с') then a:=0.016666666667;
  If combobox7.text=('мин') then a:=1;
  If combobox7.text=('ч') then a:=60;
  If combobox7.text=('д') then a:=1440;
  If combobox7.text=('нед') then a:=10080;
  If combobox7.text=('мес') then a:=40320;
  If combobox7.text=('г') then a:=483840;

  If combobox8.text=('мс') then b:=600;
  If combobox8.text=('с') then b:=60;
  If combobox8.text=('мин') then b:=1;
  If combobox8.text=('ч') then b:=60;
  If combobox8.text=('д') then b:=1440;
  If combobox8.text=('нед') then b:=10080;
  If combobox8.text=('мес') then b:=40320;
  If combobox8.text=('г') then b:=483840;

  edit16.text:=floattostr((strtofloat(edit15.text))*a/b);
end;

procedure Button42OnClick;
  Var x,x2,ost,n,n1,d,st2,i:integer;
  s2,s,c:string;

begin
 s2:='';

 n:=strtoint(combobox1.text);
 n1:=strtoint(combobox2.text);
 s:=edit9.text;
  x:=0;
 If n<>10 then
   Begin
    d:=length (edit9.text);
    st2:=1;
    For i:=1 to d do
     Begin
      c:=s[d-i+1];
      x:=x+StrToInt(c)*st2;
      st2:=st2*2;
     End;
   End;

  While x>0 do
    Begin
     ost:=x mod n1;
     s2:=IntToStr(ost)+s2;
     x:=x div n1;
    End;

 edit17.text:=s2;
end;

procedure MainMenu1_4_3OnClick;
begin
 If textbox3.visible=true then
  Begin textbox3.visible:=false; button48.visible:=false; End
    else
  Begin textbox3.visible:=true; button48.visible:=true; End;
end;

procedure Button48OnClick;
begin
 textbox3.visible:=false;
 button48.visible:=false;
end;

procedure Button49OnClick;
begin
 textbox4.visible:=false;
 button49.visible:=false;
end;

 procedure InitControls;
  begin
  Form1:= Form.Create(0,0,1001,620);
  Form1.InitControl(True,False,alNone,crDefault,clInactiveBorder,'графики функций','');
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
  TextBox3:= TextBox.Create(Form1,240,8,217,249);
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
//  RadioButton1.PopMenu:= 0;
  RadioButton2:= RadioButton.Create(Panel2,64,32,17,17);
  RadioButton2.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton2','');
//  RadioButton2.PopMenu:= 0;
  RadioButton3:= RadioButton.Create(Panel2,104,32,17,17);
  RadioButton3.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton3','');
//  RadioButton3.PopMenu:= 0;
  RadioButton4:= RadioButton.Create(Panel2,144,32,17,17);
  RadioButton4.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton4','');
//  RadioButton4.PopMenu:= 0;
  RadioButton5:= RadioButton.Create(Panel2,184,32,17,17);
  RadioButton5.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton5','');
//  RadioButton5.PopMenu:= 0;
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
//  RadioButton6.PopMenu:= 0;
  RadioButton7:= RadioButton.Create(Panel3,64,32,17,17);
  RadioButton7.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton7','');
//  RadioButton7.PopMenu:= 0;
  RadioButton8:= RadioButton.Create(Panel3,104,32,17,17);
  RadioButton8.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton8','');
//  RadioButton8.PopMenu:= 0;
  RadioButton9:= RadioButton.Create(Panel3,144,32,17,17);
  RadioButton9.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton9','');
//  RadioButton9.PopMenu:= 0;
  RadioButton10:= RadioButton.Create(Panel3,184,32,17,17);
  RadioButton10.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton10','');
//  RadioButton10.PopMenu:= 0;
  Panel4:= Panel.Create(Form1,752,288,225,57);
  Panel4.InitControl(True,True,alNone,crDefault,clSkyBlue,'','');
  TextLabel4:= TextLabel.Create(Panel4,24,32,173,20);
  TextLabel4.InitControl(True,True,alNone,crDefault,clSkyBlue,'1         2        3       4        5','');
  RadioButton11:= RadioButton.Create(Panel4,24,8,17,17);
  RadioButton11.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton11','');
//  RadioButton11.PopMenu:= 0;
  RadioButton12:= RadioButton.Create(Panel4,64,8,17,17);
  RadioButton12.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton12','');
//  RadioButton12.PopMenu:= 0;
  RadioButton13:= RadioButton.Create(Panel4,104,8,17,17);
  RadioButton13.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton13','');
//  RadioButton13.PopMenu:= 0;
  RadioButton14:= RadioButton.Create(Panel4,144,8,17,17);
  RadioButton14.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton14','');
//  RadioButton14.PopMenu:= 0;
  RadioButton15:= RadioButton.Create(Panel4,184,8,17,17);
  RadioButton15.InitControl(True,True,alNone,crDefault,clSkyBlue,'RadioButton15','');
//  RadioButton15.PopMenu:= 0;
  TextBox1:= TextBox.Create(Form1,752,112,225,161);
  TextBox1.InitControl(True,True,alNone,crDefault,clWindow,'','');
  TextBox1.ScrollBars:= ssVertical;
  TextBox2:= TextBox.Create(Form1,752,352,225,153);
  TextBox2.InitControl(True,True,alNone,crDefault,clWindow,'','');
  TextBox2.ScrollBars:= ssVertical;
  Button13:= Button.Create(Form1,752,512,225,33);
  Button13.InitControl(True,True,alNone,crDefault,0,'решить систему','');
  Button14:= Button.Create(Form1,752,72,225,33);
  Button14.InitControl(True,True,alNone,crDefault,0,'исследовать график','');
  GroupBox1:= GroupBox.Create(Form1,240,80,497,361);
  GroupBox1.InitControl(True,False,alNone,crDefault,clWhite,'Калькулятор','');
  TextLabel5:= TextLabel.Create(GroupBox1,40,32,67,24);
  TextLabel5.InitControl(True,True,alNone,crDefault,clWhite,'1 число','');
  TextLabel6:= TextLabel.Create(GroupBox1,192,32,67,24);
  TextLabel6.InitControl(True,True,alNone,crDefault,clWhite,'2 число','');
  TextLabel7:= TextLabel.Create(GroupBox1,336,32,92,24);
  TextLabel7.InitControl(True,True,alNone,crDefault,clWhite,'результат','');
  Edit6:= Edit.Create(GroupBox1,32,56,137,32);
  Edit6.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit7:= Edit.Create(GroupBox1,184,56,137,32);
  Edit7.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit8:= Edit.Create(GroupBox1,336,56,137,32);
  Edit8.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Button16:= Button.Create(GroupBox1,288,104,185,41);
  Button16.InitControl(True,True,alNone,crDefault,0,'перенести число','');
  Button17:= Button.Create(GroupBox1,288,144,185,41);
  Button17.InitControl(True,True,alNone,crDefault,0,'перенести рез','');
  Button18:= Button.Create(GroupBox1,288,200,97,41);
  Button18.InitControl(True,True,alNone,crDefault,0,'корень','');
  Button19:= Button.Create(GroupBox1,384,200,89,41);
  Button19.InitControl(True,True,alNone,crDefault,0,'степень','');
  Button20:= Button.Create(GroupBox1,288,240,97,41);
  Button20.InitControl(True,True,alNone,crDefault,0,'!','');
  Button22:= Button.Create(GroupBox1,384,240,89,41);
  Button22.InitControl(True,True,alNone,crDefault,0,'Pi','');
  Button24:= Button.Create(GroupBox1,32,104,65,41);
  Button24.InitControl(True,True,alNone,crDefault,0,'del1','');
  Button25:= Button.Create(GroupBox1,96,104,65,41);
  Button25.InitControl(True,True,alNone,crDefault,0,'del2','');
  Button26:= Button.Create(GroupBox1,176,104,89,41);
  Button26.InitControl(True,True,alNone,crDefault,0,'off','');
  Button27:= Button.Create(GroupBox1,32,152,57,49);
  Button27.InitControl(True,True,alNone,crDefault,0,'1','');
  Button28:= Button.Create(GroupBox1,88,152,57,49);
  Button28.InitControl(True,True,alNone,crDefault,0,'2','');
  Button29:= Button.Create(GroupBox1,144,152,57,49);
  Button29.InitControl(True,True,alNone,crDefault,0,'3','');
  Button30:= Button.Create(GroupBox1,32,200,57,49);
  Button30.InitControl(True,True,alNone,crDefault,0,'4','');
  Button31:= Button.Create(GroupBox1,88,200,57,49);
  Button31.InitControl(True,True,alNone,crDefault,0,'5','');
  Button32:= Button.Create(GroupBox1,144,200,57,49);
  Button32.InitControl(True,True,alNone,crDefault,0,'6','');
  Button33:= Button.Create(GroupBox1,32,248,57,49);
  Button33.InitControl(True,True,alNone,crDefault,0,'7','');
  Button34:= Button.Create(GroupBox1,88,248,57,49);
  Button34.InitControl(True,True,alNone,crDefault,0,'8','');
  Button35:= Button.Create(GroupBox1,144,248,57,49);
  Button35.InitControl(True,True,alNone,crDefault,0,'9','');
  Button36:= Button.Create(GroupBox1,32,296,57,49);
  Button36.InitControl(True,True,alNone,crDefault,0,'0','');
  Button37:= Button.Create(GroupBox1,88,296,57,49);
  Button37.InitControl(True,True,alNone,crDefault,0,'.','');
  Button38:= Button.Create(GroupBox1,216,152,49,113);
  Button38.InitControl(True,True,alNone,crDefault,0,'+','');
  Button39:= Button.Create(GroupBox1,216,264,49,41);
  Button39.InitControl(True,True,alNone,crDefault,0,'-','');
  Button40:= Button.Create(GroupBox1,216,304,49,41);
  Button40.InitControl(True,True,alNone,crDefault,0,'/','');
  Button41:= Button.Create(GroupBox1,160,304,57,41);
  Button41.InitControl(True,True,alNone,crDefault,0,'X','');
  Button21:= Button.Create(GroupBox1,288,296,185,49);
  Button21.InitControl(True,True,alNone,crDefault,0,'решение фигур','');
  Panel5:= Panel.Create(GroupBox1,16,24,465,329);
  Panel5.InitControl(True,False,alNone,crDefault,clBtnFace,'','');
  Shape1:= Shape.Create(Panel5,32,24,105,89);
  Shape1.InitControl(True,True,alNone,crDefault,0,'0','');
  Shape2:= Shape.Create(Panel5,184,24,89,89);
  Shape2.InitControl(True,True,alNone,crDefault,0,'0','');
  TextLabel11:= TextLabel.Create(Panel5,224,56,6,24);
  TextLabel11.InitControl(True,True,alNone,crDefault,clWindow,'r','');
  TextLabel12:= TextLabel.Create(Panel5,40,56,10,24);
  TextLabel12.InitControl(True,True,alNone,crDefault,clWindow,'a','');
  TextLabel14:= TextLabel.Create(Panel5,80,88,11,24);
  TextLabel14.InitControl(True,True,alNone,crDefault,clWindow,'b','');
  PaintBox2:= PaintBox.Create(Panel5,328,24,89,89);
  PaintBox2.InitControl(True,True,alNone,crDefault,0,'0','');
  TextLabel15:= TextLabel.Create(Panel5,312,88,13,24);
  TextLabel15.InitControl(True,True,alNone,crDefault,clBtnFace,'A','');
  TextLabel16:= TextLabel.Create(Panel5,368,0,12,24);
  TextLabel16.InitControl(True,True,alNone,crDefault,clBtnFace,'B','');
  TextLabel17:= TextLabel.Create(Panel5,424,88,13,24);
  TextLabel17.InitControl(True,True,alNone,crDefault,clBtnFace,'C','');
  TextLabel18:= TextLabel.Create(Panel5,24,144,21,24);
  TextLabel18.InitControl(True,True,alNone,crDefault,clBtnFace,'a=','');
  TextLabel10:= TextLabel.Create(Panel5,24,176,22,24);
  TextLabel10.InitControl(True,True,alNone,crDefault,clBtnFace,'b=','');
  TextLabel13:= TextLabel.Create(Panel5,24,208,23,24);
  TextLabel13.InitControl(True,True,alNone,crDefault,clBtnFace,'S=','');
  TextLabel19:= TextLabel.Create(Panel5,24,240,23,24);
  TextLabel19.InitControl(True,True,alNone,crDefault,clBtnFace,'P=','');
  TextLabel20:= TextLabel.Create(Panel5,160,144,17,24);
  TextLabel20.InitControl(True,True,alNone,crDefault,clBtnFace,'r=','');
  TextLabel21:= TextLabel.Create(Panel5,160,176,23,24);
  TextLabel21.InitControl(True,True,alNone,crDefault,clBtnFace,'S=','');
  TextLabel22:= TextLabel.Create(Panel5,160,208,23,24);
  TextLabel22.InitControl(True,True,alNone,crDefault,clBtnFace,'P=','');
  TextLabel23:= TextLabel.Create(Panel5,296,120,38,24);
  TextLabel23.InitControl(True,True,alNone,crDefault,clBtnFace,'BAC','');
  TextLabel24:= TextLabel.Create(Panel5,344,120,38,24);
  TextLabel24.InitControl(True,True,alNone,crDefault,clBtnFace,'ABC','');
  TextLabel25:= TextLabel.Create(Panel5,392,120,38,24);
  TextLabel25.InitControl(True,True,alNone,crDefault,clBtnFace,'BCA','');
  TextLabel26:= TextLabel.Create(Panel5,304,176,25,24);
  TextLabel26.InitControl(True,True,alNone,crDefault,clBtnFace,'AB','');
  TextLabel27:= TextLabel.Create(Panel5,352,176,25,24);
  TextLabel27.InitControl(True,True,alNone,crDefault,clBtnFace,'BC','');
  TextLabel28:= TextLabel.Create(Panel5,400,176,26,24);
  TextLabel28.InitControl(True,True,alNone,crDefault,clBtnFace,'CA','');
  TextLabel29:= TextLabel.Create(Panel5,296,240,23,24);
  TextLabel29.InitControl(True,True,alNone,crDefault,clBtnFace,'S=','');
  Button23:= Button.Create(Panel5,272,272,185,49);
  Button23.InitControl(True,True,alNone,crDefault,0,'калькулятор','');
  Button46:= Button.Create(Panel5,18,272,241,49);
  Button46.InitControl(True,True,alNone,crDefault,0,'вычислить фигуры','');
  Edit18:= Edit.Create(Panel5,48,136,89,32);
  Edit18.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit19:= Edit.Create(Panel5,48,168,89,32);
  Edit19.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit20:= Edit.Create(Panel5,48,200,89,32);
  Edit20.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit21:= Edit.Create(Panel5,48,232,89,32);
  Edit21.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit22:= Edit.Create(Panel5,184,136,89,32);
  Edit22.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit23:= Edit.Create(Panel5,184,168,89,32);
  Edit23.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit24:= Edit.Create(Panel5,184,200,89,32);
  Edit24.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit25:= Edit.Create(Panel5,296,144,49,32);
  Edit25.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit26:= Edit.Create(Panel5,344,144,49,32);
  Edit26.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit27:= Edit.Create(Panel5,392,144,49,32);
  Edit27.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit28:= Edit.Create(Panel5,296,200,49,32);
  Edit28.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit29:= Edit.Create(Panel5,344,200,49,32);
  Edit29.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit30:= Edit.Create(Panel5,392,200,49,32);
  Edit30.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit31:= Edit.Create(Panel5,320,240,113,32);
  Edit31.InitControl(True,True,alNone,crDefault,clWindow,'','');
  GroupBox2:= GroupBox.Create(Form1,240,112,497,361);
  GroupBox2.InitControl(True,False,alNone,crDefault,clWhite,'Конвертер','');
  GroupBox3:= GroupBox.Create(GroupBox2,24,24,449,65);
  GroupBox3.InitControl(True,True,alNone,crDefault,clWhite,'масса','');
  Edit11:= Edit.Create(GroupBox3,8,24,97,28);
  Edit11.InitControl(True,True,alNone,crDefault,clWindow,'','');
  ComboBox3:= ComboBox.Create(GroupBox3,112,24,73,28);
  ComboBox3.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Button43:= Button.Create(GroupBox3,184,24,75,25);
  Button43.InitControl(True,True,alNone,crDefault,0,'==>','');
  Edit12:= Edit.Create(GroupBox3,264,24,97,28);
  Edit12.InitControl(True,True,alNone,crDefault,clWindow,'','');
  ComboBox4:= ComboBox.Create(GroupBox3,368,24,73,28);
  ComboBox4.InitControl(True,True,alNone,crDefault,clWindow,'','');
  GroupBox4:= GroupBox.Create(GroupBox2,24,88,449,65);
  GroupBox4.InitControl(True,True,alNone,crDefault,clWhite,'расстояние','');
  Edit13:= Edit.Create(GroupBox4,8,24,97,28);
  Edit13.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit14:= Edit.Create(GroupBox4,264,24,97,28);
  Edit14.InitControl(True,True,alNone,crDefault,clWindow,'','');
  ComboBox5:= ComboBox.Create(GroupBox4,112,24,73,28);
  ComboBox5.InitControl(True,True,alNone,crDefault,clWindow,'','');
  ComboBox6:= ComboBox.Create(GroupBox4,368,24,73,28);
  ComboBox6.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Button44:= Button.Create(GroupBox4,184,24,75,25);
  Button44.InitControl(True,True,alNone,crDefault,0,'==>','');
  GroupBox5:= GroupBox.Create(GroupBox2,24,152,449,65);
  GroupBox5.InitControl(True,True,alNone,crDefault,clWhite,'время','');
  Edit15:= Edit.Create(GroupBox5,8,24,97,28);
  Edit15.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit16:= Edit.Create(GroupBox5,264,24,97,28);
  Edit16.InitControl(True,True,alNone,crDefault,clWindow,'','');
  ComboBox7:= ComboBox.Create(GroupBox5,112,24,73,28);
  ComboBox7.InitControl(True,True,alNone,crDefault,clWindow,'','');
  ComboBox8:= ComboBox.Create(GroupBox5,368,24,73,28);
  ComboBox8.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Button45:= Button.Create(GroupBox5,184,24,75,25);
  Button45.InitControl(True,True,alNone,crDefault,0,'==>','');
  GroupBox6:= GroupBox.Create(GroupBox2,24,216,449,129);
  GroupBox6.InitControl(True,True,alNone,crDefault,clWhite,'системы счисления','');
  Edit9:= Edit.Create(GroupBox6,8,24,321,28);
  Edit9.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit10:= Edit.Create(GroupBox6,8,152,337,28);
  Edit10.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Button42:= Button.Create(GroupBox6,8,56,425,25);
  Button42.InitControl(True,True,alNone,crDefault,0,'перевести','');
  ComboBox1:= ComboBox.Create(GroupBox6,336,24,97,28);
  ComboBox1.InitControl(True,True,alNone,crDefault,clWindow,'','');
  ComboBox2:= ComboBox.Create(GroupBox6,336,88,97,28);
  ComboBox2.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit17:= Edit.Create(GroupBox6,8,88,321,28);
  Edit17.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Button15:= Button.Create(Form1,624,440,113,33);
  Button15.InitControl(True,True,alNone,crDefault,0,'калькулятор','');
  Button47:= Button.Create(Form1,624,472,113,33);
  Button47.InitControl(True,True,alNone,crDefault,0,'конвертер','');
  Button48:= Button.Create(Form1,240,232,217,25);
  Button48.InitControl(True,False,alNone,crDefault,0,'закрыть','');
  TextBox4:= TextBox.Create(Form1,240,8,417,409);
  TextBox4.InitControl(True,False,alNone,crDefault,clWindow,'','');
  TextBox4.ScrollBars:= ssNone;
  Button49:= Button.Create(Form1,240,392,417,25);
  Button49.InitControl(True,False,alNone,crDefault,0,'закрыть','');
  ColorDialog1:= ColorDialog.Create;
  ColorDialog1.Color:= clBlack;
  SaveDialog1:= SaveDialog.Create;
  MainMenu1:= MainMenu.Create;
  Form1.Menu:= MainMenu1;
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
  TextBox3.Font.Size:= 12;
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
  Button13.Font.Size:= 12;
  Button14.Font.Size:= 12;
  GroupBox1.Font.Size:= 14;
  TextLabel5.Font.Size:= 14;
  TextLabel6.Font.Size:= 14;
  TextLabel7.Font.Size:= 14;
  Edit6.Font.Size:= 14;
  Edit7.Font.Size:= 14;
  Edit8.Font.Size:= 14;
  Button16.Font.Size:= 14;
  Button17.Font.Size:= 14;
  Button18.Font.Size:= 14;
  Button19.Font.Size:= 14;
  Button20.Font.Size:= 14;
  Button22.Font.Size:= 14;
  Button24.Font.Size:= 14;
  Button25.Font.Size:= 14;
  Button26.Font.Size:= 14;
  Button27.Font.Size:= 14;
  Button28.Font.Size:= 14;
  Button29.Font.Size:= 14;
  Button30.Font.Size:= 14;
  Button31.Font.Size:= 14;
  Button32.Font.Size:= 14;
  Button33.Font.Size:= 14;
  Button34.Font.Size:= 14;
  Button35.Font.Size:= 14;
  Button36.Font.Size:= 14;
  Button37.Font.Size:= 14;
  Button38.Font.Size:= 14;
  Button39.Font.Size:= 14;
  Button40.Font.Size:= 14;
  Button41.Font.Size:= 14;
  Button21.Font.Size:= 14;
  Panel5.Font.Size:= 14;
  Shape1.Font.Size:= 14;
  Shape2.Shape:= stCircle;
  Shape2.Font.Size:= 14;
  TextLabel11.Font.Size:= 14;
  TextLabel12.Font.Size:= 14;
  TextLabel14.Font.Size:= 14;
  TextLabel15.Font.Size:= 14;
  TextLabel16.Font.Size:= 14;
  TextLabel17.Font.Size:= 14;
  TextLabel18.Font.Size:= 14;
  TextLabel10.Font.Size:= 14;
  TextLabel13.Font.Size:= 14;
  TextLabel19.Font.Size:= 14;
  TextLabel20.Font.Size:= 14;
  TextLabel21.Font.Size:= 14;
  TextLabel22.Font.Size:= 14;
  TextLabel23.Font.Size:= 14;
  TextLabel24.Font.Size:= 14;
  TextLabel25.Font.Size:= 14;
  TextLabel26.Font.Size:= 14;
  TextLabel27.Font.Size:= 14;
  TextLabel28.Font.Size:= 14;
  TextLabel29.Font.Size:= 14;
  Button23.Font.Size:= 14;
  Button46.Font.Size:= 14;
  Edit18.Font.Size:= 14;
  Edit19.Font.Size:= 14;
  Edit20.Font.Size:= 14;
  Edit21.Font.Size:= 14;
  Edit22.Font.Size:= 14;
  Edit23.Font.Size:= 14;
  Edit24.Font.Size:= 14;
  Edit25.Font.Size:= 14;
  Edit26.Font.Size:= 14;
  Edit27.Font.Size:= 14;
  Edit28.Font.Size:= 14;
  Edit29.Font.Size:= 14;
  Edit30.Font.Size:= 14;
  Edit31.Font.Size:= 14;
  GroupBox2.Font.Size:= 14;
  GroupBox3.Font.Size:= 12;
  Edit11.Font.Size:= 12;
  ComboBox3.Font.Size:= 12;
  Button43.Font.Size:= 12;
  Edit12.Font.Size:= 12;
  ComboBox4.Font.Size:= 12;
  GroupBox4.Font.Size:= 12;
  Edit13.Font.Size:= 12;
  Edit14.Font.Size:= 12;
  ComboBox5.Font.Size:= 12;
  ComboBox6.Font.Size:= 12;
  Button44.Font.Size:= 12;
  GroupBox5.Font.Size:= 12;
  Edit15.Font.Size:= 12;
  Edit16.Font.Size:= 12;
  ComboBox7.Font.Size:= 12;
  ComboBox8.Font.Size:= 12;
  Button45.Font.Size:= 12;
  GroupBox6.Font.Size:= 12;
  Edit9.Font.Size:= 12;
  Edit10.Font.Size:= 12;
  Button42.Font.Size:= 12;
  ComboBox1.Font.Size:= 12;
  ComboBox2.Font.Size:= 12;
  Edit17.Font.Size:= 12;
  Button15.Font.Name:= 'Times New Roman';
  Button15.Font.Size:= 14;
  Button47.Font.Name:= 'Times New Roman';
  Button47.Font.Size:= 14;
  Button48.Font.Name:= 'Times New Roman';
  Button48.Font.Size:= 14;
  TextBox3.Lines.Add('     "Графики функций"');
  TextBox3.Lines.Add('    версия 4.2, 2015 год');
  TextBox3.Lines.Add('       ');
  TextBox3.Lines.Add('Заводов Андрей Павлович');
  TextBox3.Lines.Add('');
  TextBox3.Lines.Add('   Республика Мордовия');
  TextBox3.Lines.Add('         г.о. Саранск');
  TextBox3.Lines.Add('      МОУ Лицей №43');
  TextBox3.Lines.Add('');
  TextBox3.Lines.Add('@ : andrey0398@gmail.com');
  ComboBox3.Items.Add('мкг');
  ComboBox3.Items.Add('мг');
  ComboBox3.Items.Add('г');
  ComboBox3.Items.Add('кг');
  ComboBox3.Items.Add('ц');
  ComboBox3.Items.Add('т');
  ComboBox4.Items.Add('мкг');
  ComboBox4.Items.Add('мг');
  ComboBox4.Items.Add('г');
  ComboBox4.Items.Add('кг');
  ComboBox4.Items.Add('ц');
  ComboBox4.Items.Add('т');
  ComboBox5.Items.Add('мм');
  ComboBox5.Items.Add('см');
  ComboBox5.Items.Add('дм');
  ComboBox5.Items.Add('м');
  ComboBox5.Items.Add('км');
  ComboBox6.Items.Add('мм');
  ComboBox6.Items.Add('см');
  ComboBox6.Items.Add('дм');
  ComboBox6.Items.Add('м');
  ComboBox6.Items.Add('км');
  ComboBox7.Items.Add('мс');
  ComboBox7.Items.Add('с');
  ComboBox7.Items.Add('мин');
  ComboBox7.Items.Add('ч');
  ComboBox7.Items.Add('д');
  ComboBox7.Items.Add('нед');
  ComboBox7.Items.Add('мес');
  ComboBox7.Items.Add('г');
  ComboBox8.Items.Add('мс');
  ComboBox8.Items.Add('с');
  ComboBox8.Items.Add('мин');
  ComboBox8.Items.Add('ч');
  ComboBox8.Items.Add('д');
  ComboBox8.Items.Add('нед');
  ComboBox8.Items.Add('мес');
  ComboBox8.Items.Add('г');
  ComboBox1.Items.Add('2');
  ComboBox1.Items.Add('3');
  ComboBox1.Items.Add('4');
  ComboBox1.Items.Add('5');
  ComboBox1.Items.Add('6');
  ComboBox1.Items.Add('7');
  ComboBox1.Items.Add('8');
  ComboBox1.Items.Add('9');
  ComboBox1.Items.Add('10');
  ComboBox2.Items.Add('2');
  ComboBox2.Items.Add('3');
  ComboBox2.Items.Add('4');
  ComboBox2.Items.Add('5');
  ComboBox2.Items.Add('6');
  ComboBox2.Items.Add('7');
  ComboBox2.Items.Add('8');
  ComboBox2.Items.Add('9');
  ComboBox2.Items.Add('10');
  TextBox4.Lines.Add('                     Описание всех кнопок и функций программы:');
  TextBox4.Lines.Add('');
  TextBox4.Lines.Add('"Построить графики" - строит активные графики с учетом их цвета и толщины');
  TextBox4.Lines.Add('');
  TextBox4.Lines.Add('"вверх","вниз","вправо","влево" - перемещение видимой области графиков');
  TextBox4.Lines.Add('');
  TextBox4.Lines.Add('"масштаб" - масштабирование видимой области графиков');
  TextBox4.Lines.Add('');
  TextBox4.Lines.Add('"цвет" - задает цвет для выбранного графика (1 из 5)');
  TextBox4.Lines.Add('');
  TextBox4.Lines.Add('"толщина" - задает толщину линии для выбранного графика (1 из 5)');
  TextBox4.Lines.Add('');
  TextBox4.Lines.Add('"Заменить графики" - закрывает программу, и если вы внесли изменения в');
  TextBox4.Lines.Add('параметр 1 из 5 графиков, тогда перезаписывает модуль построения.');
  TextBox4.Lines.Add('');
  TextBox4.Lines.Add('"сохранить" - сохраняет изображение построенных графиков');
  TextBox4.Lines.Add('');
  TextBox4.Lines.Add('"новый" - обнуляет все пораметры и настройки');
  TextBox4.Lines.Add('');
  TextBox4.Lines.Add('"очистить" - очищает область построения графиков');
  TextBox4.Lines.Add('');
  TextBox4.Lines.Add('"выход" - закрывает программу');
  TextBox4.Lines.Add('');
  TextBox4.Lines.Add('"исследовать график" - находит нули выбранного графика функции');
  TextBox4.Lines.Add('');
  TextBox4.Lines.Add('"решить систему" - находит точки пересечения 2 выбранных графиков');
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
  MainMenu1.items[4].Add('О программе...',MainMenu1_4_3OnClick);
  MainMenu1.items[4].Add('Инструкция...',MainMenu1_4_2OnClick);
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
  Button14.OnClick:=Button14OnClick;
  Button16.OnClick:=Button16OnClick;
  Button17.OnClick:=Button17OnClick;
  Button18.OnClick:=Button18OnClick;
  Button19.OnClick:=Button19OnClick;
  Button20.OnClick:=Button20OnClick;
  Button22.OnClick:=Button22OnClick;
  Button24.OnClick:=Button24OnClick;
  Button25.OnClick:=Button25OnClick;
  Button26.OnClick:=Button26OnClick;
  Button27.OnClick:=Button27OnClick;
  Button28.OnClick:=Button28OnClick;
  Button29.OnClick:=Button29OnClick;
  Button30.OnClick:=Button30OnClick;
  Button31.OnClick:=Button31OnClick;
  Button32.OnClick:=Button32OnClick;
  Button33.OnClick:=Button33OnClick;
  Button34.OnClick:=Button34OnClick;
  Button35.OnClick:=Button35OnClick;
  Button36.OnClick:=Button36OnClick;
  Button37.OnClick:=Button37OnClick;
  Button38.OnClick:=Button38OnClick;
  Button39.OnClick:=Button39OnClick;
  Button40.OnClick:=Button40OnClick;
  Button41.OnClick:=Button41OnClick;
  Button21.OnClick:=Button21OnClick;
  Button23.OnClick:=Button23OnClick;
  Button46.OnClick:=Button46OnClick;
  Button43.OnClick:=Button43OnClick;
  Button44.OnClick:=Button44OnClick;
  Button45.OnClick:=Button45OnClick;
  Button42.OnClick:=Button42OnClick;
  Button15.OnClick:=Button15OnClick;
  Button47.OnClick:=Button47OnClick;
  Button48.OnClick:=Button48OnClick;
  Button49.OnClick:=Button49OnClick;
  Form1.Position:= poScreenCenter;
  Form1.OnCreate;
  Form1.Show;
  end;

 begin
  InitControls;
 end.
