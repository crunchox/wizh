import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoHost extends StatefulWidget {
  const InfoHost({super.key});

  @override
  State<InfoHost> createState() => _InfoHostState();
}

class _InfoHostState extends State<InfoHost> {
  bool listing = true;
  bool rules = true;
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
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
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
                      "Info Host",
                      style: GoogleFonts.readexPro(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 36,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Hosted by ",
                                    style: GoogleFonts.readexPro(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text("BaliParadise Tour",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600))
                                ],
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Joined in January 2023",
                                style: GoogleFonts.readexPro(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black.withOpacity(0.5)),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 14,
                                    color: Color(0xffd4bb87),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text("489 Reviews",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400))
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.verified_user_outlined,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text("Verified Account",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400))
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.fiber_smart_record_outlined,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text("Super Partner",
                                      style: GoogleFonts.readexPro(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400))
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          SizedBox(
                            width: 82,
                            height: 82,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/contoh.png"),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                                "BaliParadise Tour is a Local Travel & Tour Agency that focused on preserving Bali Tourism and Cultural. We are Established since 2007, growing and have total 20 open and private trips around...",
                                style: GoogleFonts.readexPro(
                                    fontSize: 12, fontWeight: FontWeight.w300)),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: (() {}),
                        child: Text(
                          "Read more",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.readexPro(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                        "BaliParadise Tour is a Super Partner",
                        style: GoogleFonts.readexPro(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Super Partners are highly rated, recommended, and experienced people who are committed to provide memorable trips for guests.",
                        style: GoogleFonts.readexPro(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Separator(),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Contact Host",
                            style: GoogleFonts.readexPro(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
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
                                  MaterialStateProperty.all(Size(326, 56))),
                        ),
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
                            "Listing",
                            style: GoogleFonts.readexPro(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                          Spacer(),
                          IconButton(
                              constraints: BoxConstraints(),
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                setState(() {
                                  if (listing == true) {
                                    listing = false;
                                  } else {
                                    listing = true;
                                  }
                                });
                              },
                              iconSize: 40,
                              icon: Icon(listing
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down))
                        ],
                      ),
                      listing
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
                            "Host Rules",
                            style: GoogleFonts.readexPro(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                          Spacer(),
                          IconButton(
                              constraints: BoxConstraints(),
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                setState(() {
                                  if (rules == true) {
                                    rules = false;
                                  } else {
                                    rules = true;
                                  }
                                });
                              },
                              iconSize: 40,
                              icon: Icon(rules
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down))
                        ],
                      ),
                      rules
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                        height: 24,
                      ),
                      Row(
                        children: [
                          Text(
                            "Report this Host",
                            style: GoogleFonts.readexPro(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                          Spacer(),
                          IconButton(
                              constraints: BoxConstraints(),
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              iconSize: 30,
                              icon: Icon(Icons.flag))
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
