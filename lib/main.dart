import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app/router/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portofolio PBM - Auf Fajri',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      // Rute awal diarahkan ke menu daftar materi
      initialRoute: AppRouter.home,
      routes: AppRouter.routes,
    );
  }
}
