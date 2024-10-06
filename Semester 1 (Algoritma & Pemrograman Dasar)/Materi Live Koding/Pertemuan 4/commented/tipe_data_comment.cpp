// PERTEMUAN 4 | "Tipe Data & Variabel"
#include <iostream>

using namespace std;

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

	// ====================================== PROGRAM X & Y ======================================
	
	int x,y; // Deklarasi var integer "x" & "y" tanpa nilai awal

	cout << "Masukkan nilai x : "; // mengeluarkan teks perintah input
	cin >> x; // memasukkan teks yang di-input user ke dalam var "x"

	cout << "Masukkan nilai y : "; // mengeluarkan teks perintah input
	cin >> y; // memasukkan teks yang di-input user ke dalam var "y"

	// mengeluarkan border
	cout << "------------------------" << endl;
	cout << "Nilai x = " << x << endl; // mengeluarkan nilai x
	cout << "Nilai y = " << y << endl; // mengeluarkan nilai y

	string nama; // deklarasi var string "nama"
	int umur; // deklarasi var umur
	char kelas; // deklarasi var char

	//====================================== PROGRAM BIODATA ======================================

	cout << "Masukkan nama\t: "; // mengeluarkan teks perintah input
	cin.ignore(); // menghapus semua input yg dimasukkan ke cin sebelumnya
	getline(cin, nama); // memasukkan input user ke dalam var "nama"
	/* Catatan : 
	jika menggunakan cin untuk string harus dipastikan memakai "getline()"
	"getline()" membaca tiap karakter sampai bertemu "\n" atau new line
	sedangkan "cin" membaca tiap karakter sampai bertemu spasi atau "\n"
	*/
	
	cout << "Masukkan umur\t: "; // mengeluarkan teks perintah input
	cin >> umur; // memasukkan input user ke dalam var "umur"
	
	cout << "Masukkan kelas\t: "; // mengeluarkan teks perintah input
	cin >> kelas; // memasukkan input user ke dalam var "kelas"

	// menampilkan nilai semua variabel
	cout << "-- Biodata kamu --" << endl;
	cout << "Nama\t: " << nama << endl;
	cout << "Umur\t: " << umur << endl;
	cout << "Kelas\t: " << kelas << endl;

	return 0;
}