import 'package:flutter/material.dart';

class MatchDetailScreen extends StatelessWidget {
  const MatchDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Pertandingan')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.emoji_events, size: 80, color: Colors.amber),
              const SizedBox(height: 16),
              const Text(
                'Persika Menang Telak!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Halaman ini berhasil dibuka menggunakan Named Routing dari AppRouter.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black54),
              ),
              const SizedBox(height: 32),
              OutlinedButton.icon(
                onPressed: () {
                  // Menutup halaman saat ini dan kembali ke halaman sebelumnya
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text('Kembali ke Papan Skor'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
