import 'package:pertemuan_5/kendaraan.dart';

class Mobil extends Kendaraan {
  // Private variable (encapsulation)
  int _bensin = 100;  // Bensin dalam persen
  
  Mobil(super.jenisKendaraan);

  // Getter untuk mengecek bensin
  int get bensin => _bensin;
  
  // Setter untuk mengisi bensin dengan validasi
  set isiBensin(int jumlah) {
    if (jumlah < 0) {
      print('Jumlah bensin tidak boleh negatif!');
      return;
    }

    if (jumlah > 100) {
      print('Tangki bensin tidak bisa lebih dari 100%!');
      return;
    }
    
    int totalBensin = _bensin + jumlah;
    if (totalBensin > 100) {
      print('Peringatan: Tangki akan meluap!');
      print('Sisa ruang tangki: ${100 - _bensin}%');
      return;
    }
    
    _bensin = totalBensin;
    print('Bensin diisi $jumlah%. Total sekarang: $_bensin%');
  }

  @override
  void bergerak() {
    if (_bensin <= 0) {
      print('$jenisKendaraan tidak bisa bergerak! Bensin habis!');
      return;
    } else if (_bensin >= 25) {
      _bensin -= 25;  // Berkurang 25% setiap bergerak
    } else {
      _bensin = 0;
    }
    
    print('$jenisKendaraan bergerak di jalan');
    print('Sisa bensin: $_bensin%');
  }
}