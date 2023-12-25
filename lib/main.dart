import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoing/pages/loginpage.dart';
import 'package:todoing/pages/welcomepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const ToDoing());
}

class ToDoing extends StatelessWidget {
  const ToDoing({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => welcomePage(),
        ),
        GetPage(
            name: '/second',
            page: () => loginPage(),
            transitionDuration: Duration(milliseconds: 100),
            transition: Transition.rightToLeft),
      ],
      theme: ThemeData(fontFamily: GoogleFonts.belanosima().fontFamily),
      debugShowCheckedModeBanner: false,
      home: welcomePage(),
    );
  }
}
