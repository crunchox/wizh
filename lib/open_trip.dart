import 'package:flutter/material.dart';
import 'package:wizh/models/package_model.dart';
import 'open_trip_detail.dart';
import 'widgets/custom_button_style.dart';
import 'widgets/custom_text_style.dart';

class OpenTrip extends StatefulWidget {
  const OpenTrip({Key? key}) : super(key: key);

  @override
  State<OpenTrip> createState() => _OpenTripState();
}

class _OpenTripState extends State<OpenTrip> {
  final List<Package> listPackage = [
    Package(
        "21-09-2022",
        "Trip Bali 4D3N",
        "Min. 2 Adults",
        "4 Days - 3 Nights",
        "All Around Bali",
        "Package",
        "Non-Refundable",
        "Rp 5.500.000",
        "Pax"),
    Package(
        "25-09-2022",
        "Trip Bali 6D5N",
        "Min. 2 Adults",
        "6 Days - 5 Nights",
        "All Around Bali",
        "Package",
        "Refundable",
        "Rp 9.850.000",
        "Pax"),
    Package(
        "29-09-2022",
        "Trip Bali 4D3N",
        "Min. 2 Adults",
        "4 Days - 3 Nights",
        "All Around Bali",
        "Package",
        "Refundable",
        "Rp 6.500.000",
        "Pax"),
    Package(
        "30-09-2022",
        "Trip Bali 5D4N",
        "Min. 4 Adults",
        "5 Days - 4 Nights",
        "All Around Bali",
        "Package",
        "Non-Refundable",
        "Rp 7.150.000",
        "Pax"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff252525),
      appBar: AppBar(
        title: const Text("Open Trip"),
      ),
      body: SafeArea(
          child: Column(children: [
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OpenTripDetail()));
                },
                child: Card(
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
                              listPackage[index].date,
                              style: CustomTextStyle().body6(),
                            ),
                            Text(
                              listPackage[index].tripTitle,
                              style: CustomTextStyle().body6(),
                            ),
                            Text(
                              listPackage[index].requiredNumberOfPerson,
                              style: CustomTextStyle().body6(),
                            ),
                            Text(
                              listPackage[index].numberOfDayNight,
                              style: CustomTextStyle().body6(),
                            ),
                            Text(
                              listPackage[index].overallDestinations,
                              style: CustomTextStyle().body6(),
                            ),
                            Text(
                              listPackage[index].tripPaymentPolicy,
                              style: CustomTextStyle().body6(),
                            ),
                            Text(
                              "${listPackage[index].price}/${listPackage[index].unit}",
                              style: CustomTextStyle().body5(),
                            )
                          ])),
                    ],
                  ),
                ),
              );
            },
            itemCount: listPackage.length,
          ),
        ),
        // ElevatedButton(
        //   style: CustomButtonStyle().buttonPrimary(),
        //   onPressed: () {
        //     showModalBottomSheet(
        //         context: context, builder: (_) => const ChooseTripType());
        //   },
        //   child: const Text('Create a New Trip'),
        // ),
      ])),
    );
  }
}
