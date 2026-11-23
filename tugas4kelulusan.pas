program KelulusanMahasiswa;
uses crt;
var
    tugas, kuis, uts, uas, rata : array[1..5] of real;
    n, i : integer;
begin
    clrscr;
    repeat
    write('Jumlah mahasiswa (1-5): ');
    readln(n);
    until (n >= 1) and (n <= 5);

    for i := 1 to n do
    begin
    writeln('Mahasiswa ke-', i);
    write('  Nilai Tugas : '); readln(tugas[i]);
    write('  Nilai Kuis  : '); readln(kuis[i]);
    write('  Nilai UTS   : '); readln(uts[i]);
    write('  Nilai UAS   : '); readln(uas[i]);
    rata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;
    end;

    writeln;
    writeln('No  Tugas   Kuis    UTS    UAS   Rata-rata  Keterangan');
    writeln('----------------------------------------------------------');
    for i := 1 to n do
    begin
    write(i:2, tugas[i]:8:2, kuis[i]:8:2, uts[i]:8:2, uas[i]:8:2, rata[i]:11:2, '  ');
    if rata[i] >= 70 then
        writeln('Lulus')
    else
        writeln('Tidak Lulus');
    end;
    readln;
end.
