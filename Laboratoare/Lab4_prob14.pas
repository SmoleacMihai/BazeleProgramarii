program numar_aparitii;
var n, x, a, i, s : integer;
begin
  s:=0;
  writeln('Dati numarul de n(numere citite)'); readln(n);
  writeln('Dati valoarea lui "a"'); readln(a);
  writeln('Dati nume7rele');
  for i:=1 to n do begin
    readln(x);
    if x=a then s:=s+1;
  end;
  writeln('"a" a aparut de ', s, ' ori');
end.