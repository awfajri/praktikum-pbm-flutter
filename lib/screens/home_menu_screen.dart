import 'package:flutter/material.dart';
import '../app/router/app_router.dart';

class HomeMenuScreen extends StatelessWidget {
  const HomeMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar materi yang akan ditampilkan sebagai kartu menu
    final List<_MateriItem> daftarMateri = [
      const _MateriItem(
        title: '1. Basic Text & Center',
        subtitle: 'Pengenalan widget Text, TextStyle, dan Center',
        routeName: AppRouter.basicText,
        icon: Icons.text_fields,
      ),
      const _MateriItem(
        title: '2. Container & Column',
        subtitle: 'Layouting dasar menggunakan BoxDecoration dan children',
        routeName: AppRouter.containerColumn,
        icon: Icons.view_column,
      ),
      const _MateriItem(
        title: '3. Papan Skor & Navigasi',
        subtitle: 'Row, Expanded, Image.network, dan sub-navigasi',
        routeName: AppRouter.scoreboard,
        icon: Icons.scoreboard,
      ),
      const _MateriItem(
        title: '4. State, Callback & Modal',
        subtitle: 'StatefulWidget, setState, dan showModalBottomSheet',
        routeName: AppRouter.callbackModal,
        icon: Icons.touch_app,
      ),
      const _MateriItem(
        title: '5. Implicit Animation',
        subtitle: 'Transisi halus menggunakan AnimatedContainer',
        routeName: AppRouter.animation,
        icon: Icons.animation,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Log Belajar PBM - Auf Fajri'),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: daftarMateri.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final materi = daftarMateri[index];
          return Card(
            elevation: 1,
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              leading: CircleAvatar(child: Icon(materi.icon)),
              title: Text(
                materi.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(materi.subtitle),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // Pindah ke halaman materi yang dipilih
                Navigator.pushNamed(context, materi.routeName);
              },
            ),
          );
        },
      ),
    );
  }
}

// Model data sederhana agar struktur menu lebih rapi dan type-safe
class _MateriItem {
  final String title;
  final String subtitle;
  final String routeName;
  final IconData icon;

  const _MateriItem({
    required this.title,
    required this.subtitle,
    required this.routeName,
    required this.icon,
  });
}
