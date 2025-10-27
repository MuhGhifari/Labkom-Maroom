import 'package:pertemuan_5/mobil.dart';
import 'dart:io';

void main() {
  print('=== Program Simulasi Mobil Sederhana ===');
  stdout.write('Masukkan jenis mobil Anda: ');
  String? jenisMobil = stdin.readLineSync();
  
  var mobil = Mobil(jenisMobil ?? 'Mobil Default');
  
  while (true) {
    print('\nAksi:');
    print('1. Jalankan mobil');
    print('2. Isi bensin (jumlah tertentu)');
    print('3. Cek bensin');
    print('4. Keluar');
    
    stdout.write('Pilihan (1 - 4): ');
    String? pilihan = stdin.readLineSync();
    
    switch(pilihan) {
      case '1':
        mobil.bergerak();
        break;
      case '2':
        stdout.write('Masukkan jumlah bensin yang ingin diisi (dalam %): ');
        String? input = stdin.readLineSync();
        try {
          int jumlah = int.parse(input ?? '0');
          mobil.isiBensin = jumlah;  // Menggunakan setter
        } catch (e) {
          print('Input tidak valid! Masukkan angka.');
        }
        break;
      case '3':
        print('Sisa bensin: ${mobil.bensin}%');
        break;
      case '4':
        print('Terima kasih!');
        return;
      default:
        print('Pilihan tidak valid!');
    }
  }
}