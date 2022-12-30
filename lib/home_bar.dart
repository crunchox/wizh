import 'package:flutter/material.dart';
import 'package:wizh/custom_itinerary.dart';
import 'package:wizh/home.dart';
import 'package:wizh/login.dart';
import 'package:wizh/new_trip.dart';
import 'package:wizh/open_trip_detail.dart';
import 'package:wizh/register.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  var _currentIndex = 2;

  Widget buildContent(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return const CustomItinerary();
      case 1:
        return const Home();
      case 2:
        return const NewTrip();
      case 3:
        return const OpenTripDetail();
      case 4:
        return const Login();
      default:
        return const NewTrip();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildContent(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffd4bb87),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.checklist_rtl_outlined),
            label: 'Mission',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_people_rounded),
            label: 'Trip',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.white,
        fixedColor: Colors.black,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
