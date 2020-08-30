import 'package:flutter/material.dart';
import 'package:navaninew/HomeScreen.dart';
import 'package:navaninew/components/cartpagecard.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
      backgroundColor: Colors.white,
      body: Container(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 40,
                      ),
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          "Cart",
                          style: TextStyle(
                              // fontWeight: FontWeight.w300,
                              fontSize: 40.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "1 Item",
                            style: TextStyle(
                              // fontWeight: FontWeight.w300,
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            "Rs 100/-",
                            style: TextStyle(
                              // fontWeight: FontWeight.w300,
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: collectionData.length,
                    itemBuilder: (context, index) {
                      return CartPageCard(
                        name: "Product name",
                        imgurl: collectionData[index]["imgURL"],
                        price: "1000/-",
                      );
                    }),
              ),
              Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height * 0.15,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 3.0, top: 40),
                        child: Column(
                          children: <Widget>[
                            Text("Total Price",
                                style: TextStyle(
                                  fontFamily: 'Metropolis',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Rs 100/-",
                                style: TextStyle(
                                  fontFamily: 'Metropolis',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(
                              top: 8.0, left: 70.0, right: 16.0, bottom: 0.0),
                          child: RaisedButton(
                            padding: EdgeInsets.only(
                                top: 12.0,
                                bottom: 12.0,
                                left: 60.0,
                                right: 60.0),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(8.0)),
                            onPressed: () {},
                            color: Theme.of(context).primaryColor,
                            child: Text(
                              "CHECKOUT",
                              style: TextStyle(
                                  fontFamily: 'Metropolis',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
