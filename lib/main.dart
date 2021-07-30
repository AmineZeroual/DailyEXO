import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'View/BottomNavBar.dart';
import 'View/CardWidget.dart';
import 'View/SearchBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Meditation App",
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        bottomNavigationBar: BottomNavBar(),
        body: Stack(
          children: [
            Container(
              height: size.height * 0.50,
              decoration: BoxDecoration(
                color: Color(0xfff5ceb8),
                image: DecorationImage(
                  image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
                  alignment: Alignment.centerLeft,
                ),
              ),
            ),
            SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    child: Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: kButtonColor,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/menu.svg",
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    alignment: Alignment.centerRight,
                  ),
                  Text(
                    'Good Morning MAZTech',
                    style: GoogleFonts.poppins(
                      fontSize: 33,
                      fontWeight: FontWeight.w700,
                      color: kTextColor,
                    ),
                  ),
                  SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 0.85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        Items(
                            text: 'Diet Recommendation',
                            image: 'assets/icons/Hamburger.svg',
                        ),
                        Items(
                            text: 'Kegel Exercises',
                            image: 'assets/icons/Excrecises.svg'),
                        Items(
                            text: 'Medetition',
                            image: 'assets/icons/Meditation.svg'),
                        Items(
                          text: 'Yoga',
                          image: 'assets/icons/yoga.svg',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ));
  }
}
