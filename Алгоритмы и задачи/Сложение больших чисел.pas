Uses CRT;
 Var i,da,db,dm,ca,cb,um,s:integer;
     a,b,c:string;
     
  Begin
   Readln (a);
   Readln (b);
   da:=Length (a);
   db:=Length (b);
    If db<da then dm:=db else dm:=da;
      For i:= 0 to dm do
       Begin
        If da>i then ca:=StrToInt(copy (a,da-i,1));
        If db>i then cb:=strToInt(copy (b,db-i,1));
        s:=ca+cb;
        c:=inttostr((s+um) mod 10)+c;
        um:=(s+um) div 10;
        cb:=0;
        ca:=0;
       End;
      If c[1]='0' then c:=copy (c,2,dm);
    Writeln (c, ' - сумма');
  End.
