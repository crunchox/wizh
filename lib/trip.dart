import 'package:flutter/material.dart';

class TripPage extends StatefulWidget {
  const TripPage({super.key, required this.title});

  final String title;

  @override
  State<TripPage> createState() => _TripPageState();
}

class _TripPageState extends State<TripPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff252525),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            Text(widget.title),
            Image.asset('assets/images/warning.png')
          ],
        )));
  }
}
