import 'package:pertemuan_5/kendaraan.dart';

class Pesawat extends Kendaraan {
  // contoh contructor dengan nilai default untuk setiap objek
  Pesawat() : super('Pesawat');

  @override
  void bergerak() {
    print('$jenisKendaraan bergerak di udara');
  }
}