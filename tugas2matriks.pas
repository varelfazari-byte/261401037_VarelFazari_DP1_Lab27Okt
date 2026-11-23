program PenjumlahanMatriks;
uses crt;
var
    A, B, C : array[1..5, 1..5] of integer;
    baris1, kolom1, baris2, kolom2 : integer;
    i, j : integer;

begin
    clrscr;
    writeln('=== PENJUMLAHAN MATRIKS ===');

    { Input ukuran matriks 1 }
    write('Jumlah baris matriks 1 (maks 5)  : ');
    readln(baris1);
    write('Jumlah kolom matriks 1 (maks 5)  : ');
    readln(kolom1);

    { Input ukuran matriks 2 }
    write('Jumlah baris matriks 2 (maks 5)  : ');
    readln(baris2);
    write('Jumlah kolom matriks 2 (maks 5)  : ');
    readln(kolom2);
    writeln;

    { Cek ukuran }
    if (baris1 > 5) or (kolom1 > 5) or (baris2 > 5) or (kolom2 > 5) then
    begin
        writeln('Ukuran maksimal matriks adalah 5!')
    end
    else if (baris1 = baris2) and (kolom1 = kolom2) then
begin
    writeln('Matriks DAPAT dijumlahkan.');
    writeln;

    { Input matriks 1 }
    writeln('Isi matriks 1:');
    for i := 1 to baris1 do
        for j := 1 to kolom1 do
        begin
        write('Elemen [', i, ',', j, '] : ');
        readln(A[i, j]);
        end;

    { Input matriks 2 }
    writeln;
    writeln('Isi matriks 2:');
    for i := 1 to baris2 do
        for j := 1 to kolom2 do
        begin
        write('Elemen [', i, ',', j, '] : ');
        readln(B[i, j]);
        end;

    { Proses penjumlahan }
    for i := 1 to baris1 do
        for j := 1 to kolom1 do
        C[i, j] := A[i, j] + B[i, j];

    { Output hasil }
    writeln;
    writeln('Hasil penjumlahan:');
    for i := 1 to baris1 do
    begin
        for j := 1 to kolom1 do
        write(C[i, j]:5);
        writeln;
    end;
end
    else
    writeln('Matriks TIDAK DAPAT dijumlahkan karena ukurannya berbeda.');

    readln;
end.
