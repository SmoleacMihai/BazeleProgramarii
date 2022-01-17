program problema14;
type natural=0..9999;

procedure media(a,b: natural);
var s : real;
  begin
    s:=(a + b)/2; writeln('Media aritmetica = ', s);
    s:=sqrt(a * b); writeln('Media geometrica = ', s);
  end;
  
var a,b : natural;
    s : real;
    
begin
  write('a = '); readln(a);
  write('b = '); readln(b);
  media(a, b);
end.
