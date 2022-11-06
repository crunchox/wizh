import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle {
  var white = const Color(0xFFFFFFFF);
  var colorPrimary = const Color(0xFFD4BB87);

  TextStyle body1() {
    return GoogleFonts.poppins(
        textStyle: TextStyle(
      fontSize: 18,
      color: white,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
    ));
  }

  TextStyle body2() {
    return GoogleFonts.poppins(
        textStyle: TextStyle(
      fontSize: 18,
      color: white,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
    ));
  }

  TextStyle body3() {
    return GoogleFonts.poppins(
        textStyle: TextStyle(
      fontSize: 16,
      color: white,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ));
  }

  TextStyle body4() {
    return GoogleFonts.poppins(
        textStyle: TextStyle(
      fontSize: 16,
      color: white,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
    ));
  }

  TextStyle body5() {
    return GoogleFonts.poppins(
        textStyle: TextStyle(
      fontSize: 14,
      color: white,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ));
  }

  TextStyle body6() {
    return GoogleFonts.poppins(
        textStyle: TextStyle(
      fontSize: 14,
      color: white,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
    ));
  }

  TextStyle body7() {
    return GoogleFonts.poppins(
        textStyle: TextStyle(
      fontSize: 12,
      color: white,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ));
  }

  TextStyle s13cPrimaryw500() {
    return GoogleFonts.poppins(
        textStyle: TextStyle(
      fontSize: 13,
      color: colorPrimary,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
    ));
  }

  TextStyle s13cPrimaryw400Italic() {
    return GoogleFonts.poppins(
        textStyle: TextStyle(
      fontSize: 13,
      fontStyle: FontStyle.italic,
      color: colorPrimary,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ));
  }

  TextStyle s13cWhitew500() {
    return GoogleFonts.poppins(
        textStyle: TextStyle(
      fontSize: 13,
      color: white,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
    ));
  }

  TextStyle s13cWhitew400Italic() {
    return GoogleFonts.poppins(
        textStyle: TextStyle(
      fontSize: 13,
      fontStyle: FontStyle.italic,
      color: white,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ));
  }

  TextStyle s18cWhitew700() {
    return GoogleFonts.poppins(
        textStyle: TextStyle(
      fontSize: 18,
      color: white,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ));
  }

  TextStyle s16cPrimaryw700() {
    return GoogleFonts.poppins(
        textStyle: TextStyle(
      fontSize: 16,
      color: colorPrimary,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ));
  }

  TextStyle button1() {
    return GoogleFonts.poppins(
        textStyle: TextStyle(
      fontSize: 18,
      color: white,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.02,
    ));
  }
}
