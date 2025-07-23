Uses CRT;
 Var df,kol,ds,i,j,k:integer;
  s,f:string;
  n: array [1..30] of integer;
 Label 1;
   Begin
   // Readln (s); Readln (f);


    s:='aaabbbccc'; f:='abc';
    ds:=length (s); df:=length (f);

     For i:=1 to df do
      n[i]:=i;
      
1:
      k:=0;
     For i:=1 to df do
      If f[i]=s[n[i]] then inc (k);
      If k=df then inc (kol);
      
     For i:=df downto 1 do
      If n[i]<ds-df+i then
        Begin
         inc(n[i]);
          For j:=i+1 to df do
           n[j]:=n[j-1]+1;
         goto 1;
        End;
        
        
   Writeln (kol);

   End.

