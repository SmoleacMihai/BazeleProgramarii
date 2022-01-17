program BD;
Type  natural=1..60000;
Data= Record
       Zi: 1..31;
       Luna: 1..12;
       An: natural;
End;
student= Record
       Nume: string;
       Prenume: string;
       data_nasterei: Data;
       media_BAC:real;
       resedinta:string;
       telefon_de_contact:natural;
end;

lista = array[0..1000] of student;
var 
  x : lista; 
  n, m, newm, i, menu1, menu2, count : natural; 
  max, min:real; 
  gasit:boolean; 
  nume_indicat, prenume_indicat:string;
label a; 
procedure swap( var o, p:real );
var
  temp : real;
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
         write('Dati numarul de studenti '); readln(n);
         for i:=1 to n do begin
           writeln(' Studentul nr.', i);
           writeln;
           write(' Numele: ');            readln(x[i].Nume);
           write(' Prenumele: ');         readln(x[i].Prenume);
           write(' Ziua nasterii: ');     readln(x[i].data_nasterei.Zi);
           write(' Luna nasterii: ');     readln(x[i].data_nasterei.Luna);
           write(' Anul nasterii: ');     readln(x[i].data_nasterei.An);
           write(' Media BAC: ');         readln(x[i].media_BAC);
           write(' Resedinta: ');         readln(x[i].resedinta);
           write(' Telefon de contact: ');readln(x[i].telefon_de_contact);
           writeln;
         end;
     end;
     2:begin
          write('Dati numarul de studenti '); readln(n);
          for i:=1 to n do begin
           write(' Studentul nr.', i);
           writeln;
           write(' Numele: ');              x[i].Nume:= chr(random(25)+65);           writeln(x[i].Nume);
           write(' Prenumele: ');           x[i].Prenume:= chr(random(25)+65);        writeln(x[i].Prenume);
           write(' Ziua nasterii: ');       x[i].data_nasterei.Zi:= random(30)+2;     writeln(x[i].data_nasterei.Zi);
           write(' Luna nasterii: ');       x[i].data_nasterei.Luna:= random(12)+1;   writeln(x[i].data_nasterei.Luna);
           write(' Anul nasterii: ');       x[i].data_nasterei.An:= random(3)+2000;   writeln(x[i].data_nasterei.An);
           write(' Media BAC: ');           x[i].media_BAC:= random(6)+5;             writeln(x[i].media_BAC);
           write(' Resedinta: ');           x[i].resedinta:= chr(random(25)+65);      writeln(x[i].resedinta);
           write(' Telefon de contact: ');  x[i].telefon_de_contact:=random(30000)+1; writeln(x[i].telefon_de_contact);
           writeln;
         end;
       end;
   end;
   writeln(' Ce doriti sa facem ?');
   writeln(' 1 - Afișază persoanele cu media maximă');
   writeln(' 2 - Verifică dacă în listă sunt persoane cu viză de reședință din Bălți');
   writeln(' 3 - Se calculează numărul persoanelor cu medie minimă');
   writeln(' 4 - Afișază numarul de telefon al persoanei numelui și prenumelui care vor fi introduse');
   writeln(' 5 - Afișază persoanele în ordinea descrescătoare a mediei');
   writeln;
   write(' Opțiunea alesă:');readln(menu2);
   case menu2 of
     //Sarcina 1
     1:begin
       max:=x[1].media_BAC;
       for i:=2 to n do begin
         if x[i].media_BAC>max then max:=x[i].media_BAC;
       end;
       for i:=1 to n do begin
         if x[i].media_BAC=max then begin 
           writeln(' Studentul nr.', i); 
           writeln(' ', x[i].Nume, ' ',x[i].Prenume);
           writeln;
         end;
       end;
     end;
     //Sarcina 2
     2:begin
       i:=1; gasit:=true;
       while((i<n) and (gasit=true)) do begin
         if x[i].resedinta='B'{Bălți} then begin
           gasit:=false;
           writeln(' Sunt studenti cu resedinta in orasul ales(Bălți)');
           writeln;
         end;
         i:=i+1;
       end;
     end;
     //Sarcina 3
     3:begin
       writeln;
       min:=x[1].media_BAC;
       for i:=2 to n do begin
         if x[i].media_BAC<min then min:=x[i].media_BAC;
       end;
       for i:=1 to n do begin
         if x[i].media_BAC=min then begin 
           count:=count+1;
         end;
       end;
       writeln(' Numarul persoanelor cu medie minima este ', count);
     end;
     //Sarcina 4
     4:begin
       write(' Numele indicat: ');
       readln(nume_indicat);
       write(' Preumele indicat: ');
       readln(prenume_indicat);
       for i:=1 to n do begin
         if (x[i].Nume=nume_indicat)and(x[i].Prenume=prenume_indicat) then begin
           write(' Telefon de contact: ',x[i].telefon_de_contact);
           writeln;
         end;
       end;
     end;
     //Sarcina 5
     5:begin
       m:=n;
       repeat
        newm:= 0;
         for i := 1 to m do begin
           if (x[i-1].media_BAC<x[i].media_BAC) then begin
            swap(x[i-1].media_BAC, x[i].media_BAC);
            newm:= i ;
          end;
      end ;
    m := newm;
  until m = 0;
  for i:=1 to n do begin
    writeln(' Studentul nr.', i);
           writeln;
           write(' Numele: ');            writeln(x[i].Nume);
           write(' Prenumele: ');         writeln(x[i].Prenume);
           write(' Ziua nasterii: ');     writeln(x[i].data_nasterei.Zi);
           write(' Luna nasterii: ');     writeln(x[i].data_nasterei.Luna);
           write(' Anul nasterii: ');     writeln(x[i].data_nasterei.An);
           write(' Media BAC: ');         writeln(x[i].media_BAC);
           write(' Resedinta: ');         writeln(x[i].resedinta);
           write(' Telefon de contact: ');writeln(x[i].telefon_de_contact);
           writeln;
     end;
   end;
   end;
end.