Uses CRT;
Var i,j,n,k:integer;
  a:array [-1..100] of integer;
Label 1;

 Begin

 Readln (n);
 for i:=1 to n do
  Begin
   a[i]:=5;
   If (a[i-1]=5) and (a[i-2]=5) then a[i]:=9;
  End;
  
  inc (k);

1: for i:=n downto 1 do
    Begin
     If (a[i]=5) and not((a[i-1]=9) and (a[i-2]=9)) then
      Begin
       a[i]:=9;
        For j:=i+1 to n do
         If (a[j-2]=5) and (a[j-1]=5) then a[j]:=9 else a[j]:=5;
         inc (k);
        goto 1;
      End;
    End;
    
  Writeln (k);
  
 End.
