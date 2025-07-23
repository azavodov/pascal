uses vcl;

//$VCLDESIGN+
var
  c,i:integer;
  Form1: Form;
  TextLabel1: TextLabel;
  TextLabel2: TextLabel;
  TextLabel3: TextLabel;
  TextLabel4: TextLabel;
  Panel2: Panel;
  Panel1: Panel;
  GroupBox4: GroupBox;
  GroupBox3: GroupBox;
  GroupBox2: GroupBox;
  GroupBox1: GroupBox;
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
  Button24: Button;
  Button25: Button;
  Button26: Button;
  Button27: Button;
  TextBox1: TextBox;
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



procedure Button24OnClick;
begin
 c:=1;
  For i:=1 to strtoint(edit1.text) do
   c:=c*i;
 edit3.text:=inttostr(c);
end;

procedure Button26OnClick;
begin
  edit3.text:=floattostr(1/strtofloat(edit1.text));
end;

procedure Button25OnClick;
begin
  edit1.text:='3.141593';
end;

procedure Button27OnClick;
begin
  edit1.text:='9.869604';
end;

procedure InitControls;
begin
  Form1:= Form.Create(0,0,698,397);
  Form1.InitControl(True,False,alNone,crDefault,clBtnShadow,'¬ычислитель','');
  TextLabel1:= TextLabel.Create(Form1,64,16,62,21);
  TextLabel1.InitControl(True,True,alNone,crDefault,clBtnShadow,'1 число','');
  TextLabel2:= TextLabel.Create(Form1,208,16,62,21);
  TextLabel2.InitControl(True,True,alNone,crDefault,clBtnShadow,'2 число','');
  TextLabel3:= TextLabel.Create(Form1,344,16,77,21);
  TextLabel3.InitControl(True,True,alNone,crDefault,clBtnShadow,'результат','');
  TextLabel4:= TextLabel.Create(Form1,536,16,55,21);
  TextLabel4.InitControl(True,True,alNone,crDefault,clBtnShadow,'записи','');
  Panel2:= Panel.Create(Form1,16,288,121,57);
  Panel2.InitControl(True,True,alNone,crDefault,clBtnFace,'','');
  Panel1:= Panel.Create(Form1,16,128,185,169);
  Panel1.InitControl(True,True,alNone,crDefault,clBtnFace,'','');
  GroupBox4:= GroupBox.Create(Form1,16,72,249,57);
  GroupBox4.InitControl(True,True,alNone,crDefault,clBtnShadow,'','');
  GroupBox3:= GroupBox.Create(Form1,272,288,185,57);
  GroupBox3.InitControl(True,True,alNone,crDefault,clBtnShadow,'','');
  GroupBox2:= GroupBox.Create(Form1,272,176,185,113);
  GroupBox2.InitControl(True,True,alNone,crDefault,clBtnShadow,'','');
  GroupBox1:= GroupBox.Create(Form1,272,72,185,105);
  GroupBox1.InitControl(True,True,alNone,crDefault,clBtnShadow,'','');
  Edit1:= Edit.Create(Form1,24,40,145,33);
  Edit1.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit2:= Edit.Create(Form1,168,40,145,29);
  Edit2.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Edit3:= Edit.Create(Form1,312,40,137,33);
  Edit3.InitControl(True,True,alNone,crDefault,clWindow,'','');
  Button1:= Button.Create(Form1,216,136,41,89);
  Button1.InitControl(True,True,alNone,crDefault,0,'+','');
  Button2:= Button.Create(Form1,216,248,41,33);
  Button2.InitControl(True,True,alNone,crDefault,0,'-','');
  Button3:= Button.Create(Form1,152,304,41,33);
  Button3.InitControl(True,True,alNone,crDefault,0,'X','');
  Button4:= Button.Create(Form1,216,304,41,33);
  Button4.InitControl(True,True,alNone,crDefault,0,'/','');
  Button5:= Button.Create(Form1,280,192,73,33);
  Button5.InitControl(True,True,alNone,crDefault,0,'корень','');
  Button6:= Button.Create(Form1,464,304,201,33);
  Button6.InitControl(True,True,alNone,crDefault,0,'выход','');
  Button7:= Button.Create(Form1,280,136,169,33);
  Button7.InitControl(True,True,alNone,crDefault,0,'перенести результат','');
  Button8:= Button.Create(Form1,24,136,41,33);
  Button8.InitControl(True,True,alNone,crDefault,0,'1','');
  Button9:= Button.Create(Form1,88,136,41,33);
  Button9.InitControl(True,True,alNone,crDefault,0,'2','');
  Button10:= Button.Create(Form1,152,136,41,33);
  Button10.InitControl(True,True,alNone,crDefault,0,'3','');
  Button11:= Button.Create(Form1,24,192,41,33);
  Button11.InitControl(True,True,alNone,crDefault,0,'4','');
  Button12:= Button.Create(Form1,88,192,41,33);
  Button12.InitControl(True,True,alNone,crDefault,0,'5','');
  Button13:= Button.Create(Form1,152,192,41,33);
  Button13.InitControl(True,True,alNone,crDefault,0,'6','');
  Button14:= Button.Create(Form1,24,248,41,33);
  Button14.InitControl(True,True,alNone,crDefault,0,'7','');
  Button15:= Button.Create(Form1,88,248,41,33);
  Button15.InitControl(True,True,alNone,crDefault,0,'8','');
  Button16:= Button.Create(Form1,152,248,41,33);
  Button16.InitControl(True,True,alNone,crDefault,0,'9','');
  Button17:= Button.Create(Form1,24,304,41,33);
  Button17.InitControl(True,True,alNone,crDefault,0,'0','');
  Button18:= Button.Create(Form1,88,304,41,33);
  Button18.InitControl(True,True,alNone,crDefault,0,'.','');
  Button19:= Button.Create(Form1,280,88,169,33);
  Button19.InitControl(True,True,alNone,crDefault,0,'перенести число 1-2','');
  Button20:= Button.Create(Form1,376,192,75,33);
  Button20.InitControl(True,True,alNone,crDefault,0,'степень','');
  Button21:= Button.Create(Form1,24,88,65,33);
  Button21.InitControl(True,True,alNone,crDefault,0,'del 1','');
  Button22:= Button.Create(Form1,104,88,65,33);
  Button22.InitControl(True,True,alNone,crDefault,0,'del 2','');
  Button23:= Button.Create(Form1,184,88,73,33);
  Button23.InitControl(True,True,alNone,crDefault,0,'off','');
  Button24:= Button.Create(Form1,280,248,73,33);
  Button24.InitControl(True,True,alNone,crDefault,0,'!','');
  Button25:= Button.Create(Form1,280,304,73,33);
  Button25.InitControl(True,True,alNone,crDefault,0,'Pi','');
  Button26:= Button.Create(Form1,376,248,75,33);
  Button26.InitControl(True,True,alNone,crDefault,0,'1/x','');
  Button27:= Button.Create(Form1,376,304,73,33);
  Button27.InitControl(True,True,alNone,crDefault,0,'Pi^2','');
  TextBox1:= TextBox.Create(Form1,464,40,201,241);
  TextBox1.InitControl(True,True,alNone,crDefault,clWindow,'','');
  TextBox1.ScrollBars:= ssNone;
  Form1.Font.Name:= 'Times New Roman';
  Form1.Font.Size:= 14;
  TextLabel1.Font.Name:= 'Times New Roman';
  TextLabel1.Font.Size:= 14;
  TextLabel2.Font.Name:= 'Times New Roman';
  TextLabel2.Font.Size:= 14;
  TextLabel3.Font.Name:= 'Times New Roman';
  TextLabel3.Font.Size:= 14;
  TextLabel4.Font.Name:= 'Times New Roman';
  TextLabel4.Font.Size:= 14;
  Panel2.Font.Name:= 'Times New Roman';
  Panel2.Font.Size:= 14;
  Panel1.Font.Name:= 'Times New Roman';
  Panel1.Font.Size:= 14;
  GroupBox4.Font.Name:= 'Times New Roman';
  GroupBox4.Font.Size:= 14;
  GroupBox3.Font.Name:= 'Times New Roman';
  GroupBox3.Font.Size:= 14;
  GroupBox2.Font.Name:= 'Times New Roman';
  GroupBox2.Font.Size:= 14;
  GroupBox1.Font.Name:= 'Times New Roman';
  GroupBox1.Font.Size:= 14;
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
  Button24.Font.Name:= 'Times New Roman';
  Button24.Font.Size:= 14;
  Button25.Font.Name:= 'Times New Roman';
  Button25.Font.Size:= 14;
  Button26.Font.Name:= 'Times New Roman';
  Button26.Font.Size:= 14;
  Button27.Font.Name:= 'Times New Roman';
  Button27.Font.Size:= 14;
  TextBox1.Font.Name:= 'Times New Roman';
  TextBox1.Font.Size:= 14;
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
  Button24.OnClick:=Button24OnClick;
  Button25.OnClick:=Button25OnClick;
  Button26.OnClick:=Button26OnClick;
  Button27.OnClick:=Button27OnClick;
  Form1.Position:= poScreenCenter;
  Form1.OnCreate;
  Form1.Show;
end;

begin
  InitControls;

end.



