import 'package:flutter/material.dart';

class BestDealsSection extends StatefulWidget {
  const BestDealsSection({super.key});

  @override
  _BestDealsSectionState createState() => _BestDealsSectionState();
}

class _BestDealsSectionState extends State<BestDealsSection> {
  final PageController _pageController = PageController(viewportFraction: 0.9);

  final List<Map<String, String>> _deals = [
    {
      "title": "Waktunya Gajian!",
      "subtitle": "Promo Payday LinkAja",
      "image": "assets/deal1.jpg",
    },
    {
      "title": "Beli Token Listrik & dapatkan Cashback 10%",
      "subtitle": "Cashback 1.500",
      "image": "assets/deal2.jpg",
    },
    {
      "title": "Untung! Beli Paket Data Telkomsel dapat Cashback",
      "subtitle": "Cashback 2.000",
      "image": "assets/deal3.jpg",
    },
    {
      "title": "Bayar Tagihan HALO dapat Cashback 2.000",
      "subtitle": "Cashback 2.000",
      "image": "assets/deal4.jpg",
    },
    {
      "title": "Beli Voucher Games Harga Terjangkau Disini!",
      "subtitle": "Bayarnya pakai LinkAja",
      "image": "assets/deal5.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Best Deals",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 209, 46, 46),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16.0),
        SizedBox(
          height: 250,
          child: PageView.builder(
            controller: _pageController,
            itemCount: _deals.length,
            onPageChanged: (int index) {
              setState(() {});
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 160.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        image: DecorationImage(
                          image: AssetImage(_deals[index]["image"] ?? ''),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      _deals[index]["title"] ?? '',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      _deals[index]["subtitle"] ?? '',
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
