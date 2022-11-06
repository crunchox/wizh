import 'package:flutter/material.dart';
import 'package:wizh/widgets/custom_text_style.dart';

class CustomButtonStyle {
  ButtonStyle buttonPrimary() {
    return ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        fixedSize: MaterialStateProperty.all(const Size(296, 40)),
        textStyle: MaterialStateProperty.all(CustomTextStyle().button1()),
        backgroundColor: MaterialStateProperty.all(const Color(0xFFD4BB87)));
  }

  ButtonStyle buttonDate() {
    return ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(71, 48)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(const Color(0xFF525252)));
  }

  ButtonStyle buttonFull() {
    return ButtonStyle(
        fixedSize: MaterialStateProperty.all(const Size(296, 40)),
        textStyle: MaterialStateProperty.all(CustomTextStyle().button1()),
        backgroundColor: MaterialStateProperty.all(const Color(0xFFD4BB87)));
  }
}
