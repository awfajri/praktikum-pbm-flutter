import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BelajarGantiFontFamilyScreen extends StatelessWidget {
  const BelajarGantiFontFamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contoh Ganti Font Style'), centerTitle: true),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '1. Ini menggunakan font global (Poppins)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 20),

              Text(
                '2. Ini menggunakan Plus Jakarta Sans',
                textAlign: TextAlign.center,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.indigo,
                ),
              ),
              Text(
                '3. Ini menggunakan Outfit Sans',
                textAlign: TextAlign.center,
                style: GoogleFonts.outfit(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
