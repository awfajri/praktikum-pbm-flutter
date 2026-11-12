import 'package:flutter/material.dart';

class CallbackModalScreen extends StatefulWidget {
  const CallbackModalScreen({super.key});

  @override
  State<CallbackModalScreen> createState() => _CallbackModalScreenState();
}

class _CallbackModalScreenState extends State<CallbackModalScreen> {
  String _lastMessage = 'Belum ada tombol ditekan';
  int _clickCount = 0;

  void _showMessage(String message) {
    setState(() {
      _clickCount++;
      _lastMessage = 'Message received: $message (Klik #$_clickCount)';
    });

    showModalBottomSheet(
      context: context,
      builder: (BuildContext sheetContext) {
        return Container(
          padding: const EdgeInsets.all(24.0),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Pesan Modal',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Text('Callback: $message', style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.pop(sheetContext),
                child: const Text('Tutup'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Materi 4: Callback & Modal')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Status Callback Terakhir:'),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.lightBlue.shade50,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                _lastMessage,
                style: TextStyle(
                  color: Colors.blue.shade800,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 18),
            ElevatedButton(
              onPressed: () => _showMessage('Button pressed'),
              child: const Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
