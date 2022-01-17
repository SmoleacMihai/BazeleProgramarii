Program LiteraA32;

function seekA(s:string):boolean;
var i  :integer; x:char; v:boolean;
begin
  v:=false;
  for i:=1 to length(s) do begin
    x:=s[i];
    case x of 
      'a': v:=true;
      
    end;
  end;
  seekA:=v;
end;

var n : string; r:integer;
  begin 
    writeln('Dati sirul de caractere');
    readln(n);
    if seekA(n) then  
    writeln('Litera "a" este in sir')
    
    else writeln('Litera "a" nu este in sir');
  end.