import 'package:flutter/material.dart';
import 'package:flutter_sushi_restaurant/components/button.dart';
import 'package:flutter_sushi_restaurant/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25),
            //shop name
            Text(
              "SUSHI MAN",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 28, color: Colors.white),
            ),

            const SizedBox(height: 25),

            //icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset("lib/images/salmon_eggs.png"),
            ),

            const SizedBox(height: 25),
            //title
            Text(
              "THE TASTE OF JAPANESE FOOD",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 44, color: Colors.white),
            ),

            const SizedBox(height: 10),

            //subtitle
            Text(
              "Feel the taste of the most popular Japanese food from anywhere and anytime",
              style: TextStyle(
                color: Colors.grey[300],
                height: 2,
              ),
            ),

            const SizedBox(height: 10),
            //get started button
            MyButton(
              text: "Get Started",
              onTap: () {
                //go to menu page
                Navigator.pushNamed(context, '/menupage');
              },
            )
          ],
        ),
      ),
    );
  }
}
