program ex9;

type natural=1..999999;

var n, rev_n: natural; i, r : integer;

function CIFRA_PARA(a: natural):integer;
var cifra: natural;
gasit: boolean;
begin
  
  gasit:=true;
 
    while(a<>0) and gasit do
       begin
         
        cifra:=a mod 10;
          if (cifra mod 2=0)
            then begin
              gasit:=true;
              CIFRA_PARA:=cifra;
                 end;
   a:=a div 10;
end;
end;

begin
write('n='); readln(n);r:=n;
while (r > 0) do begin
        rev_n := rev_n * 10 + r mod 10;
        r := r div 10;
    end;
writeln(CIFRA_PARA(n));
end.
