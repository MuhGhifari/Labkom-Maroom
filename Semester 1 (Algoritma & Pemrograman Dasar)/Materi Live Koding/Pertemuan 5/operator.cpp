#include <iostream>

using namespace std;

int main() {
	int angka1, angka2;

	cout << "Masukkan angka pertama	: ";
	cin >> angka1;
	
	cout << "Masukkan angka kedua	: ";
	cin >> angka2;

	// Operator Aritmatika
	cout << "\n==== OPERATOR ARITMATIKA ====" << endl;
	cout << "(+) Penjumlahan	: " << angka1 + angka2 << endl;
	cout << "(-) Pengurangan	: " << angka1 - angka2 << endl;
	cout << "(*) Perkalian	: " << angka1 * angka2 << endl;
	cout << "(/) Pembagian	: " << angka1 / angka2 << endl;
	cout << "(%) Modulo	: " << angka1 % angka2 << endl;

	// Operator Pembanding
	cout << "\n==== OPERATOR PEMBANDING ====" << endl;

	bool samaDengan = angka1 == angka2;
	cout << "(==) Sama dengan	: " << samaDengan << endl;
	
	bool tidakSamaDengan = angka1 != angka2;
	cout << "(!=) Tdk sama dgn	: " << tidakSamaDengan << endl;
	
	bool lebihDari = angka1 > angka2;
	cout << "(>)  Lebih dari		: " << lebihDari << endl;

	bool lebihDariSamaDengan = angka1 >= angka2;
	cout << "(>=) Lbh dr sm dgn	: " << lebihDariSamaDengan << endl;

	bool kurangDari = angka1 > angka2;
	cout << "(<)  Kurang dari	: " << kurangDari << endl;

	bool kurangDariSamaDengan = angka1 >= angka2;
	cout << "(<=) Krg dr sm dgn	: " << kurangDariSamaDengan << endl;

	// Operator Logika
	cout << "\n==== OPERATOR LOGIKA ====" << endl;

	cout << "Benar AND Benar	: " << (true && true) << endl;
	cout << "Benar AND Salah	: " << (true && false) << endl;
	cout << "Salah AND Salah	: " << (false && false) << endl;

	cout << "Benar OR Benar	: " << (true || true) << endl;
	cout << "Benar OR Salah	: " << (true || false) << endl;
	cout << "Salah OR Salah	: " << (false || false) << endl;

	cout << "NOT Benar	: " << (!true) << endl;
	cout << "NOT Salah	: " << (!false) << endl;

	// Operator Assignment
	cout << "\n==== OPERATOR ASSIGNMENT ====" << endl;

	angka1 = 10;
	angka2 = 5;

	angka1 += angka2; // -> angka1 = angka1 + angka2;
	cout << "Hasil angka1 += angka2 : " << angka1 << endl; // angka1 menjadi 15

	angka1 -= angka2; // -> angka1 = angka1 - angka2;
	cout << "Hasil angka1 -= angka2 : " << angka1 << endl; // angka1 menjadi 10

	angka1 *= angka2; // -> angka1 = angka1 * angka2;
	cout << "Hasil angka1 *= angka2 : " << angka1 << endl; // angka1 menjadi 50

	angka1 /= angka2; // -> angka1 = angka1 / angka2;
	cout << "Hasil angka1 /= angka2 : " << angka1 << endl; // angka1 menjadi 10

	angka1 %= angka2; // -> angka1 = angka1 % angka2;
	cout << "Hasil angka1 %= angka2 : " << angka1 << endl; // angka1 menjadi 0

	// Operator Increment/Decrement
	cout << "\n==== OPERATOR INCREMENT/DECREMENT ====" << endl;

	int a = 5;

	// increment
	cout << "Nilai awal a : " << a << endl;
	cout << "Prefix (++a) : " << ++a << endl; // a di tambah 1 menjadi 6 lalu dikeluarkan
	cout << "Postfix (a++): " << a++ << endl; // a keluar sbg 6 lalu ditambah 1 menjadi 7
	cout << "Nilai akhir a: " << a << endl; // a keluar sbg 7
	cout << endl;
	// decrement
	cout << "Nilai awal a : " << a << endl;
	cout << "Prefix (--a) : " << --a << endl; // a di kurang 1 menjadi 6 lalu dikeluarkan
	cout << "Postfix (a--): " << a-- << endl; // a keluar sbg 6 lalu dikurang 1 menjadi 5
	cout << "Nilai akhir a: " << a << endl; // a keluar sbg 5

	return 0;
}