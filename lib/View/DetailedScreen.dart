import 'package:daily_exercises/Constant.dart';
import 'package:daily_exercises/View/BottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SearchBar.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.515,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                  image: AssetImage("assets/images/meditation_bg.png"),
                  fit: BoxFit.fitWidth),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Text(
                    "Meditation",
                    style: GoogleFonts.poppins(
                      fontSize: 36,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    "3-10 MIN Course",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.60,
                    child: Text(
                      "Live Happier and Healthier by learning the fundamental of meditation",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.6,
                    child: SearchBar(),
                  ),
                  Wrap(
                    spacing: 10,
                    runSpacing: 20,
                    children: [
                      SessionWidget(
                        sessionNumber: 1,
                        isPressed: true,
                      ),
                      SessionWidget(
                        sessionNumber: 2,
                        isPressed: false,
                      ),
                      SessionWidget(
                        sessionNumber: 3,
                        isPressed: false,
                      ),
                      SessionWidget(
                        sessionNumber: 4,
                        isPressed: false,
                      ),
                      SessionWidget(
                        sessionNumber: 5,
                        isPressed: false,
                      ),
                      SessionWidget(
                        sessionNumber: 6,
                        isPressed: false,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Meditation',
                    style: GoogleFonts.poppins(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding:EdgeInsets.all(10) ,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0,17),
                          blurRadius: 23,
                          spreadRadius: -13,
                          color: kShadowColor,
                        ),
                      ]

                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/Meditation_women_small.svg"),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Basic 2",
                            style:GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                            ),
                            Text("Start Your Deepen You Practice",
                              style:GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),

                          ],
                        ),),
                        Padding(padding: EdgeInsets.all(10),
                          child: SvgPicture.asset("assets/icons/Lock.svg"),
                        )

                      ],
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}

class SessionWidget extends StatelessWidget {
  const SessionWidget({
    Key key,
    this.sessionNumber,
    this.isPressed,
  });

  final int sessionNumber;
  final bool isPressed;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Container(
        width: constraint.maxWidth / 2 - 5,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 23,
                  spreadRadius: -13,
                  color: kShadowColor),
            ]),
        child: GestureDetector(
          onTap: () {},
          child: Row(
            children: [
              Container(
                height: 42,
                width: 43,
                decoration: BoxDecoration(
                  color: isPressed ? kBlueColor : kBlueLightColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.play_arrow,
                  color: isPressed ? Colors.white : kBlueColor,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Session $sessionNumber',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
