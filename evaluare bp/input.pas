program calc;
Type

T1 = Array [1..12] of Real;

Var

S: T1;i, i:integer;

Function F1 (Var V:T1, K:Real):word;

Var

I: Natural;

Begin

I:=1

While (I<=12) and (V[i] <> K) do

I:=I+1

End

If I<=12 then

Return I

Else

Return 0

End

End
begin
  for i:=1 to 4 do begin
    readln(s[i]);
  end;
  P2(S,12);
  for i:=1 to 4 do begin
    writeln(s[i]);
  end;
  writeln;
end.