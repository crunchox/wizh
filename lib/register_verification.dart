import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:wizh/congratulation.dart';

class RegisterVerification extends StatefulWidget {
  const RegisterVerification({super.key});

  @override
  State<RegisterVerification> createState() => _RegisterVerificationState();
}

class _RegisterVerificationState extends State<RegisterVerification> {
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  int _start = 10;

  void startTimer() {
    _start = 10;
    const oneSec = const Duration(seconds: 1);
    Timer _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD4BB87),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: 30,
                    )),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "Create Wizh Account",
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 48,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                "Step 2 of 2",
                style: GoogleFonts.readexPro(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Text(
                "Confirm your e-mail address",
                style: GoogleFonts.readexPro(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 99,
            ),
            Center(
                child: Text(
              "Enter the 4-digit code we sent to",
              style: GoogleFonts.readexPro(
                  fontSize: 14, fontWeight: FontWeight.w400),
            )),
            Center(
                child: Text(
              "angel****@gmail.com",
              style: GoogleFonts.readexPro(
                  fontSize: 14, fontWeight: FontWeight.w600),
            )),
            SizedBox(
              height: 60,
            ),
            Form(
              key: formKey,
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 60),
                  child: PinCodeTextField(
                    appContext: context,
                    pastedTextStyle: TextStyle(
                      color: Color(0xFFD4BB87),
                      fontWeight: FontWeight.bold,
                    ),
                    length: 4,
                    obscureText: true,
                    obscuringCharacter: '*',
                    blinkWhenObscuring: true,
                    animationType: AnimationType.fade,
                    // validator: (v) {
                    //   if (v!.length < 3) {
                    //     return "I'm from validator";
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.underline,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 44,
                        activeFillColor: Colors.transparent,
                        activeColor: Colors.black,
                        inactiveColor: Colors.black,
                        selectedColor: Colors.black,
                        selectedFillColor: Colors.transparent,
                        inactiveFillColor: Colors.transparent),
                    cursorColor: Colors.black,
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    errorAnimationController: errorController,
                    controller: textEditingController,
                    keyboardType: TextInputType.number,
                    // boxShadows: const [
                    //   BoxShadow(
                    //     offset: Offset(0, 1),
                    //     color: Colors.black12,
                    //     blurRadius: 10,
                    //   )
                    // ],
                    // onCompleted: (v) {
                    //   debugPrint("Completed");
                    // },
                    // onTap: () {
                    //   print("Pressed");
                    // },
                    onChanged: (value) {
                      // debugPrint(value);
                      setState(() {
                        currentText = value;
                      });
                    },
                    // beforeTextPaste: (text) {
                    //   debugPrint("Allowing to paste $text");
                    //   //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //   //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    //   return true;
                    // },
                  )),
            ),
            SizedBox(
              height: 60,
            ),
            Center(
              child: SizedBox(
                height: 46,
                width: 177,
                child: ElevatedButton(
                    onPressed: () {
                      if (currentText == "1234") {
                        // Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => Congratulations()));
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Congratulations()),
                          (Route<dynamic> route) => false,
                        );
                      }
                    },
                    child: Text(
                      "Confirm",
                      style: GoogleFonts.readexPro(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.white)),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Resend code in",
                  style: GoogleFonts.readexPro(
                      fontSize: 12, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 2,
                ),
                _start != 0
                    ? Text(
                        _start >= 10 ? "0:$_start" : "0:0$_start",
                        style: GoogleFonts.readexPro(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      )
                    : GestureDetector(
                        onTap: () => startTimer(),
                        child: Text(
                          "Resend",
                          style: GoogleFonts.readexPro(
                              color: Color(0xFF8A9178),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
