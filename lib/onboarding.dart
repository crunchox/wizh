import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int _progress = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 9,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1,
                width: 338 * _progress / 3,
                color: Color(0xFFD4BB87),
              ),
              Container(
                height: 1,
                width: 338 * (3 - _progress) / 3,
                color: Colors.black,
              )
            ],
          ),
          SizedBox(
            height: 162,
          ),
          Text(
            "REFRESHING HAS\nNEVER BEEN EASIER\nWITH US",
            textAlign: TextAlign.center,
            style: GoogleFonts.readexPro(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: _progress == 1 ? Colors.black : Colors.white),
          ),
          SizedBox()
        ],
      )),
    );
  }
}
