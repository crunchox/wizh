import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wizh/loading.dart';
import 'package:wizh/login.dart';

class Congratulations extends StatefulWidget {
  const Congratulations({super.key});

  @override
  State<Congratulations> createState() => _CongratulationsState();
}

class _CongratulationsState extends State<Congratulations> {
  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => Loading()));
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => Loading()),
      (Route<dynamic> route) => false,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    startTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2 - 100,
            ),
            Center(
              child: Text("CONGRATULATIONS !",
                  style: GoogleFonts.readexPro(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFD4BB87),
                  )),
            ),
            SizedBox(
              height: 64,
            ),
            Text(
              "Your Wizh account is ready!",
              style: GoogleFonts.readexPro(
                  fontSize: 16, fontWeight: FontWeight.w300),
            ),
            Text("#TemukanBahagiaMu",
                style: GoogleFonts.readexPro(
                    fontSize: 16, fontWeight: FontWeight.w500))
          ],
        ),
      )),
    );
  }
}
