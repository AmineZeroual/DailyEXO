import 'package:daily_exercises/View/DetailedScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constant.dart';

class Items extends StatelessWidget {
  final String text;
  final String image;

  const Items({Key key, this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: kShadowColor,
            )
          ]),
      padding: EdgeInsets.all(20),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen()));
          },
          child: Column(
            children: [
              Spacer(),
              SvgPicture.asset(image),
              Spacer(),
              Text(
                text,
                textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}