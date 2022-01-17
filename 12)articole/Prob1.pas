program p1;
Type  natural=1..60000;
Data= Record
       Zi: 1..31;
       Luna: 1..12;
       An: Natural;
End;
      Persoana= Record
       Nume: String;
       Data_nast: Data;
End;
Lista= array[1..50] of Persoana;
Var
X: Lista; i,a,z,l,max,min,an_prezent:integer;
begin 
  for i:=1 to 50 do begin
    x[i].nume:='Mihai';
    x[i].data_nast.zi:=random(31);
    x[i].data_nast.luna:=random(12);
    x[i].data_nast.an:=random(2021);
  end;
  {Prob1}
  for i:=1 to 50 do begin
    if ((x[i].data_nast.luna)=1) then writeln(x[i].nume)
  end;
  {Prob2}
  readln(a);
  for i:=1 to 50 do begin
    if x[i].data_nast.an=a then writeln(x[i].nume)
  end;
  {Prob3}
  readln(a);readln(z);readln(l);
  for i:=1 to 50 do begin
    if (x[i].data_nast.an=a)and(x[i].data_nast.zi=z)and(x[i].data_nast.luna=l) then writeln(x[i].nume)
  end;
  {Prob4}
  max:=x[1].data_nast.an;
    for i:=2 to 50 do begin
    if x[i].data_nast.an<max then max:=x[i].data_nast.an
    else if x[i].data_nast.an=max then if x[i].data_nast.luna>x[i-1].data_nast.luna then writeln(x[i-1].nume)
    else if x[i].data_nast.luna=x[i-1].data_nast.luna then if x[i].data_nast.zi>x[i-1].data_nast.zi then writeln(x[i-1].nume)
  end;
  {Prob5}
  max:=x[1].data_nast.an;
    for i:=2 to 50 do begin
    if x[i].data_nast.an<min then max:=x[i].data_nast.an
    else if x[i].data_nast.an=max then if x[i].data_nast.luna<x[i-1].data_nast.luna then writeln(x[i-1].nume)
    else if x[i].data_nast.luna=x[i-1].data_nast.luna then if x[i].data_nast.zi<x[i-1].data_nast.zi then writeln(x[i-1].nume)
  end;
  {Prob6}
  readln(an_prezent);
  for i:=1 to 50 do begin
    write('Nume: ',x[i].nume,' Varsta: ',an_prezent-x[i].data_nast.an);
  end;
  {Prob7}
  readln(v);
    for i:=1 to 50 do begin
    if (an_prezent-x[i].data_nast.an)>v then writeln(x[i].nume)
    end;
  {Prob8}
    for i:=2 to 50 do begin
    if x[i].data_nast.an=x[i-1].data_nast.an then writeln(x[i].nume)
    end;
end.