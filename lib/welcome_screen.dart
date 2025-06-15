import 'package:coffeeshop/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const FittedBox(
              fit: BoxFit.fill,
              child: Image(
                image: AssetImage('assets/images/coffeepng.png'),
                // fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  // gradient: LinearGradient(
                  //     begin: Alignment.topRight,
                  //     stops: <double>[
                  //   0.0,
                  //   0.1
                  // ],
                  //     // stops: <double> ,
                  //     colors: <Color>[
                  //   Colors.white,
                  //   Colors.black,
                  // ])
                color: Colors.black
    ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,vertical: 8
                    ),
                    child: Text(
                      'Coffee so good, your taste buds will love it.',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 34,
                        letterSpacing: 1.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Text(
                      'The best grain, the finest roast, the powerful flavor.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(
                            0xFFA9A9A9,
                          ),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Homepage()));
                      },
                      child: Container(
                        height: 62,
                        width: 315,
                        // color: Color(0xFFC67C4E),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFC67C4E),
                        ),
                        child: const Center(
                            child: Text(
                          "Get Started",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              letterSpacing: 0),
                        )),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
