import 'package:flutter/material.dart';

class FoodList extends StatefulWidget {
  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.amberAccent,
        title: Text(
          'Vas Querer?',
          style: TextStyle(
            color: Colors.black,
            letterSpacing: 4,
            fontWeight: FontWeight.w300,
            fontSize: 24,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              elevation: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10),
                        ),
                        child: Image.network('https://mrecipes.com/wp-content/uploads/2019/01/featured-smoked-hamburgers.jpg'),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Text(
                          'Hamburguesas',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Q69',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.redAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.redAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.redAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.redAccent,
                            ),
                            Icon(
                              Icons.star_half,
                              color: Colors.redAccent,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
