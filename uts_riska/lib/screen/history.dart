import '../view/transaction_history.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Jumlah tab
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(110.0),
          child: AppBar(
            title: const Padding(
              padding: EdgeInsets.only(bottom: 1.0),
              child: Text(
                'Transaction History',
                style: TextStyle(
                  fontWeight: FontWeight.w600, // Semi-bold
                  fontSize: 18,
                ),
              ),
            ),
            centerTitle: true,
            bottom: const TabBar(
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  color:
                      Colors.red, // Warna border merah di bawah tab yang aktif
                  width: 4.0, // Lebar border
                ),
                insets: EdgeInsets.symmetric(
                    horizontal: 128), // Membuat border setengah dari lebar tab
              ),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  child: Text(
                    'Pending',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Tab(
                  child: Text(
                    'Done',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: const Color.fromARGB(255, 243, 243, 243),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/transaction.png', // Path to your image asset
                      height: 150,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'All transactions are completed!',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      'Any Pending transactions will appear in this page',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFBDBDBD),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 243, 243, 243),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ListView(
                  children: const [
                    TransactionHistory(
                      title: 'Pay Merchant',
                      date: '15 Sept 2024 17:32 WIB',
                      amount: 'Rp 45.400',
                      status: 'Success',
                      description: 'Indomaret Purchase',
                    ),
                    TransactionHistory(
                      title: 'Pay Merchant',
                      date: '15 Sept 2024 17:28 WIB',
                      amount: 'Rp 55.000',
                      status: 'Success',
                      description: 'Indomaret Purchase',
                    ),
                    TransactionHistory(
                      title: 'Top Up from Bank',
                      date: '15 Sept 2024 17:26 WIB',
                      amount: 'Rp 100.000',
                      status: 'Success',
                      description: 'Top Up from artajasa B_001145615163862752',
                    ),
                    TransactionHistory(
                      title: 'Pay QRIS',
                      date: '31 Aug 2024 11:49 WIB',
                      amount: 'Rp 21.000',
                      status: 'Success',
                      description: 'SBY-MOG TP S1',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
