import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:wizh/widgets/create_trip.dart';
import 'package:wizh/widgets/custom_button_style.dart';

class NewTrip extends StatefulWidget {
  const NewTrip({super.key});

  @override
  State<NewTrip> createState() => _NewTripState();
}

class _NewTripState extends State<NewTrip> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
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
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 5, 25, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Trip",
                  style: GoogleFonts.readexPro(
                      fontSize: 32, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 35,
                ),
                TabBar(
                  controller: _tabController,
                  indicatorColor: Color(0xffd4bb87),
                  // indicator: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(8),
                  //   color: Color(0xFFD4BB87),
                  // ),
                  padding: EdgeInsets.zero,
                  labelColor: Colors.black,
                  labelStyle: GoogleFonts.readexPro(
                      fontSize: 14, fontWeight: FontWeight.w500),
                  unselectedLabelStyle: GoogleFonts.readexPro(
                      fontSize: 14, fontWeight: FontWeight.w300),
                  onTap: (value) {
                    setState(() {});
                  },
                  tabs: const [
                    Tab(
                      text: 'Wizh List',
                    ),
                    Tab(
                      text: 'Upcoming',
                    ),
                    Tab(
                      text: "History",
                    )
                  ],
                ),
                Expanded(
                    child: TabBarView(
                  controller: _tabController,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 110,
                          ),
                          SizedBox(
                              height: 78.81,
                              width: 66.63,
                              child: Image(
                                  image:
                                      AssetImage("assets/images/no_plan.png"))),
                          SizedBox(
                            height: 26,
                          ),
                          Text(
                            "You don't have any Plan right now",
                            style: GoogleFonts.readexPro(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (context) => ChooseTripType());
                            },
                            child: Text(
                              "Create a New Trip",
                              style: GoogleFonts.readexPro(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFFD4BB87)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35.0),
                                )),
                                fixedSize:
                                    MaterialStateProperty.all(Size(311, 56))),
                          )
                        ],
                      ),
                    ),
                    ListCard(),
                    ListCard()
                  ],
                ))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class ListCard extends StatelessWidget {
  const ListCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 450,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 32,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xffd7d7d7), width: 2),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 89,
                                  height: 27,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFD4BB87),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10))),
                                  child: Center(
                                    child: Text(
                                      "Nov",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 89,
                                  height: 82,
                                  decoration: BoxDecoration(
                                      color: Color(0xffe8e8e8),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10))),
                                  child: Center(
                                    child: Text(
                                      "1",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 11,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Healing ke Malang 5D4N",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 11,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.people_alt,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "5 Adults",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.hotel,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "5 Days - 4 Nights",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.signpost,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "Batu - Gn. Bromo - Pt. Balekambang",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.people_alt,
                                      size: 12,
                                      color: Colors.transparent,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "(Click for details)",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Open Trip ",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text("| ",
                                        style: GoogleFonts.readexPro(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w300)),
                                    Text("Refundable",
                                        style: GoogleFonts.readexPro(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w300))
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 27,
                        decoration: BoxDecoration(
                            color: Color(0xff20a70a),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                          child: Text(
                            "Save the date!",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                Container(
                  height: 1,
                  color: Color(0xffd7d7d7),
                ),
                SizedBox(
                  height: 19,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xffd7d7d7), width: 2),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 89,
                                  height: 27,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFD4BB87),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10))),
                                  child: Center(
                                    child: Text(
                                      "Nov",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 89,
                                  height: 82,
                                  decoration: BoxDecoration(
                                      color: Color(0xffe8e8e8),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10))),
                                  child: Center(
                                    child: Text(
                                      "1",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 11,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Healing ke Malang 5D4N",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 11,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.people_alt,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "5 Adults",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.hotel,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "5 Days - 4 Nights",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.signpost,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "Batu - Gn. Bromo - Pt. Balekambang",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.people_alt,
                                      size: 12,
                                      color: Colors.transparent,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "(Click for details)",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Open Trip ",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text("| ",
                                        style: GoogleFonts.readexPro(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w300)),
                                    Text("Refundable",
                                        style: GoogleFonts.readexPro(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w300))
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 27,
                        decoration: BoxDecoration(
                            color: Color(0xffda3d3d),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                          child: Text(
                            "Pay Now",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 1,
                  color: Color(0xffd7d7d7),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xffd7d7d7), width: 2),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 89,
                                  height: 27,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFD4BB87),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10))),
                                  child: Center(
                                    child: Text(
                                      "Nov",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 89,
                                  height: 82,
                                  decoration: BoxDecoration(
                                      color: Color(0xffe8e8e8),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10))),
                                  child: Center(
                                    child: Text(
                                      "1",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 11,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Healing ke Malang 5D4N",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 11,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.people_alt,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "5 Adults",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.hotel,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "5 Days - 4 Nights",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.signpost,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "Batu - Gn. Bromo - Pt. Balekambang",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.people_alt,
                                      size: 12,
                                      color: Colors.transparent,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "(Click for details)",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Open Trip ",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text("| ",
                                        style: GoogleFonts.readexPro(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w300)),
                                    Text("Refundable",
                                        style: GoogleFonts.readexPro(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w300))
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 27,
                        decoration: BoxDecoration(
                            color: Color(0xffb4b4b4),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                          child: Text(
                            "Finished",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 1,
                  color: Color(0xffd7d7d7),
                ),
                SizedBox(
                  height: 5,
                )
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 20,
            left: 20,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => const ChooseTripType());
                },
                child: Text(
                  "Create a New Trip",
                  style: GoogleFonts.readexPro(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFFD4BB87)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0),
                    )),
                    fixedSize: MaterialStateProperty.all(
                        Size(MediaQuery.of(context).size.width / 1.3, 56))),
              ),
            ))
      ],
    );
  }
}
