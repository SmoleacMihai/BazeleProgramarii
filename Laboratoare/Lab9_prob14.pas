program p14;
type natural=1..60000;
var found:boolean; 
    A : array[1..10000] of natural; 
    x, n,i : natural;
begin
  write(' X = '); readln(x);
  write(' N = '); readln(n);
  for i:=1 to n do begin
    readln(a[i]);
  end;
  found:=true;
  i:=2;
  while((i<n)and(found=true)) do begin
    if a[i]+a[i-1]=x then begin
      found:=false; writeln(' Este cel putin o pereche de elemente alaturate cu suma x');
    end;
    i:=i+1;
  end;
end.