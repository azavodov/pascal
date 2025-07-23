// 4
// 7
// 11 6 11 6 3 10 6
// 7 9 6 13 5 15 5
// 1 10 12 7 13 7 5
// 13 11 10 8 10 12 13

Uses CRT;
Var x,y: array [0..100,0..100] of integer;
    sk: array [0..100000] of integer;
    i,j,m,n,k,nkb : integer;
    f:text;

Procedure komnat(i1,j1:integer);
 Var s,v,z,q,x1: integer;
  begin
    y[i1,j1]:=k;
    x1:=x[i1,j1];
    q:=0; v:=0; s:=0; z:=0;
    If x1>7 then Begin q:=1; x1:=x1-8 End;
    If x1>3 then Begin v:=1; x1:=x1-4 End;
    If x1>1 then Begin s:=1; x1:=x1-2 End;
    If x1=1 then Begin z:=1; x1:=x1-1 End;
    
    delay(50);
    gotoxy(j1*3,i1);
    write(y[i1,j1]);

    if (j1<m) and (y[i1,j1+1]=0) and (v=0) then  komnat(i1,j1+1);     // вправо
    if (i1<n) and (y[i1+1,j1]=0) and (q=0) then  komnat(i1+1,j1);     // вниз
    if (j1>1) and (y[i1,j1-1]=0) and (z=0) then  komnat(i1,j1-1);     // влево
    if (i1>1) and (y[i1-1,j1]=0) and (s=0) then  komnat(i1-1,j1);     // вверх
  end;



Begin

  assign (f,'код стен.txt');
  reset (f);
   Readln (f,n);
   Readln (f,m);
   for i:= 1 to n do
    For j:= 1 to m do
     Read (f,x[i,j]);
   close (f);

  For i:=1  to n do
    For j:=1 to m do
       if y[i,j]=0 then begin k:=k+1; komnat(i,j); end;
       
       
  gotoxy(5,n+1);
  Writeln (' колличество комнат - ',k);
    
  For i:= 1 to n do
   For j:= 1 to m do
    sk[y[i,j]]:=sk[y[i,j]]+1;
  for i:= 1 to k do
   writeln (i,' - площадь комнаты - ',sk[i]);
   writeln;
  For i:=1 to k do
   IF sk[i]>sk[nkb] then nkb:=i;
   writeln (nkb,' - наибольшая комната, площадь - ',sk[nkb]);


End.
