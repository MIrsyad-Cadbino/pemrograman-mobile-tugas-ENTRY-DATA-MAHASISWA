import 'dart:io';

void main(){
  List<Map<String, dynamic>> dataMahasiswa = [];
  bool status = true;

  while (status == true){
    print('#=#=#=#= Program Entry Data =#=#=#=#');
    print('1. Tambah Data Mahasiswa');
    print('2. List Data Mahasiswa');
    print('3. Keluar');
    stdout.write('Masukkan Pilihan : ');
    String? input = stdin.readLineSync();
    print('');

    switch (input){
      case '1':
        print("#=#=#=#= Pengisian data mahasiswa =#=#=#=#");

        stdout.write('Masukkan Nama Mahasiswa : ');
        String? nama = stdin.readLineSync();

        stdout.write('Masukkan NPM Mahasiswa : ');
        int? npm = int.parse(stdin.readLineSync()!);

        print('1. Laki-Laki');
        print('2. Perempuan');
        stdout.write('Masukkan Jenis Kelamin : ');
        String? jenisKelamin = stdin.readLineSync()!;

        stdout.write('Masukkan umur Mahasiswa : ');
        int umur = int.parse(stdin.readLineSync()!);

        if (jenisKelamin == '1'){
          jenisKelamin = 'Laki-Laki';
        } else if (jenisKelamin == '2'){
          jenisKelamin = 'Perempuan';
        } else {
          print('Jenis Kelamin yang anda pilih tidak valid');
        }

        print('1. Informatika');
        print('2. Sastra Mesin');
        print('3. Manajemen');
        print('4. Sastra Inggris');
        print('5. Hukum');

        stdout.write('Pilih Program Studi : ');
        String? pilihProdi = stdin.readLineSync();

        if(pilihProdi == '1'){
          pilihProdi = 'Informatika';
        } else if (pilihProdi == '2'){
          pilihProdi = 'Sastra Mesin';
        } else if (pilihProdi == '3'){
          pilihProdi = 'Manajemen';
        } else if (pilihProdi == '4'){
          pilihProdi = 'Sastra Inggris';
        } else if (pilihProdi == '5'){
          pilihProdi = 'Hukum';
        } else {
          print('Pilihan Tidak Valid');
        }

        if(nama != null && nama.isNotEmpty){
          dataMahasiswa.add({
            'nama' : nama,
            'npm' : npm,
            'umur' : umur,
            'jenisKelamin' : jenisKelamin,
            'programStudi' : pilihProdi,
          });

          print('');
          print('Data berhasil ditambahkan!!!');
          print('');

        } else {
          print('Data tidak ditambahkan!');
        }

        break;

      case '2':
        print('#=#=#=#= List Data Mahasiswa =#=#=#=#');

        if (dataMahasiswa.isEmpty){
          print("Belum ada data");
        } else {
          print("Data Mahasiswa : ");

          for (var i = 0; i < dataMahasiswa.length; i++){
            var mahasiswa = dataMahasiswa[i];
            print("${i + 1}. Nama mahasiswa : ${mahasiswa['nama']}, NPM : 0${mahasiswa['npm']}, Umur : ${mahasiswa['umur']}, Jenis Kelamin : ${mahasiswa['jenisKelamin']}, Program Studi ${mahasiswa['programStudi']}");
          }
        }
        break;

      case '3':
        status = false;
        print('Keluar dari program!');
    }
  }

}