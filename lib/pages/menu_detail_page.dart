import 'package:flutter/material.dart';

class MenuDetailPage extends StatelessWidget {
  const MenuDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Menu'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.deepOrange.shade50,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(
              Icons.rice_bowl,
              size: 100,
              color: Colors.deepOrange,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            'Nasi Goreng',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 8),

          const Text(
            'Rp15.000',
            style: TextStyle(
              fontSize: 20,
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            'Deskripsi Menu',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 8),

          const Text(
            'Nasi goreng dengan bumbu pilihan, '
            'disajikan hangat dan cocok untuk makan siang.',
            style: TextStyle(fontSize: 15, height: 1.5, color: Colors.black87),
          ),

          const SizedBox(height: 28),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/pesan');
              },
              icon: const Icon(Icons.shopping_cart),
              label: const Text('Pesan Sekarang'),
            ),
          ),
        ],
      ),
    );
  }
}
