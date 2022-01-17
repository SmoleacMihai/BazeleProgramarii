Program reverse32;

procedure reverse(s:string);
var rez, i, v  :integer; x:char;
begin
  for i:=length(s) downto 1 do begin
    x:=s[i];write(x)
    
  end;

end;

var n : string; r:integer;
  begin 
    writeln('Dati sirul de caractere');
    readln(n);
    reverse(n);
  end.