import 'package:flutter/material.dart';
import 'package:wizh/home.dart';
import 'package:wizh/widgets/custom_button_style.dart';
import 'package:wizh/widgets/custom_text_style.dart';

import 'models/trip_model.dart';
import 'widgets/create_trip.dart';

class NoTripPage extends StatefulWidget {
  const NoTripPage({super.key, required this.title});

  final String title;

  @override
  State<NoTripPage> createState() => _NoTripPageState();
}

class _NoTripPageState extends State<NoTripPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff252525),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset('assets/images/warning.png'),
            const SizedBox(
              height: 24,
            ),
            Text(
              "You don’t have any Plan right now.",
              style: CustomTextStyle().body1(),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              style: CustomButtonStyle().buttonPrimary(),
              onPressed: () {
                showModalBottomSheet(
                    context: context, builder: (_) => const ChooseTripType());
              },
              child: const Text('Create a New Trip'),
            ),
            ElevatedButton(
              style: CustomButtonStyle().buttonPrimary(),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              child: const Text('Home'),
            ),
            const Spacer(),
          ],
        )));
  }
}

class TripPage extends StatefulWidget {
  const TripPage({Key? key}) : super(key: key);

  @override
  _TripPageState createState() => _TripPageState();
}

class _TripPageState extends State<TripPage> {
  final List<Trip> listTrip = [
    Trip(
        "21-09-2022",
        "Liburan ke Bali ahhh ~",
        "2 Adults",
        "4 Days - 3 Nights",
        "Ungasan - Uluwatu - Denpasar",
        "Custom",
        "Non-Refundable",
        "Payment Done"),
    Trip(
        "22-09-2022",
        "Tour ke Malang rame2",
        "6 Adults",
        "5 Days - 4 Nights",
        "Batu - Gn. Bromo - Pt. Balekambang",
        "Packages",
        "Non-Refundable",
        "Unpaid")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff252525),
      appBar: AppBar(
        title: const Text("List Trip"),
      ),
      body: SafeArea(
          child: Column(children: [
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: const Color(0xff353535),
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(children: [
                          Text(
                            listTrip[index].date,
                            style: CustomTextStyle().body6(),
                          ),
                          Text(
                            listTrip[index].numberOfPerson,
                            style: CustomTextStyle().body6(),
                          ),
                          Text(
                            listTrip[index].numberOfDayNight,
                            style: CustomTextStyle().body6(),
                          ),
                          Text(
                            listTrip[index].destinations,
                            style: CustomTextStyle().body6(),
                          ),
                          Text(
                            listTrip[index].tripTypeCode,
                            style: CustomTextStyle().body6(),
                          ),
                          Text(
                            listTrip[index].tripPaymentPolicy,
                            style: CustomTextStyle().body6(),
                          ),
                          Text(
                            "(Click for details)",
                            style: CustomTextStyle().body6(),
                          ),
                        ])),
                    Container(
                      color: listTrip[index].paymentStatus == "Unpaid"
                          ? Colors.redAccent
                          : Colors.green,
                      child: Text(
                        listTrip[index].paymentStatus,
                        style: CustomTextStyle().body7(),
                      ),
                    )
                  ],
                ),
              );
            },
            itemCount: listTrip.length,
          ),
        ),
        ElevatedButton(
          style: CustomButtonStyle().buttonPrimary(),
          onPressed: () {
            showModalBottomSheet(
                context: context, builder: (_) => const ChooseTripType());
          },
          child: const Text('Create a New Trip'),
        ),
      ])),
    );
  }
}
