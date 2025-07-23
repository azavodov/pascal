Uses CRT;
label 1;
Var        s,f: string;
i,j,ds,df,ks,k: integer;
             n: array [1..30] of integer;
Begin
  readln(s,f);
  
  ds:=length(s);
  df:=length(f);
  
  n[1]:=1;                            //определить первые буквы из строки
  for i:=2 to df do
      n[i]:=n[i-1]+1;       //n[i]:=i;
1:
  k:=0;
  for i:=1 to df do
      if f[i]=s[n[i]] then k:=k+1;  //кол-во совпадающих букв
  if k=df then
    begin               //совпадение
     ks:=ks+1;
     {for i:=1 to df do
         write(n[i],' ');}
     writeln;
    end;
  for i:= df downto 1 do
      if n[i]<ds-df+i then
        begin
             n[i]:=n[i]+1;
             for j:=i+1 to df do
                 n[j]:=n[j-1]+1;
             goto 1;
        end;
 writeln (ks,' способов');
End.
