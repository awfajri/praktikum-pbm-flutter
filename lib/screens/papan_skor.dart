import 'package:flutter/material.dart';

class PapanSkorPage extends StatelessWidget {
  const PapanSkorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: DefaultTextStyle(
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('PAPAN SKOR', style: TextStyle(color: Colors.black)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Unsika: 11  ',
                    style: TextStyle(color: Color(0xff55110c)),
                  ),
                  Text(
                    'UB: 2',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 90, 106),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Image.network(
                        'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjVsb6tSjgJncrsCg-nCviXiFhUQBP0YEAgAz7HjduD3Dpt7BerHt9Uj2vFiaEG5TUT6ujAW3U2B4ZD5aqS7iyV_N8j9HyBUo-KBIdbWRtIY0e_seqgJpn1lukSjtX1qBU5fFjqCnAZbb25vEmA5KlA2k2jPc7qLoPtpVyAhno9OoHfxoj4zvCFJ2RVdDtn/s1600/log-unsika.png', // Logo unsika
                        height: 100,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4xDIjJb7ZVDCsJbruBSGpLRvPMg3mJ2zLroBpvefHEg&s=10', // Logo UBP
                        height: 100,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
