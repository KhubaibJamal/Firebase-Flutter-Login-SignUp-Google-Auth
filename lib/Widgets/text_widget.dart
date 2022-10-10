import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  final String title;
  final double txtSize;
  final Color txtColor;
  TextWidget(
      {required this.title, required this.txtSize, required this.txtColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.roboto(
        fontSize: txtSize,
        fontWeight: FontWeight.bold,
        color: txtColor,
      ),
    );
  }
}
