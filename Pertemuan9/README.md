# Tugas Praktikum

1. Selesaikan Praktikum 1 dan 2, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md! Jika terdapat error atau kode yang tidak dapat berjalan, silakan Anda perbaiki sesuai tujuan aplikasi dibuat!<p>

**Jawab:**
- [Link Repository dan Laporan Praktikum 1](https://github.com/riskakurniaa/Pemrograman-Mobile/tree/pertemuan9/Pertemuan9/kamera_flutter)
- [Link Repository dan Laporan Praktikum 2](https://github.com/riskakurniaa/Pemrograman-Mobile/tree/pertemuan9/Pertemuan9/photo_filter_carousel)<br>

2. Gabungkan hasil praktikum 1 dengan hasil praktikum 2 sehingga setelah melakukan pengambilan foto, dapat dibuat filter carouselnya!<p>
**Jawab:**
- [Link Repository dan Laporan Gabungan Hasil Praktikum 1 & 2](https://github.com/riskakurniaa/Pemrograman-Mobile/tree/pertemuan9/Pertemuan9/tugas_soal2)<br>

3. Jelaskan maksud void async pada praktikum 1?<p>
**Jawab:**
Pada kode yang menggunakan `async`, fungsi akan berjalan secara *asynchronous*, yang berarti fungsi tersebut dapat menjalankan operasi yang memakan waktu (seperti pemrosesan gambar dari kamera atau pengambilan data dari internet) tanpa harus menghentikan proses lainnya. Dengan `async`, kita bisa menambahkan `await` untuk menunggu hasil operasi yang lama secara khusus, tanpa harus menunggu seluruh kode lain yang berada di luar fungsi `async` tersebut. Contoh penggunaan `async` padad praktikum:
```dart
Future<void> _initializeControllerFuture = _controller.initialize();
```
Kode di atas menginisialisasi kamera secara `asynchronous`. Karena inisialisasi kamera memakan waktu, kita perlu menunggu prosesnya selesai dengan `await` sebelum melanjutkan ke langkah selanjutnya.<br>

4. Jelaskan fungsi dari anotasi @immutable dan @override ?<p>
**Jawab:**
- **@immutable**: Menandai kelas agar semua propertinya tidak dapat diubah setelah objek dibuat, memastikan objek tersebut bersifat tetap (immutable).
- **@override**: Menunjukkan bahwa fungsi ini menimpa fungsi dari kelas induk, memastikan kita mengubah perilaku fungsi yang diwarisi, bukan membuat fungsi baru.<br>

5. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!