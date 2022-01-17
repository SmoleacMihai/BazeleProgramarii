program Aria_inelului;
uses crt;
var i:integer;a,b:real;
function ring_s(r1,r2:real):real;
begin
ring_s:=3.14*(sqr(r2)-sqr(r1));
end;
begin
  for i:=1 to 3 do begin
    writeln('Dati razele inelului');
    readln(a,b);
    writeln('Suprafata inelului este', ring_s(a,b));
                    end;
readln;
end.