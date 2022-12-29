import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:wizh/register_verification.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _hide = true;
  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    dateinput.text = "";
    super.initState();
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
                "Step 1 of 2",
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
                "Set up your account",
                style: GoogleFonts.readexPro(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 34.0),
              child: Text(
                "One e-mail & phone number for one account",
                style: GoogleFonts.readexPro(
                    fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Center(
              child: SizedBox(
                  height: 46,
                  width: 296,
                  child: TextField(
                    cursorColor: Color(0xFFD4BB87),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: GoogleFonts.readexPro(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                        contentPadding: EdgeInsets.only(left: 12),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD8D8D8)),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD8D8D8)),
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).unselectedWidgetColor),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Create @Username"),
                  )),
            ),
            SizedBox(
              height: 22,
            ),
            Center(
              child: SizedBox(
                  height: 46,
                  width: 296,
                  child: TextField(
                    cursorColor: Color(0xFFD4BB87),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: GoogleFonts.readexPro(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                        contentPadding: EdgeInsets.only(left: 12),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD8D8D8)),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD8D8D8)),
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).unselectedWidgetColor),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "E-mail"),
                  )),
            ),
            SizedBox(
              height: 22,
            ),
            Center(
              child: SizedBox(
                  height: 46,
                  width: 296,
                  child: TextField(
                    cursorColor: Color(0xFFD4BB87),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: GoogleFonts.readexPro(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                        contentPadding: EdgeInsets.only(left: 12),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD8D8D8)),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD8D8D8)),
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).unselectedWidgetColor),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Phone number"),
                  )),
            ),
            SizedBox(
              height: 22,
            ),
            Center(
              child: SizedBox(
                  height: 46,
                  width: 296,
                  child: TextField(
                    cursorColor: Color(0xFFD4BB87),
                    obscureText: _hide,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.remove_red_eye_outlined,
                            color: _hide ? Colors.black : Color(0xFFD4BB87),
                          ),
                          onPressed: () {
                            if (_hide == true) {
                              setState(() {
                                _hide = false;
                              });
                            } else {
                              setState(() {
                                _hide = true;
                              });
                            }
                          },
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: GoogleFonts.readexPro(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                        contentPadding: EdgeInsets.only(left: 12),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD8D8D8)),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD8D8D8)),
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).unselectedWidgetColor),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Create password"),
                  )),
            ),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26.0),
              child: Text(
                "When is Your Birthday?",
                style: GoogleFonts.readexPro(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Center(
              child: SizedBox(
                  height: 46,
                  width: 296,
                  child: TextField(
                    controller: dateinput,
                    readOnly: true,
                    cursorColor: Color(0xFFD4BB87),
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(
                              1900), //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2101));

                      if (pickedDate != null) {
                        print(
                            pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                        String formattedDate =
                            DateFormat('dd / MM / yyyy').format(pickedDate);
                        print(
                            formattedDate); //formatted date output using intl package =>  2021-03-16
                        //you can implement different kind of Date Format here according to your requirement

                        setState(() {
                          dateinput.text =
                              formattedDate; //set output date to TextField value.
                        });
                      } else {
                        print("Date is not selected");
                      }
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelStyle: GoogleFonts.readexPro(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                        hintStyle: GoogleFonts.readexPro(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                        contentPadding: EdgeInsets.only(left: 12),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD8D8D8)),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD8D8D8)),
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).unselectedWidgetColor),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Pick your birth date"),
                  )),
            ),
            SizedBox(
              height: 39,
            ),
            Center(
              child: SizedBox(
                height: 46,
                width: 177,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterVerification()));
                    },
                    child: Text(
                      "Continue",
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
              height: 10,
            ),
            Center(
              child: Text(
                "By using Wizh, you agree to our",
                style: GoogleFonts.readexPro(
                    fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Terms",
                  style: GoogleFonts.readexPro(
                      color: Color(0xFF8A9178),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "and",
                  style: GoogleFonts.readexPro(
                      fontSize: 12, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "Privacy Policy",
                  style: GoogleFonts.readexPro(
                      color: Color(0xFF8A9178),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
