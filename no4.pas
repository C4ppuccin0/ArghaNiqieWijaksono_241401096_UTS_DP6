program Koko_Yang_Punya_Toko;
uses crt;

var
  kembalian, pecahan : array[1..11] of longint;
  i, jumlahPecahan : integer;

begin
  clrscr;
  // Inisialisasi array pecahan uang
  pecahan[1] := 100000;
  pecahan[2] := 75000;
  pecahan[3] := 50000;
  pecahan[4] := 20000;
  pecahan[5] := 10000;
  pecahan[6] := 5000;
  pecahan[7] := 2000;
  pecahan[8] := 1000;
  pecahan[9] := 500;
  pecahan[10] := 200;
  pecahan[11] := 100;

  // Input jumlah kembalian
  write ('Masukkan jumlah kembalian: '); readln (kembalian[0]);

  // Inisialisasi jumlah pecahan
  jumlahPecahan := 0;

  // Hitung jumlah minimum pecahan uang
  for i := 1 to 11 do
    begin
      while kembalian[0] >= pecahan[i] do
        begin
          jumlahPecahan := jumlahPecahan + 1;
          kembalian[0] := kembalian[0] - pecahan[i];
        end;
    end;

  // Tampilkan hasil
  writeln ('Jumlah minimum pecahan uang: ', jumlahPecahan);
end.