program numarul_max;
Type
Zile= 1..31;
Consum= array[Zile] of Real;
Var
        Oct: Consum;
      max, m:real;
       i:integer;
begin
  m:=0;
    for i:=1 to 31 do begin
                             read(Oct[i]);
                             if oct[i]>max then max:=oct[i];
                       end;
    writeln('Max=', max);
end.
