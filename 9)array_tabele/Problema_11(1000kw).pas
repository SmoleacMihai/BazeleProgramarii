program Inregistrarea_1000kw;
Type
Zile= 1..31;
Consum= array[Zile] of Real;
procedure reg(var a : boolean);
var i:integer; act:Consum;
  begin
    for i:=1 to 31 do begin
                         readln(act[i]);
                        if act[i]>1000 then a:=true 
                    end; 
  end;

Var
        Oct: Consum;
       m:boolean;
       i:integer;
begin
  m:=false;
  reg(m);
  if m=true then writeln('Au fost inregistrate valori de 1000kw') else writeln('Nu au fost inregistrate valori mai mari 1000kw');
    
end.
