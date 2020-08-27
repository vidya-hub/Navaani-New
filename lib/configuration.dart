import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryGreen = Color(0xff416d64);
List<BoxShadow> shadowList = [
  BoxShadow(
    color: Colors.cyan[100],
    blurRadius: 40,
    spreadRadius: 2,
    offset: Offset(0, 10),
  ),
];

List<Map> catagories = [
  {'name': 'men', 'iconPath': 'images/men2.png'},
  {'name': 'girl', 'iconPath': 'images/girl3.png'},
  {'name': 'kid', 'iconPath': 'images/kid.png'},
  {'name': 'neck', 'iconPath': 'images/neck.png'},
  {'name': 'earrings', 'iconPath': 'images/ear.png'},
  {'name': 'bang', 'iconPath': 'images/bang.png'},
];

// List<Map> drawerItems = [
//   {
//     'icon': FontAwesomeIcons.paw,
//     'title': 'Adoption',
//   },
//   {
//     'icon': Icons.mail,
//     'title': 'Donation',
//   },
//   {
//     'icon': FontAwesomeIcons.plus,
//     'title': 'Add pet',
//   },
//   {
//     'icon': Icons.favorite,
//     'title': 'Favorites',
//   },
//   {
//     'icon': Icons.mail,
//     'title': 'Messages',
//   },
//   {
//     'icon': FontAwesomeIcons.userAlt,
//     'title': 'Profile',
//   },
// ];
