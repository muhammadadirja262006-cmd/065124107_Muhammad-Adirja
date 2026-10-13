import 'package:flutter/material.dart';

class MenuListPage extends StatefulWidget {
  const MenuListPage({super.key});

  @override
  State<MenuListPage> createState() => _MenuListPageState();
}

class _MenuListPageState extends State<MenuListPage> {
  final TextEditingController searchController = TextEditingController();

  final List<Map<String, dynamic>> menus = [
    {'nama': 'Nasi Goreng', 'harga': 'Rp15.000', 'ikon': Icons.rice_bowl},
    {'nama': 'Mie Goreng', 'harga': 'Rp12.000', 'ikon': Icons.ramen_dining},
    {'nama': 'Ayam Geprek', 'harga': 'Rp15.000', 'ikon': Icons.restaurant},
    {'nama': 'Es Teh', 'harga': 'Rp4.000', 'ikon': Icons.local_cafe},
  ];

  String keyword = '';

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filteredMenus = menus.where((menu) {
      return menu['nama'].toString().toLowerCase().contains(
        keyword.toLowerCase(),
      );
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Kantin Bu Sari',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Selamat Datang!',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 6),

          const Text(
            'Temukan makanan favoritmu di sini.',
            style: TextStyle(color: Colors.black54),
          ),

          const SizedBox(height: 20),

          TextField(
            controller: searchController,
            onChanged: (value) {
              setState(() {
                keyword = value;
              });
            },
            decoration: InputDecoration(
              hintText: 'Cari menu makanan...',
              prefixIcon: const Icon(Icons.search),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),

          const SizedBox(height: 24),

          const Text(
            'Daftar Menu',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 12),

          if (filteredMenus.isEmpty)
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text('Menu tidak ditemukan.', textAlign: TextAlign.center),
            ),

          ...filteredMenus.map((menu) {
            return Card(
              margin: const EdgeInsets.only(bottom: 12),
              elevation: 2,
              color: Colors.white,
              child: ListTile(
                contentPadding: const EdgeInsets.all(12),

                leading: Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange.shade50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    menu['ikon'] as IconData,
                    color: Colors.deepOrange,
                    size: 30,
                  ),
                ),

                title: Text(
                  menu['nama'] as String,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),

                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    menu['harga'] as String,
                    style: const TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.deepOrange,
                ),

                onTap: () {
                  Navigator.pushNamed(context, '/detail');
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}
