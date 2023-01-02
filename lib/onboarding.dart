import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wizh/login.dart';

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
          child: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            if (_progress < 3) {
              setState(() {
                _progress += 1;
              });
            }
          },
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
                height: MediaQuery.of(context).size.height / 4 - 50,
              ),
              Text(
                "REFRESHING HAS\nNEVER BEEN EASIER\nWITH US",
                textAlign: TextAlign.center,
                style: GoogleFonts.readexPro(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: _progress == 1 ? Colors.black : Colors.transparent),
              ),
              SizedBox(
                height: 71,
              ),
              Text(
                "CUSTOMIZE YOUR\nOWN REFRESHING IDEAS",
                textAlign: TextAlign.center,
                style: GoogleFonts.readexPro(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: _progress == 2 ? Colors.black : Colors.transparent),
              ),
              SizedBox(
                height: 71,
              ),
              Text(
                "BE PART OF\nOUR COMMUNITY",
                textAlign: TextAlign.center,
                style: GoogleFonts.readexPro(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: _progress == 3 ? Colors.black : Colors.transparent),
              ),
              SizedBox(
                height: 110,
              ),
              _progress == 3
                  ? Padding(
                      padding: const EdgeInsets.only(right: 22.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          height: 46,
                          width: 102,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                                (Route<dynamic> route) => false,
                              );
                            },
                            child: Text(
                              "Next",
                              style: GoogleFonts.readexPro(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                backgroundColor: Color(0xFFD4BB87)),
                          ),
                        ),
                      ),
                    )
                  : Container()
            ],
          ),
        ),
      )),
    );
  }
}
