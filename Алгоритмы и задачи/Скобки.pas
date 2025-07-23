 Var i,n1,n,k: integer;
     s,s1,s2,s3: string;
  Label 1;

  Begin
   Readln (k);
   Readln (s);
    for i:= 1 to (k div 2) do
     Begin
      If pos('{}',s)>0 then delete(s,pos('{}',s),2);
      If pos('()',s)>0 then delete(s,pos('()',s),2);
      If pos('[]',s)>0 then delete(s,pos('[]',s),2);
      If s='' then Begin writeln ('Yes'); goto 1; End;
     End;
   writeln ('No');
   1:
  End.
