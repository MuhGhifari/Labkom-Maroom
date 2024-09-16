// PERTEMUAN 4 | "Tipe Data & Variabel"
#include <iostream>

void contohInputXY() {
	int x,y; // Deklarasi var integer "x" & "y" tanpa nilai awal

	std::cout << "Masukkan nilai x : "; // mengeluarkan teks perintah input
	std::cin >> x; // memasukkan teks yang di-input user ke dalam var "x"

	std::cout << "Masukkan nilai y : "; // mengeluarkan teks perintah input
	std::cin >> y; // memasukkan teks yang di-input user ke dalam var "y"

	// mengeluarkan border
	std::cout << "------------------------" << std::endl;
	std::cout << "Nilai x = " << x << std::endl; // mengeluarkan nilai x
	std::cout << "Nilai y = " << y << std::endl; // mengeluarkan nilai y
}

void contohBiodata() {
	std::string nama; // deklarasi var string "nama"
	int umur; // deklarasi var umur
	char kelas; // deklarasi var char

	std::cout << "Masukkan nama\t: "; // mengeluarkan teks perintah input
	std::getline(std::cin, nama); // memasukkan input user ke dalam var "nama"
	/* Catatan : 
	jika menggunakan cin untuk string harus dipastikan memakai "getline()"
	"getline()" membaca tiap karakter sampai bertemu "\n" atau new line
	sedangkan "cin" membaca tiap karakter sampai bertemu spasi atau "\n"
	*/
	
	std::cout << "Masukkan umur\t: "; // mengeluarkan teks perintah input
	std::cin >> umur; // memasukkan input user ke dalam var "umur"
	
	std::cout << "Masukkan kelas\t: "; // mengeluarkan teks perintah input
	std::cin >> kelas; // memasukkan input user ke dalam var "kelas"

	// menampilkan nilai semua variabel
	std::cout << "-- Biodata kamu --" << std::endl;
	std::cout << "Nama\t: " << nama << std::endl;
	std::cout << "Umur\t: " << umur << std::endl;
	std::cout << "Kelas\t: " << kelas << std::endl;
}

int main() {
	
	/* Deklarasi Variabel 
	Inisialisasi adalah proses pengisian variabel dengan nilai awal.
	Apabila nilai variabel tidak di-inisialisasi, maka nilai variabel dianggap kosong atau nol.
	Template: <tipe data> <nama variabel> = <nilai variabel>;
	*/

	int a; // deklarasi var integer "a" tanpa inisialisasi nilai
	int b = 10; // deklarasi var integer "b" dgn inisialisasi nilai "10"

	/* Deklarasi Konstanta
	Beda dengan variabel biasa, nilai var konstanta wajib di-inisialisasikan pada saat deklarasi variabel.
	Template : const <tipe data> <nama variabel> = <nilai variabel>; 
	*/

	const int jumlahBenua = 7; // deklarasi konstanta integer "jumlahBenua" dgn inisialisasi nilai "7"
	// jumlahBenua = 10 // baris ini akan menyebabkan error karna nilai konstanta tdk bisa diubah


	// contohBiodata();
	// contohInputXY();
	return 0;
}