import 'package:flutter/material.dart';
import 'package:masterclass_homework_1/pages/utils/color_palette.dart';

class LoginScreen1 extends StatelessWidget {
  const LoginScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 120),
            Image.asset(
              'assets/images/logo_screen_1.png',
              width: 140,
              height: 140,
            ),
            const SizedBox(height: 15),
            const Text(
              'Get your Money\nUnder Control',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            const Text('Manager your expenses\nSeamlessly',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white30, 
                fontSize: 20
            )),
            SizedBox(height: MediaQuery.of(context).size.height - 680),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Material(
                color: ColorPalette.screenOnePrimary,
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  borderRadius: BorderRadius.circular(8),
                  splashColor: Colors.white,
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                        'Sign Up with Email ID', 
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                    ))
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  borderRadius: BorderRadius.circular(8),
                  splashColor: ColorPalette.screenOnePrimary,
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/google_logo.png',
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Sign Up with Google',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?",
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  child: const Text(
                    "Sign In", 
                    style: TextStyle(
                      decoration: TextDecoration.underline, 
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    )
                  ),
                  onTap: () {},
                )
              ],
            )
          ]
        ),
      ),
    );
  }
}