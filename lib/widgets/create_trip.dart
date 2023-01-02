import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wizh/new_open_trip.dart';
import 'package:wizh/trip.dart';
import 'package:wizh/open_trip.dart';

import '../custom_itinerary.dart';
import 'custom_button_style.dart';
import 'custom_text_style.dart';

class ChooseTripType extends StatefulWidget {
  const ChooseTripType({Key? key}) : super(key: key);

  @override
  State<ChooseTripType> createState() => _ChooseTripTypeState();
}

enum TripType { customInitiary, openorprivateTrip, virtualTrip }

class _ChooseTripTypeState extends State<ChooseTripType> {
  TripType values = TripType.openorprivateTrip;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.65,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Container(
              height: 2,
              width: 74,
              color: Color(0xffd7d7d7),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              'Choose one :',
              style: GoogleFonts.readexPro(
                  fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 24,
            ),
            _myRadioButton(
              title: "Open/Private Trip",
              value: TripType.openorprivateTrip,
              onChanged: (newValue) => setState(() {
                values = newValue as TripType;
              }),
            ),
            const SizedBox(height: 10),
            _myRadioLockButton(
              title: "Custom Itinerary",
              value: TripType.customInitiary,
              onChanged: (newValue) => setState(() {
                values = newValue as TripType;
              }),
            ),
            const SizedBox(height: 10),
            _myRadioLockButton(
              title: "Virtual Trip",
              value: TripType.virtualTrip,
              onChanged: (newValue) => setState(() {
                values = newValue as TripType;
              }),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 35.0, right: 35),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    // Add TextFormFields and ElevatedButton here.
                    TextFormField(
                      cursorColor: const Color(0xffD3AE7A),
                      style: GoogleFonts.readexPro(
                          fontSize: 16, fontWeight: FontWeight.w400),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffD3AE7A)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffD3AE7A)),
                          ),
                          hintText: 'Your trip name...',
                          hintStyle: GoogleFonts.readexPro(
                              fontSize: 16, fontWeight: FontWeight.w400)),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFFD4BB87)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35.0),
                          )),
                          fixedSize: MaterialStateProperty.all(Size(311, 56))),
                      onPressed: () {
                        Navigator.pop(context);
                        if (values == TripType.virtualTrip) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TripPage()));
                        } else if (values == TripType.customInitiary) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CustomItinerary()));
                        } else if (values == TripType.openorprivateTrip) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NewOpenTrip()));
                        }
                      },
                      child: Text(
                        'Select',
                        style: GoogleFonts.readexPro(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Widget _myRadioButton(
      {required String title,
      required Object value,
      required void Function(Object?)? onChanged}) {
    return Container(
      height: 56,
      width: 326,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35),
        border: Border.all(color: Colors.black.withOpacity(0.5), width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 10, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: GoogleFonts.readexPro(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            Radio(
              value: value,
              groupValue: values,
              onChanged: onChanged,
            )
          ],
        ),
      ),
    );
  }

  Widget _myRadioLockButton(
      {required String title,
      required Object value,
      required void Function(Object?)? onChanged}) {
    return Container(
      height: 56,
      width: 326,
      decoration: BoxDecoration(
        color: Color(0xffbababa),
        borderRadius: BorderRadius.circular(35),
        border: Border.all(color: Colors.black.withOpacity(0.5), width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: GoogleFonts.readexPro(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            Icon(Icons.lock_outline)
            // Radio(
            //   value: value,
            //   groupValue: values,
            //   onChanged: onChanged,
            // )
          ],
        ),
      ),
    );
  }
}
