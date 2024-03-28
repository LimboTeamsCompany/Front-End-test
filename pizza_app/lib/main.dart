import 'package:flutter/material.dart';
import 'package:pizza_app/provider/app_state.dart';
import 'package:pizza_app/ui/screen/home/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: ((context) => AppStateProvider()),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        secondaryHeaderColor: const Color(0x80F98645),
        primaryColor: const Color(0xFFF98645),
        textTheme: GoogleFonts.openSansTextTheme().copyWith(
            displayLarge: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
            displayMedium: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
            titleLarge: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
      ),
      home: const Home(),
    );
  }
}
