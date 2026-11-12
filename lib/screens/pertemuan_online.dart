import 'package:flutter/material.dart';

void main() {
  runApp(
    Container(
      height: 500,
      width: 400,
      color: Colors.yellow,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: DefaultTextStyle(
          style: TextStyle(fontSize: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('satu', style: TextStyle(color: Colors.red)),
              Text('dua', style: TextStyle(color: Colors.green)),
              Text('tiga', style: TextStyle(color: Colors.blue)),
              Image.network(
                'https://thumb.wikimedia.org/wikipedia/en/thumb/e/ea/Persib_Bandung_Crest.svg/500px-Persib_Bandung_Crest.svg.png?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             height: 500,
//             width: 400,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: [
//                   Color(0xFF1E88E5), // Biru sedang (medium blue)
//                   Color(0xFF1565C0), // Biru tua (dark blue)
//                 ],
//               ),
//               borderRadius: BorderRadius.circular(
//                 32.0,
//               ), // Mengatur radius sudut
//             ),
//             alignment: Alignment.center,
//             child: Text(
//               'ini teks\nbaris kedua',
//               textAlign: TextAlign.center,
//               textDirection: TextDirection.ltr,
//               style: TextStyle(fontSize: 40, color: Colors.white),
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }
