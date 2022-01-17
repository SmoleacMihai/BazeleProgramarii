program prob14;
type natural= 0..10000;
function SDIV(n : natural):boolean;
var i:integer; s : natural; rez:boolean;
begin
for i:=1 to n do begin
if ((n mod i)=0) then s:=s+i;
end;
write('Suma divizorilor numarului ',n,' este : ', s);
for i:=2 to s div 2 do
begin
if s mod i = 0 then
  SDIV:=false
    else SDIV:=true
end;
end;

var n : natural; rez:boolean;
begin
  write('n = '); readln(n);
  rez:=SDIV(n);
  writeln;
  if rez=false then write('Suma divizorilor numarului ',n,' nu este prima')
               else write('Suma divizorilor numarului ',n,' este prima');

end.
