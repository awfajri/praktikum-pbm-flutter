import 'package:flutter/material.dart';

class BasicTextScreen extends StatelessWidget {
  const BasicTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Materi 1: Basic Text')),
      body: const Center(
        child: Text(
          'Assalamualaikum\nSaya Auf Fajri',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40,
            color: Color(0xFFEC407A),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
