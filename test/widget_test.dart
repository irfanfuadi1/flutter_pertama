void main() {
  // Tipe Data dan Variabel
  // var
  var mahasiswa = "Fuad";
  var umur = "19";

  print(mahasiswa + "_Umur = " + umur.toString());

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
}
