import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  Color _backgroundColor = Colors.blue;
  double _borderRadius = 4.0;

  void _changeColor() {
    setState(() {
      if (_backgroundColor == Colors.blue) {
        _backgroundColor = Colors.pink;
        _borderRadius = 24.0;
      } else {
        _backgroundColor = Colors.blue;
        _borderRadius = 4.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Materi 5: Animation')),
      body: Center(
        child: GestureDetector(
          onTap: _changeColor,
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: _backgroundColor,
              borderRadius: BorderRadius.circular(_borderRadius),
            ),
            child: const Center(
              child: Text(
                'Tap me!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeColor,
        child: const Icon(Icons.color_lens),
      ),
    );
  }
}
