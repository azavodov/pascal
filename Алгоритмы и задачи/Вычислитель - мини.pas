uses vcl;

//$VCLDESIGN+
var
  c,i:integer;
  Form1: Form;
  TextLabel1: TextLabel;
  TextLabel2: TextLabel;
  TextLabel3: TextLabel;
  Edit1: Edit;
  Edit2: Edit;
  Edit3: Edit;
  Button1: Button;
  Button2: Button;
  Button3: Button;
  Button4: Button;
  Button5: Button;
  Button6: Button;
  Button7: Button;
  Button8: Button;
  Button9: Button;
  Button10: Button;
  Button11: Button;
  Button12: Button;
  Button13: Button;
  Button14: Button;
  Button15: Button;
  Button16: Button;
  Button17: Button;
  Button18: Button;
  Button19: Button;
  Button20: Button;
  Button21: Button;
  Button22: Button;
  Button23: Button;
//$VCLDESIGN-

procedure Button1OnClick;
begin
 edit3.text:=floattostr(strtofloat(edit1.text)+strtofloat(edit2.text));
end;

procedure Button2OnClick;
begin
 edit3.text:=floattostr(strtofloat(edit1.text)-strtofloat(edit2.text));

end;




procedure Form1OnCreate;
begin

end;

procedure Button3OnClick;
begin
 edit3.text:=floattostr(strtofloat(edit1.text)*strtofloat(edit2.text));

end;

procedure Button4OnClick;
begin
  edit3.text:=floattostr(strtofloat(edit1.text)/strtofloat(edit2.text));

end;

procedure Button5OnClick;
begin
  edit3.text:=floattostr(sqrt(strtofloat(edit1.text)));
end;

procedure Button6OnClick;
begin
  form1.close;
end;

procedure Button7OnClick;
begin
  edit1.text:=edit3.text;
  edit2.text:='';
  edit3.text:='';
end;

procedure Button8OnClick;
begin
  edit1.text:=edit1.text+'1';
end;

procedure Button9OnClick;
begin
  edit1.text:=edit1.text+'2';
end;

procedure Button10OnClick;
begin
  edit1.text:=edit1.text+'3';
end;

procedure Button11OnClick;
begin
  edit1.text:=edit1.text+'4';
end;

procedure Button12OnClick;
begin
  edit1.text:=edit1.text+'5';
end;

procedure Button13OnClick;
begin
  edit1.text:=edit1.text+'6';
end;

procedure Button14OnClick;
begin
  edit1.text:=edit1.text+'7';
end;

procedure Button15OnClick;
begin
  edit1.text:=edit1.text+'8';
end;

procedure Button16OnClick;
begin
  edit1.text:=edit1.text+'9';
end;

procedure Button17OnClick;
begin
 edit1.text:=edit1.text+'0';
end;

procedure Button18OnClick;
begin
  edit1.text:=edit1.text+'.';
end;

procedure Button19OnClick;
begin
  edit2.text:=edit1.text;
  edit1.text:='';
  edit3.text:='';
end;

procedure Button20OnClick;
begin
c:=1;
  For i:=1 to strtoint(edit2.text) do
   c:=c*strtoint(edit1.text);
 edit3.text:=inttostr(c);
end;

procedure Button23OnClick;
begin
  edit2.text:='';
  edit1.text:='';
  edit3.text:='';
end;

procedure Button21OnClick;
begin
 edit1.text:='';
end;

procedure Button22OnClick;
begin
 edit2.text:='';
end;

procedure InitControls;
begin
  Form1:= Form.Create(0,0,293,362);
  Form1.InitControl(True,False,alNone,crDefault,clScrollBar,'Калькулятор','');
  TextLabel1:= TextLabel.Create(Form1,24,8,62,21);
  TextLabel1.InitControl(True,True,alNone,crDefault,clScrollBar,'1 число','');
  TextLabel2:= TextLabel.Create(Form1,104,8,62,21);
  TextLabel2.InitControl(True,True,alNone,crDefault,clScrollBar,'2 число','');
  TextLabel3:= TextLabel.Create(Form1,200,8,36,21);
  TextLabel3.InitControl(True,True,alNone,crDefault,clScrollBar,'итог','');
  Edit1:= Edit.Create(Form1,16,32,81,30);
  Edit1.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit2:= Edit.Create(Form1,96,32,81,30);
  Edit2.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit3:= Edit.Create(Form1,176,32,81,30);
  Edit3.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Button1:= Button.Create(Form1,160,112,49,33);
  Button1.InitControl(True,True,alNone,crDefault,0,'+','');
  Button2:= Button.Create(Form1,160,152,49,33);
  Button2.InitControl(True,True,alNone,crDefault,0,'-','');
  Button3:= Button.Create(Form1,112,232,97,33);
  Button3.InitControl(True,True,alNone,crDefault,0,'X','');
  Button4:= Button.Create(Form1,160,192,49,33);
  Button4.InitControl(True,True,alNone,crDefault,0,'/','');
  Button5:= Button.Create(Form1,104,272,81,33);
  Button5.InitControl(True,True,alNone,crDefault,0,'корень','');
  Button6:= Button.Create(Form1,192,272,65,33);
  Button6.InitControl(True,True,alNone,crDefault,0,'выход','');
  Button7:= Button.Create(Form1,216,192,41,73);
  Button7.InitControl(True,True,alNone,crDefault,0,'рез-1','');
  Button8:= Button.Create(Form1,16,112,41,33);
  Button8.InitControl(True,True,alNone,crDefault,0,'1','');
  Button9:= Button.Create(Form1,64,112,41,33);
  Button9.InitControl(True,True,alNone,crDefault,0,'2','');
  Button10:= Button.Create(Form1,112,112,41,33);
  Button10.InitControl(True,True,alNone,crDefault,0,'3','');
  Button11:= Button.Create(Form1,16,152,41,33);
  Button11.InitControl(True,True,alNone,crDefault,0,'4','');
  Button12:= Button.Create(Form1,64,152,41,33);
  Button12.InitControl(True,True,alNone,crDefault,0,'5','');
  Button13:= Button.Create(Form1,112,152,41,33);
  Button13.InitControl(True,True,alNone,crDefault,0,'6','');
  Button14:= Button.Create(Form1,16,192,41,33);
  Button14.InitControl(True,True,alNone,crDefault,0,'7','');
  Button15:= Button.Create(Form1,64,192,41,33);
  Button15.InitControl(True,True,alNone,crDefault,0,'8','');
  Button16:= Button.Create(Form1,112,192,41,33);
  Button16.InitControl(True,True,alNone,crDefault,0,'9','');
  Button17:= Button.Create(Form1,16,232,41,33);
  Button17.InitControl(True,True,alNone,crDefault,0,'0','');
  Button18:= Button.Create(Form1,64,232,41,33);
  Button18.InitControl(True,True,alNone,crDefault,0,'.','');
  Button19:= Button.Create(Form1,216,112,41,73);
  Button19.InitControl(True,True,alNone,crDefault,0,'1-2','');
  Button20:= Button.Create(Form1,16,272,81,33);
  Button20.InitControl(True,True,alNone,crArrow,0,'степень','');
  Button21:= Button.Create(Form1,16,72,81,33);
  Button21.InitControl(True,True,alNone,crDefault,0,'del 1','');
  Button22:= Button.Create(Form1,96,72,81,33);
  Button22.InitControl(True,True,alNone,crDefault,0,'del 2','');
  Button23:= Button.Create(Form1,176,72,81,33);
  Button23.InitControl(True,True,alNone,crDefault,0,'off','');
  Form1.Font.Name:= 'Times New Roman';
  Form1.Font.Size:= 14;
  TextLabel1.Font.Name:= 'Times New Roman';
  TextLabel1.Font.Size:= 14;
  TextLabel2.Font.Name:= 'Times New Roman';
  TextLabel2.Font.Size:= 14;
  TextLabel3.Font.Name:= 'Times New Roman';
  TextLabel3.Font.Size:= 14;
  Edit1.Font.Name:= 'Times New Roman';
  Edit1.Font.Size:= 14;
  Edit2.Font.Name:= 'Times New Roman';
  Edit2.Font.Size:= 14;
  Edit3.Font.Name:= 'Times New Roman';
  Edit3.Font.Size:= 14;
  Button1.Font.Name:= 'Times New Roman';
  Button1.Font.Size:= 14;
  Button2.Font.Name:= 'Times New Roman';
  Button2.Font.Size:= 20;
  Button3.Font.Name:= 'Times New Roman';
  Button3.Font.Size:= 14;
  Button4.Font.Name:= 'Times New Roman';
  Button4.Font.Size:= 14;
  Button5.Font.Name:= 'Times New Roman';
  Button5.Font.Size:= 14;
  Button6.Font.Name:= 'Times New Roman';
  Button6.Font.Size:= 14;
  Button7.Font.Name:= 'Times New Roman';
  Button7.Font.Size:= 14;
  Button8.Font.Name:= 'Times New Roman';
  Button8.Font.Size:= 14;
  Button9.Font.Name:= 'Times New Roman';
  Button9.Font.Size:= 14;
  Button10.Font.Name:= 'Times New Roman';
  Button10.Font.Size:= 14;
  Button11.Font.Name:= 'Times New Roman';
  Button11.Font.Size:= 14;
  Button12.Font.Name:= 'Times New Roman';
  Button12.Font.Size:= 14;
  Button13.Font.Name:= 'Times New Roman';
  Button13.Font.Size:= 14;
  Button14.Font.Name:= 'Times New Roman';
  Button14.Font.Size:= 14;
  Button15.Font.Name:= 'Times New Roman';
  Button15.Font.Size:= 14;
  Button16.Font.Name:= 'Times New Roman';
  Button16.Font.Size:= 14;
  Button17.Font.Name:= 'Times New Roman';
  Button17.Font.Size:= 14;
  Button18.Font.Name:= 'Times New Roman';
  Button18.Font.Size:= 26;
  Button19.Font.Name:= 'Times New Roman';
  Button19.Font.Size:= 14;
  Button20.Font.Name:= 'Times New Roman';
  Button20.Font.Size:= 14;
  Button21.Font.Name:= 'Times New Roman';
  Button21.Font.Size:= 14;
  Button22.Font.Name:= 'Times New Roman';
  Button22.Font.Size:= 14;
  Button23.Font.Name:= 'Times New Roman';
  Button23.Font.Size:= 14;
  Form1.OnCreate:=Form1OnCreate;
  Button1.OnClick:=Button1OnClick;
  Button2.OnClick:=Button2OnClick;
  Button3.OnClick:=Button3OnClick;
  Button4.OnClick:=Button4OnClick;
  Button5.OnClick:=Button5OnClick;
  Button6.OnClick:=Button6OnClick;
  Button7.OnClick:=Button7OnClick;
  Button8.OnClick:=Button8OnClick;
  Button9.OnClick:=Button9OnClick;
  Button10.OnClick:=Button10OnClick;
  Button11.OnClick:=Button11OnClick;
  Button12.OnClick:=Button12OnClick;
  Button13.OnClick:=Button13OnClick;
  Button14.OnClick:=Button14OnClick;
  Button15.OnClick:=Button15OnClick;
  Button16.OnClick:=Button16OnClick;
  Button17.OnClick:=Button17OnClick;
  Button18.OnClick:=Button18OnClick;
  Button19.OnClick:=Button19OnClick;
  Button20.OnClick:=Button20OnClick;
  Button21.OnClick:=Button21OnClick;
  Button22.OnClick:=Button22OnClick;
  Button23.OnClick:=Button23OnClick;
  Form1.Position:= poScreenCenter;
  Form1.OnCreate;
  Form1.Show;
end;

begin
  InitControls;

end.


