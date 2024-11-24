# Pemrograman Asynchronous

## Soal 1
Tambahkan **nama panggilan Anda** pada `title` app sebagai identitas hasil pekerjaan Anda.<br>
Jawab:
![image](images/soal1.png)

## Soal 2
![image](images/soal2.png)
- Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel `path` di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.
<p align="center">
  <img src="https://jti-polinema.github.io/flutter-codelab/11-async/img//29d0179018edd8d4.png" alt="Image description">
</p>

- Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di `README` pada laporan praktikum. Lalu lakukan commit dengan pesan **"W11: Soal 2"**.
<p align="center">
  <img src="https://jti-polinema.github.io/flutter-codelab/11-async/img//d441815f1bdf8e8.png" alt="Image description">
</p>

Jawab:

![image](images/soal2a.png) <br>
![image](images/soal2b.png)

## Soal 3
Jelaskan maksud kode langkah 5 tersebut terkait `substring` dan `catchError`!<br>

Jawab:</br>

- `substring`: `substring(0, 450)` mengambil sebagian data dari respons HTTP. Dalam hal ini, hanya karakter pertama hingga karakter ke-450 dari body respons HTTP yang diambil.

- `catchError`: menangkap dan menangani kesalahan (error) yang terjadi saat memanggil Future (fungsi asinkron `getData`). Kesalahan ini bisa berupa kegagalan koneksi, URL tidak valid, atau respons yang tidak sesuai.

Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan **"W11: Soal 3"**.<br>

Jawab:

![Video GIF](images/soal3.gif)

## Soal 4
Jelaskan maksud kode langkah 1 dan 2 tersebut!<br>

Jawab:</br>

- Langkah 1: menambahkan tiga metode asinkron (`returnOneAsync`, `returnTwoAsync`, `returnThreeAsync`) yang masing-masing mensimulasikan tugas dengan penundaan 3 detik menggunakan `Future.delayed` dan mengembalikan nilai tertentu (1, 2, atau 3).

- Langkah 2: menambahkan metode `count`, yang memanggil ketiga metode tersebut secara berurutan menggunakan `await`, menjumlahkan hasilnya, dan memperbarui UI dengan nilai total menggunakan setState. Metode ini mensimulasikan proses asinkron berurutan dan menampilkan hasil akhir setelah semua proses selesai. Total waktu eksekusi: 9 detik (karena pemanggilan dilakukan secara berurutan) dan hasil (1 + 2 + 3 = 6) diperbarui di UI.


Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan **"W11: Soal 4"**.<br>

Jawab:

![Video GIF](images/soal4.gif)

## Soal 5
Jelaskan maksud kode langkah 2 tersebut!<br>

Jawab:</br>

Langkah 2 menambahkan mekanisme **`Completer`** yang memungkinkan kontrol manual terhadap penyelesaian sebuah `Future`. Variabel `completer` dideklarasikan sebagai `Completer<int>`, yang akan menghasilkan nilai integer. Method `getNumber` membuat instance `Completer` baru dan memulai proses asinkron melalui method `calculate`. `getNumber` mengembalikan `Future` dari `completer` yang akan selesai setelah `calculate` dipanggil. Dalam `calculate`, terdapat simulasi penundaan selama 5 detik menggunakan `Future.delayed`, setelah itu `completer.complete(42)` dipanggil untuk menyelesaikan `Future` dengan nilai `42`. Mekanisme ini memungkinkan kontrol eksplisit kapan dan bagaimana `Future` diselesaikan.

Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan **"W11: Soal 5"**.<br>

Jawab:</br>

![Video GIF](images/soal5.gif)

## Soal 6
Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!<br>

Jawab:</br>

Perbedaan utama antara Langkah 2 dengan Langkah 5-6 terletak pada penanganan kesalahan dan keandalan logika asinkron. Pada Langkah 2, method `calculate` hanya mensimulasikan operasi asinkron dengan `Future.delayed` selama 5 detik dan langsung menyelesaikan `Future` menggunakan `completer.complete(42)`. Namun, metode ini tidak memiliki mekanisme untuk menangani kesalahan jika terjadi error, sehingga rentan terhadap crash atau perilaku tak terduga. Sebaliknya, pada Langkah 5-6, method `calculate2` menambahkan blok **`try-catch`**, memungkinkan penangkapan kesalahan selama operasi asinkron. Jika terjadi error, method ini memanggil `completer.completeError({})` untuk menandai kegagalan. Selain itu, kode pada `onPressed` diperbarui untuk menangani dua skenario: ketika operasi berhasil, hasil (`42`) diperbarui di UI, dan jika terjadi error, pesan "An error occurred" ditampilkan. Perubahan ini meningkatkan keandalan aplikasi dengan menyediakan penanganan error yang eksplisit dan mencegah aplikasi crash.<br>

Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan **"W11: Soal 6"**.<br>

Jawab:</br>

![Video GIF](images/soal6.gif)

## Soal 7
> Anda akan melihat hasilnya dalam 3 detik berupa angka 6 lebih cepat dibandingkan praktikum sebelumnya menunggu sampai 9 detik.

Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan **"W11: Soal 7"**.<br>

Jawab:

![Video GIF](images/soal7.gif)

