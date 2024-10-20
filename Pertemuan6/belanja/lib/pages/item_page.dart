import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  const ItemPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          item.name,
          style: const TextStyle(color: Colors.white), // Warna teks putih
        ),
        backgroundColor: Colors.deepPurple, // Warna background ungu
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: item.name, // Hero untuk animasi antar halaman
              child: Image.network(item.imageUrl), // Gambar produk
            ),
            const SizedBox(height: 16),
            Text(
              item.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('Price: ${item.price}'),
            Text('Stock: ${item.stock}'),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.yellow),
                Text('${item.rating}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
