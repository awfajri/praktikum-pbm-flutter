// void main() {
//   runApp(
//     const MaterialApp(
//       title: 'Materi Scaffolddd',
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
//           child: Text('Materi Scaffold', style: TextStyle(fontSize: 24)),
//         ),
//       ),
//     ),
//   );
// }

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
//               'ini teks\nbaris keduaa',
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

// void main() {
//   runApp(
//     Container(
//       color: Colors.white,
//       child: Directionality(
//         textDirection: TextDirection.ltr,
//         child: DefaultTextStyle(
//           style: const TextStyle(fontSize: 30),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('PAPAN SKOR', style: TextStyle(color: Colors.black)),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('Unsika: 11  ', style: TextStyle(color: Colors.red)),
//                   Text('UBP: 2', style: TextStyle(color: Colors.blue)),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Expanded(
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 10),
//                       child: Image.network(
//                         'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjVsb6tSjgJncrsCg-nCviXiFhUQBP0YEAgAz7HjduD3Dpt7BerHt9Uj2vFiaEG5TUT6ujAW3U2B4ZD5aqS7iyV_N8j9HyBUo-KBIdbWRtIY0e_seqgJpn1lukSjtX1qBU5fFjqCnAZbb25vEmA5KlA2k2jPc7qLoPtpVyAhno9OoHfxoj4zvCFJ2RVdDtn/s1600/log-unsika.png', // Logo unsika
//                         height: 100,
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 10),
//                       child: Image.network(
//                         'https://simaku.ubpkarawang.ac.id/assets/public/images/logo.png', // Logo UBP
//                         height: 200,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }
