
 Var x,i,st2,d:integer;
  s,c:string;
  f,g:text;
 Begin
  Assign (f,'input.txt');
  Assign (g,'output.txt');
  Reset (f);
  Readln (f,s);
  Close (f);
  
  d:=length (s);
  st2:=1;
    For i:=1 to d do
     Begin
      c:=s[d-i+1];
      x:=x+StrToInt(c)*st2;
      st2:=st2*2;
     End;


   Rewrite (g);
   Writeln (g,x);
   Close (g);

 End.
