import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPasswordTxtField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  InputPasswordTxtField(
      {required this.hintText,
      required this.controller,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: true,
      validator: validator,
      style: GoogleFonts.roboto(
        // fontWeight: FontWeight.bold,
        color: const Color(0xff888b91),
        fontSize: 20,
      ),
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 3,
            color: Color(0xff999a9e),
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 3,
            color: Color(0xff999a9e),
          ),
        ),
        border: const UnderlineInputBorder(),
        hintText: hintText,
        hintStyle: GoogleFonts.roboto(
          fontWeight: FontWeight.bold,
          color: const Color(0xff888b91),
          fontSize: 18,
        ),
      ),
    );
  }
}
