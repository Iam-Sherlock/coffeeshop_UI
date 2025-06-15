import 'package:coffeeshop/routes/app_routes.dart';
import 'package:coffeeshop/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routerConfig: appRouter,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(198,124,78,1)),
        scaffoldBackgroundColor: Color(0xFFF9F9F9),
        textTheme: GoogleFonts.soraTextTheme(),
        useMaterial3: true,
      ),
    );
  }
}
