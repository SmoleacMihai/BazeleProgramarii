program problema14;
var x : integer;
  begin 
    writeln('Dati un numar de 4 cifre');
    readln(x);
    x:=(x div 10)+(x div 100)+(x div 1000);
    writeln(x);
  end.