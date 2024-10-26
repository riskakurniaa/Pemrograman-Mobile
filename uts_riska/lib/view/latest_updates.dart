import 'package:flutter/material.dart';

class LatestUpdates extends StatefulWidget {
  const LatestUpdates({Key? key}) : super(key: key);

  @override
  _LatestUpdatesSectionState createState() => _LatestUpdatesSectionState();
}

class _LatestUpdatesSectionState extends State<LatestUpdates> {
  final PageController _pageController = PageController(viewportFraction: 0.9);
  int _currentPage = 0;

  final List<Map<String, String>> _updates = [
    {
      "title": "Isi Saldo LinkAja via Himbara",
      "subtitle": "BNI, Bank Mandiri, BNI, BTN, Admin Rp1.000",
      "image": "assets/update1.jpg",
    },
    {
      "title": "Palestina Masih Butuh Bantuan Kita.",
      "subtitle":
          "Mari sebarkan Cahaya Harapan untuk Saudara kita di Palestina",
      "image": "assets/update2.jpg",
    },
    {
      "title": "Fitur PAYLATER! yang baru dari LinkAja",
      "subtitle": "Aktifkan & Transaksi fitur Paylater di LinkAja",
      "image": "assets/update3.jpg",
    },
    {
      "title": "Tarik Tunai dengan LinkAja di ATM",
      "subtitle": "Mudah dan Praktis Tanpa Kartu loh!",
      "image": "assets/update4.jpg",
    },
    {
      "title": "Cuma Rp.1000, Transfer ke Rekening Bank",
      "subtitle": "Pakai LinkAja Lebih Murah",
      "image": "assets/update5.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header (Latest Updates)
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Latest Updates",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16.0),
        // Slider (PageView)
        SizedBox(
          height: 250, // Tinggi dari slider termasuk title dan subtitle
          child: PageView.builder(
            controller: _pageController,
            itemCount: _updates.length,
            onPageChanged: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Menampilkan gambar dari asset dengan rounded corners
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.asset(
                        _updates[index]["image"] ?? '',
                        fit: BoxFit
                            .cover, // Gambar menyesuaikan ukuran kontainer
                        height: 160.0,
                        width: double.infinity,
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Title and Subtitle untuk setiap halaman
                    Text(
                      _updates[index]["title"] ?? '',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      _updates[index]["subtitle"] ?? '',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
