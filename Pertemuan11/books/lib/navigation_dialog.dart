import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen | Riska'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            _showColorDialog(context);
          },
        ),
      ),
    );
  }

  _showColorDialog(BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very Important Question'),
          content: const Text('Please Choose a Color'),
          actions: <Widget>[
            TextButton(
              child: const Text('Abu-abu'),
              onPressed: () {
                color = Colors.grey.shade500;
                Navigator.pop(context, color);
              },
            ),
            TextButton(
              child: const Text('Coklat Muda'),
              onPressed: () {
                color = Colors.brown.shade300;
                Navigator.pop(context, color);
              },
            ),
            TextButton(
              child: const Text('Kuning'),
              onPressed: () {
                color = Colors.yellow.shade500;
                Navigator.pop(context, color);
              },
            ),
          ],
        );
      },
    );
    setState(() {});
  }
}
