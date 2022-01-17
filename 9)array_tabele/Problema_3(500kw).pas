program zilec_cu_500kw;
Type
Zile= 1..31;
Consum= array[Zile] of Real;
Var
        Oct: Consum;
       
       i:integer;
begin
 
    for i:=1 to 31 do begin
                             read(Oct[i]);
                       end;
    for i:=1 to 31 do begin
      if oct[i]>500 then writeln('Ziua numarul ', i);
    end;                    
    
end.