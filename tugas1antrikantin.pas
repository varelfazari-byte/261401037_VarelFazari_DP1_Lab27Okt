program AntriKantin;
uses crt;
var
    nim : array[1..10] of string;
    n, i : integer;
begin
    clrscr;
    repeat
        write('Masukkan jumlah mahasiswa (1-10): ');
        readln(n);
    until (n >= 1) and (n <= 10);
    
    writeln('Masukkan NIM mahasiswa : ');
    for i := 1 to n do
    begin
        write('NIM ke- ', i, ' : ');
        readln(nim[i]);
    end;

    writeln('Urutan antrian dari belakang ke depan : ');
    for i := n downto 1 do 
    write(nim[i], ' ');
    writeln;
    readln;
end.