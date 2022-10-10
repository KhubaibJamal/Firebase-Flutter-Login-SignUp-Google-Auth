import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_signin_form/Screens/login_screen.dart';
import 'package:login_signin_form/Screens/signup_screen.dart';
import 'package:login_signin_form/Widgets/button_widget.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height / 1.1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Divider(
              height: 100,
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height / 2.5,
                child: Image.asset("assets/image.png"),
              ),
            ),
            Text(
              "Welcome",
              style: GoogleFonts.gemunuLibre(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: ButtonWidget(
                  btnText: "login",
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  }),
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: ButtonWidget(
                  btnText: "signup",
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
