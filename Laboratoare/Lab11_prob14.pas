program mn;
var a: array[0..30, 0..30] of integer;
i, j, b, n, m: integer;
begin
  write( 'Numarul liniilor: '); readln(n);
  write( 'Numarul coloanelor: '); readln(m);
  for i:=1 to n do begin
    for j:=1 to m do begin
    readln(a[i,j]);
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
      if (a[i,j+1]+a[i,j-1]+a[i-1,j]+a[i+1,j])>0 then writeln(' i= ', i, ' j= ', j);
    end;
end;
end.