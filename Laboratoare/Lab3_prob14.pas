Program triunghi_dreptunghic_isos;
var
  i, c, h, s : real;
  car : integer;
begin
    writeln('Dati o caracteristica a triunghiului dreptunghic isoscel');
    writeln('1 - cateta');
    writeln('2 - ipotenuza');
    writeln('3 - inaltimea dusa pe ipotenuza');
    writeln('4 - aria');
    readln(car);
    case car of
    1 : begin
            write('Cateta = '); readln(c);
            i:=sqrt(c*c+c*c);
            h:=sqrt(c*c-(i/2)*(i/2));
            s:=(c*c)/2;
      
        end;
    2 : begin 
           write('Ipotenuza = '); readln(i);
           c:=i/sqrt(2);
           h:=sqrt(c*c-(i/2)*(i/2));
           s:=(c*c)/2;
        end;
    3 : begin
           write('Inaltimea dusa din ipotenuza = '); readln(c);
           i:=2*h;
           c:=i/sqrt(2);
           s:=(c*c)/2;
        end;
    4 : begin 
           write('Aria = '); readln(s);
           c:=sqrt(2*s);
           i:=sqrt(c*c+c*c);
           h:=sqrt(c*c-(i/2)*(i/2));
        end;
      end;
    writeln('cateta = ', c);
    writeln('ipotenuza = ', i);
    writeln('inltimea dusa pe ipotenuza = ', h);
    writeln('aria = ', s);
end.