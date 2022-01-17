program nr14;
type
  natural=1..60000;
  sir=array[1..60000]of natural;
  var s:sir; n,r:natural; i : integer;
  begin
    readln(n);
    for i:=1 to n do begin
      read(s[i]);
    end;
    i:=1;
    while i<(2*n) do begin
       write(s[i], ' ');
    if ((s[i] mod 2)=0)and(s[i]<>0) then begin
        r:=s[i+1];
        write('0 ');
        write(r,' ');
        i:=i+1;
        end;
    i:=1+i;
    if s[i]=0 then break;
    end;
  end.