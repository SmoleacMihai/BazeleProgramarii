Program problema14;
var a, b, c, d, x1, x2 : real;
begin
      writeln('Dati valorile a,b,c pentru ecuatia ax^2+bx+c=0');
      write('a = '); readln(a);
      write('b = '); readln(b);
      write('c = '); readln(c);
      if ((a<>0) and (b<>0) and (c<>0)) then begin
      d:=(-b)*(-b)-4*a*c;
      if d>0 then begin
                      x1:=(-b - sqrt(d))/2*a;
                      x2:=(-b + sqrt(d))/2*a;
                      writeln('Prima solutie este ', x1);
                      writeln('Adoua solutie este ', x2)
                  end
      
       else if d=0 then begin
                         x1:=(-b + sqrt(d))/2*a;
                         writeln('Singura solutie este ', x1);
                    end
        
      else if d<0 then writeln('Nu exista solutii in R');
      end;
      if ((a=0) and (b<>0) and (c<>0)) then begin
      x1:=-1*c/b;
      writeln('Singura solutie este ', x1);
      end;
      if ((a=0) and (b=0)) then if c=0 then writeln('Expresia ', c,' = 0  este adevarata')
      else writeln('Expresia ', c,' = 0  nu este adevarata')
end.