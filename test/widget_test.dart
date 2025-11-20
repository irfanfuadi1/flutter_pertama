// void main() {
//   // Tipe Data dan Variabel
//   // var
//   var mahasiswa = "Fuad";
//   var umur = "19";

//   print("${mahasiswa}_Umur = $umur");

//   // String
//   String mahasiswaString;
//   mahasiswaString = "Agus";

//   print(mahasiswaString);

//   // int
//   int semester;
//   semester = 3;

//   print(semester);

//   // double
//   double ipk;
//   ipk = 3.8;

//   print(ipk);

//   // Boolean
//   bool benar = true;
//   bool salah = false;
//   bool tidakbenar = !true;
//   bool tidaksalah = !false;

//   // List
//   List<String> jurusan = ["Manajemen", "Hukum"];

//   print(jurusan);

//   // Mapping
//   Map<String, dynamic> kelas = {"nama": "Fuad", "kelas": "Ruang 402"};

//   print(kelas);
//   print(kelas['nama']);
//   print(kelas['kelas']);

//   // operator
//   int a, b;
//   a = 9;
//   b = 7;
//   print("a = $a");
//   print("b = $b");

//   print(a + b);
//   print(a - b);
//   print(a / b);
//   print(a * b);
//   print(a > b);
//   print(a < b);
//   print(a >= b);
//   print(a <= b);

//   // conditional
//   print("Conditional");
//   int nilai;
//   nilai = 80;

//   if (nilai >= 80) {
//     print("A");
//   } else if (nilai <= 80 && nilai >= 50) {
//     print("B");
//   } else {
//     print("Tidak Lulus");
//   }

//   print("---------------------------");
//   nilai >= 80 ? print("A") : print("Tidak A");

//   // Function
//   print("Function");

//   hitungNilai();
//   hitungNilai1(75, 90);
//   var p = hitungNilai1(2, 50);
//   print(p);
//   var x = hitungNilai2(matkul1: 50, matkul2: 2);
//   print(x);
//   var y = hitungNilai3(79, 100);

//   // const final
//   // const
//   // const String mahasiswa = "Fuad";
//   final String mahasiswafk;
//   mahasiswafk = "fuad";

//   print(mahasiswafk);

//   // null safety
//   // ? : late
//   // ? digunakan jika boleh null
//   // String? jurusan;
//   // untuk di isi nanti
//   late String jurusanns;

//   jurusanns = "Teknik Informatika";
//   // jurusan = "";

//   // memastikan untuk di jalankan / yakin ada datanya
//   print(jurusanns.length);

//   // perulangan looping
//   // for plus
//   for (int no = 1; no <= 5; no++) {
//     print(no);
//   }

//   // for minus
//   for (int no = 5; no >= 1; no--) {
//     print(no);
//   }

//   // while
//   int no1 = 1;
//   int no2 = 5;
//   while (no1 <= no2) {
//     print(no1);
//     no1++;
//   }

//   // do while
//   int no3 = 1;
//   int no4 = 5;
//   do {
//     print(no3);
//     no3++;
//   } while (no3 <= no4);
// }

// // Function
// void hitungNilai() {
//   print("hitung nilai");
// }

// // positional argument
// dynamic hitungNilai1(matkul1, matkul2, [matkul3]) {
//   var nilaiAkhir;
//   if (matkul3 != null) {
//     nilaiAkhir = matkul1 / matkul2 + matkul3;
//   } else {
//     nilaiAkhir = matkul1 / matkul2;
//   }
//   return nilaiAkhir;
// }

// // name argument
// dynamic hitungNilai2({matkul1, matkul2}) {
//   var nilaiAkhir;
//   if (matkul2 != null) {
//     nilaiAkhir = matkul1 / matkul2;
//   } else {
//     nilaiAkhir = matkul1;
//   }
//   return nilaiAkhir;
// }

// // void
// void hitungNilai3(matkul1, matkul2) {
//   var nilaiAkhir = matkul1 + matkul2;
//   print(nilaiAkhir);
// }


class Kendaraan {
  String? merk;
  String? nama;
  int? kecepatan;

  Kendaraan({this.merk, this.nama, this.kecepatan});

  void maju(int tambahKecepatan) {
    kecepatan = kecepatan! + tambahKecepatan;
    // print(kecepatan + tambahKecepatan);
  }
}

// inheritance / pewarisan
class Sedan extends Kendaraan {
  int? jumlahPintu;
  int? kecepatanMaksimal;

  Sedan({String? merk, this.jumlahPintu, this.kecepatanMaksimal})
    : super(merk: merk);
}

void main() {
  // instansiasi
  var k1 = Kendaraan(merk: "BMW", nama: "civic", kecepatan: 20);

  k1.merk = "Toyota";
  // k1.maju(40);

  print(k1.merk);
  print(k1.nama);
  print(k1.kecepatan);

  var k2 = Kendaraan(merk: "Mitsubishi", nama: "colt", kecepatan: 40);

  k2.maju(80);
  // print(k2.kecepatan);

  print(k2.merk);
  print(k2.nama);
  print(k2.kecepatan);

  var s1 = Sedan(jumlahPintu: 4, kecepatanMaksimal: 120, merk: "Honda");

  print(s1.merk);
  print(s1.jumlahPintu);
  print(s1.kecepatanMaksimal);
  print(s1.merk);
}
