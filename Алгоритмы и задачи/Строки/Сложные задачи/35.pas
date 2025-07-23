Uses CRT;
 Var a,b,m,z,x,q:integer;
 s,s1:string;
 Label 1,2,kon;
  Begin
    Readln (s);

    a:=strtoint (s);
    If a=1000 then
    Begin writeln ('тысяча'); goto kon; End;
    
   m:=a div 100;
   case m of
    1: Write ('сто ');
    2: Write ('двести ');
    3: Write ('тристо ');
    4: Write ('четыресто ');
    5: Write ('пятьсот ');
    6: Write ('шестьсот ');
    7: Write ('семьсот ');
    8: Write ('восемьсот ');
    9: Write ('девятьтьсот ');
   End;
   
   
   z:=(a div 10) mod 10;
    case z of
    1: Begin
     x:=a mod 100;
      case x of
       11:Begin Write (' одиннадцать'); goto kon; End;
       12:Begin Write (' двенадцать'); goto kon; End;
       13:Begin Write (' тринадцать'); goto kon; End;
       14:Begin Write (' четырнадцать'); goto kon; End;
       15:Begin Write (' пятнадцать'); goto kon; End;
       16:Begin Write (' шестнадцать'); goto kon; End;
       17:Begin Write (' семнадцать'); goto kon; End;
       18:Begin Write (' восемнадцать'); goto kon; End;
       19:Begin Write (' девятнадцать'); goto kon; End;
       End;
       
       
       End;
    2: Write ('двадцать');
    3: Write ('тридцать');
    4: Write ('сорок');
    5: Write ('пятьдесят');
    6: Write ('шесдесят');
    7: Write ('семьдесят');
    8: Write ('восемьдесят');
    9: Write ('девяносто');
    End;

   q:=a mod 10;
    case q of
     1: write ('один');
     2: Write ('два');
     3: Write ('три');
     4: Write ('четыре');
     5: Write ('пять');
     6: Write ('шесть');
     7: Write ('семь');
     8: Write ('восемь');
     9: Write ('девять');
    End;
 kon:
 End.


