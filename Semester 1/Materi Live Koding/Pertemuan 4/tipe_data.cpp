
#include <iostream>

using namespace std;

int main() {
	int a; 
	int b = 10; 
	const int jamPerHari = 24; 

	int x,y; 
	cout << "Masukkan nilai x : "; 
	cin >> x; 

	cout << "Masukkan nilai y : "; 
	cin >> y; 

	cout << "------------------------" << endl;
	cout << "Nilai x = " << x << endl; 
	cout << "Nilai y = " << y << endl; 

	string nama; 
	int umur; 
	char kelas; 

	cout << "Masukkan nama\t: "; 
	getline(cin, nama); 
	
	cout << "Masukkan umur\t: "; 
	cin >> umur; 
	
	cout << "Masukkan kelas\t: "; 
	cin >> kelas; 

	cout << "-- Biodata kamu --" << endl;
	cout << "Nama\t: " << nama << endl;
	cout << "Umur\t: " << umur << endl;
	cout << "Kelas\t: " << kelas << endl;

	return 0;
}