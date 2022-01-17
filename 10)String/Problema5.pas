Program LiteraA32;

function seekA(s:string):boolean;
var i  :integer; x:char; v:boolean;
begin
  v:=True;
  for i:=1 to length(s) do begin
    x:=s[i];
    case ord(x) of 
     1..45, 47..64, 123..127, 91..96   : v:=False;
    end;
  end;
  seekA:=v;
end;

var n : string; r:integer;
  begin 
    writeln('Dati sirul de caractere');
    readln(n);
    if seekA(n) then  
    writeln('Sunt doar litere sau "."')
    
    else writeln('Sunt si semne');
  end.