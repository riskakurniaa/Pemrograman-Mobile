import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 236, 243),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 52.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Riska Kurnia Triwulandari',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            '+62 856 0717 8754',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          const CircleAvatar(
                            radius: 30.0,
                            backgroundImage: NetworkImage(
                                'https://avatars.githubusercontent.com/u/120325374?v=4'),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 18.0,
                              height: 18.0,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: 12.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: const Column(
                children: [
                  AccountItem(
                    title: 'Account Type',
                    value: 'FULL SERVICE',
                  ),
                  Divider(
                    color: Colors.black12,
                  ),
                  AccountItem(title: 'Account Settings'),
                  Divider(
                    color: Colors.black12,
                  ),
                  AccountItem(title: 'LinkAja Syariah', value: 'Not Active'),
                  Divider(
                    color: Colors.black12,
                  ),
                  AccountItem(title: 'Payment Method'),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: const Column(
                children: [
                  AccountItem(
                    title: 'Email',
                    value: 'riskakurniatriwulandari@gmail.com',
                  ),
                  Divider(
                    color: Colors.black12,
                  ),
                  AccountItem(title: 'Security Question', value: 'Set'),
                  Divider(
                    color: Colors.black12,
                  ),
                  AccountItem(title: 'PIN Settings'),
                  Divider(
                    color: Colors.black12,
                  ),
                  AccountItem(title: 'Language', value: 'English'),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: const Column(
                children: [
                  AccountItem(title: 'Terms of Service'),
                  Divider(
                    color: Colors.black12,
                  ),
                  AccountItem(title: 'Privacy Policy'),
                  Divider(
                    color: Colors.black12,
                  ),
                  AccountItem(title: 'Help Center'),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Tambahkan aksi untuk tombol Keluar di sini
                      print('Keluar tapped');
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Keluar',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            const Center(
              child: Text(
                'LinkAja v.4.37.0',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}

class AccountItem extends StatelessWidget {
  final String title;
  final String? value;

  const AccountItem({
    super.key,
    required this.title,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              if (value != null) ...[
                Text(
                  value!,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Color.fromARGB(255, 197, 197, 197),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 16.0),
              ],
              const Icon(
                Icons.arrow_forward_ios,
                color: Color.fromARGB(255, 138, 24, 24),
                size: 14.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
