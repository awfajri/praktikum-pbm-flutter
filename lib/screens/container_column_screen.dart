import 'package:flutter/material.dart';

class ContainerColumnScreen extends StatelessWidget {
  const ContainerColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Materi 2: Container & Column')),
      body: Center(
        child: Container(
          width: 280,
          height: 280,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Halo Auf!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Ini adalah contoh penggunaan Container dan Column (children).',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
