//ĞÀÇËÈ×ÍÛÅ ÑÎĞÒÈĞÎÂÊÈ ÌÀÑÑÈÂÀ

Uses CRT;
 Var a: array [0..2000000] of integer;
     i,j,c,nmin,n:integer;
     
  Procedure sor (n1,n2:integer);
  Var L,R,ns : integer;
   Begin
   
    If n1>=n2 then exit;
     L:=n1; R:=n2;
     ns:=(L+R) div 2;
     
      While  L<=R do
       Begin
        while a[L]<a[ns] do inc (L);
        while a[R]>a[ns] do R:=R-1;
         If L<=R then
          Begin c:=a[L]; a[L]:=a[R]; a[R]:=c; inc (L); R:=R-1; End;
       End;
     sor (n1,R);
     sor (L,n2);
   End;


     
 Begin
 
 Readln (n);
  For i:=1 to n do
   Begin
    a[i]:=random(199)-99;                                                       //ÇÀÄÀÍÈÅ È ÂÛÂÎÄ ÌÀÑÑÈÂÀ
    write (a[i],' ');
   End;
  Writeln;
  Writeln ('--------------');
  Writeln ('Îòñîğòèğîâàííûé ìàññèâ');
  Writeln ('--------------');
  
  

  { For i:=1 to n-1 do
    For j:=i+1 to n do
     If a[i]>a[j] then
      Begin c:=a[i]; a[i]:=a[j]; a[j]:=c; End;                                  // ÑÎĞÒÈĞÎÂÊÀ ÏÓÇÛĞÜÊÎÌ
  }


 { for i:=1 to n-1 do
   Begin
    nmin:=i;
     For j:=i+1 to n do
      If a[j]<a[nmin] then nmin:=j;                                             // 2 âàğèàíò ñîğòèğîâêè
      If nmin>i then
      Begin c:=a[i]; a[i]:=a[nmin]; a[nmin]:=c; End;
   End;
 }
   

   sor (1,n);    // !!!                                                         // ÁÛÑÒĞÀß ÑÎĞÒÈĞÎÂÊÀ ĞÅÊÓĞÑÈÅÉ

   
   
   For i:=1 to n do                                                             //ÂÛÂÎÄ ÎÒÑÎĞÒÈĞÎÂÀÍÍÎÃÎ ÌÀÑÑÈÂÀ
    Write (a[i],' ');
   
 End.
      
      
