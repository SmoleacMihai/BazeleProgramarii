program media_lunara;
procedure sum(var a:real; b:real);
begin
       a:=a+b;
end;
Type
Zile= 1..31;
Consum= array[Zile] of Real;
Var
        Oct: Consum;
        m:real;
        i:integer;
begin
  m:=0;
    for i:=1 to 31 do begin
                             read(Oct[i]);
                             sum(m,oct[i]);
                       end;
    writeln('Media=', m/31);
end.
