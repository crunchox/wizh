import 'package:flutter/material.dart';
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
  TripType values = TripType.customInitiary;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xFF353535),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 32,
            ),
            Text(
              'Choose one :',
              style: CustomTextStyle().body3(),
            ),
            const SizedBox(
              height: 24,
            ),
            _myRadioButton(
              title: "Custom Itinerary (Coming Soon)",
              value: TripType.customInitiary,
              onChanged: (newValue) => setState(() {
                values = newValue as TripType;
              }),
            ),
            const SizedBox(height: 10),
            _myRadioButton(
              title: "Open/Private Trip",
              value: TripType.openorprivateTrip,
              onChanged: (newValue) => setState(() {
                values = newValue as TripType;
              }),
            ),
            const SizedBox(height: 10),
            _myRadioButton(
              title: "Virtual Trip (Coming Soon)",
              value: TripType.virtualTrip,
              onChanged: (newValue) => setState(() {
                values = newValue as TripType;
              }),
            ),
            const SizedBox(height: 24),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  // Add TextFormFields and ElevatedButton here.
                  TextFormField(
                    cursorColor: const Color(0xffD3AE7A),
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffD3AE7A)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffD3AE7A)),
                        ),
                        hintText: 'Your trip name...',
                        hintStyle: TextStyle(color: Colors.white)),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                    style: CustomButtonStyle().buttonPrimary(),
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
                                builder: (context) => const CustomItinerary()));
                      } else if (values == TripType.openorprivateTrip) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OpenTrip()));
                      }
                    },
                    child: const Text('Create'),
                  ),
                ],
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
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: const Color(0xff263238), width: 0.1),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
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
}
