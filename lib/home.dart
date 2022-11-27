import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wizh/models/news_model.dart';
import 'widgets/custom_button_style.dart';
import 'widgets/custom_text_style.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<News> listNews = [
    News("21-09-2022", "Vaksin Booster menjadi Gratis! Ini...", "Hari ini",
        "Sandro P", "www.wizh.com", "imageurl"),
    News("21-09-2022", "Indonesia jadi tuan rumah G20 dan...", "Kemarin",
        "Felix K", "www.wizh.com", "imageurl"),
    News("21-09-2022", "Start-up pengurai sampah ini terny...", "3 hari lalu",
        "Della N", "www.wizh.com", "imageurl"),
    News("21-09-2022", "Lorem isum dolor sit amet apalagi...", "10 Jan 2022",
        "Albert", "www.wizh.com", "imageurl")
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff252525),
      // appBar: AppBar(
      //   title: const Text("Wizh"),
      // ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/gifs/animated1.gif"),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
              child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(21, 0, 21, 0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 280,
                      ),
                      ElevatedButton(
                          child: const Text('Back'),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      Text(
                        "Good morning, Angel...",
                        style: CustomTextStyle().body4(),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recent News",
                            style: CustomTextStyle().body2(),
                          ),
                          Text(
                            "See All",
                            style: CustomTextStyle().s13cPrimaryw500(),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          for (var news in listNews)
                            InkWell(
                              child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 6, 0, 6),
                                  child: Row(children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15.0),
                                      child: Image.asset(
                                        'assets/images/placeholder.png',
                                        width: 80,
                                        height: 80,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 13,
                                    ),
                                    Flexible(
                                        child: Column(
                                      children: [
                                        Text(news.title,
                                            textAlign: TextAlign.center,
                                            style: CustomTextStyle()
                                                .s13cWhitew500()),
                                        Text("by ${news.author}",
                                            style: CustomTextStyle()
                                                .s13cWhitew500()),
                                        // const Spacer(),
                                        Text(news.timeRemark,
                                            style: CustomTextStyle()
                                                .s13cWhitew400Italic()),
                                      ],
                                    )),
                                  ])),
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text(news.title)));
                              },
                            ),
                        ],
                      ),
                      Text(
                        "Hot Topics",
                        style: CustomTextStyle().body2(),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      CarouselSlider(
                        options: CarouselOptions(height: 124, autoPlay: true),
                        items: [1, 2, 3, 4, 5].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  decoration:
                                      const BoxDecoration(color: Colors.amber),
                                  child: Text(
                                    'Tempat Wisata Horror se-Indonesia $i',
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyle().s18cWhitew700(),
                                  ));
                            },
                          );
                        }).toList(),
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Upcoming Events",
                            style: CustomTextStyle().body2(),
                          ),
                          Text(
                            "See All",
                            style: CustomTextStyle().s13cPrimaryw500(),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      CarouselSlider(
                        options: CarouselOptions(height: 124, autoPlay: true),
                        items: [1, 2, 3, 4, 5].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  decoration: const BoxDecoration(
                                      color: Colors.blueAccent),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    'Gathering  Backpacker at Comodo Island $i',
                                    style: CustomTextStyle().s18cWhitew700(),
                                  ));
                            },
                          );
                        }).toList(),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Best Deals",
                            style: CustomTextStyle().body2(),
                          ),
                          Text(
                            "See All",
                            style: CustomTextStyle().s13cPrimaryw500(),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      CarouselSlider(
                        options: CarouselOptions(height: 124, autoPlay: true),
                        items: [1, 2, 3, 4, 5].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  decoration:
                                      const BoxDecoration(color: Colors.green),
                                  child: Text(
                                    'Prestige Hotel $i',
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyle().s18cWhitew700(),
                                  ));
                            },
                          );
                        }).toList(),
                      ),
                    ],
                  )))),
    );
  }
}
