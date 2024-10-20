import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemCard extends StatelessWidget {
  final Item item;
  final VoidCallback onTap;

  const ItemCard({required this.item, required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Hero(
                tag: item.name, // Set tag Hero berdasarkan nama produk
                child: Image.network(item.imageUrl, fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.name,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Price: ${item.price}'),
                  Text('Stock: ${item.stock}'),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Text('${item.rating}'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
