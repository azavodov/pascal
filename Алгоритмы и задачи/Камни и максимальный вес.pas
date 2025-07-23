Uses CRT;
 Var n,i,j,k,maxv,w,s,tv: longint;
     a,v,m: array [0..10000] of integer;
label 1;
  Begin
   Writeln ('введите коллическтво камней');
   Readln (n);
   Writeln ('введите вес');
   Readln (w);
   maxv:=0; tv:=0;
   s:=0;
   Writeln ('введите вес каждого камня');
   For i:=1 to n do
     Read (v[i]);
    Writeln;
    
   for i:=1 to n do
     a[i]:=0;

   1:
      For i:=n downto 1 do
       If a[i]=0 then
        Begin
          a[i]:=1;
          for j:=i+1 to n do a[j]:=0;
          tv:=0;
          for j:=1 to n do tv:=tv+a[j]*v[j];
          If (tv>maxv) and (tv<=w) then
           Begin
            maxv:=tv;
             for j:=1 to n do
              m[j]:=a[j];
           end;
          goto 1;
        End;
        
  Writeln (maxv);
   For i:=1 to n do
    If m[i]=1 then writeln (v[i],' - грамм');
    
  End.
