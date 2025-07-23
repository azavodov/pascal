Uses CRT;
 Var j,i:integer;
 s,s1:string;
  Begin
   Readln (s,s1);
   
    For i:=1 to length (s) do
     For j:=1 to length (s1) do
      Begin
       If s[i]=s1[j] then break;
       If (s[i]<>s1[j]) and (j=length (s1)) then write (s[i],' ');
       If (s[i]<>s1[j]) and (j=length (s1)) then write (s1[j],' ');
      End;


  End.
