program numarul_min;
Type
Zile= 1..31;
Consum= array[Zile] of Real;
Var
        Oct: Consum;
      min, m:real;
       i:integer;
begin
  m:=0;min:=32000;
    for i:=1 to 31 do begin
                             read(Oct[i]);
                             if oct[i]<min then min:=oct[i];
                       end;
    writeln('Min=', min);
end.
