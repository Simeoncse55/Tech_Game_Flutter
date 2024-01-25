import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'Pages/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          useMaterial3: true,
        textTheme: GoogleFonts.originalSurferTextTheme(
          Theme.of(context).textTheme,
        ),

      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
