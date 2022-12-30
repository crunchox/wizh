import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
                      "Payment",
                      style: GoogleFonts.readexPro(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 95,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Container(
                      width: 335,
                      height: 173,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 7)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 12),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 7,
                            ),
                            Text("Payment Summary",
                                style: GoogleFonts.readexPro(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text("Price inc. tax",
                                    style: GoogleFonts.readexPro(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Spacer(),
                                Text("9,500,000",
                                    style: GoogleFonts.readexPro(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.lineThrough))
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                Text("Promo Disc.",
                                    style: GoogleFonts.readexPro(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Spacer(),
                                Text("2,000,000",
                                    style: GoogleFonts.readexPro(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                Text("Platform Fee",
                                    style: GoogleFonts.readexPro(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    )),
                                SizedBox(
                                  width: 3,
                                ),
                                Icon(
                                  Icons.info,
                                  color: Color(0xffd4bb87),
                                  size: 12,
                                ),
                                Spacer(),
                                Text("3,000",
                                    style: GoogleFonts.readexPro(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              height: 1,
                              width: 311,
                              color: Color(0xFFdfdede),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Text("Total Payment",
                                    style: GoogleFonts.readexPro(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    )),
                                Spacer(),
                                Text("7,003,000",
                                    style: GoogleFonts.readexPro(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Check Out",
                        style: GoogleFonts.readexPro(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFFD4BB87)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35.0),
                          )),
                          fixedSize: MaterialStateProperty.all(Size(326, 56))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Separator(),
                ),
                SizedBox(
                  height: 48,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "To protect your payment, never transfer money\noutside of Wizh website or app.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.readexPro(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Colors.black.withOpacity(0.5)),
                    ),
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
