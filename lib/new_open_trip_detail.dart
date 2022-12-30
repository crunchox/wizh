import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wizh/info_host.dart';
import 'package:wizh/payment.dart';

class NewOpenTripDetail extends StatefulWidget {
  const NewOpenTripDetail({super.key});

  @override
  State<NewOpenTripDetail> createState() => _NewOpenTripDetailState();
}

class _NewOpenTripDetailState extends State<NewOpenTripDetail> {
  bool itinerary = true;
  bool include = true;
  bool exclude = true;
  bool terms = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: [
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageSlider(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "5D4N - New Year at Bali",
                      style: GoogleFonts.readexPro(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 14,
                          color: Color(0xffd4bb87),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "4.9",
                          style: GoogleFonts.readexPro(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Text(
                          "235+ verified ratings",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.readexPro(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff898989)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Separator(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.verified_user_outlined,
                          color: Color(0xff626262),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "CleanDestination",
                              style: GoogleFonts.readexPro(
                                  fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "(CHSE Certified by Kemenparekaf)",
                              style: GoogleFonts.readexPro(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.5)),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.support_agent,
                          color: Color(0xff626262),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Text(
                          "Hosted by ",
                          style: GoogleFonts.readexPro(
                              fontSize: 11, fontWeight: FontWeight.w400),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => InfoHost()));
                          },
                          child: Text(
                            "BaliParadise Tour",
                            style: GoogleFonts.readexPro(
                                fontSize: 11, fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.warning,
                          color: Color(0xff626262),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Text(
                          "Report this listing",
                          style: GoogleFonts.readexPro(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Separator(),
                    SizedBox(
                      height: 11,
                    ),
                    Row(
                      children: [
                        Text(
                          "Itinerary :",
                          style: GoogleFonts.readexPro(
                              fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                        Spacer(),
                        IconButton(
                            constraints: BoxConstraints(),
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              setState(() {
                                if (itinerary == true) {
                                  itinerary = false;
                                } else {
                                  itinerary = true;
                                }
                              });
                            },
                            iconSize: 40,
                            icon: Icon(itinerary
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down))
                      ],
                    ),
                    itinerary
                        ? Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Day 1 : ",
                                    style: GoogleFonts.readexPro(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Airport - Penglipuran - Kintamani - Lovina",
                                    style: GoogleFonts.readexPro(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Day 2 : ",
                                    style: GoogleFonts.readexPro(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Morning Dolphin - Bedugul - Tanah Lot - \nKuta Area",
                                    style: GoogleFonts.readexPro(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Day 3 : ",
                                    style: GoogleFonts.readexPro(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Tanjung Benoa - GWK - Pantai Pandawa -\nUluwatu - Jimbaran",
                                    style: GoogleFonts.readexPro(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Day 4 : ",
                                    style: GoogleFonts.readexPro(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Shopping around Kuta - New Year Countdown",
                                    style: GoogleFonts.readexPro(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Day 5 : ",
                                    style: GoogleFonts.readexPro(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Go to Airport",
                                    style: GoogleFonts.readexPro(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 2,
                              ),
                            ],
                          )
                        : Container(),
                    SizedBox(
                      height: 14,
                    ),
                    Separator(),
                    SizedBox(
                      height: 11,
                    ),
                    Row(
                      children: [
                        Text(
                          "Include :",
                          style: GoogleFonts.readexPro(
                              fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                        Spacer(),
                        IconButton(
                            constraints: BoxConstraints(),
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              setState(() {
                                if (include == true) {
                                  include = false;
                                } else {
                                  include = true;
                                }
                              });
                            },
                            iconSize: 40,
                            icon: Icon(include
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down))
                      ],
                    ),
                    include
                        ? Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "+ ",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "1 night at Hotel Aditya Lovina",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "+ ",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "2 nights at equal hotels",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "+ ",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Transport from Ngurah Rai airport, Tour\nprogram, and back to airport again",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "+ ",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Destination object tickect, toll, parking lot",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "+ ",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Breakfast, Lunch, and Dinner",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "+ ",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Free 1 bottle of water a day",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "+ ",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Tour guide and driver services",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                              ],
                            ),
                          )
                        : Container(),
                    SizedBox(
                      height: 14,
                    ),
                    Separator(),
                    SizedBox(
                      height: 11,
                    ),
                    Row(
                      children: [
                        Text(
                          "Exclude :",
                          style: GoogleFonts.readexPro(
                              fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                        Spacer(),
                        IconButton(
                            constraints: BoxConstraints(),
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              setState(() {
                                if (exclude == true) {
                                  exclude = false;
                                } else {
                                  exclude = true;
                                }
                              });
                            },
                            iconSize: 40,
                            icon: Icon(exclude
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down))
                      ],
                    ),
                    exclude
                        ? Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "- ",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Water sport voucher at Tanjung Benoa",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "- ",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Personal needs (laundry, minibar, medicine)",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "- ",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Bonus for tour guide/driver",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "- ",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Anything not mentioned in the “Include”",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        : Container(),
                    SizedBox(
                      height: 14,
                    ),
                    Separator(),
                    SizedBox(
                      height: 11,
                    ),
                    Row(
                      children: [
                        Text(
                          "Terms & Conditions :",
                          style: GoogleFonts.readexPro(
                              fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                        Spacer(),
                        IconButton(
                            constraints: BoxConstraints(),
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              setState(() {
                                if (terms == true) {
                                  terms = false;
                                } else {
                                  terms = true;
                                }
                              });
                            },
                            iconSize: 40,
                            icon: Icon(terms
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down))
                      ],
                    ),
                    terms
                        ? Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "• ",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "1 hotel room for 2 pax",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "• ",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Free for child below 4 years",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "• ",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Minimum 2 pax",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "• ",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Free Cancellation max. 48 Hours",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        : Container(),
                    SizedBox(
                      height: 14,
                    ),
                    Separator(),
                    SizedBox(
                      height: 28,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Rp. 7.5000.000,-",
                              style: GoogleFonts.readexPro(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "per pax",
                              style: GoogleFonts.readexPro(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black.withOpacity(0.5)),
                            )
                          ],
                        ),
                        Spacer(),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Payment()));
                            },
                            child: Text(
                              "Continue",
                              style: GoogleFonts.readexPro(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    )));
  }

  Container Separator() {
    return Container(
      width: 326,
      height: 2,
      color: Color(0xffd7d7d7),
    );
  }
}

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  bool favorite = false;
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 226,
      child: Stack(
        children: [
          Center(
            child: CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
                height: 226.0,
                viewportFraction: 1,
              ),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/contoh.png'))
                          // color: i == 1
                          //     ? Colors.amber
                          //     : i == 2
                          //         ? Colors.green
                          //         : i == 3
                          //             ? Colors.pink
                          //             : i == 4
                          //                 ? Colors.lightBlue
                          //                 : i == 5
                          //                     ? Colors.lime
                          //                     : Colors.amber),
                          ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              iconSize: 40,
              icon: Icon(
                Icons.chevron_left,
                color: Colors.white,
              )),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
                onPressed: () {
                  setState(() {
                    if (favorite == false) {
                      favorite = true;
                    } else {
                      favorite = false;
                    }
                  });
                },
                iconSize: 30,
                icon: Icon(
                  favorite ? Icons.favorite : Icons.favorite_border,
                  color: favorite ? Color(0xffd4bb87) : Colors.white,
                )),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(bottom: 16, right: 8),
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [0, 1, 2, 3, 4].map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry),
                      child: Container(
                        width: 6,
                        height: 6,
                        margin:
                            const EdgeInsets.only(left: 8, right: 0, top: 8),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == entry
                                ? Color(0xffd4bb87)
                                : Colors.white),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
