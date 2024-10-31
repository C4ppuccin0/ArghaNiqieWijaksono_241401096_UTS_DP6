program Nilai_Akhir_Mahasiswa;
uses crt;

var
    nilaiTugas : array[1..8] of real;
    nilaiUTS, nilaiUAS, totalNilai, rataTugas : real;
    i : integer;
    nilaiHuruf : string;

begin
    clrscr;
    // Input nilai tugas
    writeln ('Masukkan nilai 8 tugas:');
    for i := 1 to 8 do
        begin
            write('Tugas ', i, ': ');
            readln(nilaiTugas[i]);
        end;

    // Input nilai UTS
    write ('Masukkan nilai UTS: '); readln(nilaiUTS);

    // Input nilai UAS
    write ('Masukkan nilai UAS: '); readln (nilaiUAS);

    // Hitung rata-rata nilai tugas
    rataTugas := 0;
    for i := 1 to 8 do
        begin
            rataTugas := rataTugas + nilaiTugas[i];
        end;
    rataTugas := rataTugas / 8;

    // Hitung total nilai
    totalNilai := (rataTugas * 0.25) + (nilaiUTS * 0.35) + (nilaiUAS * 0.40);

    // Tentukan nilai huruf
    if (totalNilai >= 85) then
        begin
            nilaiHuruf := 'A'
        end
    else if (totalNilai >= 80) then
        begin
            nilaiHuruf := 'B+'
        end
    else if (totalNilai >= 75) then
        begin
            nilaiHuruf := 'B'
        end 
    else if (totalNilai >= 70) then
        begin 
            nilaiHuruf := 'B-'
        end 
    else if (totalNilai >= 65) then
        begin 
            nilaiHuruf := 'C+'
        end 
    else if (totalNilai >= 60) then
        begin
            nilaiHuruf := 'C'
        end 
    else if (totalNilai >= 40) then
        begin
            nilaiHuruf := 'D'
        end 
    else
        begin
            nilaiHuruf := 'E';
        end;

    // Output hasil
    writeln ('Total Nilai Akhir: ', totalNilai:0:2);
    writeln ('Nilai Huruf: ', nilaiHuruf);
end.