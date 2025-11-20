void main() {
  // Tipe Data dan Variabel
  // var
  var mahasiswa = "Fuad";
  var umur = "19";

  print("${mahasiswa}_Umur = $umur");

  // String
  String mahasiswaString;
  mahasiswaString = "Agus";

  print(mahasiswaString);

  // int
  int semester;
  semester = 3;

  print(semester);

  // double
  double ipk;
  ipk = 3.8;

  print(ipk);

  // Boolean
  bool benar = true;
  bool salah = false;
  bool tidakbenar = !true;
  bool tidaksalah = !false;

  // List
  List<String> jurusan = ["Manajemen", "Hukum"];

  print(jurusan);

  // Mapping
  Map<String, dynamic> kelas = {
    "nama": "Fuad",
    "kelas": "Ruang 402"
  };

  print(kelas);
  print(kelas['nama']);
  print(kelas['kelas']);

  // operator
  int a, b;
  a = 9;
  b = 7;
  print("a = $a");
  print("b = $b");

  print(a + b);
  print(a - b);
  print(a / b);
  print(a * b);
  print(a > b);
  print(a < b);
  print(a >= b);
  print(a <= b);

  // conditional
  print("Conditional");
  int nilai;
  nilai = 80;

  if(nilai >= 80){
    print("A");
  }else if(nilai <= 80 && nilai >= 50){
    print("B");
  }else{
    print("Tidak Lulus");
  }

  print("---------------------------");
  nilai >= 80 ? print("A"):print("Tidak A");

  // Function
  print("Function");

  hitungNilai();
  hitungNilai1(75, 90);
  var p = hitungNilai1(2, 50);
  print(p);
  var x = hitungNilai2(matkul1: 50, matkul2: 2);
  print(x);
  var y = hitungNilai3(79, 100);
}

  // Function
  void hitungNilai(){
    print("hitung nilai");
  }

  // positional argument
  dynamic hitungNilai1(matkul1, matkul2, [matkul3]) {
  var nilaiAkhir;
  if(matkul3 != null){
    nilaiAkhir = matkul1 / matkul2 + matkul3;
  }else{
    nilaiAkhir = matkul1 / matkul2;
  }
  return nilaiAkhir;
  }

  // name argument
  dynamic hitungNilai2({matkul1, matkul2}) {
  var nilaiAkhir;
  if (matkul2 != null) {
    nilaiAkhir = matkul1 / matkul2;
  } else {
    nilaiAkhir = matkul1;
  }
  return nilaiAkhir;
  }

  // void
  void hitungNilai3(matkul1, matkul2){
  var nilaiAkhir = matkul1 + matkul2;
  print(nilaiAkhir);
  }
