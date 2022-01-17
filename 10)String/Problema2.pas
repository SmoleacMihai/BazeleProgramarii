Program vocale32;

function vocale(s:string):integer;
var rez, i, v  :integer; x:char;
begin
  for i:=1 to length(s) do begin
    x:=s[i];
    case x of 
      'e','u','i','o','a','A','E','U','I','O': v:=v+1;
    end;
  end;
  vocale:=v;
end;

var n : string; r:integer;
  begin 
    writeln('Dati sirul de caractere');
    readln(n);
    r:=vocale(n); writeln('Numarul de vocale este ', r);
  end.