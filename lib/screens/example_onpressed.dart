import 'package:flutter/material.dart';

class ExampleOnpressed extends StatefulWidget {
  const ExampleOnpressed({super.key});

  @override
  State<ExampleOnpressed> createState() => _ExampleOnpressedState();
}

class _ExampleOnpressedState extends State<ExampleOnpressed> {
  String gambarKucing = 'assets/images/kucing.jpg';
  String gambarKelinci = 'assets/images/rabbit.jpg';

  void gantiGambar() {
    setState(() {
      if (gambarKucing == 'assets/images/kucing.jpg') {
        gambarKucing = 'assets/images/rabbit.jpg';
      } else {
        gambarKucing = 'assets/images/kucing.jpg';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contoh Callback onPressed'),
        centerTitle: true,
      ),
      body: Center(child: Image.asset(gambarKucing)),
      floatingActionButton: FloatingActionButton(
        onPressed: gantiGambar,
        tooltip: 'Ganti Gambar',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
