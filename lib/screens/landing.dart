import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class LandPage extends StatefulWidget {
  @override
  _LandPageState createState() => _LandPageState();
}

class _LandPageState extends State<LandPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          elevation: 10,
          iconTheme: new IconThemeData(color: Colors.black),
          // shape: ShapeBorder(),
          backgroundColor: Colors.white,
          actions: <Widget>[
            Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Icon(
                      Icons.shopping_cart,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            )
          ],

          // centerTitle: true,
          title: Image.asset(
            "images/title.png",
            scale: 3,
          ),
        ),
      ),
      // drawerScrimColor: Colors.black38,
      drawer: new Drawer(
        elevation: 5,
        // semanticLabel: "sagar",
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                child: ListTile(
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "Sign In",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Metropolis"),
                      ),
                      Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Metropolis"),
                      )
                    ],
                  ),
                  title: Image.asset(
                    "images/black.png",
                    height: 170,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  trailing: Text(
                    "Home",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Metropolis"),
                  ),
                  contentPadding: EdgeInsets.only(left: 30, right: 150),
                  leading: Icon(
                    Icons.home,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 20, right: 150),
                  trailing: Text(
                    "Profile",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Metropolis"),
                  ),
                  leading: Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 20, right: 150),
                  trailing: Text(
                    "Cart",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Metropolis"),
                  ),
                  leading: Icon(
                    Icons.shopping_cart,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 20, right: 140),
                  trailing: Text(
                    "Basket",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Metropolis"),
                  ),
                  leading: Icon(
                    Icons.shopping_basket,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: ListTile(
              //     contentPadding: EdgeInsets.only(left: 20, right: 150),
              //     trailing: Text(
              //       "Register",
              //       style: TextStyle(
              //           color: Colors.black,
              //           fontSize: 20,
              //           fontWeight: FontWeight.w600,
              //           fontFamily: "Metropolis"),
              //     ),
              //     leading: Icon(
              //       MaterialCommunityIcons.ab_testing,
              //       size: 30,
              //       color: Colors.black,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
