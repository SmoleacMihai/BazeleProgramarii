program pr14;
type litere=set of'a'..'z';
     litereUp=set of'A'..'Z';
var s : litere; sUp : litereUp;
    sir:string[50];
    i, control : integer;
    var l:integer;
begin
  write(' Sirul introdus: '); 
  readln(sir);
  for i:=1 to length(sir) do begin
    if (sir[i] not in s)and(sir[i] not in sUp) then delete(sir, i, 1);
end;
  for i:=1 to length(sir) do begin
    write(sir[i]);
  end;
end.
