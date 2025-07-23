Uses CRT;
 Var x,b,c,n,i,j,k:integer;
  a,y: array [1 .. 1000] of integer;
  s:string;
  Label 1;
  Begin
   //writeln ('введите колличество скобок');
   //readln (n);
   n:=6; //ответ должет 5

    for i:=1 to n do
      a[i]:=0;

     1:
      For i:=n downto 1 do
       If a[i]=0 then
        Begin
          a[i]:=1;
          for j:=i+1 to n do a[j]:=0;
          for j:=1 to n do
           If a[j]=1 then s:=s+'(' else s:=s+')';
           while s<>0 then
          writeln (s);
          s:='';
          inc (k);
          goto 1;
        End;
        
        
   Writeln (k,' - колличество');
  End.
