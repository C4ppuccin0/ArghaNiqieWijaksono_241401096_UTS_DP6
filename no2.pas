program Panitia_Yang_Suka_Telat;
uses crt;

var
  waktujam, waktumenit, waktutotal : integer;
  nama, jabatan : string;
  denda : real;

begin
  clrscr;
  // Input data
  write ('Nama : '); readln (nama);
  write ('Jabatan : '); readln (Jabatan);
  write ('Datang(jam): '); readln (waktujam);
  write ('Datang(menit): '); readln (waktumenit);
  
  waktutotal := (waktujam*60) + waktumenit; // Mengubah jam ke menit lalu menjumlahkannya

  // Menghitung denda sesuai dengan jabatan
  if jabatan = ('Ketua Panitia') then
    begin 
      denda:=((waktutotal-420) div 5)*20000;   
    end

  else if jabatan = ('Sekretaris Umum') then
    begin
      denda:=((waktutotal-420) div 5)*20000;   
    end  
  
  else if jabatan = ('Bendahara') then  
    begin  
      denda:=((waktutotal-420) div 5)*20000;
    end
  
  else if (jabatan = 'Anggota Panitia') then
    begin
      denda:=((waktutotal-420) div 5)*10000;
    end
  
  else
    begin
      writeln ('Maaf kamu bukan bagian dari panitia.');
    end;
  
  // Output
  writeln ('Denda: Rp.', denda:0:0);
end.