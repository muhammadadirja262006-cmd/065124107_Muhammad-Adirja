import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pesanan Kamu'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Card(
            color: Colors.white,
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),

            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                    radius: 38,
                    backgroundColor: Color(0xFFE8F5E9),
                    child: Icon(
                      Icons.check_circle,
                      size: 55,
                      color: Colors.green,
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'Pesanan Berhasil!',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Terima kasih sudah memesan '
                    'di Kantin Bu Sari.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black54, height: 1.5),
                  ),

                  const SizedBox(height: 24),

                  const Divider(),

                  const Row(
                    children: [
                      Icon(Icons.receipt_long, color: Colors.deepOrange),
                      SizedBox(width: 10),
                      Text(
                        'Ringkasan Pesanan',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Menu'), Text('Nasi Goreng')],
                  ),

                  const SizedBox(height: 12),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Jumlah'), Text('1 porsi')],
                  ),

                  const SizedBox(height: 12),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Harga'),
                      Text(
                        'Rp15.000',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const Divider(height: 32),

                  const Text(
                    'Silakan tunjukkan halaman ini '
                    'kepada kasir Bu Sari.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13),
                  ),

                  const SizedBox(height: 24),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.popUntil(context, (route) => route.isFirst);
                      },
                      icon: const Icon(Icons.home),
                      label: const Text('Kembali ke Menu'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
