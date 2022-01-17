Program lungime32;

function lungime(s:string):integer;
var rez:integer;
begin
  lungime:=length(s);
  
end;

var n : string; r:integer;
  begin 
    writeln('Dati sirul de caractere');
    readln(n);
    r:=lungime(n); writeln('Lungimea sirului este ', r, ' caractere')
  end.