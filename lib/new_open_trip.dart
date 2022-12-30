import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:wizh/new_open_trip_detail.dart';
import 'package:wizh/widgets/create_trip.dart';
import 'package:wizh/widgets/custom_button_style.dart';

class NewOpenTrip extends StatefulWidget {
  const NewOpenTrip({super.key});

  @override
  State<NewOpenTrip> createState() => _NewOpenTripState();
}

class _NewOpenTripState extends State<NewOpenTrip> {
  TextEditingController editingController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background_image.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25, top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          constraints: BoxConstraints(),
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          iconSize: 30,
                          icon: Icon(
                            Icons.chevron_left,
                            color: Colors.black,
                          )),
                      Text(
                        "Open/Private Trip",
                        style: GoogleFonts.readexPro(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: SizedBox(
                      width: 326,
                      height: 56,
                      child: TextField(
                        onChanged: (value) {
                          //code here
                        },
                        controller: editingController,
                        decoration: InputDecoration(
                            labelText: "Choose Destination...",
                            hintText: "Search",
                            suffixIcon: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(Icons.filter_alt)),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffd7d7d7), width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35.0))),
                            disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffd7d7d7), width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35.0))),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffd7d7d7), width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35.0)))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 550,
                    child: ListView.builder(
                        itemCount: 3,
                        physics: AlwaysScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: ((context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          NewOpenTripDetail()));
                            },
                            child: Card(
                                elevation: 0,
                                color: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      child: Image(
                                          image: AssetImage(
                                              "assets/images/contoh.png")),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "5D4N - New Year at Bali",
                                          style: GoogleFonts.readexPro(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffd4bb87),
                                        ),
                                        Text(
                                          "4.9",
                                          style: GoogleFonts.readexPro(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "235+ verified ratings",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          color: Color(0xff898989),
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      "Rp. 7.500.000,-",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          color: Color(0xffd3ae7a),
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 21,
                                    )
                                  ],
                                )),
                          );
                        })),
                  ),
                  SizedBox(
                    height: 15,
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
