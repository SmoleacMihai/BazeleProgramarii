program NM;
const n=3;
const m=3;
var a: array[1..n, 1..m] of integer;
i, j, b, max1, max2, max3: integer;
begin
  max1:=0; max2:=0; max3:=0;
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
    if a[1,j]>max1 then  max1:=a[1,j];
    if a[2,j]>max2 then  max2:=a[2,j];
    if a[3,j]>max3 then  max3:=a[3,j];
    end;
end;

for i:=1 to n do begin
    for j:=1 to m do begin
    if a[1,j]=max1 then  a[1,j]:=max1*(-1);
    if a[2,j]=max2 then  a[2,j]:=max2*(-1);
    if a[3,j]=max3 then  a[3,j]:=max3*(-1);
    end;
end;

  for i:=1 to n do begin
    for j:=1 to m do begin write(a[i,j], ' ');
end;
  writeln;
end;
end.