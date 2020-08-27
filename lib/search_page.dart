import 'package:flutter/material.dart';
import 'package:navaninew/resources/color.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  final List categories = [
    {'title': 'Tops', 'id': '56899'},
    {'title': 'Shirts & Blouses', 'id': '56899'},
    {'title': 'Cardigans & Sweaters', 'id': '56899'},
    {'title': 'Knitwear', 'id': '56899'},
    {'title': 'Blazers', 'id': '56899'},
    {'title': 'Outwears', 'id': '56899'},
    {'title': 'Pants', 'id': '56899'},
    {'title': 'Jeans', 'id': '56899'},
    {'title': 'Shorts', 'id': '56899'},
    {'title': 'Skirts', 'id': '56899'},
    {'title': 'Dresses', 'id': '56899'},
    {'title': 'Jumpsuites', 'id': '56899'},
  ];

  void onClickSearch() {
    // complete here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: ThemeColor.BACKGROUND,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black, size: 20.0),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        // elevation: hasFilter ? 2 : 0,
        centerTitle: true,
        title: Text("Category",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold)),
        actions: <Widget>[Icon(Icons.search,color: Colors.black,)],
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // view all button

              Container(
                padding: EdgeInsets.only(
                    top: 8.0, left: 16.0, right: 16.0, bottom: 0.0),
                child: RaisedButton(
                  padding: EdgeInsets.only(
                      top: 12.0, bottom: 12.0, left: 60.0, right: 60.0),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(25.0)),
                  onPressed: () {},
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    "VIEW ALL ITEMS",
                    style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: 16.0,
                        color: Colors.white),
                  ),
                ),
              ),

              // choose category
              SizedBox(height: 12.0),

              Container(
                padding: EdgeInsets.only(
                    top: 0, left: 16.0, right: 16.0, bottom: 0.0),
                child: Text('Choose catergory',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .apply(color: ThemeColor.FILL)),
              ),

              // list
              SizedBox(height: 25.0),
              Expanded(
                child: ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return FlatButton(
                      shape: new BorderDirectional(
                          bottom: BorderSide(color: ThemeColor.FILL)),
                      onPressed: () {},
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          categories[index]['title'],
                          style: Theme.of(context).textTheme.headline5.apply(),
                        ),
                      ),
                    );
                  },
                ),

                // end
              )
            ],
          ),
        ),
      ),
    );
  }
}
