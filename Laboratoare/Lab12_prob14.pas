program lab12;
Type  natural=1..60000;
Data= Record
       Zi: 1..31;
       Luna: 1..12;
       An: natural;
End;
automobil= Record
       Nume: string;
       pret: natural;
       data_fabricatiei: Data;
end;

lista = array[0..1000] of automobil;
var 
  x : lista; 
  n, m, newm, i, menu1, menu2, count : natural; 
  max, min:real; 
  gasit:boolean; 
  nume_indicat, prenume_indicat:string;
label a; 
label b;
procedure swap( var o, p:natural );
var
  temp : natural;
begin
  temp:= o;
  o:= p;
  p:= temp;
end;
begin
  a:
  writeln(' Alege metoda de introducere a informatiei');
  writeln;
  writeln(' 1 - Introducerea manuală');
  writeln(' 2 - Introducerea random(pentru testare rapida)');
  writeln;
  write(' Opțiunea alesă:');readln(menu1);
  writeln;
  if (menu1<>1) and (menu1<>2)then goto a;
  case menu1 of
    1:begin 
         write(' Dati numarul de automobile '); readln(n);
         for i:=1 to n do begin
           writeln(' Automobilul nr.', i);
           writeln;
           write(' Numele: ');            readln(x[i].Nume);
           write(' Data fabricatiei: ');  readln(x[i].data_fabricatiei.Zi);
           write(' Luna fabricatiei: ');  readln(x[i].data_fabricatiei.Luna);
           write(' Anul fabricatiei: ');  readln(x[i].data_fabricatiei.An);
           write(' Pretul: ');            readln(x[i].pret);
           writeln;
         end;
     end;
     2:begin
          write('Dati numarul de studenti '); readln(n);
          for i:=1 to n do begin
           write(' Studentul nr.', i);
           writeln;
           write(' Numele: ');           x[i].Nume:= chr(random(25)+65);                 writeln(x[i].Nume);
           write(' Data fabricatiei: '); x[i].data_fabricatiei.Zi:= random(30)+2;        writeln(x[i].data_fabricatiei.Zi);
           write(' Luna fabricatiei: '); x[i].data_fabricatiei.Luna:= random(12)+1; writeln(x[i].data_fabricatiei.Luna);
           write(' Anul fabricatiei: '); x[i].data_fabricatiei.An:= random(3)+1990;      writeln(x[i].data_fabricatiei.An);
           write(' Pretul: ');           x[i].pret:= random(6)+5;                        writeln(x[i].pret);
           writeln;
         end;
       end;
   end;
   b:
   writeln(' Ce doriti sa facem ?');
   writeln(' 1 - Afisaza câte automobile Dacia au fost fabricate între anii 1990 și 1995');
   writeln(' 2 - Afișaza lista automobilelor după prețul de vânzare în ordine crescătoare');
   writeln;
   write(' Opțiunea alesă:');readln(menu2);
   if (menu2<>1) and (menu2<>2)then goto b;
   case menu2 of
     //Sarcina 1
     1:begin
       count:=0;
      for i:=1 to n do begin
        if ((x[i].Nume='Dacia')and(x[i].data_fabricatiei.An>1990)and(x[i].data_fabricatiei.An<1995)) then count:=count+1;
      end;
      writeln(' Au fost fabricate între anii 1990 și 1995, ', count, ' automobile Dacia');
     end;
     //Sarcina 2
     2:begin
       m:=n;
       repeat
        newm:= 0;
         for i := 1 to m do begin
           if (x[i-1].pret>x[i].pret) then begin
            swap(x[i-1].pret, x[i].pret);
            newm:= i ;
          end;
      end ;
    m := newm;
  until m = 0;
  for i:=1 to n do begin
    writeln(' Automobilul nr.', i);
           writeln;
           write(' Numele: ');            writeln(x[i].Nume);
           write(' Ziua fabricatiei: ');  writeln(x[i].data_fabricatiei.Zi);
           write(' Luna fabricatiei: ');  writeln(x[i].data_fabricatiei.Luna);
           write(' Anul fabricatiei: ');  writeln(x[i].data_fabricatiei.An);
           write(' Pretul: ');            writeln(x[i].pret);
           writeln;
     end;
   end;
   end;
end.