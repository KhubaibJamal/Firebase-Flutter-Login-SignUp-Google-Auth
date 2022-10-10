import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_signin_form/Widgets/text_widget.dart';

class SocialButtonWidget extends StatelessWidget {
  final Color bgColor;
  final String imagePath;
  final VoidCallback onPress;

  SocialButtonWidget(
      {required this.bgColor, required this.imagePath, required this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
          padding: const EdgeInsets.all(8),
          height: 40,
          width: 120,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(
                image: AssetImage(imagePath),
              ),
              TextWidget(
                title: "Google",
                txtSize: 18.0,
                txtColor: Colors.black,
              ),
            ],
          )),
    );
  }
}
