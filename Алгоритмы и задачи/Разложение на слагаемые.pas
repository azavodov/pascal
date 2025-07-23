Uses CRT;
 Var n,i,j,kol,s: integer;
     a: array [0..10000] of integer;
  Begin
   Writeln ('введите число');
   Readln (n);
   
   a[1]:=1; s:=1; i:=1;

    While 1<2 do
     Begin
     
      If s<n then
       Begin
        inc (i);
        a[i]:=a[i-1];
        s:=s+a[i];
       End;
       
      If s=n then
       Begin
        For j:=1 to i do
         Begin
          If j=1 then write (n,'=');
          If j=1 then write (a[j])
          else write ('+', a[j]);
         End;
         writeln;
         inc (kol);
       End;
       
      If a[1]=n then break;
      
       If s>=n then
        Begin
         i:=i-1;
         a[i]:=a[i]+1;
         s:=s-a[i+1]+1;
        End;
        
     End;
     
   writeln (kol, ' - колличество разложений');
  End.
