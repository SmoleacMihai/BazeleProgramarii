Program calculator;

var i:integer; a,b,op:real;
function calc(a,b,op:real):real;
begin
if op=1 then calc:=a-b
else if op=2 then calc:=a*b
else if op=3 then calc:=a/b
else calc:=a+b;
end;
begin
for i:=1 to 3 do begin
writeln('Dati primul numar');
read(a);
writeln('Dati aldoilea numar');
read(b);
writeln('Alegeti numarul operatiei dintre numere(1-scaderea,2-inmultirea,3-impartirea)');
read(op);
writeln('Rezultatul este ',calc(a,b,op) );
end;
readln;
end.