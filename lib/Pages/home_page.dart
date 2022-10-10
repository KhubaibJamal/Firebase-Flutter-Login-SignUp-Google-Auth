import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_signin_form/Widgets/button_widget.dart';
import 'package:login_signin_form/Widgets/text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        title: Text(
          "Home",
          style: GoogleFonts.actor(
            fontSize: 18,
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
              title: "Hi \n ${user.email}",
              // title: "HII",
              txtSize: 18,
              txtColor: Theme.of(context).primaryColor,
            ),
            ButtonWidget(
                btnText: "sign out",
                onPress: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
