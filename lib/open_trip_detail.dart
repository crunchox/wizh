import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wizh/models/package_model.dart';
import 'widgets/custom_button_style.dart';
import 'widgets/custom_text_style.dart';

class OpenTripDetail extends StatefulWidget {
  const OpenTripDetail({Key? key}) : super(key: key);

  @override
  State<OpenTripDetail> createState() => _OpenTripDetailState();
}

class _OpenTripDetailState extends State<OpenTripDetail> {
  final List<String> listImage = [
    'assets/images/placeholder2-1.png',
    'assets/images/placeholder2-2.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff252525),
      appBar: AppBar(
        title: const Text("Open Trip Detail"),
      ),
      body: SafeArea(
          child: Column(children: [
        CarouselSlider(
          options: CarouselOptions(height: 124, autoPlay: true),
          items: listImage.map((images) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(color: Colors.blueAccent),
                  child: Image(
                    image: AssetImage(images),
                    height: double.infinity,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                );
              },
            );
          }).toList(),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
              ),
              Text(
                "Trip Bali 4D3N",
                style: CustomTextStyle().body1(),
              ),
            ],
          ),
        )
      ])),
    );
  }
}
