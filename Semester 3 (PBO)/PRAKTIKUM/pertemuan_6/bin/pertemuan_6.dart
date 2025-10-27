import 'dart:io';

import 'package:pertemuan_6/buku.dart';
import 'package:pertemuan_6/perpustakaan.dart';

void main() {
  Perpustakaan perpus = Perpustakaan();
  
  bool menu = true;

  while (menu) {
    print("\nMenu Perpustakaan");
    print("1. Tambah Buku");
    print("2. Update Buku");
    print("3. List Buku");
    print("4. Hapus Buku");
    print("5. Exit\n");

    stdout.write("Masukkan pilihan menu: ");
    int pilihan = int.parse(stdin.readLineSync()!);

    switch (pilihan) {
      case 1:
        stdout.write('Masukkan Judul Buku: ');
        String judul = stdin.readLineSync()!;
        stdout.write('Masukkan Penulis Buku: ');
        String penulis = stdin.readLineSync()!;
        perpus.tambahBuku(Buku(judul, penulis));
        break;
      case 2:
        stdout.write("Masukan Index Buku: ");
        int index = int.parse(stdin.readLineSync()!);
        stdout.write("Masukkan Judul Baru Buku: ");
        String judul = stdin.readLineSync()!;
        stdout.write("Masukkan Penulis Baru Buku: ");
        String penulis = stdin.readLineSync()!;
        perpus.updateBuku(index, judul, penulis);
        break;
      case 3: 
        perpus.lihatSemuaBuku();
        break;
      case 4:
        stdout.write("Masukkan Index Buku");
        int index = int.parse(stdin.readLineSync()!);
        perpus.hapusBuku(index);
        break;
      case 5:
        menu = false;
        break;
      default:
        print('Input tidak valid');
    }
  }
}