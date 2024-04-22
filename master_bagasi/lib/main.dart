import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'presentation/view/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.nunitoSans().fontFamily,),
      home: DetailPage(),
    );
  }
}