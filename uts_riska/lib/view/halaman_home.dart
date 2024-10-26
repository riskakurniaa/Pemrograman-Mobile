import 'package:flutter/material.dart';
import 'carousel.dart';
import 'best_deals.dart';
import 'latest_updates.dart';

class HalamanHome extends StatefulWidget {
  const HalamanHome({super.key});

  @override
  State<HalamanHome> createState() => _HalamanHomeState();
}

class _HalamanHomeState extends State<HalamanHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 236, 243),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bagian Header dan Balance Card
            Container(
              height: 300,
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/kota.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/logo.png', height: 40), // Logo
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.favorite_border,
                                  color: Colors.black),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(Icons.notifications_none,
                                  color: Colors.black),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 110,
                    left: 8.0,
                    right: 8.0,
                    child: Card(
                      color: const Color.fromARGB(255, 196, 38, 26),
                      child: Container(
                        height: 170,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 15, left: 10),
                              child: Text(
                                "Hi, Riska Kurnia Triwulandari",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                buildBalanceCard(
                                  'Your Balance',
                                  'Rp 9.747',
                                  Icons.account_balance_wallet,
                                ),
                                buildBalanceCard(
                                  'Bonus Balance',
                                  '0',
                                  Icons.card_giftcard,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Bagian Menu Utama
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Container(
                width: double.infinity,
                child: Card(
                  color: Colors.white,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildMainMenuItem('TopUp', Icons.add),
                        buildMainMenuItem('CashOut', Icons.money_off),
                        buildMainMenuItem('Send Money', Icons.send),
                        buildMainMenuItem('See All', Icons.grid_view),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Bagian GridView dengan ikon fitur
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
                children: [
                  buildIconItem('Pulsa/Data', Icons.phone_android),
                  buildIconItem('Electricity', Icons.flash_on),
                  buildIconItem('Cable TV & Internet', Icons.connected_tv),
                  buildIconItem('Kartu Uang Elektronik', Icons.credit_card),
                  buildIconItem('Gereja', Icons.church),
                  buildIconItem('Infaq', Icons.volunteer_activism),
                  buildIconItem('Other Donations', Icons.inventory_2_outlined),
                  buildIconItem('More', Icons.more_horiz),
                ],
              ),
            ),
            const Carousel(),
            const SizedBox(height: 16.0),
            const BestDealsSection(),
            const LatestUpdates(),
          ],
        ),
      ),
    );
  }

  /// Fungsi untuk membuat item menu utama
  Widget buildMainMenuItem(String label, IconData icon) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(icon, size: 30),
          onPressed: () {
            print('$label tapped'); // Aksi saat tombol ditekan
          },
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  /// Fungsi untuk membuat item ikon pada GridView
  Widget buildIconItem(String label, IconData icon) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(icon, size: 30),
          onPressed: () {},
        ),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  /// Fungsi untuk membuat kartu saldo dengan ikon
  Widget buildBalanceCard(String title, String amount, IconData icon) {
    return Card(
      color: Colors.white,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 8),
                Text(
                  amount,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(icon, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
