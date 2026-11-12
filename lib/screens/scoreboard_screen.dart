import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../app/router/app_router.dart';

class ScoreboardScreen extends StatelessWidget {
  const ScoreboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Live Match'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Judul menggunakan Google Fonts Caveat sesuai pilihanmu
              Text(
                'PAPAN SKOR',
                style: GoogleFonts.caveat(
                  color: Colors.black,
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),

              // Baris Skor & Logo Tim (Diekstrak menjadi widget terpisah agar rapi)
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: _TeamScoreCard(
                      teamName: 'Persika',
                      score: 11,
                      scoreColor: Colors.red,
                      logoUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG9TG7jzvBUV9wAjk9uUf7Oohf7Z-5BCkxuego_5cjgMfaaY2r8MYG_gn4&s=10',
                      logoHeight: 140,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: _TeamScoreCard(
                      teamName: 'Real Madrid',
                      score: 2,
                      scoreColor: Colors.blue,
                      logoUrl:
                          'https://thumb.wikimedia.org/wikipedia/id/thumb/5/56/Real_Madrid_CF.svg/500px-Real_Madrid_CF.svg.png',
                      logoHeight: 110,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),

              // Tombol Navigasi ke Halaman Kedua
              ElevatedButton.icon(
                onPressed: () {
                  // Berpindah halaman menggunakan nama rute dari AppRouter
                  Navigator.pushNamed(context, AppRouter.matchDetail);
                },
                icon: const Icon(Icons.analytics_outlined),
                label: const Text('Masuk ke halaman lain'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Private Custom Widget khusus untuk menampilkan info satu tim.
// Ini mencegah kode bersarang terlalu dalam (Pyramid of Doom).
class _TeamScoreCard extends StatelessWidget {
  final String teamName;
  final int score;
  final Color scoreColor;
  final String logoUrl;
  final double logoHeight;

  const _TeamScoreCard({
    required this.teamName,
    required this.score,
    required this.scoreColor,
    required this.logoUrl,
    required this.logoHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '$teamName: $score',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: scoreColor,
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 150, // Menyamakan tinggi area gambar agar sejajar rapi
          child: Center(
            child: Image.network(
              logoUrl,
              height: logoHeight,
              fit: BoxFit.contain,
              // Menangani error jika internet mati atau gambar gagal dimuat
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.broken_image,
                  size: 60,
                  color: Colors.grey,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
