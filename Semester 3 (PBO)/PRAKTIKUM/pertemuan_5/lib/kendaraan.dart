abstract class Kendaraan {
  String jenisKendaraan;

  // constructor
  Kendaraan(this.jenisKendaraan);

  // method abstrak (harus diimplementasikan oleh subclass)
  void bergerak();
}