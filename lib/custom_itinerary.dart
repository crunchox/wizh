import 'package:flutter/material.dart';
import 'package:wizh/models/package_model.dart';
import 'widgets/custom_button_style.dart';
import 'widgets/custom_text_style.dart';

class CustomItinerary extends StatefulWidget {
  const CustomItinerary({Key? key}) : super(key: key);

  @override
  State<CustomItinerary> createState() => _CustomItineraryState();
}

class _CustomItineraryState extends State<CustomItinerary> {
  var dateFromSimple = "11 Jun";
  var dateToSimple = "14 Jun";
  var paxString = "2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff252525),
        appBar: AppBar(
          title: const Text("Custom Itinerary"),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              ElevatedButton(
                style: CustomButtonStyle().buttonDate(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'From',
                      style: CustomTextStyle().body7(),
                    ),
                    Text(
                      dateFromSimple,
                      style: CustomTextStyle().s16cPrimaryw700(),
                    )
                  ],
                ),
                onPressed: () {},
              ),
              const SizedBox(
                width: 8,
              ),
              const Icon(
                Icons.arrow_forward,
                color: Color(0xFFFFFFFF),
                size: 23.0,
              ),
              const SizedBox(
                width: 8,
              ),
              ElevatedButton(
                style: CustomButtonStyle().buttonDate(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'To',
                      style: CustomTextStyle().body7(),
                    ),
                    Text(
                      dateToSimple,
                      style: CustomTextStyle().s16cPrimaryw700(),
                    )
                  ],
                ),
                onPressed: () {},
              ),
              const SizedBox(
                width: 8,
              ),
              ElevatedButton(
                style: CustomButtonStyle().buttonDate(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Pax',
                      style: CustomTextStyle().body7(),
                    ),
                    Text(
                      paxString,
                      style: CustomTextStyle().s16cPrimaryw700(),
                    )
                  ],
                ),
                onPressed: () {},
              ),
            ],
          ),
        )));
  }
}
