import 'package:flutter/material.dart';
import 'package:navaninew/DrawerScreen.dart';
import 'package:navaninew/components/catlog-items.dart';
import 'package:navaninew/components/imgslider.dart';
import 'package:navaninew/configuration.dart';
import 'package:navaninew/navigation_bloc.dart';
import 'package:navaninew/resources/color.dart';
import 'package:navaninew/screen2.dart';
import 'package:navaninew/search_page.dart';
import 'package:navaninew/widgets/tileswidget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'configuration.dart';
import 'configuration.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget with NavigationState {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  double xOffset = 0.0;
  double yOffset = 0.0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;
  List collectionData = [
    {
      'imgURL':
          'https://i.pinimg.com/736x/c4/b3/4b/c4b34b8639a99ef0787411811b8e82c1.jpg',
      'isNew': true
    },
    {
      'imgURL':
          'https://cdn01.buxtonco.com/news/1999/istock-506442302__large.jpg',
      'isNew': false
    },
    {
      'imgURL':
          'https://i.pinimg.com/736x/c4/b3/4b/c4b34b8639a99ef0787411811b8e82c1.jpg',
      'isNew': true
    },
    {
      'imgURL':
          'https://cdn01.buxtonco.com/news/1999/istock-506442302__large.jpg',
      'isNew': false
    },
    {
      'imgURL':
          'https://i.pinimg.com/736x/c4/b3/4b/c4b34b8639a99ef0787411811b8e82c1.jpg',
      'isNew': true
    },
    {
      'imgURL':
          'https://cdn01.buxtonco.com/news/1999/istock-506442302__large.jpg',
      'isNew': false
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: DrawerScreen(),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.grey[200],
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: () {
                              _scaffoldKey.currentState.openDrawer();
                            }),

                        Container(
                          child: Image.asset(
                            "images/title-bg.png",
                            scale: 3,
                          ),
                        ),
                        // Column(
                        //   children: <Widget>[
                        //     Text(
                        //       'Location',
                        //     ),
                        //     Row(
                        //       children: <Widget>[
                        //         Icon(
                        //           Icons.location_on,
                        //           color: primaryGreen,
                        //         ),
                        //         Text('INDIA'),
                        //       ],
                        //     ),
                        //   ],
                        // ),
                        GestureDetector(
                          onTap: () {
                            BlocProvider.of<NavigationBloc>(context)
                                .add(NavigationEvents.MyAccountPageClickEvent);
                          },
                          child: CircleAvatar(
                            child: Image.asset("images/avatar.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("tap");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Shop(),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 15.0),
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent[100],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Search Here',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                      ),
                      items: imageSliders,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: catagories.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(left: 30),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    // boxShadow: shadowList,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(
                                  catagories[index]['iconPath'],
                                  height: 60,
                                  width: 60,
                                  // color: Colors.grey[700],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(27, 0, 0, 0),
                                  child: Text(catagories[index]['name'],
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  // for (var i = 0; i < catagories.length; i++)
                  //   Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: TilesHomepage(
                  //       imagPath: catagories[i]['iconPath'],
                  //       name: catagories[i]['name'],
                  //       price: "200",
                  //     ),
                  //   ),
                  SizedBox(
                    height: 30.0,
                  ),
                  // SizedBox(height: 30.0),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Trending Collection',
                                  style: Theme.of(context).textTheme.headline5),
                              SizedBox(height: 4.0),
                              // Spacer(),
                              Text('Summer Sale Collection',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .apply(color: ThemeColor.FILL)),
                            ]),
                        // Spacer(),
                        GestureDetector(
                            child: Text('View All',
                                style: TextStyle(fontSize: 12.0)),
                            onTap: () {})
                      ],
                    ),
                  ),
                  SizedBox(height: 30.0),
                  SizedBox(
                    height: 400.0,
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: collectionData.length,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return CatalogItemOne(
                            imageURL: collectionData[index]['imgURL'],
                            isNew: collectionData[index]['isNew'],
                          );
                        }),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Retro Style',
                                  style: Theme.of(context).textTheme.headline5),
                              SizedBox(height: 4.0),
                              // Spacer(),
                              Text('Olg gauge Collection',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .apply(color: ThemeColor.FILL)),
                            ]),
                        // Spacer(),
                        GestureDetector(
                            child: Text('View All',
                                style: TextStyle(fontSize: 12.0)),
                            onTap: () {})
                      ],
                    ),
                  ),

                  SizedBox(height: 22),

                  SizedBox(
                    height: 400.0,
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: collectionData.length,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return CatalogItemOne(
                            imageURL: collectionData[index]['imgURL'],
                            isNew: collectionData[index]['isNew'],
                          );
                        }),
                  ),

                  // Row(
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Text('Trending Collection',
                  //               style: Theme.of(context).textTheme.headline2),
                  //           SizedBox(height: 4.0),
                  //           Text('Summer Sale Collection',
                  //               style: Theme.of(context)
                  //                   .textTheme
                  //                   .bodyText2
                  //                   .apply(color: Colors.white)),
                  //         ]),
                  //     GestureDetector(
                  //         child:
                  //             Text('View All', style: TextStyle(fontSize: 12.0)),
                  //         onTap: () {})
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
