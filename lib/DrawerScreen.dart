import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navaninew/catbubles.dart';
import 'package:navaninew/profile_page.dart';
import 'package:navaninew/configuration.dart';
// import 'package:navaninew/navigation_bloc.dart';
import 'package:navaninew/screens/cart.dart';
// import 'package:navaninew/screens/wishlish.dart';
import 'package:navaninew/screens/wishlist.dart';
import 'menu_item.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.grey[100],
        padding: EdgeInsets.only(top: 40.0, bottom: 60.0, left: 10.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  maxRadius: 40,
                  child: Image.asset("images/avatar.png"),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                Text(
                  'User Name',
                  style: TextStyle(
                      // color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  'User Name@gmail.com',
                  style: TextStyle(
                    // color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Divider(
              height: 30.0,
              thickness: 0.8,
              color: Colors.black.withOpacity(0.7),
              // thickness
              // indent: 30,
              // endIndent: 200,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      for (var i = 0; i < catagories.length; i++)
                        CatItem(
                          imgpath: catagories[i]['iconPath'],
                          title: catagories[i]['name'],
                          onTap: () {},
                        ),
                      MenuItem(
                        icon: Icons.person,
                        title: 'My Account',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyHomePage(),
                            ),
                          );
                        },
                      ),
                      MenuItem(
                        icon: Icons.shopping_basket,
                        title: 'My Order',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CartPage(),
                            ),
                          );
                        },
                      ),
                      MenuItem(
                        icon: Icons.card_giftcard,
                        title: 'Wishlist',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WishList(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: 2.0,
                    height: 20.0,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Log out',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
