import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wizh/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD4BB87),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 140,
            ),
            Container(
              height: MediaQuery.of(context).size.height - 164,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white,
                  border: Border.all(color: Color(0xFFD7D7D7), width: 2)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 31, left: 22),
                    child: Text(
                      "Welcome to",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.readexPro(
                          fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Center(
                    child: Image(
                      image: AssetImage('assets/images/logo_wizh.png'),
                      height: 58,
                      width: 216,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Text(
                      "Where anyone can make a Wizh come true.\nShare happiness with your beloved one",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.readexPro(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF8A9178)),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Center(
                    child: SizedBox(
                        height: 46,
                        width: 296,
                        child: TextField(
                          style: GoogleFonts.readexPro(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 12),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFD8D8D8)),
                                  borderRadius: BorderRadius.circular(8)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFD8D8D8)),
                                  borderRadius: BorderRadius.circular(8)),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Theme.of(context)
                                          .unselectedWidgetColor),
                                  borderRadius: BorderRadius.circular(8)),
                              hintText: "E-mail / Phone number"),
                        )),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Center(
                    child: SizedBox(
                        height: 46,
                        width: 296,
                        child: TextField(
                          style: GoogleFonts.readexPro(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 12),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFD8D8D8)),
                                  borderRadius: BorderRadius.circular(8)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFD8D8D8)),
                                  borderRadius: BorderRadius.circular(8)),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Theme.of(context)
                                          .unselectedWidgetColor),
                                  borderRadius: BorderRadius.circular(8)),
                              hintText: "Password"),
                        )),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Forgot password?",
                        style: GoogleFonts.readexPro(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF878787)),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        "Click Here",
                        style: GoogleFonts.readexPro(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF8A9178)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: SizedBox(
                      height: 40,
                      width: 296,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Login",
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
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: SizedBox(
                      height: 38,
                      width: 180,
                      child: Image(
                          image: AssetImage('assets/images/google_signin.png')),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have account?",
                        style: GoogleFonts.readexPro(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF878787)),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()));
                        },
                        child: Text(
                          "Create New",
                          style: GoogleFonts.readexPro(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF8A9178)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
