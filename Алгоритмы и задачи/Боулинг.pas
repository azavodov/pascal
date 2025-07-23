Uses CRT;
var n,i,c,d,sum : integer;
    a : array [1..21] of integer;
 begin
  Readln (n);
   for i:=1 to n do read(a[i]);
    n:=0; sum:=0;
    
     for i:=1 to 10 do
      begin
       n:=n+1; c:=a[n];
       if c=10 then sum:=sum+10+a[n+1]+a[n+2] else
         begin
          n:=n+1; d:=a[n];
          if c+d=10 then sum:=sum+10+a[n+1] else sum:=sum+c+d
         end
      end;
      
   write(sum)
 end.
