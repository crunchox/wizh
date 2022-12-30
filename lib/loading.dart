import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wizh/home_bar.dart';
import 'package:wizh/new_trip.dart';
import 'package:wizh/trip.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => NewTrip()));
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => HomeLayout()),
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
      backgroundColor: Color(0xFFD4BB87),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2 - 220,
          ),
          Center(
            child: Image(image: AssetImage("assets/images/loading.png")),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Please wait ...",
            style: GoogleFonts.readexPro(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.02,
                color: Colors.white),
          )
        ],
      )),
    );
  }
}
