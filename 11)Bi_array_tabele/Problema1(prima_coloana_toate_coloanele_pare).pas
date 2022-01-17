program NM;
const n=3;
const m=3;
var a: array[1..n, 1..m] of integer;
i, j, b: integer;
begin
  for i:=1 to n do begin
    for j:=1 to m do begin
    readln(b);
    a[i,j]:=b;
  end; 
end;
  for i:=1 to n do begin
    for j:=1 to m do begin write(a[i,j], ' ');
    end;
  writeln;
end;
writeln('=======');
  for i:=1 to n do begin
    for j:=1 to m do begin
    if ((j mod 2)=0) then a[i,j]:=a[i,1]
    end;
end;
  for i:=1 to n do begin
    for j:=1 to m do begin write(a[i,j], ' ');
end;
  writeln;
end;
end.