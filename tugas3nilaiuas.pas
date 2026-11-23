program UrutNilaiUAS;
uses crt;
var
    nilai : array[1..10] of real;
    n, i, j : integer;
    temp : real;
begin
    clrscr;
    repeat
    write('Jumlah mahasiswa (1-10): ');
    readln(n);
    until (n >= 1) and (n <= 10);

    for i := 1 to n do
    begin
    write('Nilai UAS mahasiswa ke-', i, ': ');
    readln(nilai[i]);
    end;

    { Bubble sort: terendah ke tertinggi }
    for i := 1 to n - 1 do
    for j := 1 to n - i do
        if nilai[j] > nilai[j + 1] then
        begin
        temp := nilai[j];
        nilai[j] := nilai[j + 1];
        nilai[j + 1] := temp;
        end;

    writeln;
    writeln('Nilai UAS terurut dari terendah ke tertinggi:');
    for i := 1 to n do
    write(nilai[i]:0:2, ' ');
    writeln;
    readln;
end.
