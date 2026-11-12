import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class change_font extends StatefulWidget {
  const change_font({super.key});

  @override
  State<change_font> createState() => _ChangeFont();
}

class _ChangeFont extends State<change_font> {
  bool isOutfitFont = true;

  void gantiFont() {
    setState(() {
      isOutfitFont = !isOutfitFont;
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
        child: Container(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hallo, ini pake font ${isOutfitFont ? 'Outfit' : 'Sora'}',
                style: isOutfitFont
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
                onPressed: gantiFont,
                child: const Text('Ganti Font'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
