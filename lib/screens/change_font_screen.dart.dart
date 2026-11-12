import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangeFontScreen extends StatefulWidget {
  const ChangeFontScreen({super.key});

  @override
  State<ChangeFontScreen> createState() => _ChangeFontScreenState();
}

class _ChangeFontScreenState extends State<ChangeFontScreen> {
  // Variabel state bersifat private (_) untuk menyimpan kondisi font aktif
  bool _isOutfitFont = true;

  // Fungsi toggle untuk membalikkan kondisi font dan memperbarui UI
  void _gantiFont() {
    setState(() {
      _isOutfitFont = !_isOutfitFont;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Ganti FontFamily'),
        centerTitle: true,
      ),
      body: Center(
        // Menggunakan Padding langsung karena tidak butuh dekorasi/warna latar
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hallo, ini pake font ${_isOutfitFont ? 'Outfit' : 'Sora'}',
                textAlign: TextAlign.center,
                style: _isOutfitFont
                    ? GoogleFonts.outfit(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      )
                    : GoogleFonts.sora(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
              ),
              const SizedBox(height: 124),
              ElevatedButton(
                onPressed: _gantiFont,
                child: const Text('Ganti Font'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
