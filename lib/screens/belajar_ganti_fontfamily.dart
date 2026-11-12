import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BelajarGantiFontFamilyScreen extends StatelessWidget {
  const BelajarGantiFontFamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Menggunakan GoogleFonts langsung di title AppBar
        title: Text(
          'Contoh Ganti Font Style',
          style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      // Isi utama layar ditaruh di properti 'body' milik Scaffold, bukan di AppBar
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 1. Font default global (Poppins dari ThemeData di main.dart)
              const Text(
                '1. Ini menggunakan font global (Poppins)',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),

              // 2. Font Plus Jakarta Sans via package google_fonts
              Text(
                '2. Ini menggunakan Plus Jakarta Sans',
                textAlign: TextAlign.center,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.indigo,
                ),
              ),
              const SizedBox(height: 20),

              // 3. Font Caveat (tulisan tangan) via package google_fonts
              Text(
                '3. Ini menggunakan font Caveat',
                textAlign: TextAlign.center,
                style: GoogleFonts.caveat(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
