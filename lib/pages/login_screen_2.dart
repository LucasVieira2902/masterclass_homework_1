import 'package:flutter/material.dart';
import 'package:masterclass_homework_1/pages/components/tinder_button.dart';
import 'package:masterclass_homework_1/pages/utils/color_palette.dart';

class LoginScreen2 extends StatelessWidget {
  const LoginScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: ColorPalette.tinderBackgroundGradient,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.28),
            Image.asset(
              'assets/images/logo_tinder.png',
              width: 180,
              height: 180,
            ),
            const SizedBox(height: 40),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
              children: [
                TextSpan(text: "By tapping Create Account or Sign In, you agree to our\n", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                TextSpan(
                  text: "Terms", 
                  style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                       decoration: TextDecoration.underline
                 ),
                ),   
                TextSpan(text: ". Learn how we process your data in our ", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                TextSpan(
                  text: "Privacy\nPolicy ", 
                  style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                       decoration: TextDecoration.underline,
                       fontSize: 12
                 ),
                ),   
                TextSpan(text: "and ", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                TextSpan(
                  text: "Cookies Policy.", 
                  style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                       decoration: TextDecoration.underline,
                       fontSize: 12
                 ),
                ),   
              ]
            )),
            const SizedBox(height: 20),
            const TinderButton(imagePath: 'assets/images/logo_apple.png', text: 'Sign In with Apple'),
            const TinderButton(imagePath: 'assets/images/logo_facebook.png', text: 'Sign In with Facebook'),
            const TinderButton(imagePath: 'assets/images/bubble.png', text: 'Sign In with Phone Number'),
            const SizedBox(height: 20),
            const Text(
              'Trouble Signing In ?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ],
        )
      ),
    );
  }
}