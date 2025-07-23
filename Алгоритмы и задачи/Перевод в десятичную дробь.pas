Uses CRT;
Var a,b:integer;
  ost,r : array  [1..100] of integer;
  i,j,k,c:integer;
  s:string;
  
 Begin
 Writeln ('введите числитель');
 readln (a);
 Writeln ('введите знаменатель');
 readln (b);
 
  c:=a div b;
  a:=a mod b;
  
  ost[1]:=a*10;
   i:=1;
   
    while s='' do
     Begin
     
      r[i]:=ost[i] div b;
      inc(i);
      ost [i]:=(ost[i-1] mod b)*10;
      
       For j:=1 to i-1 do
       If ost[i]=ost[j] then
        Begin
         s:=inttostr(c*b+a)+'/'+inttostr(b)+'='+inttostr(c)+',';
         
          for k:=1 to j-1 do
           s:=s+inttostr(r[k]);
           s:=s+'(';
           
          for k:=j to i-1 do
           s:=s+inttostr(r[k]);
           s:=s+')';
           
           break;
        End;
        
     End;
     
   Writeln (s);
 End.
