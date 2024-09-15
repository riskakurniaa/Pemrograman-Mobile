void main() {
  int batas = 201;
  String nama = "Riska Kurnia Triwulandari";
  String nim = "2241720039";

  print("Bilangan prima dari 2 hingga $batas adalah:");
  // Mencetak bilangan prima dan informasi saat ditemukan
  algoritmaSieve(batas, nama, nim);
}

void algoritmaSieve(int batas, String nama, String nim) {
  // Inisialisasi list kosong untuk menampung bilangan prima
  List<int> bilanganPrima = [];

  // Mencari dan menambahkan bilangan prima ke dalam list bilanganPrima
  for (int p = 2; p <= batas; p++) {
    if (cekBilanganPrima(p)) {
      bilanganPrima.add(p); // Tambahkan bilangan prima ke dalam list

      // Tampilkan nama dan NIM saat bilangan prima ditemukan
      print("$p -> $nama $nim");
    }
  }

  // Cetak hasilnya dalam satu baris, dipisahkan dengan koma
  print("Bilangan prima yang ditemukan: ${bilanganPrima.join(', ')}");
}

bool cekBilanganPrima(int angka) {
  // Fungsi untuk mengecek apakah bilangan tersebut adalah prima
  if (angka <= 1)
    return false; //Bilangan kurang dari atau sama dengan 1 bukan bilangan prima.

  for (int i = 2; i * i <= angka; i++) {
    //Menguji apakah ada bilangan pembagi dari 2 hingga akar kuadrat dari angka
    if (angka % i == 0) {
      //Jika angka dapat dibagi habis oleh i, maka angka bukan bilangan prima.
      return false;
    }
  }
  return true;
}
