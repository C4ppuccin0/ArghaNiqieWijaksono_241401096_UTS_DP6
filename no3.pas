program Pemilihan_Suara_Rakyat;
uses crt;

var
    jumlahPemilih, i, pilihanA, pilihanB : integer;
    pilihan : char;

begin
    clrscr;  
    // Inisialisasi jumlah pilihan
    pilihanA := 0;
    pilihanB := 0;

    // Input jumlah pemilih
    write('Masukkan jumlah pemilih: '); readln (jumlahPemilih);

    // Loop untuk mencatat pilihan tiap pemilih
    for i := 1 to jumlahPemilih do
        begin
            write('Masukkan pilihan pemilih ', i, ' (A/B): '); readln (pilihan);
    
            // Cek pilihan dan hitung
            if (pilihan = 'A') then
                begin 
                    pilihanA := pilihanA + 1;
                end
    
            else if (pilihan = 'B') then
                begin
                    pilihanB := pilihanB + 1;
                end
    
            else
                begin
                    writeln('Pilihan tidak valid. Harus A atau B.');
                end;
        end;

    // Output hasil pemilihan
    writeln('Jumlah pemilih yang memilih opsi A: ', pilihanA);
    writeln('Jumlah pemilih yang memilih opsi B: ', pilihanB);
end.