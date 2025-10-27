import 'package:pertemuan_6/buku.dart';

class Perpustakaan {
  List<Buku> listBuku = [];

  void tambahBuku(Buku bukuBaru) {
    listBuku.add(bukuBaru);
    print('Buku "${bukuBaru.judul}" ditambahkan.');
  }

  void lihatSemuaBuku() {
    if (listBuku.isEmpty) {
      print('Tidak ada buku di perpustakaan.');
      return;
    }

    for (var buku in listBuku) {
      print('Judul: ${buku.judul}, Penulis: ${buku.penulis}');
    }
  }

  void updateBuku(int index, String judulBaru, String penulisBaru) {
    if (index < 0 || index > listBuku.length) {
      print('Indeks buku tidak valid!');
      return;
    }
    listBuku[index].judul = judulBaru;
    listBuku[index].penulis = penulisBaru;
    print('Buku di indeks $index telah diperbarui');
  }

  void hapusBuku(int index) {
    if (index < 0 || index >= listBuku.length) {
      print('Indeks buku tidak valid');
      return;
    }

    String title = listBuku[index].judul;
    listBuku.removeAt(index);
    print('Buku "$title" telah dihapus.');
  }
}