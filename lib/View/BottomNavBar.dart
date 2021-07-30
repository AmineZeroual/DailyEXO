import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Constant.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ButtomNavItems(
            text: 'Today',
            image: 'assets/icons/calendar.svg',
            isActive: false,
          ),
          ButtomNavItems(
            text: 'Gym',
            image: 'assets/icons/gym.svg',
            isActive: true,
          ),
          ButtomNavItems(
            text: 'Setting',
            image: 'assets/icons/Settings.svg',
            isActive: false,
          ),
        ],
      ),
    );
  }
}

class ButtomNavItems extends StatelessWidget {
  const ButtomNavItems({
    Key key,
    this.text,
    this.image,
    this.isActive,
    this.press,
  });

  final String text;
  final String image;
  final bool isActive;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            image,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            text,
            style: TextStyle(
              color: isActive ? kActiveIconColor : kTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
